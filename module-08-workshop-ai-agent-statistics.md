---
marp: true
theme: mahidol
paginate: true
size: 16:9
footer: "n8n Workflow Automation | Module 8 — Workshop: AI Agent วิเคราะห์ข้อมูลสถิติ | สำนักงานสถิติแห่งชาติ"
math: katex
---

<!-- _class: lead -->

<style scoped>
.logo-bar { position: absolute; top: 36px; right: 64px; display: flex; align-items: center; gap: 16px; }
.logo-bar img { width: 100px; height: 100px; object-fit: contain; }
</style>

<div class="logo-bar">
  <img src="fig/logos/mahidol.svg" alt="Mahidol University">
  <img src="fig/logos/nso.png" alt="BDI">
</div>

# Workshop: AI Agent ตอบคำถามและวิเคราะห์ข้อมูลสถิติ

<div class="subtitle">Module 8 — พัฒนา AI Agent สำหรับงานสถิติภาครัฐ (Day 2)</div>

**หลักสูตร** การสร้างผู้ช่วยอัจฉริยะ (AI Agent) สำหรับงานสถิติภาครัฐด้วย n8n

ผศ. ดร.ทวีศักดิ์ สมานชื่น
CBTU · คณะวิศวกรรมศาสตร์ · มหาวิทยาลัยมหิดล


---

## วัตถุประสงค์การเรียนรู้

เมื่อจบ module นี้ ผู้เรียนสามารถ:

1. **ออกแบบ** AI Agent ที่ตอบคำถามสถิติจากข้อมูลจริงในฐานข้อมูล
2. **สร้าง** Knowledge Base จากเอกสารสถิติและเชื่อมต่อกับ Agent
3. **พัฒนา** Tool สำหรับค้นหา วิเคราะห์ และแสดงผลข้อมูลสถิติ
4. **จัดการ** Multi-turn Conversation ที่ซับซ้อนได้
5. **ตรวจสอบ** ความถูกต้องของคำตอบ Agent ก่อน Deploy

---

## เนื้อหาใน Module นี้

1. **Architecture Review** — ทบทวนและวางแผน Agent ระดับสูง
2. **Knowledge Base Setup** — สร้าง Vector Store จากข้อมูลสถิติ
3. **Workshop Lab A:** Agent ตอบคำถามด้วย RAG
4. **Workshop Lab B:** Agent วิเคราะห์ข้อมูลสถิติด้วย SQL/Sheets
5. **Multi-tool Agent** — รวม Tools หลายอย่างไว้ใน Agent เดียว

---

<!-- _class: divider -->

## 01
## Architecture Planning

ออกแบบ AI Agent สำหรับงานสถิติ

---

## Statistics AI Agent Architecture

### ภาพรวมระบบ

```
[ผู้ใช้งาน: เจ้าหน้าที่สถิติ]
          ↓
[Chat Interface / Line Bot / Web]
          ↓
[n8n AI Agent Node (GPT-4o)]
    ├── Tool: search_knowledge_base → [Vector Store (เอกสารสถิติ)]
    ├── Tool: query_statistics_db  → [Google Sheets / Database]
    └── Tool: calculate_statistics → [Calculator ]
          ↓
[ตอบคำถาม + อ้างอิงแหล่งข้อมูล]
```

---

## ประเภทคำถามที่ Agent ต้องตอบได้

### Use Cases จริงในงานสถิติ

| ประเภทคำถาม | ตัวอย่าง | Tool ที่ใช้ |
|---|---|---|
| **Factual** | "GDP ปี 2566 เป็นเท่าไหร่?" | query_statistics_db |
| **Comparative** | "อัตราว่างงานปีนี้ vs ปีที่แล้ว" | query + calculate |
| **Trend** | "แนวโน้มสถิติประชากร 5 ปีล่าสุด" | query + generate_summary |
| **Conceptual** | "ดัชนีความเชื่อมั่นผู้บริโภคคืออะไร?" | search_knowledge_base |

---

<!-- _class: divider -->

## 02
## RAG คืออะไร?

Retrieval-Augmented Generation

---

## RAG: ทำไม LLM ถึงต้องดึงข้อมูลเพิ่ม?

### ปัญหาของ LLM ล้วน ๆ

<div class="columns">
<div>

**LLM อย่างเดียว**
- ความรู้มีวันหมดอายุ (Training Cutoff)
- ไม่รู้ข้อมูลภายในองค์กร
- อาจ "hallucinate" ตัวเลขสถิติ
- ไม่สามารถอ้างอิงแหล่งที่มาได้

</div>
<div>

**LLM + RAG**
- ดึงข้อมูลสด ณ เวลาถาม
- เข้าถึงเอกสารและ DB ภายใน
- คำตอบมีหลักฐานอ้างอิง
- ลด Hallucination ได้มาก

</div>
</div>

---
<!-- _class: dense -->
## RAG ทำงานอย่างไร?

### 3 ขั้นตอนหลัก

```
① Indexing (ทำครั้งเดียว)
   เอกสาร PDF / Google Docs
      ↓ แบ่งเป็น Chunks
      ↓ สร้าง Embeddings (เวกเตอร์ความหมาย)
      ↓ เก็บใน Vector Store
② Retrieval (ทุกครั้งที่ถาม)
   คำถามจากผู้ใช้
      ↓ แปลงเป็น Embedding
      ↓ ค้นหา Chunks ที่ใกล้เคียงที่สุด (Similarity Search)
      ↓ ได้ Context ที่เกี่ยวข้อง 3–5 ชิ้น
③ Generation
   Context + คำถาม → LLM → คำตอบพร้อมอ้างอิง
```

---
## RAG Basic Concept

<div class="center">

![w:900px](fig/m8_RAG.png)

</div>

---
## RAG Process

<div class="center">

![w:1000px](fig/m8_RAGprocess.png)

</div>

---
## RAG: Vector Represenation

<div class="center">

![w:800px](fig/m8_RAGvector.png)

</div>

---

## RAG ในบริบทงานสถิติภาครัฐ

### ตัวอย่างแหล่งข้อมูลที่นำเข้า Vector Store

| ประเภทเอกสาร | เนื้อหา | ประโยชน์ |
|---|---|---|
| **รายงานสถิติรายปี** | ตัวเลข GDP, ประชากร, การจ้างงาน | ตอบคำถาม Factual |
| **คู่มือนิยามสถิติ** | คำจำกัดความ, วิธีคำนวณ | ตอบคำถาม Conceptual |
| **แผนยุทธศาสตร์** | เป้าหมาย, นโยบาย | ตอบคำถามเชิงนโยบาย |

> **กฎทอง:** ข้อมูลที่ดี → RAG ที่ดี → Agent ที่น่าเชื่อถือ

---

<!-- _class: divider -->

## 03
## Workshop  A

AI Agent with RAG (Knowledge Base)

---
<!-- _class: dense -->
## Workshop A: เชื่อม Knowledge Base กับ Agent

### RAG = Retrieval-Augmented Generation

> Agent ค้นหาข้อมูลจาก Document ก่อน แล้วใช้ LLM สรุปคำตอบที่แม่นยำ

### ขั้นตอนสร้าง Knowledge Base ใน n8n

```
1. โหลดเอกสาร (PDF รายงานสถิติ / Google Docs)
      ↓
2. แบ่งข้อความเป็น Chunks (Document Splitter Node)
      ↓
3. สร้าง Embeddings (OpenAI Embeddings Node)
      ↓
4. เก็บใน Vector Store (n8n In-Memory Vector Store)
      ↓
5. Agent เรียกใช้ Tool: Vector Store Retrieval
```

---
<!-- _class: dense -->
## การตั้งค่า Ingestion Workflow

### Workflow สำหรับโหลดข้อมูลเข้า Knowledge Base

```
[Upload File]
      ↓
[Simple Vector Store/Recursive Character Text Splitter]
  - Chunk size: 1000 characters
  - Chunk overlap: 200 characters
      ↓
[Gemini/OpenAI Embeddings Node]
      ↓
[In-Memory Vector Store: Insert Documents]
```

> **หมายเหตุ:** สำหรับ Production ใช้ Pinecone หรือ Supabase pgvector แทน In-Memory



---
## Workshop A: Ingestion Workflow

<div class="center">

![w:700px](fig/m8_Ex1_1.png)

</div>

---


## Workshop A: Agent with RAG Tool

### โครงสร้าง Agent

<div class="columns">
<div>

```
[Chat Trigger]
      ↓
[AI Agent Node]
    ├── Chat Model: GPT-4o
    ├── Memory: Window Buffer Memory
    └── Tool: search_knowledge_base
          → [Vector Store Retrieval Node]
              → [In-Memory Vector Store]
      ↓
[Respond to Chat]
```
</div>
<div>

### Tool Description สำหรับ `search_knowledge_base`
```text
ค้นหาข้อมูลจากเอกสารสถิติและนิยามศัพท์ทางสถิติ
ใช้เมื่อผู้ใช้ถามเกี่ยวกับคำนิยาม แนวทาง 
หรือรายละเอียดจากรายงานสถิติ
Input: { "query": "คำค้นหาที่ต้องการ" }
```
</div>

---
## Workshop A: Ingestion Workflow

<div class="center">

![w:800px](fig/m8_Ex1_2.png)

</div>



---

## Workshop A: Test

### ตัวอย่างคำถามที่ใช้ RAG

**คำถาม:** "ดัชนี CPI คำนวณอย่างไร?"

**Agent คิด:** ต้องค้นหาจาก Knowledge Base
→ เรียก `search_knowledge_base({ "query": "CPI การคำนวณ" })`

**ผล Retrieval:** ดึงชัง 3 chunks จากรายงานสถิติราคา

**คำตอบ Agent:**
"ดัชนีราคาผู้บริโภค (CPI) คำนวณจากราคาสินค้าและบริการในตะกร้าอ้างอิง โดยเปรียบเทียบกับปีฐาน... (อ้างอิง: รายงานสถิติราคา สำนักงานสถิติแห่งชาติ)"

---

<!-- _class: divider -->

## 03
## Workshop B

Agent วิเคราะห์ข้อมูลสถิติด้วย Sheets

---

## Workshop B: Agent + Statistics Database Tool

### เป้าหมาย

Agent ดึงข้อมูลสถิติจาก Google Sheets → คำนวณ → ตอบคำถามพร้อมตัวเลขจริง

### ตั้งค่า Google Sheets Database

| Sheet | คอลัมน์ | ข้อมูล |
|---|---|---|
| `employment` | year, month, rate, total | อัตราการจ้างงานรายเดือน |
| `population` | year, province, total, growth | สถิติประชากรรายจังหวัด |
| `price_index` | year, month, cpi, ppi | ดัชนีราคา |

---
<!-- _class: dense -->
## Workshop B: Tool `query_statistics_db`

### Sub-Workflow สำหรับ Tool นี้

```
[Execute Workflow Trigger]
  Input: { "sheet": "employment", "year": "2567" }
      ↓
[Google Sheets Node: Read Rows]
  Filter: year = input.year
      ↓
[Code Node: คำนวณ Mean, Min, Max, Trend]
      ↓
[Set Node: จัดรูปแบบ Output]
      ↓
[Return ผลลัพธ์กลับ Agent]
```

---

## ขั้นตอน Workshop B — Step by Step

### การผูก Tool เข้ากับ Agent

1. สร้าง Sub-Workflow `statistics_query` (แยกไฟล์)
2. ใน Agent Node → Add Tool → **Call n8n Sub-Workflow**
3. เลือก Sub-Workflow `statistics_query`
4. ตั้ง Tool Description:

```text
ดึงและวิเคราะห์ข้อมูลสถิติจากฐานข้อมูล เช่น อัตราการจ้างงาน ประชากร ดัชนีราคา
ใช้เมื่อผู้ใช้ต้องการตัวเลขสถิติจริง หรือต้องการเปรียบเทียบข้อมูลตามช่วงเวลา
Input: { "sheet": "ชื่อ sheet", "year": "ปีที่ต้องการ", "month": "เดือน (optional)" }
```

---

## Workshop B: Test Multi-step Reasoning

### ตัวอย่างคำถามที่ซับซ้อน

**คำถาม:** "เปรียบเทียบอัตราการจ้างงานปี 2566 และ 2567 ว่าต่างกันอย่างไร และแนวโน้มเป็นอย่างไร?"

**Agent Reasoning:**
1. เรียก `query_statistics_db({ "sheet": "employment", "year": "2566" })`
2. เรียก `query_statistics_db({ "sheet": "employment", "year": "2567" })`
3. คำนวณความต่าง (ทำใน Code Node Tool)
4. สรุปแนวโน้มด้วย LLM

**คำตอบ:** "ปี 2566 อัตราการจ้างงานเฉลี่ย 66.8% ปี 2567 อยู่ที่ 67.2% เพิ่มขึ้น 0.4 percentage point แนวโน้มดีขึ้นต่อเนื่องตั้งแต่ Q2/2566..."

---

<!-- _class: divider -->

## 04
## Multi-tool Agent

รวม Knowledge Base + Database ไว้ใน Agent เดียว

---
<!-- _class: dense -->
## Multi-tool Agent Architecture

### Agent พร้อมทุก Tool สำหรับงานสถิติ

```
[Chat Trigger]
      ↓
[AI Agent Node: "NSO Statistics Assistant"]
    ├── Chat Model: GPT-4o
    ├── Memory: Window Buffer Memory (20 messages)
    └── Tools:
        ├── search_knowledge_base (RAG)
        ├── query_statistics_db   (Google Sheets)
        ├── calculate_statistics  (Code Node)
        └── generate_report       (สร้างสรุปรายงาน)
      ↓
[Respond to Chat + Log การใช้งาน]
```

---
<!-- _class: dense -->
## System Prompt สำหรับ Statistics Agent

### Prompt ที่ปรับแต่งสำหรับงานสถิติภาครัฐ

```text
คุณคือ NSO Statistics Assistant ผู้ช่วยอัจฉริยะของสำนักงานสถิติแห่งชาติ

ความสามารถของคุณ:
1. ตอบคำถามเกี่ยวกับสถิติภาครัฐด้วยข้อมูลจริง
2. ค้นหาคำนิยามและแนวทางจากเอกสารสถิติ
3. เปรียบเทียบและวิเคราะห์แนวโน้มข้อมูลสถิติ

กฎการตอบ:
- อ้างอิงแหล่งข้อมูลเสมอ
- หากไม่แน่ใจ ให้บอกว่าต้องตรวจสอบเพิ่มเติม
- ตอบเป็นภาษาไทย กระชับ และเป็นมืออาชีพ
```

---

<!-- _class: divider -->

## 05
## สรุปและบทเรียนถัดไป

Summary & What's Next

---

## สรุป Module 8

### สิ่งที่เรียนรู้ใน Module นี้

- ✅ **RAG Architecture** — Knowledge Base + Vector Store + Agent
- ✅ **Workshop A** — Agent ตอบคำถามจากเอกสารสถิติด้วย RAG
- ✅ **Workshop B** — Agent วิเคราะห์ข้อมูลจริงด้วย Statistics DB Tool
- ✅ **Multi-tool Agent** — รวม Tools หลายอย่างให้ Agent ใช้งาน
- ✅ **System Prompt** — ปรับ Prompt สำหรับงานสถิติภาครัฐ

### Module ถัดไป

**Module 9:** พัฒนา AI Agent สำหรับการใช้งานจริงในหน่วยงาน

---

<!-- _class: lead -->

# Agent สถิติพร้อมแล้ว!

**Module 9:** AI Agent สำหรับการใช้งานจริงในหน่วยงาน

มาทำให้ Agent ใช้ได้จริงในองค์กร

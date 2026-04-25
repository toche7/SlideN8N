---
marp: true
theme: mahidol
paginate: true
size: 16:9
footer: "n8n Workflow Automation | Module 9 — Workshop: AI Agent สำหรับการใช้งานจริง | สำนักงานสถิติแห่งชาติ"
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

# Workshop: AI Agent สำหรับการใช้งานจริงในหน่วยงาน

<div class="subtitle">Module 9 — Deploy AI Agent ระดับ Production สำหรับภาครัฐ</div>

**หลักสูตร** การสร้างผู้ช่วยอัจฉริยะ (AI Agent) สำหรับงานสถิติภาครัฐด้วย n8n

ผศ. ดร.ทวีศักดิ์ สมานชื่น
CBTU · คณะวิศวกรรมศาสตร์ · มหาวิทยาลัยมหิดล

---

## วัตถุประสงค์การเรียนรู้

เมื่อจบ module นี้ ผู้เรียนสามารถ:

1. **ออกแบบ** Use Case AI Agent ที่เหมาะสมกับหน่วยงานของตนเอง
2. **เชื่อมต่อ** Agent กับช่องทางจริง เช่น Line OA, Web Widget
3. **จัดการ** User Access, Logging และ Monitoring ระดับ Production
4. **ประเมิน** ความเสี่ยงและวางมาตรการ Safeguard ให้ Agent
5. **วางแผน** Roadmap การขยายระบบ AI Agent ในองค์กร

---

## เนื้อหาใน Module นี้

1. **Production Readiness** — สิ่งที่ Agent ต้องมีก่อน Deploy จริง
2. **Deployment Options** — ช่องทางการเชื่อมต่อ Agent
3. **Workshop Lab:** สร้าง Agent พร้อม Deploy
4. **Monitoring & Logging** — ดูแลระบบหลัง Deploy
5. **Roadmap & สรุปหลักสูตร** — ก้าวต่อไปสำหรับหน่วยงาน

---

<!-- _class: divider -->

## 01
## Production Readiness

สิ่งที่ต้องมีก่อน Deploy AI Agent จริง

---

## Production Readiness Checklist

### ด้านเนื้อหาและความถูกต้อง

- [ ] **System Prompt ผ่านการทดสอบ** — ทดสอบด้วยคำถาม 50+ ข้อ
- [ ] **Guardrails** — Agent ปฏิเสธคำถามนอกขอบเขตได้
- [ ] **Hallucination Mitigation** — Agent อ้างอิงแหล่งข้อมูลเสมอ
- [ ] **Thai Language Quality** — ตอบภาษาไทยถูกต้องตามบริบทราชการ

### ด้านเทคนิคและความปลอดภัย

- [ ] **Authentication** — มีการตรวจสอบผู้ใช้ก่อนเข้าถึง Agent
- [ ] **Rate Limiting** — จำกัดคำถามต่อผู้ใช้ต่อวัน
- [ ] **Sensitive Data** — ไม่ให้ Agent ตอบข้อมูลลับ
- [ ] **Fallback** — มีข้อความเมื่อ API หรือระบบล่ม

---

## Guardrails: ป้องกัน Agent ตอบผิด

### ตัวอย่าง Guardrail ใน System Prompt

```text
ข้อกำหนดสำคัญ:
1. ตอบเฉพาะคำถามที่เกี่ยวกับสถิติภาครัฐเท่านั้น
2. หากถูกถามเรื่องนอกขอบเขต ให้ตอบว่า:
   "ขออภัย ฉันสามารถให้ข้อมูลเฉพาะด้านสถิติภาครัฐเท่านั้น กรุณาติดต่อหน่วยงานที่เกี่ยวข้อง"
3. ไม่เปิดเผยข้อมูลส่วนบุคคล หรือข้อมูลที่ยังไม่ได้รับอนุญาตให้เผยแพร่
4. ทุกตัวเลขต้องมีแหล่งอ้างอิง ห้ามสร้างข้อมูลสถิติขึ้นมาเอง
```

---

<!-- _class: divider -->

## 02
## Deployment Options

ช่องทางการเชื่อมต่อ AI Agent กับผู้ใช้

---

## ช่องทาง Deploy ที่เหมาะกับภาครัฐ

### ตัวเลือกหลัก

| ช่องทาง | เหมาะกับ | ความยาก |
|---|---|---|
| **n8n Chat Widget** | Intranet หน่วยงาน | ⭐ ง่าย |
| **Line Official Account** | ประชาชน / เจ้าหน้าที่ | ⭐⭐ ปานกลาง |
| **REST API Webhook** | เชื่อมต่อระบบอื่น | ⭐⭐⭐ ยาก |
| **Web Embed (iframe)** | เว็บไซต์หน่วยงาน | ⭐⭐ ปานกลาง |

---

## Deploy ผ่าน Line OA

### โครงสร้าง Line Bot + n8n Agent

```
[Line User ส่งข้อความ]
      ↓
[Line Webhook → n8n Webhook Trigger]
      ↓
[Set Node: แปลง Line Message Format]
      ↓
[AI Agent Node: ประมวลผล]
      ↓
[HTTP Request: ส่งคำตอบกลับผ่าน Line Reply API]
      ↓
[Line User ได้รับคำตอบ]
```

### การตั้งค่า Line

1. สร้าง Line Official Account (Messaging API)
2. ตั้ง Webhook URL = n8n Webhook URL
3. เพิ่ม Channel Access Token ใน n8n Credentials

---

## Deploy ผ่าน n8n Chat Widget

### วิธีที่ง่ายที่สุด — ใช้ n8n Built-in

```
[Chat Trigger Node]
  ✅ เปิด "Make Chat Publicly Available"
  ✅ ตั้ง Initial Message: "สวัสดีครับ! ฉันคือผู้ช่วยสถิติ NSO"
  ✅ ตั้ง Title: "NSO Statistics Assistant"
      ↓
[AI Agent Node]
      ↓
[Respond to Chat]
```

**URL ที่ได้:** `https://your-n8n.domain/webhook/chat-agent`

> ฝัง iframe บนเว็บไซต์หน่วยงานได้ทันที หรือแชร์ URL ให้เจ้าหน้าที่ภายใน

---

<!-- _class: divider -->

## 03
## Workshop Lab

สร้าง Agent พร้อม Deploy สำหรับหน่วยงาน

---

## Workshop: สร้าง Agent ของหน่วยงานตัวเอง

### เป้าหมาย

ออกแบบและสร้าง AI Agent ที่ตอบสนองความต้องการของหน่วยงานของตนเอง

### ขั้นตอนการทำ Workshop

**ช่วงที่ 1: ออกแบบ (20 นาที)**
- กำหนด Use Case ที่ต้องการ
- เลือก Data Source ที่มีอยู่
- เขียน System Prompt เบื้องต้น

**ช่วงที่ 2: สร้าง (30 นาที)**
- Build Workflow ด้วย n8n
- ทดสอบและปรับปรุง

**ช่วงที่ 3: นำเสนอ (10 นาที)**
- แต่ละกลุ่ม Demo ผลงาน

---

## Template: Agency AI Agent

### โครงสร้างพื้นฐานสำหรับทุกหน่วยงาน

```
[Chat Trigger / Line Webhook]
      ↓
[Set Node: บันทึก User ID และ Timestamp]
      ↓
[AI Agent Node]
    ├── Chat Model: GPT-4o-mini (ประหยัดงบ)
    ├── Memory: Window Buffer (10 messages)
    └── Tools: [กำหนดตาม Use Case หน่วยงาน]
      ↓
[Code Node: Log การใช้งานลง Google Sheets]
      ↓
[Respond to User]
```

---

## ตัวอย่าง Use Cases แต่ละฝ่าย

### แนวทางสำหรับฝ่ายต่างๆ ในสำนักงานสถิติ

| ฝ่าย | Use Case Agent | Tools |
|---|---|---|
| **สถิติเศรษฐกิจ** | ตอบคำถาม GDP, เงินเฟ้อ | DB Query + RAG |
| **สถิติสังคม** | วิเคราะห์ข้อมูลประชากร | DB Query + Chart |
| **IT/ระบบ** | Support คำถาม IT | Knowledge Base |
| **บริการประชาชน** | แนะนำบริการสถิติ | FAQ Database |

---

<!-- _class: divider -->

## 04
## Monitoring & Logging

ดูแลระบบ AI Agent หลัง Deploy

---

## สิ่งที่ต้อง Monitor

### 4 มิติการ Monitor AI Agent

**1. Usage Monitoring**
- จำนวนคำถามต่อวัน / ต่อผู้ใช้
- Peak hours และ Pattern การใช้งาน

**2. Quality Monitoring**
- User Feedback (👍 / 👎 ปุ่มกด)
- คำถามที่ Agent ตอบไม่ได้ (Escalation rate)

**3. Cost Monitoring**
- Token consumption ต่อวัน
- ค่าใช้จ่าย OpenAI API

**4. Error Monitoring**
- API timeout / Error rate
- Workflow execution failures

---

## Logging Workflow

### บันทึก Log ทุกการสนทนา

```
หลัง AI Agent ตอบแล้ว:
      ↓
[Code Node: สร้าง Log Record]
  {
    timestamp, user_id, question,
    answer, tools_used, tokens,
    execution_time, model
  }
      ↓
[Google Sheets: Append Log]
```

### Escalation: เมื่อ Agent ตอบไม่ได้

```
[IF Node: Agent ตอบว่า "ไม่ทราบ"]
      ↓
[Email / Line Notification: แจ้งเจ้าหน้าที่]
```

---

<!-- _class: divider -->

## 05
## Roadmap & สรุปหลักสูตร

ก้าวต่อไปสำหรับองค์กร

---

## AI Agent Maturity Model

### 4 ระดับของการพัฒนา AI Agent

| ระดับ | สถานะ | ตัวอย่าง |
|---|---|---|
| **Level 1: Basic** | Chatbot ตามสคริปต์ | FAQ Bot ง่ายๆ |
| **Level 2: RAG** | ตอบจากเอกสาร | Knowledge Base Agent |
| **Level 3: Tools** | ดึงข้อมูลและคำนวณได้ | Statistics Agent (Module นี้) |
| **Level 4: Agentic** | วางแผนและทำงานหลายขั้นตอน | Autonomous Data Pipeline |

---

## Roadmap สำหรับหน่วยงาน

### แนะนำ Timeline การพัฒนา

**เดือนที่ 1–2 (Quick Win)**
- Deploy Agent FAQ ภายในหน่วยงาน
- เก็บ Feedback จากผู้ใช้

**เดือนที่ 3–4 (Expand)**
- เพิ่ม Tools เชื่อมต่อฐานข้อมูลจริง
- ขยาย Knowledge Base

**เดือนที่ 5–6 (Production)**
- เปิดให้บริการประชาชน
- Monitor และปรับปรุงอย่างต่อเนื่อง

---

## สรุปหลักสูตรทั้ง 2 วัน

### สิ่งที่ได้เรียนรู้

| Day | Modules | ทักษะหลัก |
|---|---|---|
| **Day 1** | M1–M4 | Workflow Automation, n8n, Data Pipeline |
| **Day 1** | M5–M7 | Sentiment Analysis, Encryption, Basic AI Agent |
| **Day 2** | M8–M9 | Advanced AI Agent, RAG, Production Deploy |

### ทักษะที่นำกลับไปใช้ได้ทันที
- สร้าง Workflow ดึงข้อมูลอัตโนมัติ
- สร้าง AI Chatbot สำหรับหน่วยงาน
- วิเคราะห์ความพึงพอใจแบบ Batch

---

<!-- _class: lead -->

# ยินดีด้วย! สำเร็จหลักสูตรแล้ว

**หลักสูตร** การสร้างผู้ช่วยอัจฉริยะ (AI Agent) สำหรับงานสถิติภาครัฐด้วย n8n 
CBTU · คณะวิศวกรรมศาสตร์ · มหาวิทยาลัยมหิดล

ขอบคุณทุกท่านที่เข้าร่วม — นำความรู้ไปพัฒนาหน่วยงานได้เลย 🎓

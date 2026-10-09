---
marp: true
theme: mahidol
paginate: true
size: 16:9
footer: "n8n Workflow Automation | Module 5 — Workshop: Sentiment Analysis & Satisfaction | สำนักงานสถิติแห่งชาติ"
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

# Workshop: Sentiment Analysis & วิเคราะห์ความพึงพอใจ

<div class="subtitle">Module 5 — วิเคราะห์ความคิดเห็นและความพึงพอใจด้วย n8n + AI</div>

**หลักสูตร** การสร้างผู้ช่วยอัจฉริยะ (AI Agent) สำหรับงานสถิติภาครัฐด้วย n8n

ผศ. ดร.ทวีศักดิ์ สมานชื่น
CBTU · คณะวิศวกรรมศาสตร์ · มหาวิทยาลัยมหิดล

---

## วัตถุประสงค์การเรียนรู้

เมื่อจบ module นี้ ผู้เรียนสามารถ:

1. **อธิบาย** หลักการ Sentiment Analysis และการใช้งานในงานภาครัฐ
2. **สร้าง** Workflow Sentiment Analysis อัตโนมัติด้วย n8n และ AI
3. **ออกแบบ** Pipeline วิเคราะห์ความพึงพอใจผู้ใช้บริการแบบ End-to-End
4. **ประมวลผล** ข้อมูล Dummy 100 ชุดและสรุปผลอัตโนมัติ
5. **แสดงผล** สถิติสรุปและ Dashboard ผ่าน Google Sheets

---

## เนื้อหาใน Module นี้

1. **Sentiment Analysis คืออะไร?** — หลักการและการประยุกต์
2. **AI สำหรับวิเคราะห์ข้อความภาษาไทย** — LLM และ Prompt Engineering
3. **Workshop Part A:** สร้าง Workflow Sentiment Analysis
4. **Workshop Part B:** วิเคราะห์ความพึงพอใจผู้ใช้บริการ (Dummy Data 100 ชุด)
5. **สรุปผลและ Dashboard** — แสดงผลใน Google Sheets

---

<!-- _class: divider -->

## 01
## Sentiment Analysis คืออะไร?

Text Analysis for Government Services

---

## Sentiment Analysis ในงานภาครัฐ

### การวิเคราะห์ความคิดเห็นอัตโนมัติ

- **Sentiment Analysis** — จำแนกข้อความว่า "บวก / กลาง / ลบ" โดยอัตโนมัติ
- **Use Case ภาครัฐ** — วิเคราะห์ความคิดเห็นต่อนโยบาย, บริการ, แบบประเมิน
- **Traditional vs AI** — จากคีย์เวิร์ดธรรมดา สู่ LLM ที่เข้าใจบริบทภาษาไทย

### ความแตกต่างของ Sentiment

| ระดับ | ตัวอย่างข้อความ | ความหมาย |
|---|---|---|
| **Positive** | "บริการดีมาก ประทับใจ" | พอใจ / ชื่นชม |
| **Neutral** | "ได้รับบริการตามปกติ" | กลาง / ไม่แสดงความรู้สึก |
| **Negative** | "รอนานมาก ไม่พอใจ" | ไม่พอใจ / ต้องปรับปรุง |

---

## ทำไมต้องใช้ AI สำหรับภาษาไทย?

### ความซับซ้อนของภาษาไทย

- 🗣️ **ภาษาพูด vs ภาษาเขียน** — ความแตกต่างสูงในการสื่อสาร
- 🔄 **บริบทมีผล** — "ดีนะ" อาจเป็นการเสียดีได้
- 📝 **คำย่อ / ภาษาสแลง** — ใช้กันทั่วไปในแบบประเมิน
- 🤖 **LLM เข้าใจบริบท** — GPT / Claude วิเคราะห์ได้แม่นกว่า Keyword Matching

### n8n + AI Integration

```
รับข้อความ → ส่งให้ LLM (via n8n AI Node) → ได้ผล Sentiment + เหตุผล
```

---
## Prompt Engineering: Prompt Template 
> **System Message:** คุณเป็นผู้เชี่ยวชาญวิเคราะห์ความคิดเห็นภาษาไทย ตอบเฉพาะในรูปแบบ JSON เท่านั้น  
> รูปแบบ: `{ "sentiment": "positive|neutral|negative", "score": 1-10, "summary": "สรุปสั้นๆ", "category": "หมวดหมู่" }`

> **User:**  `วิเคราะห์ความคิดเห็นนี้: "เจ้าหน้าที่ใจดีมาก แต่ต้องรอนานกว่า 2 ชั่วโมง"`

> **AI:** 
>  ```json
> { "sentiment": "neutral", "score": 5,
>   "summary": "พนักงานบริการดี แต่มีปัญหาเรื่องเวลารอ",
>   "category": "เวลารอ / ขั้นตอน" }


---
## Prompt Engineering
### หลักการ Prompt ที่ดี
- กำหนด Role ชัดเจน
- ระบุ Output Format (JSON)
- ให้ตัวอย่าง (Few-shot) ถ้าจำเป็น


---

<!-- _class: divider -->

## 02
## Prompt Engineering สำหรับ Sentiment

การออกแบบ Prompt เพื่อวิเคราะห์ภาษาไทย

---

## หลักการเขียน Prompt สำหรับ Sentiment

### Structured Prompt Template

```text
คุณเป็นผู้เชี่ยวชาญวิเคราะห์ความคิดเห็นภาษาไทย
วิเคราะห์ข้อความต่อไปนี้และตอบในรูปแบบ JSON: 
{
  "sentiment": "positive" | "neutral" | "negative",
  "score": 1-10,
  "summary": "สรุปสั้นๆ",
  "category": "หมวดหมู่ปัญหา"
}
```


---

<!-- _class: divider -->

## 03
## Workshop Part A

สร้าง Workflow Sentiment Analysis

---

## Workshop A: Sentiment Analysis Workflow


###  Workflow
<div class="center">

![w:900px](fig/m5_Ex1.png)

</div>


---

## ตัวอย่างผลลัพธ์ Workshop A

### Input → Output

**Input ข้อความ:** `"เจ้าหน้าที่ใจดี แต่รอนานมากกว่า 2 ชั่วโมง"`

**Output จาก LLM:**
```json
{
  "sentiment": "neutral",
  "score": 5,
  "summary": "พนักงานบริการดี แต่มีปัญหาเรื่องเวลารอ",
  "category": "เวลารอ / ขั้นตอน"
}
```

---
## ตัวอย่างผลลัพธ์ Workshop A (ต่อ) 

**บันทึกลง Google Sheets** → คอลัมน์: วันที่, ข้อความ, Sentiment, Score, Summary, Category

> Note: Score ที่ได้จากการทำงานของ LLM ไม่ได้เป็นผลการคำนวณแต่เป็นการประมาณค่าของ LLM ต้องระมัดระวังในการนำไปใช้งาน

---

<!-- _class: divider -->

## 04
## Workshop Part B

วิเคราะห์ความพึงพอใจผู้ใช้บริการ (Dummy Data 100 ชุด)

---

## Workshop B: Satisfaction Analysis Pipeline

### ประมวลผล Dummy Data แบบสำรวจความพึงพอใจ 100 ชุด แบบ Batch อัตโนมัติ
Data : [Sentiment Data (Click!!!)](https://docs.google.com/spreadsheets/d/1RhQWTeL1bKHKBOYOZRroSpC8VWmeCPMCMjfuFXqMhDA/edit?usp=sharing)
### โครงสร้าง Dummy Data

| ฟิลด์ | คำอธิบาย | ตัวอย่าง |
|---|---|---|
| `id` | รหัสผู้ตอบ | 001–100 |
| `service_point` | จุดบริการ | เคาน์เตอร์ A, B, C |
| `feedback` | ข้อความความคิดเห็น | "บริการรวดเร็ว ประทับใจ" |
| `rating` | คะแนน 1–5 | 4 |
| `date` | วันที่ทำแบบสอบถาม | 2025-01-15 |

---

## โครงสร้าง Workflow Batch Processing

### Workshop B Workflow

<div class="center">

![w:900px](fig/m5_Ex2.png)

</div>


---

## ขั้นตอน Workshop B — Step by Step

### Step 1–3: โหลดข้อมูล

1. **Manual Trigger** — กด Execute ครั้งเดียวประมวลผลทั้งหมด
2. **Google Sheets Node** — อ่าน Sheet `dummy_data` ทั้ง 100 แถว
3. **SplitInBatches Node** — ตั้ง `batch size = 10` เพื่อไม่ให้ API เกิน Rate Limit

### Step 4–6: ประมวลผลและสรุป

4. **AI/LLM Node** — ส่ง `feedback` ทีละรายการ รับ sentiment + score
5. **Code Node** — สรุปสถิติ: % Positive, % Negative, Average Score
6. **Google Sheets** — เขียนผลลัพธ์ทั้ง 100 แถว + Sheet สรุป

---

## ตัวอย่างผลสรุป 100 ชุด

### Summary Dashboard (Google Sheets)

| หมวดหมู่ | จำนวน | % |
|---|---|---|
| **Positive** | 67 | 67% |
| **Neutral** | 22 | 22% |
| **Negative** | 11 | 11% |
| **Average Score** | 7.4/10 | — |

### Top Issues (Negative)
1. **เวลารอนาน** — 5 ราย
2. **ขั้นตอนซับซ้อน** — 4 ราย
3. **ข้อมูลไม่ครบ** — 2 ราย

---

## Tips: Batch Processing ใน n8n

### ปัญหาที่พบบ่อยและวิธีแก้

- ⏱️ **Rate Limit** — ใช้ `Wait Node` หน่วง 1 วินาทีระหว่าง batch
- ❌ **LLM Error** — ใช้ `Error Trigger` + Retry logic
- 📏 **Token Limit** — ตัดข้อความที่ยาวเกิน 500 ตัวอักษรก่อนส่ง
- 🔄 **ข้อมูลไม่สม่ำเสมอ** — ใช้ `IF Node` จัดการ null/empty fields

### Best Practice
```
ทดสอบด้วย 5 แถวก่อน → ตรวจสอบ Output → แล้วค่อย Run ทั้ง 100
```

---

<!-- _class: divider -->

## 05
## สรุปและบทเรียนถัดไป

Summary & What's Next

---

## สรุป Module 5

### สิ่งที่เรียนรู้ใน Module นี้

- ✅ **Sentiment Analysis** — หลักการและการประยุกต์กับงานภาษาไทย
- ✅ **Prompt Engineering** — ออกแบบ Prompt ให้ได้ผล JSON มีโครงสร้าง
- ✅ **Workshop A** — Webhook → LLM → Google Sheets แบบ Real-time
- ✅ **Workshop B** — Batch Processing ข้อมูล 100 ชุดอัตโนมัติ
- ✅ **สรุปสถิติ** — % Positive/Negative และ Top Issues อัตโนมัติ

### Module ถัดไป

**Module 6:** Encryption Sensitive Data — ปกป้องข้อมูลสำคัญใน Workflow

---

<!-- _class: lead -->

# Workshop สำเร็จ!

**Module 6:** Encryption Sensitive Data

ข้อมูลที่วิเคราะห์ได้ ต้องปกป้องด้วยการเข้ารหัส

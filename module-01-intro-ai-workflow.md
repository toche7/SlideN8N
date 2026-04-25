---
marp: true
theme: mahidol-purple
paginate: true
size: 16:9
footer: "n8n Workflow Automation | Module 1 — Introduction AI and Workflow Automation | สำนักงานสถิติแห่งชาติ"
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

# Introduction AI and Workflow Automation

<div class="subtitle">Module 1 — ภาพรวม Workflow Automation สำหรับงานสถิติภาครัฐ</div>

**หลักสูตร** การสร้างผู้ช่วยอัจฉริยะ (AI Agent) สำหรับงานสถิติภาครัฐด้วย n8n 

ผศ. ดร.ทวีศักดิ์ สมานชื่น
CBTU · คณะวิศวกรรมศาสตร์ · มหาวิทยาลัยมหิดล

---

## วัตถุประสงค์การเรียนรู้

เมื่อจบ module นี้ ผู้เรียนสามารถ:

1. **อธิบาย** แนวคิด AI และ Automation ในบริบทงานสถิติภาครัฐ
2. **เข้าใจ** ประโยชน์และความสำคัญของ Workflow Automation
3. **ระบุ** Use Cases การใช้ Workflow Automation ในงานสถิติ
4. **ประเมิน** ความพร้อมขององค์กรในการนำ Automation มาใช้
5. **วางแผน** แนวทางเริ่มต้น Automation สำหรับหน่วยงานของตน

---

## เนื้อหาใน Module นี้

1. **AI & Automation ในยุคปัจจุบัน** — ภาพรวมและแนวโน้ม
2. **Workflow Automation คืออะไร?** — นิยามและหลักการ
3. **งานสถิติภาครัฐ** — ปัญหาและความท้าทาย
4. **Use Cases** — ตัวอย่างการใช้งานจริง
5. **Tools Ecosystem** — เครื่องมือที่ใช้งานได้
6. **n8n Overview** — ทำไมต้อง n8n?

---

<!-- _class: divider -->

## 01
## AI & Automation ในยุคปัจจุบัน

The Rise of AI-Powered Automation

---

## Automation คืออะไร?

### ระบบอัตโนมัติในบริบทงานข้อมูล

- **Manual Process** — มนุษย์ทำงานทุกขั้นตอนด้วยตนเอง
- **Automation** — ระบบทำงานซ้ำ ๆ แทนมนุษย์โดยอัตโนมัติ
- **AI-Powered Automation** — ระบบตัดสินใจและปรับตัวได้ด้วย AI

> "Automation is not about replacing humans — it's about freeing humans to do more meaningful work."

---

## แนวโน้มระดับโลก

### Digital Transformation ภาครัฐ

- 🌐 **Open Government Data** — ภาครัฐเปิดเผยข้อมูลสู่สาธารณะ
- 📊 **Data-Driven Policy** — นโยบายอิงข้อมูลเชิงประจักษ์
- 🤖 **AI in Public Sector** — ประยุกต์ AI ในกระบวนการราชการ
- ⚡ **Real-time Analytics** — วิเคราะห์ข้อมูลแบบ Real-time

### ไทยกับ Digital Government

- แผน Digital Economy และ Society ของประเทศไทย
- การพัฒนา Data Infrastructure ภาครัฐ

---

<!-- _class: divider -->

## 02
## Workflow Automation คืออะไร?

What is Workflow Automation?

---

## นิยามและหลักการ

### Workflow Automation

**Workflow** = ลำดับขั้นตอนการทำงานที่เชื่อมต่อกัน
**Automation** = การให้ระบบทำงานเหล่านั้นโดยอัตโนมัติ

### ส่วนประกอบหลัก

| ส่วนประกอบ | ความหมาย | ตัวอย่าง |
|---|---|---|
| **Trigger** | สิ่งที่เริ่มต้น Workflow | เวลา, เหตุการณ์, ข้อมูลใหม่ |
| **Action** | งานที่ระบบทำ | ดึงข้อมูล, แปลง, ส่งรายงาน |
| **Integration** | การเชื่อมต่อระบบ | API, Database, Email |

---

## ประโยชน์ของ Workflow Automation

### สำหรับงานสถิติและข้อมูล

- ⏱️ **ประหยัดเวลา** — ลดงาน Manual ที่ทำซ้ำๆ ได้ถึง 80%
- 🎯 **ลด Human Error** — ข้อมูลถูกต้องและสม่ำเสมอมากขึ้น
- 📈 **Scalability** — รองรับข้อมูลปริมาณมากโดยไม่ต้องเพิ่มคน
- 🔄 **Real-time** — ประมวลผลและรายงานได้ทันที
- 💡 **ทรัพยากรมีคุณค่ามากขึ้น** — เจ้าหน้าที่โฟกัสงานที่มีคุณค่าสูง

---

<!-- _class: divider -->

## 03
## งานสถิติภาครัฐ

ปัญหาและความท้าทายในปัจจุบัน

---

## ปัญหาที่พบบ่อยในงานสถิติภาครัฐ

### กระบวนการที่ต้องปรับปรุง

- 📋 **รวบรวมข้อมูลด้วยมือ** — Copy-paste ข้อมูลจากหลายแหล่ง
- 🗂️ **ข้อมูลกระจัดกระจาย** — อยู่ใน Excel, PDF, ระบบต่างๆ
- ⏰ **รายงานล่าช้า** — กว่าจะได้ข้อมูลก็หมดประโยชน์แล้ว
- 🔁 **ทำซ้ำทุกเดือน** — งานเดิมทุกรอบโดยไม่มีการอัตโนมัติ
- ❌ **ข้อมูลผิดพลาด** — Human Error จากการทำด้วยมือ

---

## กระบวนการทำงานสถิติที่พบบ่อย

### Before Automation

```
1. เปิด Excel → 2. ดาวน์โหลดข้อมูลจากหลายแหล่ง (ด้วยมือ)
→ 3. Copy-paste รวมกัน → 4. ทำ Pivot Table
→ 5. สร้าง Chart → 6. ส่ง Email รายงาน
→ (ทำซ้ำทุกเดือน / ทุกสัปดาห์)
```

### After Automation

```
ตั้งเวลา → ระบบดึงข้อมูลอัตโนมัติ → ประมวลผล
→ สร้างรายงาน → ส่งรายงานให้ผู้บริหาร
(ทำงานอัตโนมัติ ไม่ต้องดูแล)
```

---

<!-- _class: divider -->

## 04
## Use Cases

ตัวอย่างการใช้ Workflow Automation ในงานสถิติ

---

## Use Case 1: รายงานสถิติอัตโนมัติ

### Monthly Statistics Report

**ปัญหา:** เจ้าหน้าที่ใช้เวลา 2 วันต่อเดือนรวบรวมข้อมูลสถิติ

**วิธีแก้ด้วย Automation:**
1. **Trigger:** ทุกวันที่ 1 ของเดือน เวลา 08:00
2. **Action 1:** ดึงข้อมูลจากฐานข้อมูลภาครัฐ (API)
3. **Action 2:** คำนวณและสรุปสถิติ
4. **Action 3:** สร้าง Dashboard อัตโนมัติ


**ผล:** ประหยัดเวลา 16 ชั่วโมง/เดือน

---

## Use Case 2: แจ้งเตือนข้อมูลผิดปกติ

### Anomaly Detection Alert

**ปัญหา:** ข้อมูลผิดปกติถูกค้นพบช้า ทำให้รายงานผิดพลาด

**วิธีแก้ด้วย Automation:**
1. **Trigger:** มีข้อมูลใหม่เข้าระบบ
2. **Action 1:** ตรวจสอบความสมเหตุสมผลของข้อมูล
3. **Action 2:** เปรียบเทียบกับค่าเฉลี่ยย้อนหลัง
4. **Action 3:** หากพบความผิดปกติ → แจ้งเตือน LINE/Email

**ผล:** ตรวจพบปัญหาได้เร็วขึ้น จากหลายวัน เหลือไม่กี่นาที

---

## Use Case 3: รวบรวมข้อมูลจากหลายแหล่ง

### Data Aggregation Pipeline

**แหล่งข้อมูลที่พบในงานสถิติภาครัฐ:**

| แหล่งข้อมูล | ประเภท | ความถี่ |
|---|---|---|
| Open Government Data | REST API | รายวัน |
| ฐานข้อมูลภายใน | SQL Database | Real-time |
| ไฟล์ Excel/CSV | File Upload | รายเดือน |
| รายงาน PDF | OCR / Parsing | ราย Quarter |
| แบบสำรวจออนไลน์ | Form API | ต่อเนื่อง |

---

<!-- _class: divider -->

## 05
## Tools Ecosystem

เครื่องมือ Workflow Automation ที่ใช้งานได้

---

## ภาพรวม No-Code / Low-Code Automation Tools

### เปรียบเทียบเครื่องมือยอดนิยม

| Tool | ประเภท | จุดเด่น | เหมาะกับ |
|---|---|---|---|
| **n8n** | Open Source | Self-hosted, Flexible | Developer / IT |
| **Zapier** | Cloud SaaS | ง่าย, เร็ว | Business Users |
| **Make (Integromat)** | Cloud SaaS | Visual, Powerful | Mid-level |
| **Power Automate** | Microsoft | Microsoft 365 | องค์กรที่ใช้ MS |
| **Apache Airflow** | Open Source | Data Pipeline | Data Engineer |

---

## ทำไมต้อง n8n?

### ข้อดีของ n8n สำหรับภาครัฐ

- 🔓 **Open Source & Free** — ไม่มีค่าใช้จ่าย License
- 🏛️ **Self-hosted** — ข้อมูลอยู่ในองค์กร ไม่ออกไปภายนอก
- 🔒 **Data Privacy** — เหมาะกับข้อมูลภาครัฐที่ต้องรักษาความลับ
- 🔌 **400+ Integrations** — เชื่อมต่อได้กับระบบมากมาย
- 💻 **Visual Interface** — สร้าง Workflow ด้วย Drag & Drop
- 🤖 **AI Integration** — รองรับ AI/LLM nodes

---

<!-- _class: divider -->

## 06
## เริ่มต้น Automation

แนวทางการนำ Workflow Automation มาใช้ในองค์กร

---

## Framework การเริ่มต้น Automation

### 3 ขั้นตอนสู่ Automation

**ขั้นที่ 1: Identify**
- รวบรวมงาน Manual ที่ทำซ้ำๆ
- ประเมินเวลาและความถี่

**ขั้นที่ 2: Design**
- วาง Workflow ที่ต้องการ
- กำหนด Trigger, Action, Output



---
## Framework การเริ่มต้น Automation (ต่อ)



**ขั้นที่ 3: Implement & Monitor**
- สร้าง Workflow ด้วย n8n
- ทดสอบและปรับปรุง

---

## Automation Readiness Checklist

### ประเมินความพร้อมของหน่วยงาน

- [ ] มีงาน Manual ที่ทำซ้ำๆ อย่างสม่ำเสมอ
- [ ] ข้อมูลมีโครงสร้างที่ชัดเจน (มี API หรือ Database)
- [ ] มีเจ้าหน้าที่ IT สนับสนุน
- [ ] มี Server หรือ Cloud สำหรับ Deploy n8n
- [ ] ผู้บริหารสนับสนุนการเปลี่ยนแปลง

> **เริ่มเล็กก็ได้** — เลือก Use Case ง่ายๆ 1 อย่างแล้วทดลองทำก่อน

---

<!-- _class: divider -->

## 07
## สรุปและบทเรียนถัดไป

Summary & What's Next

---

## สรุป Module 1

### สิ่งที่เรียนรู้ใน Module นี้

- ✅ **AI & Automation** คืออะไรและมีแนวโน้มอย่างไรในภาครัฐ
- ✅ **Workflow Automation** ช่วยลดงาน Manual และ Human Error
- ✅ **ปัญหางานสถิติภาครัฐ** ที่ Automation ช่วยแก้ได้
- ✅ **Use Cases** หลากหลายที่ประยุกต์ใช้ได้จริง
- ✅ **n8n** เป็นตัวเลือกที่เหมาะกับภาครัฐไทย

### Module ถัดไป

**Module 2:** Introduction to n8n — Interface, Nodes และการตั้งค่าเบื้องต้น

---

<!-- _class: lead -->

# พร้อมแล้วสำหรับ n8n!

**Module 2:** Introduction to n8n

มาเรียนรู้เครื่องมือที่จะเปลี่ยนวิธีทำงานของคุณ

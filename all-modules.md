---
marp: true
theme: mahidol
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
  <img src="fig/logos/logo-bdi.png" alt="BDI">
</div>

# Introduction AI and Workflow Automation

<div class="subtitle">Module 1 — ภาพรวม Workflow Automation สำหรับงานสถิติภาครัฐ</div>

**หลักสูตร** n8n Workflow Automation for Government Statistics
สถาบัน BDI · มหาวิทยาลัยมหิดล

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
- **Automation** — ระบบทำงานซ้ำๆ แทนมนุษย์โดยอัตโนมัติ
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
5. **Action 4:** ส่ง Email รายงานให้ผู้บริหาร

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

---

<!-- footer: "n8n Workflow Automation | Module 2 — Introduction to n8n | สำนักงานสถิติแห่งชาติ" -->


<!-- _class: lead -->

<style scoped>
.logo-bar { position: absolute; top: 36px; right: 64px; display: flex; align-items: center; gap: 16px; }
.logo-bar img { width: 100px; height: 100px; object-fit: contain; }
</style>

<div class="logo-bar">
  <img src="fig/logos/mahidol.svg" alt="Mahidol University">
  <img src="fig/logos/logo-bdi.png" alt="BDI">
</div>

# Introduction to n8n

<div class="subtitle">Module 2 — รู้จัก n8n: เครื่องมือ Workflow Automation</div>

**หลักสูตร** n8n Workflow Automation for Government Statistics
สถาบัน BDI · มหาวิทยาลัยมหิดล

---

## วัตถุประสงค์การเรียนรู้

เมื่อจบ module นี้ ผู้เรียนสามารถ:

1. **อธิบาย** สถาปัตยกรรมและหลักการทำงานของ n8n
2. **ระบุ** ส่วนประกอบหลักและ Node Types ต่างๆ
3. **ใช้งาน** Interface ของ n8n ได้อย่างคล่องแคล่ว
4. **ตั้งค่า** Credentials เพื่อเชื่อมต่อกับบริการภายนอก
5. **สร้าง** Workflow เบื้องต้นอย่างง่ายได้

---

## เนื้อหาใน Module นี้

1. **n8n คืออะไร?** — ประวัติ, ลักษณะ, ความสามารถ
2. **สถาปัตยกรรม n8n** — Self-hosted vs Cloud
3. **Interface ของ n8n** — ทำความคุ้นเคยกับ UI
4. **Node Types** — ประเภทของ Nodes ต่างๆ
5. **Credentials & Connections** — การเชื่อมต่อบริการภายนอก
6. **Data Flow** — ข้อมูลไหลอย่างไรใน n8n

---

<!-- _class: divider -->

## 01
## n8n คืออะไร?

What is n8n?

---

## รู้จัก n8n

### n8n — Workflow Automation Platform

- **ชื่อ:** n8n (อ่านว่า "nodemation")
- **ปีที่เริ่มต้น:** 2019 โดย Jan Oberhauser
- **License:** Fair-code (Source Available)
- **GitHub:** github.com/n8n-io/n8n
- **Integrations:** 400+ บริการและ API

### คำขวัญ

> "Build complex automations 10x faster, without fighting APIs"

---

## ความสามารถหลักของ n8n

### Core Features

| ความสามารถ | รายละเอียด |
|---|---|
| **Visual Workflow Builder** | Drag & Drop ไม่ต้องเขียนโค้ด |
| **Code Node** | เขียน JavaScript/Python ได้เมื่อต้องการ |
| **Trigger Nodes** | Webhook, Schedule, Event-based |
| **400+ Integrations** | APIs, Databases, Apps |
| **AI Nodes** | LangChain, OpenAI, Ollama |
| **Self-hosted** | ควบคุมข้อมูลได้ 100% |

---

## n8n เทียบกับเครื่องมืออื่น

### ข้อดีที่โดดเด่น

```
Zapier          → ง่าย แต่แพง และข้อมูลผ่าน Cloud
Make            → ดี แต่ค่าใช้จ่ายตาม Operation
Power Automate  → ดีสำหรับ Microsoft แต่ Lock-in
─────────────────────────────────────────────
n8n             → Open Source + Self-hosted
                  ข้อมูลอยู่ในองค์กร
                  ไม่มีค่าใช้จ่าย License
                  ยืดหยุ่นสูง + Custom Code
```

---

<!-- _class: divider -->

## 02
## สถาปัตยกรรม n8n

n8n Architecture & Deployment

---

## วิธีติดตั้ง n8n

### ตัวเลือกการ Deploy

**Option 1: Docker (แนะนำสำหรับภาครัฐ)**
```bash
docker run -it --rm \
  --name n8n \
  -p 5678:5678 \
  -v ~/.n8n:/home/node/.n8n \
  n8nio/n8n
```

**Option 2: npm**
```bash
npm install n8n -g
n8n start
```

**Option 3: n8n Cloud** — cloud.n8n.io (ต้องการ Subscription)

---

## สถาปัตยกรรมภายใน

### องค์ประกอบของ n8n

```
┌─────────────────────────────────────┐
│              n8n Server             │
│                                     │
│  ┌─────────┐    ┌───────────────┐  │
│  │  Editor │    │  Workflow     │  │
│  │   UI    │───▶│  Engine       │  │
│  └─────────┘    └───────┬───────┘  │
│                         │          │
│  ┌──────────────────────▼───────┐  │
│  │     Node Execution Layer     │  │
│  └──────────────────────────────┘  │
└─────────────────────────────────────┘
           │               │
    External APIs     Local Database
```

---

<!-- _class: divider -->

## 03
## Interface ของ n8n

Getting Familiar with n8n UI

---

## ส่วนประกอบหลักของ UI

### หน้า Dashboard หลัก

- 📋 **Workflows** — รายการ Workflow ทั้งหมด
- 🔑 **Credentials** — จัดการการเชื่อมต่อ API/Service
- ⚙️ **Settings** — ตั้งค่าระบบ
- 📊 **Executions** — ประวัติการรัน Workflow

### Editor Canvas

- **Node Panel** — รายการ Nodes ทั้งหมด (ด้านซ้าย)
- **Canvas** — พื้นที่วาง Workflow (ตรงกลาง)
- **Node Settings** — ตั้งค่า Node ที่เลือก (ด้านขวา)
- **Execution Log** — ผลการรัน (ด้านล่าง)

---

## การใช้ Canvas

### Keyboard Shortcuts ที่ใช้บ่อย

| คำสั่ง | Shortcut |
|---|---|
| เพิ่ม Node ใหม่ | `Tab` หรือ คลิก `+` |
| บันทึก Workflow | `Ctrl/Cmd + S` |
| รัน Workflow | `Ctrl/Cmd + Enter` |
| Zoom In/Out | `Ctrl/Cmd + Scroll` |
| Select All | `Ctrl/Cmd + A` |
| ลบ Node | `Delete` / `Backspace` |
| Duplicate Node | `Ctrl/Cmd + D` |

---

<!-- _class: divider -->

## 04
## Node Types

ประเภท Nodes ใน n8n

---

## ประเภทของ Nodes

### Trigger Nodes — จุดเริ่มต้นของ Workflow

| Node | การทำงาน |
|---|---|
| **Schedule Trigger** | รันตามเวลาที่กำหนด (cron) |
| **Webhook** | รับ HTTP Request จากภายนอก |
| **Manual Trigger** | รันด้วยตนเอง (สำหรับทดสอบ) |
| **Email Trigger (IMAP)** | ทำงานเมื่อได้รับอีเมล |
| **File Trigger** | ทำงานเมื่อมีไฟล์ใหม่ |

---

## Action Nodes ที่ใช้บ่อย

### สำหรับงานสถิติและข้อมูล

| Node | การใช้งาน |
|---|---|
| **HTTP Request** | เรียก REST API ต่างๆ |
| **Code** | เขียน JavaScript / Python |
| **Set** | กำหนดค่าตัวแปร |
| **IF / Switch** | เงื่อนไขการทำงาน |
| **Merge / Split** | รวมหรือแยกข้อมูล |
| **Spreadsheet File** | อ่าน/เขียน Excel/CSV |
| **Send Email** | ส่งอีเมลรายงาน |
| **Postgres / MySQL** | เชื่อมต่อฐานข้อมูล |

---

## Data Transformation Nodes

### จัดการข้อมูลใน n8n

```
Input Data (JSON)
       │
       ▼
┌─────────────┐     ┌───────────────┐
│  Filter /   │────▶│  Aggregate /  │
│  If Node    │     │  Summarize    │
└─────────────┘     └───────────────┘
       │                    │
       ▼                    ▼
┌─────────────┐     ┌───────────────┐
│  Code Node  │     │  Set Node     │
│  (JS/Python)│     │  (Transform)  │
└─────────────┘     └───────────────┘
```

---

<!-- _class: divider -->

## 05
## Credentials & Connections

การตั้งค่าการเชื่อมต่อบริการภายนอก

---

## Credentials คืออะไร?

### การจัดการ API Keys และ Authentication

- **Credentials** = ข้อมูลการยืนยันตัวตนสำหรับบริการภายนอก
- n8n เข้ารหัส Credentials ด้วย AES-256
- สร้างครั้งเดียว ใช้ได้กับ Workflow ทุกอัน

### ประเภท Authentication ที่รองรับ

| ประเภท | ตัวอย่าง |
|---|---|
| **API Key** | Most REST APIs |
| **OAuth2** | Google, Microsoft |
| **Basic Auth** | Username + Password |
| **Bearer Token** | JWT APIs |
| **Custom Header** | Custom APIs |

---

## การตั้งค่า Credentials

### ขั้นตอนการเพิ่ม Credential

1. ไปที่ **Settings → Credentials → Add Credential**
2. ค้นหาบริการที่ต้องการ (เช่น HTTP Request, Gmail)
3. กรอกข้อมูล API Key หรือ OAuth
4. กด **Save & Test** เพื่อทดสอบ
5. ใช้ Credential นี้ใน Workflow ได้ทันที

> **ข้อควรระวัง:** อย่าเก็บ API Key ไว้ใน Node Parameters โดยตรง ใช้ Credentials เสมอ

---

<!-- _class: divider -->

## 06
## Data Flow ใน n8n

How Data Flows Through n8n

---

## โครงสร้างข้อมูลใน n8n

### n8n ใช้ JSON เป็นรูปแบบข้อมูลหลัก

```json
{
  "json": {
    "id": 1,
    "name": "สำมะโนประชากร 2566",
    "value": 71480000,
    "province": "กรุงเทพมหานคร"
  },
  "binary": {}
}
```

- ข้อมูลไหลเป็น **Array of Items**
- แต่ละ Item มี `json` และ `binary` property
- Nodes รับ → ประมวลผล → ส่งต่อ Items

---

## Expression Language

### การอ้างอิงข้อมูลใน n8n

```
{{ $json.fieldName }}           → ค่าจาก Node ปัจจุบัน
{{ $node["NodeName"].json.x }}  → ค่าจาก Node อื่น
{{ $now }}                      → เวลาปัจจุบัน
{{ $today }}                    → วันที่วันนี้
{{ $itemIndex }}                → ลำดับของ Item
```

### ตัวอย่างการใช้งาน

```
URL: https://api.example.com/data/{{ $json.year }}
Body: { "province": "{{ $json.provinceName }}" }
```

---

<!-- _class: divider -->

## 07
## สรุปและบทเรียนถัดไป

Summary & What's Next

---

## สรุป Module 2

### สิ่งที่เรียนรู้ใน Module นี้

- ✅ **n8n** คืออะไร ความสามารถหลัก และข้อดีในบริบทภาครัฐ
- ✅ **สถาปัตยกรรม** และวิธีการ Deploy n8n
- ✅ **Interface** ส่วนประกอบต่างๆ ของ n8n Editor
- ✅ **Node Types** — Trigger, Action, Transform
- ✅ **Credentials** — การจัดการ API Keys อย่างปลอดภัย
- ✅ **Data Flow** — ข้อมูล JSON ไหลอย่างไรใน n8n

### Module ถัดไป

**Module 3:** Workshop — สร้าง Workflow พื้นฐานด้วย n8n

---

<!-- _class: highlight -->

## เตรียมตัวก่อน Workshop

### สิ่งที่ต้องเตรียม

1. **n8n ติดตั้งแล้ว** บน Laptop หรือ Server
2. **Browser** Chrome หรือ Firefox เวอร์ชันล่าสุด
3. **เปิดหน้า** `http://localhost:5678`

> **หากยังไม่ได้ติดตั้ง:** แจ้งผู้ช่วยวิทยากรก่อนเริ่ม Workshop

---

<!-- footer: "n8n Workflow Automation | Module 3 — Workshop: Workflow พื้นฐาน | สำนักงานสถิติแห่งชาติ" -->


<!-- _class: lead -->

<style scoped>
.logo-bar { position: absolute; top: 36px; right: 64px; display: flex; align-items: center; gap: 16px; }
.logo-bar img { width: 100px; height: 100px; object-fit: contain; }
</style>

<div class="logo-bar">
  <img src="fig/logos/mahidol.svg" alt="Mahidol University">
  <img src="fig/logos/logo-bdi.png" alt="BDI">
</div>

# Workshop: สร้าง Workflow พื้นฐานด้วย n8n

<div class="subtitle">Module 3 — เชื่อมต่อข้อมูลและสร้าง Workflow แรก</div>

**หลักสูตร** n8n Workflow Automation for Government Statistics
สถาบัน BDI · มหาวิทยาลัยมหิดล

---

## วัตถุประสงค์การเรียนรู้

เมื่อจบ module นี้ ผู้เรียนสามารถ:

1. **สร้าง** Workflow ใหม่ตั้งแต่ต้นได้
2. **ใช้** Trigger Node ประเภทต่างๆ ได้ถูกต้อง
3. **เชื่อมต่อ** ข้อมูลจาก HTTP API ภายนอกได้
4. **แปลง** และ **กรอง** ข้อมูลด้วย Set, IF, Code Nodes
5. **ส่งออก** ผลลัพธ์ผ่าน Email หรือไฟล์ได้

---

## เนื้อหาใน Module นี้

1. **Setup & Hello World** — สร้าง Workflow แรก
2. **Trigger Nodes** — Schedule และ Manual Trigger
3. **HTTP Request** — เรียกข้อมูลจาก API
4. **Data Transformation** — Set, IF, Code Nodes
5. **Output** — ส่ง Email และบันทึกไฟล์
6. **Workshop Exercise** — ฝึกปฏิบัติ

---

<!-- _class: divider -->

## 01
## Hello World Workflow

สร้าง Workflow แรกของคุณ

---

## Demo 1: Workflow แรก

### เป้าหมาย: แสดงข้อความ "Hello Statistics!"

**ขั้นตอน:**

1. คลิก **"New Workflow"** บน Dashboard
2. คลิก `+` บน Canvas เพื่อเพิ่ม Node
3. ค้นหา **"Manual Trigger"** → เพิ่ม
4. คลิก `+` ต่อจาก Manual Trigger
5. เพิ่ม **"Set"** Node
6. เพิ่ม Field: `message` = `Hello Statistics!`
7. กด **"Execute Workflow"** เพื่อรัน

---

## ผลลัพธ์ที่ควรเห็น

### Output จาก Set Node

```json
[
  {
    "json": {
      "message": "Hello Statistics!"
    }
  }
]
```

### สิ่งที่เรียนรู้

- วิธีสร้าง Workflow ใหม่
- การเพิ่มและเชื่อม Nodes
- การดู Output ของ Nodes

---

<!-- _class: divider -->

## 02
## Trigger Nodes

เริ่มต้น Workflow ด้วย Triggers

---

## Schedule Trigger

### รัน Workflow ตามเวลาที่กำหนด

**การตั้งค่า:**
- **Mode:** Every X minutes / hours / days
- **Cron Expression:** สำหรับตั้งเวลาซับซ้อน

**ตัวอย่าง Cron สำหรับงานสถิติ:**

| Cron | ความหมาย |
|---|---|
| `0 8 * * 1-5` | ทุกวันทำงาน เวลา 08:00 |
| `0 9 1 * *` | วันที่ 1 ทุกเดือน เวลา 09:00 |
| `0 */4 * * *` | ทุก 4 ชั่วโมง |
| `0 7 * * 1` | ทุกวันจันทร์ เวลา 07:00 |

---

## Webhook Trigger

### รับข้อมูลจากระบบภายนอก

**ใช้เมื่อ:** ต้องการรับ Event จากระบบอื่น เช่น:
- ระบบสำรวจส่งข้อมูลเข้ามา
- แบบฟอร์มออนไลน์ Submit
- ระบบอื่น Push ข้อมูลให้

**Webhook URL ตัวอย่าง:**
```
https://your-n8n.domain.go.th/webhook/stats-data
```

**การทดสอบ:** ใช้ **Test URL** ใน n8n Editor ก่อน Activate

---

<!-- _class: divider -->

## 03
## HTTP Request Node

เรียกข้อมูลจาก REST API

---

## HTTP Request พื้นฐาน

### Demo 2: ดึงข้อมูลจาก Open Data API

**เป้าหมาย:** เรียกข้อมูลจาก JSONPlaceholder (API ตัวอย่าง)

**การตั้งค่า HTTP Request Node:**
```
Method:  GET
URL:     https://jsonplaceholder.typicode.com/posts
Headers: (ว่าง)
```

**ผลลัพธ์:** รายการโพสต์ 100 รายการในรูปแบบ JSON

---

## HTTP Request กับ Query Parameters

### การส่ง Parameters ไปกับ URL

```
Method: GET
URL:    https://api.example.go.th/statistics
```

**Query Parameters (เพิ่มใน n8n):**

| Name | Value |
|---|---|
| `year` | `{{ $now.year }}` |
| `province` | `all` |
| `format` | `json` |

**URL ที่ได้:**
```
https://api.example.go.th/statistics?year=2567&province=all&format=json
```

---

## HTTP Request กับ Authentication

### การส่ง API Key

**ผ่าน Header:**
```
Header Name:  Authorization
Header Value: Bearer {{ $credentials.apiKey }}
```

**ผ่าน Query Parameter:**
```
Parameter Name:  api_key
Parameter Value: (เลือกจาก Credentials)
```

> **Best Practice:** สร้าง Credential ใน n8n เสมอ อย่า Hardcode API Key ใน Node

---

<!-- _class: divider -->

## 04
## Data Transformation

แปลงและกรองข้อมูลใน n8n

---

## Set Node — กำหนดค่าตัวแปร

### การใช้ Set Node

**Demo 3: สร้างข้อมูลสรุปอย่างง่าย**

```
Field: report_title    → "รายงานสถิติประจำเดือน"
Field: report_date     → {{ $today }}
Field: data_source     → {{ $json.source }}
Field: total_records   → {{ $json.count }}
```

### โหมดของ Set Node

- **Keep All Fields** — เก็บข้อมูลเดิม + เพิ่มใหม่
- **Replace** — แทนที่ด้วยข้อมูลใหม่เท่านั้น

---

## IF Node — เงื่อนไขการทำงาน

### แยก Flow ตามเงื่อนไข

**Demo 4: ตรวจสอบค่าผิดปกติ**

```
Condition: {{ $json.value }} > 1000000
```

**True Branch** → ส่งแจ้งเตือนว่าข้อมูลสูงผิดปกติ
**False Branch** → ดำเนินการปกติต่อไป

### เงื่อนไขที่รองรับ

- Equal / Not Equal
- Larger / Smaller than
- Contains / Starts With
- Is Empty / Is Not Empty

---

## Code Node — เขียน Custom Logic

### JavaScript ใน n8n

**Demo 5: คำนวณ % การเปลี่ยนแปลง**

```javascript
const items = $input.all();

return items.map(item => {
  const current = item.json.current_value;
  const previous = item.json.previous_value;
  const change = ((current - previous) / previous * 100).toFixed(2);
  
  return {
    json: {
      ...item.json,
      percent_change: parseFloat(change),
      trend: change > 0 ? "เพิ่มขึ้น" : "ลดลง"
    }
  };
});
```

---

## Filter / Split in Batches

### จัดการข้อมูลจำนวนมาก

**Filter Node** — กรองข้อมูลตามเงื่อนไข
```
เก็บเฉพาะ: {{ $json.province }} == "กรุงเทพมหานคร"
```

**Split in Batches** — แบ่งประมวลผลทีละ N รายการ
- ป้องกัน API Rate Limit
- ประมวลผลข้อมูลขนาดใหญ่ได้

**Merge Node** — รวมข้อมูลจากหลาย Branch
- Merge by Position
- Merge by Key (JOIN ข้อมูล 2 ชุด)

---

<!-- _class: divider -->

## 05
## Output: Email & File

ส่งออกผลลัพธ์

---

## ส่งรายงานทาง Email

### Send Email Node (SMTP)

**การตั้งค่า Credential:**
- Protocol: SMTP / Gmail / Outlook
- Host, Port, Username, Password

**การตั้งค่า Email Node:**
```
To:      director@nso.go.th
Subject: รายงานสถิติ {{ $today }} อัตโนมัติ
Body:    ยอดรวมประจำวันนี้: {{ $json.total }}
         ดูรายละเอียดที่ระบบ Dashboard
```

**Attachment:** แนบไฟล์ CSV/Excel ได้

---

## บันทึกไฟล์ Excel/CSV

### Write Binary File + Spreadsheet

**Demo 6: Export ข้อมูลเป็น Excel**

1. **Spreadsheet File Node** (Write mode)
   - File Format: XLSX หรือ CSV
   - ใส่ข้อมูลจาก Input
2. **Write Binary File Node**
   - File Path: `/data/reports/report-{{ $today }}.xlsx`

> **หมายเหตุ:** ต้อง Mount Volume ใน Docker ให้ถูกต้อง

---

<!-- _class: divider -->

## 06
## Workshop Exercise

ฝึกปฏิบัติ

---

<!-- _class: highlight -->

## แบบฝึกหัด 3.1 — รายงานอากาศอัตโนมัติ

### โจทย์

สร้าง Workflow ที่:
1. **ทำงานทุกเช้า** เวลา 07:00 น.
2. **ดึงข้อมูลอากาศ** จาก Open-Meteo API (Free, ไม่ต้องใช้ API Key)
3. **แปลงข้อมูล** — คำนวณค่าเฉลี่ยอุณหภูมิ
4. **ส่ง Email** สรุปสภาพอากาศประจำวัน

### API ที่ใช้

```
URL: https://api.open-meteo.com/v1/forecast
Parameters: latitude=13.75, longitude=100.52
            daily=temperature_2m_max,temperature_2m_min
            timezone=Asia/Bangkok
```

---

<!-- _class: highlight -->

## แบบฝึกหัด 3.2 — Data Cleaning Pipeline

### โจทย์

สร้าง Workflow ที่:
1. **รับข้อมูล** จาก Webhook (จำลองการส่งข้อมูลสำรวจ)
2. **ตรวจสอบ** ว่าข้อมูลครบถ้วน (ไม่มีค่า null)
3. **กรอง** เฉพาะข้อมูลที่ผ่านการตรวจสอบ
4. **บันทึก** ลงไฟล์ CSV แยก: `valid.csv` และ `invalid.csv`

### สิ่งที่ต้องทำ

1. สร้าง Webhook Trigger
2. ใช้ IF Node ตรวจสอบ required fields
3. ใช้ Merge Node รวมผลลัพธ์
4. Export ด้วย Spreadsheet File Node

> **Dataset:** ทดสอบด้วย Postman หรือ curl

---

## เฉลย: โครงสร้าง Workflow 3.1

```
[Schedule Trigger]
       │ ทุกวัน 07:00
       ▼
[HTTP Request]
       │ GET Open-Meteo API
       ▼
[Code Node]
       │ คำนวณค่าเฉลี่ยอุณหภูมิ
       ▼
[Set Node]
       │ จัดรูปแบบข้อความ Email
       ▼
[Send Email]
         ส่งรายงานอากาศ
```

---

<!-- _class: divider -->

## 07
## สรุปและบทเรียนถัดไป

Summary & What's Next

---

## สรุป Module 3

### สิ่งที่เรียนรู้ใน Module นี้

- ✅ **สร้าง Workflow** ตั้งแต่ต้นด้วย Manual & Schedule Trigger
- ✅ **HTTP Request** เรียก REST API พร้อม Authentication
- ✅ **Data Transformation** — Set, IF, Code, Filter Nodes
- ✅ **Output** — ส่ง Email และ Export ไฟล์ Excel/CSV
- ✅ **Workshop** — ฝึกสร้าง Workflow จริงด้วยข้อมูลจริง

### Module ถัดไป

**Module 4:** Workshop — สร้าง Workflow ดึงและประมวลผลข้อมูลสถิติอัตโนมัติ

---

<!-- _class: lead -->

# เยี่ยมมาก! Workflow แรกสำเร็จแล้ว

**Module 4:** ต่อยอดด้วย Workflow ข้อมูลสถิติภาครัฐ

---

<!-- footer: "n8n Workflow Automation | Module 4 — Workshop: ข้อมูลสถิติอัตโนมัติ | สำนักงานสถิติแห่งชาติ" -->


<!-- _class: lead -->

<style scoped>
.logo-bar { position: absolute; top: 36px; right: 64px; display: flex; align-items: center; gap: 16px; }
.logo-bar img { width: 100px; height: 100px; object-fit: contain; }
</style>

<div class="logo-bar">
  <img src="fig/logos/mahidol.svg" alt="Mahidol University">
  <img src="fig/logos/logo-bdi.png" alt="BDI">
</div>

# Workshop: ดึงและประมวลผลข้อมูลสถิติอัตโนมัติ

<div class="subtitle">Module 4 — End-to-End Statistics Data Pipeline</div>

**หลักสูตร** n8n Workflow Automation for Government Statistics
สถาบัน BDI · มหาวิทยาลัยมหิดล

---

## วัตถุประสงค์การเรียนรู้

เมื่อจบ module นี้ ผู้เรียนสามารถ:

1. **ออกแบบ** Pipeline ดึงข้อมูลสถิติจากแหล่งข้อมูลภาครัฐ
2. **ประมวลผล** และ **สรุป** ข้อมูลสถิติอัตโนมัติ
3. **ตั้งเวลา** ให้ระบบทำงานอัตโนมัติแบบ Scheduled
4. **สร้าง** รายงานสรุปและส่งให้ผู้บริหารอัตโนมัติ
5. **จัดการ** Error Handling และ Monitoring

---

## เนื้อหาใน Module นี้

1. **ภาพรวม Pipeline** — Architecture ของระบบ
2. **แหล่งข้อมูลสถิติภาครัฐ** — Open Data APIs ไทย
3. **Data Extraction** — ดึงข้อมูลจาก Multiple Sources
4. **Data Processing** — ประมวลผลและสรุปข้อมูล
5. **Reporting & Alerting** — รายงานและแจ้งเตือน
6. **Workshop** — สร้าง Full Pipeline

---

<!-- _class: divider -->

## 01
## Architecture ภาพรวม

Statistics Data Pipeline Design

---

## Pipeline Architecture

### End-to-End Data Pipeline

```
┌──────────────────────────────────────────────────┐
│                  n8n Scheduler                   │
│              (ทุกวันเวลา 06:00)                  │
└─────────────────────┬────────────────────────────┘
                      │
         ┌────────────┼────────────┐
         ▼            ▼            ▼
    [NSO API]    [Fiscal DB]   [Survey Form]
         │            │            │
         └────────────┴────────────┘
                      │ Merge Data
                      ▼
               [Data Cleaning]
                      │
                      ▼
              [Data Aggregation]
                      │
               ┌──────┴──────┐
               ▼             ▼
          [Excel Report]  [Email Alert]
```

---

## แหล่งข้อมูลที่จะใช้ใน Workshop

### Open Data APIs สำหรับงานสถิติไทย

| แหล่งข้อมูล | URL | ประเภทข้อมูล |
|---|---|---|
| **data.go.th** | api.data.go.th | Open Government Data |
| **NESDC** | statbbi.nso.go.th | สถิติเศรษฐกิจ |
| **BOT** | api.bot.or.th | ข้อมูลการเงิน |
| **DDC** | covid19.ddc.moph.go.th | สุขภาพ |
| **Open-Meteo** | api.open-meteo.com | สภาพอากาศ (Free) |

---

<!-- _class: divider -->

## 02
## แหล่งข้อมูลสถิติภาครัฐ

Government Open Data Sources

---

## data.go.th — Open Government Data

### การเข้าถึงข้อมูลภาครัฐ

**ขั้นตอนการใช้งาน:**
1. ลงทะเบียนที่ `data.go.th` เพื่อรับ API Key
2. ค้นหา Dataset ที่ต้องการ
3. ดู API Documentation ของ Dataset นั้น

**ตัวอย่าง API Call:**
```
GET https://opend.data.go.th/get-ckan/datastore_search
    ?resource_id={resource_id}
    &limit=100
Header: api-key: YOUR_API_KEY
```

---

## ตัวอย่าง: ข้อมูลประชากรจาก NSO

### API สำมะโนประชากร

```
GET https://statbbi.nso.go.th/staticreport/page/sector/th/01.aspx
```

**หรือใช้ CKAN API:**
```json
GET https://opend.data.go.th/get-ckan/datastore_search
Request Body:
{
  "resource_id": "population-by-province-2566",
  "limit": 77,
  "sort": "population desc"
}
```

**ผลลัพธ์:** ข้อมูลประชากรรายจังหวัด 77 จังหวัด

---

## การจัดการ Pagination

### ดึงข้อมูลขนาดใหญ่แบบ Page by Page

```javascript
// Code Node: Loop through pages
const totalRecords = $json.total;
const limit = 100;
const totalPages = Math.ceil(totalRecords / limit);

const urls = [];
for (let page = 0; page < totalPages; page++) {
  urls.push({
    json: {
      url: `https://api.example.go.th/data?limit=${limit}&offset=${page * limit}`,
      page: page + 1
    }
  });
}
return urls;
```

---

<!-- _class: divider -->

## 03
## Data Processing

ประมวลผลและทำความสะอาดข้อมูล

---

## Data Cleaning Pipeline

### ขั้นตอนการทำความสะอาดข้อมูล

```
Raw Data (JSON/CSV)
        │
        ▼
┌──────────────────┐
│ 1. Remove Nulls  │ → กรองข้อมูลที่ไม่ครบ
│ 2. Type Casting  │ → แปลง String → Number
│ 3. Normalize     │ → ชื่อจังหวัด → มาตรฐาน
│ 4. Deduplicate   │ → ลบข้อมูลซ้ำ
└──────────────────┘
        │
        ▼
  Clean Data ✓
```

---

## Code Node: Data Cleaning

### ทำความสะอาดข้อมูลสถิติ

```javascript
const items = $input.all();

return items
  // 1. กรองข้อมูลที่ไม่ครบ
  .filter(item => item.json.province && item.json.value !== null)
  // 2. แปลงประเภทข้อมูล
  .map(item => ({
    json: {
      province: item.json.province.trim(),
      value: parseFloat(item.json.value) || 0,
      year: parseInt(item.json.year),
      category: item.json.category?.toUpperCase() || 'UNKNOWN',
      updated_at: new Date().toISOString()
    }
  }))
  // 3. กรองค่าที่ไม่สมเหตุสมผล
  .filter(item => item.json.value >= 0 && item.json.year >= 2500);
```

---

## Data Aggregation

### สรุปข้อมูลสถิติ

```javascript
const items = $input.all();
const data = items.map(i => i.json);

// คำนวณสถิติพื้นฐาน
const values = data.map(d => d.value);
const total = values.reduce((a, b) => a + b, 0);
const avg = total / values.length;
const max = Math.max(...values);
const min = Math.min(...values);

// จัดกลุ่มตามภูมิภาค
const byRegion = data.reduce((acc, item) => {
  acc[item.region] = (acc[item.region] || 0) + item.value;
  return acc;
}, {});

return [{ json: { total, avg, max, min, by_region: byRegion } }];
```

---

## Join ข้อมูลจากหลายแหล่ง

### Merge Node — รวมข้อมูล 2 ชุด

**กรณีการใช้งาน:** รวมข้อมูลประชากร + ข้อมูล GDP ต่อจังหวัด

```
[Population API] ──┐
                   ├──► [Merge Node] ──► [Code: คำนวณ GDP/capita]
[GDP API]       ──┘     (Join by "province_code")
```

**การตั้งค่า Merge Node:**
- **Mode:** Combine
- **Combine By:** Matching Rules
- **Fields to Match:** `province_code` = `province_code`

---

<!-- _class: divider -->

## 04
## Reporting & Alerting

สร้างรายงานและระบบแจ้งเตือน

---

## สร้างรายงาน Excel อัตโนมัติ

### Workflow: Monthly Report Generation

```
[Schedule: วันที่ 1 ของเดือน]
         │
         ▼
[HTTP: ดึงข้อมูลเดือนก่อน]
         │
         ▼
[Code: คำนวณ Summary]
         │
    ┌────┴────┐
    ▼         ▼
[Spreadsheet] [Set: สร้าง Email Body]
    │         │
    └────┬────┘
         ▼
[Send Email พร้อม Attachment]
```

---

## Template รายงาน HTML Email

### สร้าง Email Report สวยงาม

```html
<h2>รายงานสถิติประจำเดือน {{ $json.month }}</h2>
<table border="1" style="border-collapse:collapse; width:100%">
  <tr style="background:#1B4F72; color:white">
    <th>ตัวชี้วัด</th><th>ค่า</th><th>เปลี่ยนแปลง</th>
  </tr>
  <tr>
    <td>ประชากรทั้งหมด</td>
    <td>{{ $json.total_population }}</td>
    <td>{{ $json.pop_change }}%</td>
  </tr>
  <tr>
    <td>GDP รวม (ล้านบาท)</td>
    <td>{{ $json.gdp_total }}</td>
    <td>{{ $json.gdp_change }}%</td>
  </tr>
</table>
```

---

## ระบบแจ้งเตือนความผิดปกติ

### Alert Workflow

**เงื่อนไขการแจ้งเตือน:**

```javascript
// Code Node: ตรวจสอบ Anomaly
const items = $input.all();
const alerts = [];

items.forEach(item => {
  const { indicator, value, threshold, previous } = item.json;
  const changePercent = Math.abs((value - previous) / previous * 100);
  
  if (changePercent > threshold) {
    alerts.push({
      json: {
        indicator,
        message: `⚠️ ${indicator} เปลี่ยนแปลง ${changePercent.toFixed(1)}% (เกิน ${threshold}%)`,
        severity: changePercent > threshold * 2 ? 'HIGH' : 'MEDIUM'
      }
    });
  }
});

return alerts.length > 0 ? alerts : [{ json: { no_alerts: true } }];
```

---

## Integration กับช่องทางอื่น

### ส่งแจ้งเตือนผ่านช่องทางต่างๆ

**LINE Notify:**
```
POST https://notify-api.line.me/api/notify
Header: Authorization: Bearer {LINE_TOKEN}
Body:   message=⚠️ ข้อมูลสถิติผิดปกติ: {{ $json.message }}
```

**Microsoft Teams (Webhook):**
```json
{
  "text": "📊 รายงานสถิติประจำวัน\n{{ $json.summary }}"
}
```

**Slack:**
- ใช้ Slack Node ใน n8n โดยตรง

---

<!-- _class: divider -->

## 05
## Error Handling & Monitoring

จัดการ Error และ Monitor ระบบ

---

## Error Handling ใน n8n

### วิธีจัดการ Error

**1. Error Trigger Node**
- สร้าง Workflow แยกสำหรับจัดการ Error
- ใช้ Error Trigger รับ Error จาก Workflow หลัก

**2. Try/Catch ด้วย IF Node**
```
[HTTP Request] → Error? → [IF: statusCode !== 200]
                              │ True
                              ▼
                     [Set: error_message]
                              │
                              ▼
                     [Send Alert Email]
```

---

## Monitoring Workflow

### ติดตามการทำงานของระบบ

**Execution Log ใน n8n:**
- ดูประวัติการรัน Workflow ทั้งหมด
- Success / Failed / Waiting
- เวลาที่ใช้แต่ละ Execution

**การตั้ง Notifications:**
```
Settings → Workflow Settings →
  On Error: Send Email to Admin
  Save Execution: Always / Error Only
```

**Best Practice:**
- Log ทุก Execution ใน Production
- ตั้ง Alert เมื่อ Workflow Failed
- Review Log ทุกสัปดาห์

---

<!-- _class: divider -->

## 06
## Workshop Exercise

สร้าง Full Statistics Pipeline

---

<!-- _class: highlight -->

## Workshop 4.1 — Population Statistics Pipeline

### โจทย์: สร้าง Automated Pipeline

**ความต้องการ:**
1. ดึงข้อมูลประชากรรายจังหวัดจาก Open Data API
2. คำนวณ: ค่าเฉลี่ย, สูงสุด, ต่ำสุด, รวมทั้งประเทศ
3. แยกข้อมูล TOP 5 และ BOTTOM 5 จังหวัด
4. Export เป็น Excel Report
5. ส่ง Email สรุปพร้อมแนบไฟล์
6. ตั้งเวลาให้รันอัตโนมัติทุกต้นเดือน

---

<!-- _class: highlight -->

## Workshop 4.2 — Multi-Source Dashboard Feed

### โจทย์: รวมข้อมูลจาก 3 แหล่ง

**แหล่งข้อมูล:**
- **แหล่งที่ 1:** อุณหภูมิรายจังหวัด (Open-Meteo API)
- **แหล่งที่ 2:** ข้อมูลประชากร (Simulated API)
- **แหล่งที่ 3:** ดัชนีราคา (Simulated API)

**สิ่งที่ต้องสร้าง:**
1. Parallel HTTP Requests (3 แหล่งพร้อมกัน)
2. Merge ข้อมูลด้วย Province Code
3. คำนวณ Composite Index
4. ส่ง JSON ไปยัง Webhook Dashboard

---

## แนวทางแก้ Workshop 4.1

### Workflow Structure

```
[Schedule Trigger: วันที่ 1 เวลา 08:00]
         │
         ▼
[HTTP: GET Population API]
         │
         ▼
[Code: Data Cleaning + Validation]
         │
         ▼
[Code: Calculate Statistics]
         │
    ┌────┴────────────┐
    ▼                 ▼
[Code: TOP/BOTTOM 5] [Set: Email Summary]
    │                 │
    ▼                 │
[Spreadsheet: Excel] │
    │                 │
    └────────┬────────┘
             ▼
    [Send Email + Attachment]
```

---

## Code: สร้างรายงานสรุป

### สรุปข้อมูลประชากรรายจังหวัด

```javascript
const items = $input.all();
const provinces = items.map(i => i.json);

// คำนวณสถิติ
const populations = provinces.map(p => p.population);
const total = populations.reduce((a, b) => a + b, 0);
const avg = Math.round(total / provinces.length);

// TOP 5 - จังหวัดที่มีประชากรมากสุด
const top5 = [...provinces]
  .sort((a, b) => b.population - a.population)
  .slice(0, 5);

// BOTTOM 5 - จังหวัดที่มีประชากรน้อยสุด
const bottom5 = [...provinces]
  .sort((a, b) => a.population - b.population)
  .slice(0, 5);

return [{ json: { total, avg, top5, bottom5, year: 2567 } }];
```

---

<!-- _class: divider -->

## 07
## Best Practices & Production Tips

แนวทางปฏิบัติที่ดีสำหรับ Production

---

## Best Practices

### การพัฒนา Workflow คุณภาพสูง

**1. ตั้งชื่อ Node ให้ชัดเจน**
- ❌ `HTTP Request 1`, `Set 3`
- ✅ `GET Population Data`, `Calculate Summary Stats`

**2. ใช้ Notes (Sticky Notes)**
- อธิบาย Logic ซับซ้อน
- บันทึก API Documentation Reference

**3. แยก Workflow ตามหน้าที่**
- Workflow หลัก (Main Pipeline)
- Workflow Error Handler แยกต่างหาก
- Workflow Utility Functions

---

## Security Best Practices

### ความปลอดภัยสำหรับภาครัฐ

- 🔑 **ใช้ Credentials เสมอ** — ห้าม Hardcode API Key
- 🔒 **HTTPS เท่านั้น** สำหรับ API ภายนอก
- 🏛️ **Self-hosted** — ข้อมูลสำคัญต้องอยู่ใน Server องค์กร
- 👤 **Role-Based Access** — ตั้ง Permission ผู้ใช้ n8n
- 📋 **Audit Log** — เปิด Execution History ทุก Workflow
- 🔄 **Backup** — Backup n8n Database สม่ำเสมอ

---

## สรุป Module 4

### สิ่งที่เรียนรู้ใน Module นี้

- ✅ **Pipeline Architecture** ออกแบบระบบ End-to-End
- ✅ **Government Open Data** APIs สำหรับงานสถิติไทย
- ✅ **Data Cleaning & Aggregation** ด้วย Code Node
- ✅ **Merge ข้อมูล** จากหลายแหล่งด้วย Merge Node
- ✅ **Excel Report + Email** ส่งรายงานอัตโนมัติ
- ✅ **Error Handling & Monitoring** จัดการ Production
- ✅ **Security Best Practices** สำหรับภาครัฐ

---

<!-- _class: lead -->

# ยินดีด้วย! 🎉

## จบหลักสูตร n8n Workflow Automation

คุณพร้อมแล้วที่จะนำ Automation ไปใช้ในงานสถิติภาครัฐ

---

## ขั้นตอนถัดไป

### Next Steps หลังจากหลักสูตรนี้

**ทำทันที (สัปดาห์แรก):**
- เลือก 1 Use Case ในงานของคุณที่ทำซ้ำทุกเดือน
- ติดตั้ง n8n บน Server ของหน่วยงาน
- สร้าง Workflow แรกสำหรับงานนั้น

**ระยะกลาง (1-3 เดือน):**
- ขยาย Automation ไปยัง Workflow อื่นๆ
- เชื่อมต่อระบบ Database ภายในองค์กร
- สร้าง Dashboard อัตโนมัติ

**ทรัพยากรเพิ่มเติม:**
- docs.n8n.io — Documentation อย่างเป็นทางการ
- community.n8n.io — n8n Community Forum
- data.go.th — Open Government Data ไทย

---

<!-- footer: "n8n Workflow Automation | Module 5 — Workshop: Sentiment Analysis & Satisfaction | สำนักงานสถิติแห่งชาติ" -->


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

**หลักสูตร** n8n Workflow Automation for Government Statistics
สถาบัน BDI · มหาวิทยาลัยมหิดล

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
- 🔄 **บริบทมีผล** — "ดีนะ" อาจเป็น Sarcasm ได้
- 📝 **คำย่อ / ภาษาสแลง** — ใช้กันทั่วไปในแบบประเมิน
- 🤖 **LLM เข้าใจบริบท** — GPT / Claude วิเคราะห์ได้แม่นกว่า Keyword Matching

### n8n + AI Integration

```
รับข้อความ → ส่งให้ LLM (via n8n AI Node) → ได้ผล Sentiment + เหตุผล
```

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

ข้อความ: "{{ $json.feedback }}"

ตอบในรูปแบบ:
{
  "sentiment": "positive" | "neutral" | "negative",
  "score": 1-10,
  "summary": "สรุปสั้นๆ",
  "category": "หมวดหมู่ปัญหา"
}
```

### หลักการ Prompt ที่ดี
- กำหนด Role ชัดเจน
- ระบุ Output Format (JSON)
- ให้ตัวอย่าง (Few-shot) ถ้าจำเป็น

---

<!-- _class: divider -->

## 03
## Workshop Part A

สร้าง Workflow Sentiment Analysis

---

## Workshop A: Sentiment Analysis Workflow

### เป้าหมาย

สร้าง Workflow ที่รับข้อความ → วิเคราะห์ Sentiment → บันทึกผลลงฐานข้อมูล

### โครงสร้าง Workflow

```
[Webhook Trigger]
      ↓
[Set Node: เตรียม Prompt]
      ↓
[OpenAI / LLM Node: วิเคราะห์ Sentiment]
      ↓
[Code Node: แปลง JSON Output]
      ↓
[Google Sheets: บันทึกผล]
      ↓
[Respond to Webhook: ส่งผลกลับ]
```

---

## ขั้นตอน Workshop A — Step by Step

### Step 1–3: ตั้งค่า Input

1. **Webhook Node** — รับ POST request ที่มี field `feedback`
2. **Set Node** — สร้าง Prompt จาก `{{ $json.body.feedback }}`
3. **AI/LLM Node** — เชื่อมต่อ OpenAI `gpt-4o-mini` พร้อม Prompt

### Step 4–6: ประมวลผลและบันทึก

4. **Code Node** — Parse JSON จาก LLM response
5. **Google Sheets Node** — เพิ่มแถวใหม่ด้วย sentiment, score, summary
6. **Respond to Webhook** — ส่ง JSON response กลับ

> **ทดสอบ:** ส่ง POST request จาก Postman หรือ n8n Test Webhook

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

**บันทึกลง Google Sheets** → คอลัมน์: วันที่, ข้อความ, Sentiment, Score, Summary, Category

---

<!-- _class: divider -->

## 04
## Workshop Part B

วิเคราะห์ความพึงพอใจผู้ใช้บริการ (Dummy Data 100 ชุด)

---

## Workshop B: Satisfaction Analysis Pipeline

### เป้าหมาย

ประมวลผล Dummy Data แบบสำรวจความพึงพอใจ 100 ชุด แบบ Batch อัตโนมัติ

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

```
[Manual Trigger / Schedule Trigger]
      ↓
[Google Sheets: อ่าน Dummy Data 100 แถว]
      ↓
[SplitInBatches Node: แบ่ง batch ละ 10]
      ↓
[AI/LLM Node: วิเคราะห์ทีละรายการ]
      ↓
[Code Node: รวมผลลัพธ์]
      ↓
[Google Sheets: เขียนผลกลับ + สรุป]
```

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

---

<!-- footer: "n8n Workflow Automation | Module 6 — Encryption Sensitive Data | สำนักงานสถิติแห่งชาติ" -->


<!-- _class: lead -->

<style scoped>
.logo-bar { position: absolute; top: 36px; right: 64px; display: flex; align-items: center; gap: 16px; }
.logo-bar img { width: 100px; height: 100px; object-fit: contain; }
</style>

<div class="logo-bar">
  <img src="fig/logos/mahidol.svg" alt="Mahidol University">
  <img src="fig/logos/nso.png" alt="BDI">
</div>

# Encryption Sensitive Data

<div class="subtitle">Module 6 — การเข้ารหัสและปกป้องข้อมูลสำคัญใน Workflow</div>

**หลักสูตร** n8n Workflow Automation for Government Statistics
สถาบัน BDI · มหาวิทยาลัยมหิดล

---

## วัตถุประสงค์การเรียนรู้

เมื่อจบ module นี้ ผู้เรียนสามารถ:

1. **อธิบาย** ความสำคัญของการปกป้องข้อมูลในบริบทภาครัฐ
2. **จำแนก** ประเภทข้อมูลที่ต้องเข้ารหัสตามกฎหมาย PDPA
3. **ใช้งาน** Crypto Node และ Code Node ใน n8n สำหรับการเข้ารหัส
4. **ออกแบบ** Workflow ที่ปลอดภัยด้วย Credential Management
5. **ประยุกต์** Best Practice ด้านความปลอดภัยใน Workflow สถิติภาครัฐ

---

## เนื้อหาใน Module นี้

1. **ทำไมต้องเข้ารหัส?** — PDPA และข้อมูลภาครัฐ
2. **ประเภทของข้อมูลสำคัญ** — Sensitive Data Classification
3. **Encryption Methods** — Symmetric, Hashing, และ Tokenization
4. **Workshop:** เข้ารหัสข้อมูลใน n8n Workflow
5. **Credential Management** — จัดการ API Key และ Password อย่างปลอดภัย

---

<!-- _class: divider -->

## 01
## ทำไมต้องเข้ารหัส?

Data Protection in Government Statistics

---

## ข้อมูลภาครัฐกับความเสี่ยง

### สถานการณ์ที่เกิดขึ้นได้

- 📋 **ข้อมูลส่วนบุคคล** รั่วไหลระหว่างส่ง Workflow
- 🔑 **API Key / Password** ถูก Expose ใน Log
- 📊 **ข้อมูลสถิติลับ** ถูกส่งผ่าน Webhook ที่ไม่ปลอดภัย
- 🗃️ **ไฟล์สำรอง (Backup)** ไม่ได้เข้ารหัส ใครก็เปิดได้

### กฎหมายที่เกี่ยวข้อง

| กฎหมาย | สาระสำคัญ |
|---|---|
| **PDPA (พ.ร.บ. คุ้มครองข้อมูลส่วนบุคคล)** | ต้องปกป้องข้อมูลส่วนบุคคลจากการเข้าถึงโดยไม่ได้รับอนุญาต |
| **พ.ร.บ. ความมั่นคงปลอดภัยไซเบอร์** | หน่วยงานภาครัฐต้องมีมาตรการรักษาความมั่นคงปลอดภัย |

---

## ข้อมูลที่ต้องปกป้อง (PDPA)

### Sensitive Data Categories

| ประเภท | ตัวอย่าง | ระดับความเสี่ยง |
|---|---|---|
| **ข้อมูลส่วนบุคคลทั่วไป** | ชื่อ, อีเมล, เบอร์โทร | Medium |
| **ข้อมูลส่วนบุคคลอ่อนไหว** | เลขบัตรประชาชน, สุขภาพ | High |
| **ข้อมูลทางการเงิน** | เลขบัญชี, รายได้ | High |
| **ข้อมูลลับทางราชการ** | ข้อมูลสถิติที่ยังไม่เผยแพร่ | Critical |
| **Credentials** | API Key, Password, Token | Critical |

---

<!-- _class: divider -->

## 02
## Encryption Methods

วิธีการเข้ารหัสที่ควรรู้

---

## 3 วิธีหลักในการปกป้องข้อมูล

### 1. Symmetric Encryption (AES)

- ใช้ Key เดียวทั้งเข้าและถอดรหัส
- เหมาะกับ: ข้อมูลที่ต้องถอดรหัสได้ภายหลัง (เช่น เลขบัตรประชาชน)
- ใน n8n: Code Node + Node.js `crypto` module

### 2. Hashing (SHA-256 / bcrypt)

- เปลี่ยนข้อมูลเป็น Hash ที่ย้อนกลับไม่ได้
- เหมาะกับ: Password, Checksum ตรวจสอบความครบถ้วนของข้อมูล

### 3. Tokenization

- แทนข้อมูลจริงด้วย Token สุ่ม
- เหมาะกับ: บัตรเครดิต, เลขบัตรประชาชน ที่ต้องใช้แบบ Reference

---

## เปรียบเทียบ: Encryption vs Hashing

### เลือกใช้อะไรเมื่อไหร่?

| | **Encryption (AES)** | **Hashing (SHA-256)** |
|---|---|---|
| **ถอดรหัสได้?** | ✅ ได้ (ถ้ามี Key) | ❌ ไม่ได้ |
| **ใช้เมื่อ** | ต้องการข้อมูลเดิมคืน | ตรวจสอบความถูกต้อง |
| **ตัวอย่าง** | เก็บเลขบัตรประชาชน | เก็บ Password |
| **Key จำเป็น?** | ✅ ต้องมี Secret Key | ❌ ไม่ต้อง |

---

<!-- _class: divider -->

## 03
## Workshop: Encryption ใน n8n

ปกป้องข้อมูลใน Workflow อัตโนมัติ

---

## Workshop: เข้ารหัสข้อมูลด้วย Code Node

### โครงสร้าง Workflow

```
[Webhook: รับข้อมูลแบบฟอร์ม]
      ↓
[Code Node: Hash Password + Encrypt PII]
      ↓
[IF Node: ตรวจสอบข้อมูลครบถ้วน]
      ↓
[Google Sheets: บันทึกข้อมูลเข้ารหัสแล้ว]
      ↓
[Respond to Webhook: ยืนยันการบันทึก]
```

### ข้อมูลที่รับเข้ามา (Input)
```json
{ "name": "สมชาย ใจดี", "id_card": "1234567890123", "email": "somchai@nso.go.th" }
```

---

## Code Node: AES Encryption

### ตัวอย่าง JavaScript ใน n8n

```javascript
const crypto = require('crypto');

const SECRET_KEY = $env.ENCRYPTION_KEY; // 32-byte key จาก n8n Environment
const IV = crypto.randomBytes(16);

function encrypt(text) {
  const cipher = crypto.createCipheriv('aes-256-cbc', Buffer.from(SECRET_KEY), IV);
  let encrypted = cipher.update(text, 'utf8', 'hex');
  encrypted += cipher.final('hex');
  return IV.toString('hex') + ':' + encrypted;
}

return [{
  json: {
    name: $input.item.json.name,           // เก็บชื่อตามปกติ
    id_card_encrypted: encrypt($input.item.json.id_card),  // เข้ารหัสเลขบัตร
    email_hash: crypto.createHash('sha256').update($input.item.json.email).digest('hex')
  }
}];
```

---

## Code Node: ถอดรหัส (Decrypt)

### ใช้เมื่อต้องการข้อมูลเดิมคืน

```javascript
const crypto = require('crypto');

const SECRET_KEY = $env.ENCRYPTION_KEY;

function decrypt(encryptedText) {
  const [ivHex, encrypted] = encryptedText.split(':');
  const iv = Buffer.from(ivHex, 'hex');
  const decipher = crypto.createDecipheriv('aes-256-cbc', Buffer.from(SECRET_KEY), iv);
  let decrypted = decipher.update(encrypted, 'hex', 'utf8');
  decrypted += decipher.final('utf8');
  return decrypted;
}

return [{
  json: {
    id_card_original: decrypt($input.item.json.id_card_encrypted)
  }
}];
```

> **สำคัญ:** Secret Key ต้องเก็บใน n8n Environment Variables เท่านั้น ห้ามใส่ใน Code โดยตรง

---

<!-- _class: divider -->

## 04
## Credential Management

จัดการ Key และ Secret อย่างปลอดภัยใน n8n

---

## n8n Credential System

### วิธีจัดการ Credential ที่ถูกต้อง

- 🔐 **n8n Credentials** — เก็บ API Key, Password ใน Vault ของ n8n (เข้ารหัสอัตโนมัติ)
- 🌍 **Environment Variables** — เก็บ Secret ที่ไม่ควรอยู่ใน Workflow เช่น `ENCRYPTION_KEY`
- 🚫 **อย่าเก็บใน Node** — ไม่ควร Hardcode key ใน Set Node หรือ Code โดยตรง

### การตั้งค่า Environment Variables ใน n8n

```bash
# ตั้งค่าใน .env file หรือ Docker environment
N8N_ENCRYPTION_KEY=your-32-byte-secret-key-here
ENCRYPTION_KEY=your-aes-256-encryption-key
```

---

## Secure Workflow Checklist

### ตรวจสอบก่อน Deploy Workflow

- [ ] API Key ทุกตัวเก็บใน n8n Credentials — ไม่ใช่ใน Node Text
- [ ] ข้อมูลส่วนบุคคล (PII) ถูกเข้ารหัสก่อนบันทึก
- [ ] ไม่มี Sensitive Data ปรากฏใน Execution Log
- [ ] Webhook มีการตรวจสอบ Authorization Header
- [ ] Environment Variables ใช้สำหรับ Secret Keys

> **Webhook Security:** ใช้ `Header Auth` หรือ `Basic Auth` กับ n8n Webhook เสมอ

---

<!-- _class: divider -->

## 05
## สรุปและบทเรียนถัดไป

Summary & What's Next

---

## สรุป Module 6

### สิ่งที่เรียนรู้ใน Module นี้

- ✅ **ความสำคัญ** ของการปกป้องข้อมูลตาม PDPA และกฎหมายไซเบอร์
- ✅ **ประเภทข้อมูล** ที่ต้องเข้ารหัสในงานสถิติภาครัฐ
- ✅ **AES Encryption** — เข้า/ถอดรหัสด้วย Code Node ใน n8n
- ✅ **SHA-256 Hashing** — ตรวจสอบความถูกต้องและเก็บ Password
- ✅ **Credential Management** — จัดการ Key อย่างปลอดภัยใน n8n

### Module ถัดไป

**Module 7:** Workshop Basic AI Agent on n8n — สร้าง Agent ที่ตัดสินใจและใช้เครื่องมือได้

---

<!-- _class: lead -->

# ข้อมูลปลอดภัย พร้อมสู่ AI!

**Module 7:** Basic AI Agent on n8n

มาสร้าง AI ที่ทำงานแทนเราได้อย่างชาญฉลาด

---

<!-- footer: "n8n Workflow Automation | Module 7 — Workshop: Basic AI Agent on n8n | สำนักงานสถิติแห่งชาติ" -->


<!-- _class: lead -->

<style scoped>
.logo-bar { position: absolute; top: 36px; right: 64px; display: flex; align-items: center; gap: 16px; }
.logo-bar img { width: 100px; height: 100px; object-fit: contain; }
</style>

<div class="logo-bar">
  <img src="fig/logos/mahidol.svg" alt="Mahidol University">
  <img src="fig/logos/nso.png" alt="BDI">
</div>

# Workshop: Basic AI Agent on n8n

<div class="subtitle">Module 7 — สร้าง AI Agent และ Agent with Tools บน n8n</div>

**หลักสูตร** n8n Workflow Automation for Government Statistics
สถาบัน BDI · มหาวิทยาลัยมหิดล

---

## วัตถุประสงค์การเรียนรู้

เมื่อจบ module นี้ ผู้เรียนสามารถ:

1. **อธิบาย** ความแตกต่างระหว่าง AI Workflow กับ AI Agent
2. **สร้าง** Basic AI Agent บน n8n ด้วย AI Agent Node
3. **เชื่อมต่อ** Memory เพื่อให้ Agent จำบริบทการสนทนา
4. **เพิ่ม Tools** ให้ Agent เรียกใช้ข้อมูลและ Workflow ได้
5. **ทดสอบ** Agent ผ่าน Chat UI และ Webhook

---

## เนื้อหาใน Module นี้

1. **AI Agent คืออะไร?** — Agent vs Workflow
2. **n8n AI Agent Architecture** — Nodes และ Components
3. **Workshop Lab A:** Basic AI Agent พร้อม Memory
4. **Workshop Lab B:** AI Agent with Tools — เชื่อมต่อเครื่องมือจริง
5. **ทดสอบและ Debug** — ตรวจสอบการทำงานของ Agent

---

<!-- _class: divider -->

## 01
## AI Agent คืออะไร?

From Workflow to Autonomous Agent

---

## Workflow vs AI Agent

### ความแตกต่างสำคัญ

| | **Workflow** | **AI Agent** |
|---|---|---|
| **การทำงาน** | ทำตามขั้นตอนตายตัว | ตัดสินใจเองได้ |
| **Input** | ข้อมูลมีโครงสร้าง | คำถาม / คำสั่งภาษาธรรมชาติ |
| **Output** | ผลลัพธ์กำหนดล่วงหน้า | ตอบสนองตามสถานการณ์ |
| **Tools** | ไม่มี | เรียกใช้ Tool เองได้ |
| **Memory** | ไม่มี | จำบริบทได้ |

### AI Agent คือ
> Workflow ที่มี LLM เป็น "สมอง" ตัดสินใจเองว่าจะทำขั้นตอนใด ด้วยเครื่องมืออะไร

---

## ReAct Pattern: วิธีคิดของ AI Agent

### Reasoning + Acting Loop

```
[คำถามจากผู้ใช้]
      ↓
[Reasoning: LLM คิดว่าต้องทำอะไร]
      ↓
[Action: เรียกใช้ Tool ที่เลือก]
      ↓
[Observation: ดูผลลัพธ์จาก Tool]
      ↓
[Reasoning: พอแล้วหรือต้องทำต่อ?]
      ↓
[Final Answer: ตอบผู้ใช้]
```

### ตัวอย่าง
- "สถิติการจ้างงานเดือนล่าสุดเป็นเท่าไหร่?" → Agent เรียก API → คำนวณ → ตอบ

---

## n8n AI Agent Architecture

### ส่วนประกอบหลักของ AI Agent บน n8n

| Component | n8n Node | หน้าที่ |
|---|---|---|
| **Brain (LLM)** | OpenAI / Anthropic Node | ตัดสินใจและสร้างคำตอบ |
| **Memory** | Window Buffer Memory | จำบริบทการสนทนา |
| **Tools** | Custom n8n Workflows | ดึงข้อมูล / ทำงานจริง |
| **Trigger** | Chat Trigger / Webhook | รับ Input จากผู้ใช้ |

---

<!-- _class: divider -->

## 02
## Workshop Lab A

Basic AI Agent พร้อม Memory

---

## Lab A: สร้าง Basic AI Agent

### เป้าหมาย

สร้าง AI Chatbot ที่จำบริบทการสนทนาได้ พร้อม System Prompt สำหรับงานสถิติ

### โครงสร้าง Workflow

```
[Chat Trigger]
      ↓
[AI Agent Node]
    ├── Chat Model: OpenAI GPT-4o-mini
    └── Memory: Window Buffer Memory (last 10 messages)
      ↓
[Respond to Chat]
```

---

## ขั้นตอน Lab A — Step by Step

### Step 1–2: ตั้งค่า Trigger และ Agent

1. **Chat Trigger Node** — เปิด n8n Chat UI สำหรับทดสอบ
2. **AI Agent Node** — เพิ่ม Node ประเภท `AI Agent`

### Step 3: กำหนด System Prompt

```text
คุณคือผู้ช่วยอัจฉริยะด้านสถิติภาครัฐของสำนักงานสถิติแห่งชาติ
คุณสามารถ:
- อธิบายข้อมูลสถิติและตีความผลลัพธ์
- แนะนำวิธีวิเคราะห์ข้อมูลที่เหมาะสม
- ตอบคำถามเกี่ยวกับกระบวนการสถิติภาครัฐ

ตอบเป็นภาษาไทย กระชับ ชัดเจน และเป็นมืออาชีพ
```

### Step 4: เพิ่ม Memory

4. **Window Buffer Memory** — เชื่อมต่อกับ Agent, ตั้ง `context window = 10`

---

## ทดสอบ Lab A

### ตัวอย่างการทดสอบ Memory

**ผู้ใช้:** "สวัสดี ฉันชื่อสมชาย ทำงานที่ฝ่ายสถิติเศรษฐกิจ"
**Agent:** "สวัสดีครับคุณสมชาย ยินดีต้อนรับ ผมพร้อมช่วยเหลือด้านสถิติเศรษฐกิจครับ"

**ผู้ใช้:** "ฉันชื่ออะไรนะ?"
**Agent:** "คุณชื่อสมชาย และทำงานที่ฝ่ายสถิติเศรษฐกิจครับ" ← **Memory ทำงาน!**

---

<!-- _class: divider -->

## 03
## Workshop Lab B

AI Agent with Tools

---

## Lab B: เพิ่ม Tools ให้ Agent

### เป้าหมาย

ให้ Agent เรียกใช้เครื่องมือจริงได้ — ดึงข้อมูล Google Sheets, คำนวณสถิติ

### Tools ที่จะสร้างใน Lab นี้

| Tool | ฟังก์ชัน | ใช้เมื่อ |
|---|---|---|
| **get_statistics** | ดึงข้อมูลสถิติจาก Google Sheets | ผู้ใช้ถามข้อมูลตัวเลข |
| **calculate_summary** | คำนวณ Mean, Min, Max | ผู้ใช้ต้องการสรุปสถิติ |
| **search_data** | ค้นหาข้อมูลตาม keyword | ผู้ใช้ค้นหาข้อมูลเฉพาะ |

---

## โครงสร้าง Workflow Lab B

### AI Agent with Tools

```
[Chat Trigger]
      ↓
[AI Agent Node]
    ├── Chat Model: GPT-4o-mini
    ├── Memory: Window Buffer Memory
    └── Tools:
        ├── [Tool: get_statistics] → [Google Sheets Node]
        ├── [Tool: calculate_summary] → [Code Node: คำนวณ]
        └── [Tool: search_data] → [Google Sheets Filter]
      ↓
[Respond to Chat]
```

---

## ขั้นตอน Lab B — สร้าง Tool

### วิธีเพิ่ม Tool ใน n8n AI Agent

1. ใน **AI Agent Node** คลิก **Add Tool**
2. เลือก **Call n8n Sub-Workflow** หรือ **HTTP Request**
3. ตั้งชื่อ Tool: `get_statistics`
4. เขียน Tool Description (สำคัญมาก — LLM อ่านเพื่อตัดสินใจ):

```text
ใช้เครื่องมือนี้เมื่อผู้ใช้ถามเกี่ยวกับข้อมูลสถิติหรือตัวเลขจากฐานข้อมูล
Input: { "period": "ปีหรือเดือนที่ต้องการ", "category": "หมวดหมู่สถิติ" }
Output: ข้อมูลสถิติในรูปแบบตาราง
```

---

## ทดสอบ Lab B

### ตัวอย่างการทำงาน Agent with Tools

**ผู้ใช้:** "ข้อมูลอัตราการจ้างงานปี 2567 เป็นเท่าไหร่?"

**Agent คิด (Reasoning):**
- ต้องดึงข้อมูลจากฐานข้อมูล → เรียกใช้ Tool: `get_statistics`

**Agent เรียก Tool:** `{ "period": "2567", "category": "การจ้างงาน" }`

**Tool ส่งผลกลับ:** `{ "rate": "67.2%", "total": "38.5M", "change": "+0.3%" }`

**Agent ตอบ:** "อัตราการจ้างงานปี 2567 อยู่ที่ 67.2% หรือประมาณ 38.5 ล้านคน เพิ่มขึ้น 0.3% จากปีก่อนครับ"

---

<!-- _class: divider -->

## 04
## ทดสอบและ Debug Agent

Troubleshooting AI Agent Workflows

---

## Debug AI Agent ใน n8n

### เครื่องมือ Debug ที่มีใน n8n

- 📋 **Execution Log** — ดูแต่ละ Step ที่ Agent ทำ รวมถึง Reasoning
- 🔍 **AI Runs Panel** — ดู Tool Calls ที่ Agent เลือกใช้
- 🧪 **Test Chat** — ทดสอบแบบ Interactive ก่อน Deploy

### ปัญหาที่พบบ่อยและวิธีแก้

| ปัญหา | สาเหตุ | วิธีแก้ |
|---|---|---|
| Agent ไม่เรียก Tool | Tool Description ไม่ชัดเจน | ปรับ Description ให้ระบุ Use Case |
| Agent ตอบผิด | System Prompt ไม่ครอบคลุม | เพิ่มตัวอย่าง / Constraint |
| Memory หาย | Window size เล็กเกินไป | เพิ่ม context window |

---

## Best Practices: AI Agent บน n8n

### หลักการออกแบบ Agent ที่ดี

- ✅ **System Prompt ชัดเจน** — ระบุ Role, ขอบเขต, และภาษาที่ใช้
- ✅ **Tool Description แม่นยำ** — LLM ตัดสินใจจาก Description นี้
- ✅ **ทดสอบ Edge Cases** — คำถามออกนอกขอบเขต Agent ควรตอบอย่างไร
- ✅ **จำกัด Tool Access** — ให้เฉพาะ Tool ที่จำเป็น ไม่ใช่ทุก Tool
- ✅ **Monitor การใช้งาน** — ดู Execution Log สม่ำเสมอ

---

<!-- _class: divider -->

## 05
## สรุปและบทเรียนถัดไป

Summary & What's Next

---

## สรุป Module 7

### สิ่งที่เรียนรู้ใน Module นี้

- ✅ **AI Agent vs Workflow** — Agent ตัดสินใจเองด้วย ReAct Pattern
- ✅ **Lab A: Basic Agent** — Chat + Memory ด้วย Window Buffer
- ✅ **Lab B: Agent with Tools** — ดึงข้อมูลจริงผ่าน Custom Tools
- ✅ **Tool Description** — เขียน Description ที่ดีเพื่อให้ LLM เลือกถูก
- ✅ **Debug & Best Practice** — ตรวจสอบและปรับปรุง Agent

### วันพรุ่งนี้ (Day 2)

**Module 8:** พัฒนา AI Agent ตอบคำถาม/วิเคราะห์ข้อมูลสถิติ

---

<!-- _class: lead -->

# จบ Day 1 แล้ว!

**พรุ่งนี้ Day 2:** พัฒนา AI Agent สำหรับงานสถิติจริง

ขอบคุณทุกท่านที่ตั้งใจเรียน — พบกันพรุ่งนี้ 09.00 น.

---

<!-- footer: "n8n Workflow Automation | Module 8 — Workshop: AI Agent วิเคราะห์ข้อมูลสถิติ | สำนักงานสถิติแห่งชาติ" -->


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

**หลักสูตร** n8n Workflow Automation for Government Statistics
สถาบัน BDI · มหาวิทยาลัยมหิดล

---

## ทบทวน Day 1

### สิ่งที่ผ่านมาแล้ว

| Module | หัวข้อ |
|---|---|
| **Module 1** | Introduction AI and Workflow Automation |
| **Module 2** | Introduction to n8n |
| **Module 3** | Workshop: Basic Workflow — Data Table & Google Sheets |
| **Module 4** | Workshop: Statistics Data Pipeline |
| **Module 5** | Workshop: Sentiment Analysis & Satisfaction (100 ชุด) |
| **Module 6** | Encryption Sensitive Data |
| **Module 7** | Workshop: Basic AI Agent + AI Agent with Tools |

### Day 2 Focus

**AI Agent ระดับสูง** — วิเคราะห์ข้อมูลสถิติจริง + ใช้งานในหน่วยงาน

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
    ├── Tool: calculate_statistics → [Code Node: สูตรคำนวณ]
    └── Tool: generate_summary     → [Code Node: สรุปรายงาน]
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
## Workshop Lab A

AI Agent with RAG (Knowledge Base)

---

## Lab A: เชื่อม Knowledge Base กับ Agent

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

## การตั้งค่า Ingestion Workflow

### Workflow สำหรับโหลดข้อมูลเข้า Knowledge Base

```
[Manual Trigger]
      ↓
[Read PDF Node / Google Docs Node]
      ↓
[Recursive Character Text Splitter]
  - Chunk size: 1000 characters
  - Chunk overlap: 200 characters
      ↓
[OpenAI Embeddings Node]
      ↓
[In-Memory Vector Store: Insert Documents]
```

> **หมายเหตุ:** สำหรับ Production ใช้ Pinecone หรือ Supabase pgvector แทน In-Memory

---

## Lab A: Agent with RAG Tool

### โครงสร้าง Agent

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

### Tool Description สำหรับ `search_knowledge_base`
```text
ค้นหาข้อมูลจากเอกสารสถิติและนิยามศัพท์ทางสถิติ
ใช้เมื่อผู้ใช้ถามเกี่ยวกับคำนิยาม แนวทาง หรือรายละเอียดจากรายงานสถิติ
Input: { "query": "คำค้นหาที่ต้องการ" }
```

---

## ทดสอบ Lab A

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
## Workshop Lab B

Agent วิเคราะห์ข้อมูลสถิติด้วย Sheets

---

## Lab B: Agent + Statistics Database Tool

### เป้าหมาย

Agent ดึงข้อมูลสถิติจาก Google Sheets → คำนวณ → ตอบคำถามพร้อมตัวเลขจริง

### ตั้งค่า Google Sheets Database

| Sheet | คอลัมน์ | ข้อมูล |
|---|---|---|
| `employment` | year, month, rate, total | อัตราการจ้างงานรายเดือน |
| `population` | year, province, total, growth | สถิติประชากรรายจังหวัด |
| `price_index` | year, month, cpi, ppi | ดัชนีราคา |

---

## Lab B: Tool `query_statistics_db`

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

## ขั้นตอน Lab B — Step by Step

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

## ทดสอบ Lab B: Multi-step Reasoning

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
- ✅ **Lab A** — Agent ตอบคำถามจากเอกสารสถิติด้วย RAG
- ✅ **Lab B** — Agent วิเคราะห์ข้อมูลจริงด้วย Statistics DB Tool
- ✅ **Multi-tool Agent** — รวม Tools หลายอย่างให้ Agent ใช้งาน
- ✅ **System Prompt** — ปรับ Prompt สำหรับงานสถิติภาครัฐ

### Module ถัดไป

**Module 9:** พัฒนา AI Agent สำหรับการใช้งานจริงในหน่วยงาน

---

<!-- _class: lead -->

# Agent สถิติพร้อมแล้ว!

**Module 9:** AI Agent สำหรับการใช้งานจริงในหน่วยงาน

มาทำให้ Agent ใช้ได้จริงในองค์กร

---

<!-- footer: "n8n Workflow Automation | Module 9 — Workshop: AI Agent สำหรับการใช้งานจริง | สำนักงานสถิติแห่งชาติ" -->


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

**หลักสูตร** n8n Workflow Automation for Government Statistics
สถาบัน BDI · มหาวิทยาลัยมหิดล

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

**n8n Workflow Automation for Government Statistics**
สถาบัน BDI · มหาวิทยาลัยมหิดล

ขอบคุณทุกท่านที่เข้าร่วม — นำความรู้ไปพัฒนาหน่วยงานได้เลย 🎓

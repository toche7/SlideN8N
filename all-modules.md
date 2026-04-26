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

---

<!-- footer: "n8n Workflow Automation | Module 2 — Introduction to n8n | สำนักงานสถิติแห่งชาติ" -->


<!-- _class: lead -->

<style scoped>
.logo-bar { position: absolute; top: 36px; right: 64px; display: flex; align-items: center; gap: 16px; }
.logo-bar img { width: 100px; height: 100px; object-fit: contain; }
</style>

<div class="logo-bar">
  <img src="fig/logos/mahidol.svg" alt="Mahidol University">
  <img src="fig/logos/nso.png" alt="BDI">
</div>

# Introduction to n8n

<div class="subtitle">Module 2 — รู้จัก n8n: เครื่องมือ Workflow Automation</div>

**หลักสูตร** การสร้างผู้ช่วยอัจฉริยะ (AI Agent) สำหรับงานสถิติภาครัฐด้วย n8n

ผศ. ดร.ทวีศักดิ์ สมานชื่น
CBTU · คณะวิศวกรรมศาสตร์ · มหาวิทยาลัยมหิดล

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

<style scoped>
.n8n-logo { position: absolute; right: 100px; top: 50%; transform: translateY(-50%); width: 520px; object-fit: contain; }
</style>

## 01
## n8n คืออะไร?

What is n8n?

<img class="n8n-logo" src="fig/logos/n8n-icon.png.webp" />

---

## รู้จัก n8n

### n8n — Workflow Automation Platform

- **ชื่อ:** n8n (อ่านว่า "n eight n")
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

<div class="columns">
<div>

**Option 1: Docker (แนะนำสำหรับภาครัฐ)**
```bash
docker run -it --rm \
  --name n8n \
  -p 5678:5678 \
  -v ~/.n8n:/home/node/.n8n \
  n8nio/n8n
```

</div>
<div>

**Option 2: npm**
```bash
npm install n8n -g
n8n start
```

**Option 3: n8n Cloud** (เหมาะกับการเรียน)
n8n.io (ต้องการ Subscription)

</div>
</div>

---

## สถาปัตยกรรมภายใน

<div class="center">

![w:900px](fig/m2_Achitech.png)

</div>

---

<!-- _class: divider -->

## 03
## Interface ของ n8n

Getting Familiar with n8n UI

---

## ส่วนประกอบหลักของ UI
<div class="columns">
<div>

### หน้า Dashboard หลัก

- 📋 **Workflows** — รายการ Workflow ทั้งหมด
- 🔑 **Credentials** — จัดการการเชื่อมต่อ API/Service
- ⚙️ **Settings** — ตั้งค่าระบบ
- 📊 **Executions** — ประวัติการรัน Workflow
</div>
<div>

### Editor Canvas

- **Node Panel** — รายการ Nodes ทั้งหมด (ด้านซ้าย)
- **Canvas** — พื้นที่วาง Workflow (ตรงกลาง)
- **Node Settings** — ตั้งค่า Node ที่เลือก (ด้านขวา)
- **Execution Log** — ผลการรัน (ด้านล่าง)
</div>
</div>

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

<div class="center">

![w:600px](fig/m2_datatransform.png)

</div>


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
  <img src="fig/logos/nso.png" alt="BDI">
</div>

# Workshop: สร้าง Workflow พื้นฐานด้วย n8n

<div class="subtitle">Module 3 — เชื่อมต่อข้อมูลและสร้าง Workflow แรก</div>

**หลักสูตร** การสร้างผู้ช่วยอัจฉริยะ (AI Agent) สำหรับงานสถิติภาครัฐด้วย n8n

ผศ. ดร.ทวีศักดิ์ สมานชื่น
CBTU · คณะวิศวกรรมศาสตร์ · มหาวิทยาลัยมหิดล

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

<div class="center">

![w:800px](fig/m3_Demo1.png)

</div>

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

## ผลลัพธ์ที่ควรเห็น: Output จาก Set Node

```json
[
  {
      "message": "Hello Statistics!"
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
## Trigger Nodes

<div class="center">

![w:600px](fig/m3_triggerNode.gif)

</div>

---

## Schedule Trigger :  รัน Workflow ตามเวลาที่กำหนด

**การตั้งค่า:**
- **Mode:** Every X minutes / hours / days
- **Cron Expression:** สำหรับตั้งเวลาซับซ้อน

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

<div class="center">

![w:700px](fig/m3_Demo2.png)

</div>

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

**URL ที่ได้:** https://api.example.go.th/statistics?year=2567&province=all&format=json

---

## HTTP Request กับ Authentication: การส่ง API Key

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

![bg right:45% contain](fig/m3_Demo3.png)

---

## IF Node — เงื่อนไขการทำงาน


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
![bg right:45% contain](fig/m3_Demo4.png)
---

## Code Node — เขียน Custom Logic

<div class="columns">
<div>

**Code Node: คำนวณ % การเปลี่ยนแปลง**

```javascript
const items = $input.all();
return items.map(item => {
  const current = item.json.current_value;
  const previous = item.json.previous_value;
  const change = ((current - previous) / 
                  previous * 100).toFixed(2);

```

</div>
<div>

```javascript
  return {
    json: {
      ...item.json,
      percent_change: parseFloat(change),
      trend: change > 0 ? "เพิ่มขึ้น" : "ลดลง"
    }
  };
});
```
</div>
</div>

---

## Filter / Split in Batches

<div class="columns">
<div>

**Filter Node** — กรองข้อมูลตามเงื่อนไข
```
เก็บเฉพาะ: {{ $json.province }} == "กรุงเทพมหานคร"
```

**Split in Batches** — แบ่งประมวลผลทีละ N รายการ
- ป้องกัน API Rate Limit
- ประมวลผลข้อมูลขนาดใหญ่ได้

</div>
<div>

**Merge Node** — รวมข้อมูลจากหลาย Branch
- Merge by Position
- Merge by Key (JOIN ข้อมูล 2 ชุด)

</div>
</div>

---

<!-- _class: divider -->

## 05
## Output: Email & File

ส่งออกผลลัพธ์

---

## Send Mail
### Demo 5: ส่งรายงานทาง Email

<div class="center">

![w:700px](fig/m3_Demo5.png)

</div>

---

## ส่งรายงานทาง Email

<div class="columns">
<div>

### Send Email Node (SMTP)

**การตั้งค่า Credential:**
- Protocol: SMTP / Gmail / Outlook
- Host, Port, Username, Password

**Attachment:** แนบไฟล์ CSV/Excel ได้

</div>
<div>

**การตั้งค่า Email Node:**
```
To:      director@nso.go.th
Subject: รายงานสถิติ {{ $today }} อัตโนมัติ
Body:    ยอดรวมประจำวันนี้: {{ $json.total }}
         ดูรายละเอียดที่ระบบ Dashboard
```

</div>
</div>


---

## Google Sheet
### Demo 6: บันทึกข้อมูลลง Google Sheets

<div class="center">

![w:700px](fig/m3_Demo6.png)

</div>

---

## บันทึกข้อมูลลง Google Sheets

<div class="columns">
<div>

### Google Sheets Node

**การตั้งค่า Credential:**
- Google OAuth2 หรือ Service Account
- แชร์ Sheet ให้ Service Account Email

**Operation:**
- **Append** — เพิ่มข้อมูลแถวใหม่
- **Update** — อัปเดตแถวที่มีอยู่
- **Read** — ดึงข้อมูลจาก Sheet

</div>
<div>

**การตั้งค่า Node:**
```
Operation:    Append
Document ID:  (วาง Google Sheet URL)
Sheet Name:   Sheet1

Columns:
  date     → {{ $today }}
  total    → {{ $json.total }}
  province → {{ $json.province }}
```

</div>
</div>


---

<!-- _class: divider -->

## 06
## Workshop Exercise

ฝึกปฏิบัติ

---

<!-- _class: highlight -->

## แบบฝึกหัด 3.1 — รายงานอากาศอัตโนมัติ

<div class="columns">
<div>

### โจทย์

สร้าง Workflow ที่:
1. **ทำงานทุกเช้า** เวลา 07:00 น.
2. **ดึงข้อมูลอากาศ** จาก Open-Meteo API (Free, ไม่ต้องใช้ API Key)
3. **แปลงข้อมูล** — คำนวณค่าเฉลี่ยอุณหภูมิ
4. **ส่ง Email** สรุปสภาพอากาศประจำวัน

</div>
<div>

### API ที่ใช้

```
URL: https://api.open-meteo.com/v1/forecast
Parameters:
  latitude=13.75
  longitude=100.52
  daily=temperature_2m_max,
        temperature_2m_min
  timezone=Asia/Bangkok
```

</div>
</div>

---
## Hint: Workflow for Exercise 3.1

<div class="center">

![w:900px](fig/m3_ex1.png)

</div>

---

<!-- _class: highlight -->

## แบบฝึกหัด 3.2 — Data Cleaning Pipeline

<div class="columns">
<div>

### โจทย์

สร้าง Workflow ที่:
1. **รับข้อมูล** จาก Webhook (จำลองการส่งข้อมูลสำรวจ)
2. **ตรวจสอบ** ว่าข้อมูลครบถ้วน (ไม่มีค่า null)
3. **แยก** ข้อมูล valid / invalid ออกจากกัน
4. **บันทึก** ลงไฟล์ CSV แยก: `valid.csv` และ `invalid.csv`

</div>
<div>

### สิ่งที่ต้องทำ

1. สร้าง Webhook Trigger
2. ใช้ IF Node ตรวจสอบ required fields
3. True Branch → Export `valid.csv` ด้วย Spreadsheet File Node
4. False Branch → Export `invalid.csv` ด้วย Spreadsheet File Node

> **Dataset:** ทดสอบด้วย Postman หรือ curl

</div>
</div>


---
## Hint: Workflow for Exercise 3.2

<div class="center">

![w:900px](fig/m3_ex2.png)

</div>

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
  <img src="fig/logos/nso.png" alt="BDI">
</div>

# Workshop: ดึงและประมวลผลข้อมูลสถิติอัตโนมัติ

<div class="subtitle">Module 4 — End-to-End Statistics Data Pipeline</div>

**หลักสูตร** การสร้างผู้ช่วยอัจฉริยะ (AI Agent) สำหรับงานสถิติภาครัฐด้วย n8n

ผศ. ดร.ทวีศักดิ์ สมานชื่น
CBTU · คณะวิศวกรรมศาสตร์ · มหาวิทยาลัยมหิดล

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


<div class="center">

![w:900px](fig/m4_end-to-end.png)

</div>

---

## แหล่งข้อมูลที่จะใช้ใน Workshop

### Open Data APIs สำหรับงานสถิติไทย

| แหล่งข้อมูล | URL | ประเภทข้อมูล |
|---|---|---|
| **data.go.th** | api.data.go.th | Open Government Data |
| **Data Catalog** | catalog.nso.go.th | สถิติเศรษฐกิจ |
| **BOT** | api.bot.or.th | ข้อมูลการเงิน |
| **DDC** | covid19.ddc.moph.go.th | สุขภาพ |
| **Open-Meteo** | api.open-meteo.com | สภาพอากาศ (Free) |

---

<!-- _class: divider -->

## 02
## แหล่งข้อมูลสถิติภาครัฐ

ระบบบัญชีข้อมูลสำนักงานสถิติแห่งชาติ NSO Data Catalog

---

## [catalog.nso.go.th](https://catalog.nso.go.th)

<div class="columns">
<div>

### การเข้าถึงข้อมูลภาครัฐ

**ขั้นตอนการใช้งาน:**
1. ค้นหา Dataset ที่ต้องการ
2. ดู API Documentation ของ Dataset นั้น

</div>
<div>

**ตัวอย่าง API Call:**
```
GET https://catalog.nso.go.th/api/3/action/datastore_search
    ?resource_id=a2443986-6b68-4f44-a94b-b84b0fc50c96
    &limit=100
```

</div>
</div>

---

## ตัวอย่าง: รายได้เฉลี่ยต่อเดือนของครัวเรือน (NSO)

**CKAN API (NSO Catalog):**
```
GET https://catalog.nso.go.th/api/3/action/datastore_search
    ?resource_id=a2443986-6b68-4f44-a94b-b84b0fc50c96
    &limit=100
```

**Columns ที่ได้:** `YEAR`, `REGION`, `AREA`, `MONTHLY_INCOME`, `FROM_WORK`, `PROPERTY_INCOME`, `CURRENT_TRANSFER`, `NONMONEY_INCOME`

**ผลลัพธ์:** รายได้เฉลี่ยต่อเดือนของครัวเรือน จำแนกตามภาคและพื้นที่ (พ.ศ. 2500–2562)



---

<!-- _class: divider -->

## 03
## Data Processing

ประมวลผลและทำความสะอาดข้อมูล

---

## Data Cleaning Pipeline

### ขั้นตอนการทำความสะอาดข้อมูล


<div class="center">

![w:900px](fig/m4_cleaningData.png)

</div>

---
<!-- _class: dense -->
## Code Node: Data Cleaning

<div class="columns">
<div>

### ขั้นตอน

1. **กรอง** ข้อมูลที่ไม่ครบ
2. **แปลงชนิด** String → Number/Date
3. **ตรวจค่า** ที่ไม่สมเหตุสมผล

> Input: JSON จาก HTTP Request
> Output: Array ของ Items ที่สะอาด

</div>
<div>

```javascript
const items = $input.all();
return items
  .filter(item =>
    item.json.province &&
    item.json.value !== null)
  .map(item => ({
    json: {
      province: item.json.province.trim(),
      value: parseFloat(item.json.value) || 0,
      year: parseInt(item.json.year),
      updated_at: new Date().toISOString()
    }
  }))
  .filter(item =>
    item.json.value >= 0 &&
    item.json.year >= 2500);
```

</div>
</div>

---
<!-- _class: dense -->
## Code Node:  Data Aggregation

<div class="columns">
<div>

### สิ่งที่คำนวณได้

| ค่า | วิธีคำนวณ |
|---|---|
| `total` | รวมทุก record |
| `avg` | total ÷ จำนวน |
| `max` / `min` | ค่าสูง/ต่ำสุด |
| `by_region` | groupBy ภาค |

</div>
<div>

```javascript
const data = $input.all()
  .map(i => i.json);
const values = data.map(d => d.value);
const total = values.reduce((a,b) => a+b, 0);
const avg   = total / values.length;
const max   = Math.max(...values);
const min   = Math.min(...values);
const byRegion = data.reduce((acc, item) => {
  acc[item.region] =
    (acc[item.region] || 0) + item.value;
  return acc;
}, {});
return [{ json: { total, avg, max, min,
                  by_region: byRegion } }];
```

</div>
</div>

---

## Join ข้อมูลจากหลายแหล่ง

### Merge Node — รวมข้อมูล 2 ชุด

**กรณีการใช้งาน:** รวมข้อมูลประชากร + ข้อมูล GDP ต่อจังหวัด

```
[Population API] ──┐
                   ├──► [Merge Node] ──► [Code: คำนวณ GDP/capita]
[GDP API]        ──┘     (Join by "province_code")
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


<div class="center">

![w:900px](fig/m4_Report.png)

</div>


---

<!-- _class: dense -->

## Template รายงาน HTML Email

<div class="columns">
<div>

**โครงสร้าง Email:**
- `<h2>` — หัวข้อรายงาน
- `<table>` — ตารางข้อมูล
- Header row สี `#1B4F72`
- ใส่ n8n expressions `{{ }}` ในแต่ละ cell

> ใช้ใน **Send Email Node**
> ช่อง Body → HTML mode

</div>
<div>

```html
<h2>รายงานสถิติ {{ $json.month }}</h2>
<table border="1"
  style="border-collapse:collapse;width:100%">
  <tr style="background:#1B4F72;color:white">
    <th>ตัวชี้วัด</th>
    <th>ค่า</th>
    <th>เปลี่ยนแปลง</th>
  </tr>
  <tr>
    <td>รายได้เฉลี่ย (บาท/เดือน)</td>
    <td>{{ $json.avg_income }}</td>
    <td>{{ $json.income_change }}%</td>
  </tr>
</table>
```

</div>
</div>

---


## ระบบแจ้งเตือนความผิดปกติ : Psuedo Code

```
สำหรับแต่ละ item:
  คำนวณ pct = |value - previous| / previous × 100
  ถ้า pct > threshold:
    สร้าง alert:
      - indicator = ชื่อตัวชี้วัด
      - message   = "เปลี่ยนแปลง X%"
      - severity  = HIGH  (ถ้า pct > threshold × 2)
                    MEDIUM (อื่นๆ)
    เพิ่มเข้า alerts[]
ถ้า alerts ไม่ว่าง → return alerts
ไม่มี alert        → return { no_alerts: true }
```

---

## Integration กับช่องทางอื่น

<div class="columns">
<div>

**LINE Notify:**
```
POST https://notify-api.line.me/api/notify
Header: Authorization: Bearer {LINE_TOKEN}
Body:   message={{ $json.message }}
```

**Slack:**
- ใช้ Slack Node ใน n8n โดยตรง

</div>
<div>

**Microsoft Teams (Webhook):**
```json
POST https://your-org.webhook.office.com/...
{
  "text": "รายงานสถิติประจำวัน\n{{ $json.summary }}"
}
```

</div>
</div>

---

<!-- _class: divider -->

## 05
## Workshop Exercise

สร้าง Full Statistics Pipeline

---

<!-- _class: highlight -->

## Workshop 4.1 — Population Statistics Pipeline

### โจทย์: สร้าง Automated Pipeline **Dataset:** ข้อมูลประชากรจากสำนักงานสถิติแห่งชาติ (NSO)
```
GET https://catalog.nso.go.th/api/3/action/datastore_search
    ?resource_id=57ff7cd9-27e3-4dc5-b6ad-e8280ab18a05&limit=5000
```

1. ดึงข้อมูลประชากรรายจังหวัดจาก NSO Open Data API
2. กรองเฉพาะข้อมูลรวมรายจังหวัด (area=รวม, sex=รวม, age_group=รวม)
3. คำนวณ: ค่าเฉลี่ย, สูงสุด, ต่ำสุด, รวมทั้งประเทศ
4. แยกข้อมูล TOP 5 และ BOTTOM 5 จังหวัดตามจำนวนประชากร
5. Export เป็น Excel Report และส่ง Email สรุปอัตโนมัติ

---

## โครงสร้างข้อมูล NSO Dataset


| ฟิลด์ | ชนิด | ตัวอย่างค่า | ความหมาย |
|---|---|---|---|
| `year` | numeric | `2533`, `2543`, `2553` | ปีพุทธศักราช |
| `region` | text | `ทั่วประเทศ`, `กลาง` | ภาค |
| `province` | text | `รวม`, `กรุงเทพมหานคร` | จังหวัด |
| `area` | text | `รวม`, `ในเขตเทศบาล` | ประเภทพื้นที่ |
| `sex` | text | `รวม`, `ชาย`, `หญิง` | เพศ |
| `age_group` | text | `รวม`, `0-4` | กลุ่มอายุ |
| `value` | numeric | `54548530` | จำนวนประชากร (คน) |

> **Total records: 38,720** | **ปีข้อมูล:** พ.ศ. 2533–ปัจจุบัน

---
<!-- _class: dense -->
## Hint: ขั้นตอนที่ 1 — HTTP Request Node

### ตั้งค่า HTTP Request (ระบุปีที่ต้องการ)

**วิธีที่ 1 — Query String (เร็ว, Filter ฝั่ง Server):**
```
Method:  GET
URL:     https://catalog.nso.go.th/api/3/action/datastore_search
         ?resource_id=57ff7cd9-27e3-4dc5-b6ad-e8280ab18a05
         &limit=5000&filters={"year":2563}
```




---
<!-- _class: dense -->
## Hint: Workshop 4.1

### Workflow Structure

<div class="center">

![w:900px](fig/m4_Ex1.png)

</div>


---

<!-- _class: highlight -->

## Workshop 4.2 — Household Finance Analysis Pipeline

### โจทย์: วิเคราะห์ฐานะทางการเงินครัวเรือนไทยจาก NSO Open Data



| | Dataset | resource_id |
|---|---|---|
| **ชุดที่ 1** | ค่าใช้จ่ายเฉลี่ยต่อเดือนของครัวเรือน จำแนกตามประเภทค่าใช้จ่าย | `697c9b29-d937-4c4e-9d9f-122ff085488b` |
| **ชุดที่ 2** | หนี้สินเฉลี่ยต่อครัวเรือน จำแนกตามวัตถุประสงค์การกู้ยืม | `89cc71ae-f596-4307-b38f-10d61d084801` |

**ความต้องการ:**
1. ดึงข้อมูลจาก 2 API พร้อมกัน (Parallel)
2. คำนวณ **สัดส่วนหนี้สิน/ค่าใช้จ่าย** จำแนกตามสถานะทางเศรษฐสังคม
3. หาจังหวัดที่มีภาระหนี้สูงสุด / ต่ำสุด
4. สร้าง Summary Report ส่ง Email อัตโนมัติ

---

## โครงสร้างข้อมูล: ชุดที่ 1 — ค่าใช้จ่ายครัวเรือน

**Resource ID:** `697c9b29-d937-4c4e-9d9f-122ff085488b` | **Total: 10,780 records** | **ปีข้อมูล:** 2566

| ฟิลด์ | ชนิด | ตัวอย่างค่า |
|---|---|---|
| `year` | text | `"2566"` |
| `province` | text | `"กรุงเทพมหานคร"`, `"เชียงใหม่"` |
| `soc_eco_class1` | text | `"ลูกจ้าง"`, `"ผู้ประกอบธุรกิจ..."`, `"ผู้ถือครองทำการเกษตร..."` |
| `soc_eco_class2` | text | รายละเอียดสถานะ เช่น `"ผู้จัดการนักวิชาการ..."` |
| `type_expenditure1` | text | `"ค่าใช้จ่ายเพื่อการอุปโภคบริโภค"` / `"ค่าใช้จ่ายทั้งสิ้นต่อเดือน"` |
| `type_expenditure2` | text | `"อาหารและเครื่องดื่ม"`, `"ที่อยู่อาศัย..."`, `"การศึกษา"` |
| `value` | numeric | `21740.00` (บาท/เดือน) |

```
GET https://catalog.nso.go.th/api/3/action/datastore_search
    ?resource_id=697c9b29-d937-4c4e-9d9f-122ff085488b&limit=5000
```

---

## โครงสร้างข้อมูล: ชุดที่ 2 — หนี้สินครัวเรือน

**Resource ID:** `89cc71ae-f596-4307-b38f-10d61d084801` | **Total: 7,700 records** | **ปีข้อมูล:** 2566

| ฟิลด์ | ชนิด | ตัวอย่างค่า |
|---|---|---|
| `year` | text | `"2566"` |
| `province` | text | `"กรุงเทพมหานคร"`, `"สมุทรปราการ"` |
| `soc_eco_class1` | text | `"ลูกจ้าง"`, `"ผู้ประกอบธุรกิจ..."`, `"ผู้ถือครองทำการเกษตร..."` |
| `soc_eco_class2` | text | รายละเอียดสถานะ เช่น `"คนงานด้านการขนส่ง..."` |
| `hhdebt_totaldebt` | text | `"จำนวนครัวเรือนทั้งสิ้น"` / `"จำนวนหนี้สินเฉลี่ยต่อครัวเรือน"` |
| `purpose_source_bor` | text | `"จำนวนหนี้สินเฉลี่ยต่อครัวเรือน"` / `"ใช้ซื้อ/เช่าซื้อบ้าน..."` / `"หนี้ในระบบ"` |
| `value` | numeric | `300000.00` (บาท) หรือ จำนวนครัวเรือน |
| `unit` | text | `"บาท"` หรือ `"ครัวเรือน"` |

```
GET https://catalog.nso.go.th/api/3/action/datastore_search
    ?resource_id=89cc71ae-f596-4307-b38f-10d61d084801&limit=5000
```

---
<!-- _class: dense -->
## Hint: ขั้นตอนที่ 1 — ดึงข้อมูล 2 แหล่งพร้อมกัน

### Workflow Structure (Parallel HTTP Requests)


<div class="center">

![w:900px](fig/m4_Ex2.png)

</div>

---

<!-- _class: divider -->

## 06
## Best Practices & Production Tips

แนวทางปฏิบัติที่ดีสำหรับ Production

---

## Best Practices

### การพัฒนา Workflow คุณภาพสูง

<div class="columns">
<div>

**1. ตั้งชื่อ Node ให้ชัดเจน**
- ❌ `HTTP Request 1`, `Set 3`
- ✅ `GET Population Data`, `Calculate Summary Stats`

**2. ใช้ Notes (Sticky Notes)**
- อธิบาย Logic ซับซ้อน
- บันทึก API Documentation Reference

</div>
<div>

**3. แยก Workflow ตามหน้าที่**
- Workflow หลัก (Main Pipeline)
- Workflow Error Handler แยกต่างหาก
- Workflow Utility Functions

</div>
</div>

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
- ✅ **Security Best Practices** สำหรับภาครัฐ



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

**หลักสูตร** การสร้างผู้ช่วยอัจฉริยะ (AI Agent) สำหรับงานสถิติภาครัฐด้วย n8n

ผศ. ดร.ทวีศักดิ์ สมานชื่น
CBTU · คณะวิศวกรรมศาสตร์ · มหาวิทยาลัยมหิดล

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

<div class="columns">
<div>

### 🔒 Symmetric Encryption (AES)
- ใช้ Key เดียวทั้งเข้าและถอดรหัส
- **ถอดรหัสได้** — ต้องมี Secret Key
- เหมาะกับ: เลขบัตรประชาชน, ข้อมูลที่ต้องนำกลับมาใช้
- ใน n8n: Code Node + `crypto` module

### #️⃣ Hashing (SHA-256 / bcrypt)
- เปลี่ยนข้อมูลเป็น Hash **ย้อนกลับไม่ได้**
- เหมาะกับ: Password, Checksum
- ตรวจสอบความถูกต้องโดยไม่ต้องเห็นข้อมูลเดิม

</div>
<div>

### 🎫 Tokenization
- แทนข้อมูลจริงด้วย Token สุ่ม
- เหมาะกับ: บัตรเครดิต, เลขบัตรประชาชน แบบ Reference
- ข้อมูลจริงเก็บในระบบแยก (Token Vault)



</div>
</div>

---

## เปรียบเทียบ


| วิธี | ถอดรหัส? | ใช้เมื่อ |
|---|---|---|
| AES | ✅ | ต้องการข้อมูลเดิม |
| SHA-256 | ❌ | ตรวจสอบเท่านั้น |
| Token | ✅ (via vault) | Reference ปลอดภัย |

---

<!-- _class: divider -->

## 03
## Workshop: Encryption ใน n8n

ปกป้องข้อมูลใน Workflow อัตโนมัติ

---

## Workshop: เข้ารหัสข้อมูลด้วย Code Node

### โครงสร้าง Workflow

<div class="center">

![w:800px](fig/m6_Ex1.png)

</div>

### ข้อมูลที่รับเข้ามา (Input)
```json
{ "name": "สมชาย ใจดี", "id_card": "1234567890123", "email": "somchai@nso.go.th" }
```
---
<!-- _class: dense -->
## Code Node: AES Encryption

```javascript
const crypto = require('crypto');
const SECRET_KEY = $vars.ENCRYPTION_KEY; // 32-byte key จาก n8n Environment
const IV = crypto.randomBytes(16);
function encrypt(text) {
  const cipher = crypto.createCipheriv('aes-256-cbc', Buffer.from(SECRET_KEY), IV);
  let encrypted = cipher.update(text, 'utf8', 'hex');
  encrypted += cipher.final('hex');
  return IV.toString('hex') + ':' + encrypted;
}
return {
  json: {
    name: $json.name,           // เก็บชื่อตามปกติ
    id_card_encrypted: encrypt($json.id_card),  // เข้ารหัสเลขบัตร
    email_hash: crypto.createHash('sha256').update($json.email).digest('hex'),
  }
};
``` 
<!-- 
---
## Code Node: ถอดรหัส (Decrypt)
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

-->


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
# ตั้งค่าในตัวแปรใน Variables
ENCRYPTION_KEY=your-32-byte-secret-key-here
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

# จบ Day 1 แล้ว!

**พรุ่งนี้ Day 2:** พัฒนา AI Agent สำหรับงานสถิติ

ขอบคุณทุกท่านที่ตั้งใจเรียน — พบกันพรุ่งนี้ 09.00 น.

---
marp: true
theme: mahidol
paginate: true
size: 16:9
footer: "Low-code/No-code Development with n8n"
math: katex

---

<!-- _class: divider -->
<style scoped>
.logo-bar { position: absolute; top: 36px; right: 64px; display: flex; align-items: center; gap: 16px; }
.logo-bar img { width: 100px; height: 100px; object-fit: contain; }
</style>

<div class="logo-bar">
  <img src="fig/logos/mahidol.svg" alt="Mahidol University">
</div>

## Low-code/No-code 
## Development with n8n



---

<!-- _class: lead -->

<style scoped>
.logo-bar { position: absolute; top: 36px; right: 64px; display: flex; align-items: center; gap: 16px; }
.logo-bar img { width: 100px; height: 100px; object-fit: contain; }
</style>

<div class="logo-bar">
  <img src="fig/logos/mahidol.svg" alt="Mahidol University">
</div>

# Workflow Automation with n8n
<div class="subtitle">Module 1 — พื้นฐาน AI, Automation และ Agent Engineering</div>

 

ผศ. ดร.ทวีศักดิ์ สมานชื่น
CBTU · คณะวิศวกรรมศาสตร์ · มหาวิทยาลัยมหิดล

---

## วัตถุประสงค์การเรียนรู้

เมื่อจบ module นี้ ผู้เรียนสามารถ:

1. **อธิบาย** บทบาทของ AI, Automation และ AI Agent ในการแก้ปัญหางานจริง
2. **เข้าใจ** ประโยชน์และความสำคัญของ Workflow Automation
3. **ระบุ** Use Cases ที่เหมาะกับ Workflow และ AI Agent
4. **ประเมิน** ความพร้อมขององค์กรในการนำ Automation มาใช้
5. **วางแผน** แนวทางพัฒนา AI Agent ตั้งแต่ต้นแบบจนถึงการใช้งานจริง

---

## เนื้อหาใน Module นี้

1. **AI & Automation ในยุคปัจจุบัน** — ภาพรวมและแนวโน้ม
2. **Workflow Automation คืออะไร?** — นิยามและหลักการ
3. **โจทย์จากงานจริง** — ปัญหาและโอกาสในการทำ Automation
4. **Use Cases** — ตัวอย่างการใช้งานจริง
5. **Tools Ecosystem** — เครื่องมือที่ใช้งานได้
6. **n8n Overview** — ทำไมต้อง n8n?

---

<!-- _class: divider -->

## 01
## AI & Automation ในยุคปัจจุบัน

The Rise of AI-Powered Automation

---

## ปัญหาการทำงาน

<div class="columns">
<div>

![w:700px](fig/m1_workproblem.png)

</div>
<div>

> ปัญหาในการทำงานมีหลากหลาย
> ต้องพิจารณาปัญหาอย่างรอบคอบ
> แล้วจึงเลือกใช้ทางแก้ที่เหมาะสม

แม้จะใช้ AI แล้วแต่เราก็จะสามารถพบว่า
ยังมีปัญหาเดิมๆ อยู่หากเราแก้ปัญหาไม่ตรงจุด

</div>
</div>

---

## แนวทางการทำงานในปัจจุบัน


- **Manual Process** — มนุษย์ทำงานทุกขั้นตอนด้วยตนเอง
- **AI-Assitance** - เช่นการใช้ chatbot ช่วยในการทำาน 
- **Automation** — ระบบทำงานซ้ำ ๆ แทนมนุษย์โดยอัตโนมัติ
- **AI-Powered Automation** — ระบบตัดสินใจและปรับตัวได้ด้วย AI

---
<div class="center">

![w:1000px](fig/m1_modernTech.png)

</div>

---

## แนวโน้มระดับโลก 


### Digital Transformation ในองค์กร

- 🌐 **Open Data & APIs** — เชื่อมต่อข้อมูลและบริการ
- 📊 **Data-Driven Decisions** — ตัดสินใจบนข้อมูลที่ตรวจสอบได้
- 🤖 **AI in the Workplace** — ประยุกต์ AI กับงานความรู้และบริการ
- ⚡ **Real-time Analytics** — วิเคราะห์ข้อมูลแบบ Real-time

### AI Engineering Today

- จาก Prompt ทดลอง สู่ระบบที่เชื่อมต่อ Workflow และ Tools
- ให้ความสำคัญกับความถูกต้อง ความปลอดภัย และการประเมินผล

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

### สำหรับทีมและกระบวนการทำงาน

- ⏱️ **ประหยัดเวลา** — ลดงาน Manual ที่ทำซ้ำๆ ได้ถึง 80%
- 🎯 **ลด Human Error** — ข้อมูลถูกต้องและสม่ำเสมอมากขึ้น
- 📈 **Scalability** — รองรับข้อมูลปริมาณมากโดยไม่ต้องเพิ่มคน
- 🔄 **Real-time** — ประมวลผลและรายงานได้ทันที
- 💡 **ทรัพยากรมีคุณค่ามากขึ้น** — เจ้าหน้าที่โฟกัสงานที่มีคุณค่าสูง

---

<!-- _class: divider -->

## 03
## ปัญหาในงานประจำ

ปัญหาและความท้าทายในปัจจุบัน

---

## ปัญหาที่พบบ่อยในกระบวนการทำงาน

### กระบวนการที่ต้องปรับปรุง

- 📋 **รับคำขอด้วยมือ** — คัดลอกข้อมูลจากหลายช่องทาง
- 🗂️ **ความรู้กระจัดกระจาย** — อยู่ในเอกสาร FAQ และระบบต่างๆ
- ⏰ **ตอบกลับล่าช้า** — ทีมงานต้องค้นข้อมูลซ้ำ
- 🔁 **ทำงานซ้ำทุกวัน** — คำถามและขั้นตอนเดิมเกิดขึ้นบ่อย
- ❌ **ข้อมูลผิดพลาด** — Human Error จากการทำงานด้วยมือ

---

## กระบวนการทำงานที่พบบ่อย

### Before Automation

```
1. รับคำขอ → 2. ค้นเอกสารและระบบหลายแห่ง (ด้วยมือ)
→ 3. รวมข้อมูล → 4. ตรวจสอบความถูกต้อง
→ 5. เขียนคำตอบหรือสรุป → 6. ส่งกลับผู้ขอ
→ (ทำซ้ำทุกวัน / ทุกสัปดาห์)
```

### After Automation

```
รับคำขอ → Workflow ตรวจสอบและค้นข้อมูล
→ AI Agent สรุปพร้อมแหล่งอ้างอิง → ส่งให้ผู้ใช้ตรวจทาน
(มี Monitoring และ Human review ตามความเสี่ยง)
```

---

<!-- _class: divider -->

## 04
## Use Cases

ตัวอย่างการใช้ Workflow Automation ในงานจริง

---

## Use Case 1: สรุปผลการดำเนินงานอัตโนมัติ

### Monthly Operations Report

**ปัญหา:** ทีมใช้เวลาหลายชั่วโมงต่อเดือนรวบรวมตัวเลขจากหลายระบบ

**วิธีแก้ด้วย Automation:**
1. **Trigger:** ทุกวันที่ 1 ของเดือน เวลา 08:00
2. **Action 1:** ดึงข้อมูลยอดขายและ ticket จาก API
3. **Action 2:** ตรวจสอบคุณภาพและสรุปตัวชี้วัด
4. **Action 3:** สร้างรายงานและส่งให้ทีม


**ผล:** ลดงานรวบรวมข้อมูลและทำให้ทีมเห็นประเด็นสำคัญเร็วขึ้น

---

## Use Case 2: แจ้งเตือนเหตุผิดปกติ

### Operations Anomaly Alert

**ปัญหา:** จำนวนคำขอหรือข้อผิดพลาดเพิ่มขึ้น แต่ทีมสังเกตเห็นช้า

**วิธีแก้ด้วย Automation:**
1. **Trigger:** มี event หรือข้อมูลใหม่เข้าระบบ
2. **Action 1:** ตรวจสอบรูปแบบและค่าที่จำเป็น
3. **Action 2:** เปรียบเทียบกับเกณฑ์หรือช่วงเวลาที่ผ่านมา
4. **Action 3:** หากพบความผิดปกติ → แจ้งเตือนทีมทาง LINE/Email

**ผล:** ตรวจพบและส่งต่อปัญหาได้รวดเร็วยิ่งขึ้น

---

## Use Case 3: รวมข้อมูลเพื่อช่วยทีมตัดสินใจ

### Data Integration Pipeline

**แหล่งข้อมูลที่พบในองค์กรทั่วไป:**

| แหล่งข้อมูล | ประเภท | ความถี่ |
|---|---|---|
| ระบบ CRM / Support | REST API | Real-time |
| ฐานข้อมูลภายใน | SQL Database | Real-time |
| ไฟล์ Excel/CSV | File Upload | รายวัน/เดือน |
| คู่มือและเอกสาร | PDF / Knowledge Base | เมื่อมีการปรับปรุง |
| แบบฟอร์มออนไลน์ | Form API | ต่อเนื่อง |

---
## Use Case 4: VIMS 

- เป็นระบบรวมข้อมูล Vaccine 
- ข้อมูลมีการกระจัดกระจาย
- ใช้คนทำงานรวบรวมเสียเวลาและความถูกต้อง
- ปรับเป็นระบบ ETL + AI 

https://vims-production-5856.up.railway.app

---
<div class="center">

![w:1000px](fig/m1_VIMS.png)

</div>

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
| **Prefect**  | Open Source | Data Pipeline | Data Engineer |
---

## ทำไมต้อง n8n?

### ข้อดีของ n8n สำหรับการสร้างระบบ

- 🔓 **Open Source & Free** — ไม่มีค่าใช้จ่าย License
- 🏛️ **Self-hosted** — เลือกแนวทางติดตั้งให้เหมาะกับข้อกำหนดข้อมูล
- 🔒 **Data Privacy** — ควบคุมการไหลของข้อมูลได้
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

### ประเมินความพร้อมของทีม

- [ ] มีงาน Manual ที่ทำซ้ำๆ อย่างสม่ำเสมอ
- [ ] ข้อมูลมีโครงสร้างที่ชัดเจน (มี API หรือ Database)
- [ ] มีเจ้าหน้าที่ IT สนับสนุน
- [ ] มี Server หรือ Cloud สำหรับ Deploy n8n
- [ ] มีผู้รับผิดชอบและเกณฑ์วัดผลชัดเจน

> **เริ่มเล็กก็ได้** — เลือก Use Case ง่ายๆ 1 อย่างแล้วทดลองทำก่อน

---

<!-- _class: divider -->

## 07
## สรุปและบทเรียนถัดไป

Summary & What's Next

---

## สรุป Module 1

### สิ่งที่เรียนรู้ใน Module นี้

- ✅ **AI & Automation** ช่วยแก้ปัญหางานซ้ำอย่างไร
- ✅ **Workflow Automation** ช่วยลดงาน Manual และ Human Error
- ✅ **Use Cases** ที่เหมาะกับ Workflow และ AI Agent
- ✅ **Use Cases** หลากหลายที่ประยุกต์ใช้ได้จริง
- ✅ **n8n** เป็นเครื่องมือสร้างและเชื่อมต่อ Workflow

### Module ถัดไป

**Module 2:** Introduction to n8n — Interface, Nodes และการตั้งค่าเบื้องต้น

---

<!-- _class: lead -->

# พร้อมแล้วสำหรับ n8n!

**Module 2:** Introduction to n8n

มาเรียนรู้เครื่องมือที่จะเปลี่ยนวิธีทำงานของคุณ

---

<!-- footer: "Module 2 — n8n Fundamentals" -->


<!-- _class: lead -->

<style scoped>
.logo-bar { position: absolute; top: 36px; right: 64px; display: flex; align-items: center; gap: 16px; }
.logo-bar img { width: 100px; height: 100px; object-fit: contain; }
</style>

<div class="logo-bar">
  <img src="fig/logos/mahidol.svg" alt="Mahidol University">
</div>

# Introduction to n8n

<div class="subtitle">Module 2 — n8n: เครื่องมือสร้าง Workflow สำหรับ AI Agent</div>


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

**Option 1: Docker (เหมาะกับการพัฒนาซ้ำและ Deploy อย่างควบคุมได้)**
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

<div class="center">

![w:1000px](fig/m2_n8nmain.png)

</div>

---

<div class="center">

![w:1000px](fig/m2_n8nOverview.png)

</div>

---

<div class="center">

![w:1000px](fig/m2_n8nPersonal.png)

</div>

---

<div class="center">

![w:900px](fig/m2_n8nDashboard.png)

</div>

---

<div class="center">

![w:900px](fig/m2_n8nManage.png)

</div>

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

## Trigger Node

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

### สำหรับงานข้อมูลและการทำงานซ้ำ

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

---

## Credentials คืออะไร? (ต่อ)
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
    "name": "Sample Product",
    "price": 49.99,
    "category": "accessories",
    "stock": 12
  },
  "binary": {}
}
```

---
## โครงสร้างข้อมูลใน n8n (ต่อ)

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
Body: { "category": "{{ $json.category }}" }
```

---

<!-- _class: divider -->

## 07
## สรุปและบทเรียนถัดไป

Summary & What's Next

---

## สรุป Module 2

### สิ่งที่เรียนรู้ใน Module นี้

- ✅ **n8n** คืออะไร ความสามารถหลัก และแนวทางการเลือกใช้
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

<!-- footer: "Module 3 — Workflow Engineering" -->


<!-- _class: lead -->

<style scoped>
.logo-bar { position: absolute; top: 36px; right: 64px; display: flex; align-items: center; gap: 16px; }
.logo-bar img { width: 100px; height: 100px; object-fit: contain; }
</style>

<div class="logo-bar">
  <img src="fig/logos/mahidol.svg" alt="Mahidol University">
</div>

# Workshop: สร้าง Workflow พื้นฐานด้วย n8n

<div class="subtitle">Module 3 — สร้าง Workflow ที่เชื่อถือได้และเชื่อมต่อ API</div>



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

### เป้าหมาย: สร้าง Workflow แรกและตรวจสอบ Output

**ขั้นตอน:**

1. คลิก **"New Workflow"** บน Dashboard
2. คลิก `+` บน Canvas เพื่อเพิ่ม Node
3. ค้นหา **"Manual Trigger"** → เพิ่ม
4. คลิก `+` ต่อจาก Manual Trigger
5. เพิ่ม **"Set"** Node
6. เพิ่ม Field: `message` = `Hello AI Agent Engineering!`
7. กด **"Execute Workflow"** เพื่อรัน

---

## ผลลัพธ์ที่ควรเห็น: Output จาก Set Node

```json
[
  {
      "message": "Hello AI Agent Engineering!"
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
- ระบบ CRM ส่ง event เข้ามา
- แบบฟอร์มออนไลน์ Submit
- ระบบอื่น Push ข้อมูลให้

**Webhook URL ตัวอย่าง:**
```
https://your-n8n.example.com/webhook/incoming-event
```

**การทดสอบ:** ใช้ **Test URL** ใน n8n Editor ก่อน Activate

---

<!-- _class: divider -->

## 03
## HTTP Request Node

เรียกข้อมูลจาก REST API


---
## HTTP Request พื้นฐาน

### Demo 2: ดึงข้อมูลจาก Public API

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
URL:    https://dummyjson.com/products
```

**Query Parameters (เพิ่มใน n8n):**

| Name | Value |
|---|---|
| `limit` | `100` |
| `skip` | `0` |

**URL ที่ได้:** https://dummyjson.com/products?limit=100&skip=0

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
Field: report_title    → "Monthly Operations Summary"
Field: report_date     → {{ $today }}
Field: data_source     → {{ $json.source }}
Field: total_records   → {{ $json.count }}
```

![bg right:45% contain](fig/m3_Demo3.png)

---

## IF Node — เงื่อนไขการทำงาน


**Demo 4: ตรวจสอบค่าผิดปกติ**

```
Condition: {{ $json.stock }} < 20
```
**True Branch** → แจ้งทีมว่าสินค้าใกล้หมด
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
เก็บเฉพาะ: {{ $json.stock }} < 20
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
## Output: Database, Email, & File

ส่งออกผลลัพธ์


---

## Data Table
### Demo 5: บันทึกข้อมูลลง Data Table ของ n8n

<div class="center">

![w:700px](fig/m3_Demo7.png)

</div>

---

## บันทึกข้อมูลลง Data Table 

<div class="columns">
<div>

### บันทึกข้อมูลลง Data Table
**Data Table Node** — จัดเก็บข้อมูลภายใน n8n
- ใช้เป็นฐานข้อมูลขนาดเล็ก
- เก็บข้อมูลระหว่าง Workflow
- เหมาะกับข้อมูลที่ต้องการความเร็วและไม่ซับซ้อน
- ไม่เหมาะสำหรับข้อมูลขนาดใหญ่
- สามารถใช้ร่วมกับ Workflow อื่นๆ ได้ผ่าน Data Table Node

</div>
<div>

### ตัวอย่างการใช้งาน

```
Operation: Insert
Table Name: customer
Data:
  username → {{ $json.username }}
  gender → {{ $json.gender }}
  age → {{ $json.age }}
``` 
</div>
</div>


---

## Send Mail
### Demo 6: ส่งรายงานทาง Email

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
To:      team@example.com
Subject: Operations summary {{ $today }}
Body:    สรุปประจำวันนี้: {{ $json.total }}
         ดูรายละเอียดที่ระบบ Dashboard
```

</div>
</div>

---

<div class="columns">

![w:500px](fig/m3_gmail1.png)

![w:500px](fig/m3_gmail2.png)

</div>

---

<div class="columns">

![w:500px](fig/m3_gmail3.png)

![w:500px](fig/m3_gmail4.png)

</div>


---

<div class="center">

![w:900px](fig/m3_gmail5.png)

</div>


---

## Google Sheet
### Demo 7: บันทึกข้อมูลลง Google Sheets

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
  category → {{ $json.category }}
```

</div>
</div>


---

<!-- _class: divider -->

## 06
## Workshop 

ฝึกปฏิบัติ

---

<!-- _class: highlight -->

## Workshop A — รายงานอากาศอัตโนมัติ

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
## Hint: Workflow for Workshop A

<div class="center">

![w:900px](fig/m3_ex1.png)

</div>

---

<!-- _class: highlight -->

## Workshop B — Data Cleaning Pipeline

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
## Hint: Workflow for Workshop B

<div class="center">

![w:900px](fig/m3_ex2.png)

</div>

---
## curl for testing
```bash
curl -X POST "https://itmmu.app.n8n.cloud/webhook-test/survey-data" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Ake",
    "email": "ake@example.com",
    "feedback": "This is my feedback"
  }'
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
- ✅ **Workshop** — ฝึกสร้าง Workflow ด้วย API และข้อมูลตัวอย่าง

### Module ถัดไป

**Module 4:** Workshop — สร้าง Data Pipeline เพื่อป้อนข้อมูลให้ AI Agent

---

<!-- _class: lead -->

# เยี่ยมมาก! Workflow แรกสำเร็จแล้ว

**Module 4:** ต่อยอดด้วย Data Pipeline สำหรับ AI Agent

---

<!-- footer: "Module 4 — Data Pipeline Engineering" -->


<!-- _class: lead -->

<style scoped>
.logo-bar { position: absolute; top: 36px; right: 64px; display: flex; align-items: center; gap: 16px; }
.logo-bar img { width: 100px; height: 100px; object-fit: contain; }
</style>

<div class="logo-bar">
  <img src="fig/logos/mahidol.svg" alt="Mahidol University">
</div>

# Workshop: สร้าง Data Pipeline สำหรับ AI Agent

<div class="subtitle">Module 4 — End-to-End Data Pipeline and Tool Engineering</div>



ผศ. ดร.ทวีศักดิ์ สมานชื่น
CBTU · คณะวิศวกรรมศาสตร์ · มหาวิทยาลัยมหิดล

---

## วัตถุประสงค์การเรียนรู้

เมื่อจบ module นี้ ผู้เรียนสามารถ:

1. **ออกแบบ** Pipeline ดึงข้อมูลจาก API และแหล่งข้อมูลหลายรูปแบบ
2. **ประมวลผล** และ **ตรวจสอบคุณภาพ** ข้อมูลอัตโนมัติ
3. **ตั้งเวลา** ให้ระบบทำงานอัตโนมัติแบบ Scheduled
4. **สร้าง** ผลลัพธ์ที่นำไปใช้ต่อโดย Agent หรือผู้ใช้ได้
5. **จัดการ** Error Handling และ Monitoring

---

## เนื้อหาใน Module นี้

1. **ภาพรวม Pipeline** — Architecture ของระบบ
2. **แหล่งข้อมูลสำหรับ Workshop** — Public APIs และชุดข้อมูลตัวอย่าง
3. **Data Extraction** — ดึงข้อมูลจาก Multiple Sources
4. **Data Processing** — ประมวลผลและสรุปข้อมูล
5. **Reporting & Alerting** — รายงานและแจ้งเตือน
6. **Workshop** — สร้าง Full Pipeline

---

<!-- _class: divider -->

## 01
## Architecture ภาพรวม

AI Agent Data Pipeline Design

---

## Pipeline Architecture

### End-to-End Data Pipeline


<div class="center">

![w:900px](fig/m4_end-to-end.png)

</div>

---

## แหล่งข้อมูลที่จะใช้ใน Workshop

### Public APIs สำหรับงาน Workshop

| แหล่งข้อมูล | URL | ประเภทข้อมูล |
|---|---|---|
| **DummyJSON** | dummyjson.com | Products, carts, users (sample data) |
| **JSONPlaceholder** | jsonplaceholder.typicode.com | Posts, users, comments |
| **Open-Meteo** | api.open-meteo.com | สภาพอากาศ (Free) |
| **Webhook test data** | n8n Form/Webhook | ข้อมูลจำลองจากผู้เรียน |

---

<!-- _class: divider -->

## 02
## แหล่งข้อมูลสำหรับ Workshop

ทดลองเชื่อมต่อ Public API และตรวจสอบโครงสร้างข้อมูล

---

## [dummyjson.com/products](https://dummyjson.com/products)

<div class="columns">
<div>

### สำรวจ API ก่อนสร้าง Workflow

**ขั้นตอนการใช้งาน:**
1. เปิด API Documentation และเลือก Endpoint
2. ตรวจสอบ Response, Pagination และ Rate Limits

</div>
<div>

**ตัวอย่าง API Call:**
```
GET https://dummyjson.com/products?limit=100
```

</div>
</div>

---

## ตัวอย่าง: Product Catalog API

**DummyJSON Products:**
```
GET https://dummyjson.com/products?limit=100
```

**Fields ที่ได้:** `id`, `title`, `category`, `price`, `stock`, `rating`

**โจทย์:** ทำความสะอาดข้อมูลสินค้า คำนวณค่าเฉลี่ยต่อหมวด และแจ้งเตือนเมื่อ stock ต่ำ



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
    item.json.title &&
    item.json.price !== null)
  .map(item => ({
    json: {
      title: item.json.title.trim(),
      price: Number(item.json.price),
      stock: Number(item.json.stock),
      updated_at: new Date().toISOString()
    }
  }))
  .filter(item =>
    item.json.price >= 0 &&
    item.json.stock >= 0);
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
| `by_category` | groupBy หมวดสินค้า |

</div>
<div>

```javascript
const data = $input.all()
  .map(i => i.json);
const values = data.map(d => d.price);
const total = values.reduce((a,b) => a+b, 0);
const avg   = total / values.length;
const max   = Math.max(...values);
const min   = Math.min(...values);
const byCategory = data.reduce((acc, item) => {
  acc[item.category] =
    (acc[item.category] || 0) + item.price;
  return acc;
}, {});
return [{ json: { total, avg, max, min,
                  by_category: byCategory } }];
```

</div>
</div>

---

## Join ข้อมูลจากหลายแหล่ง

### Merge Node — รวมข้อมูล 2 ชุด

**กรณีการใช้งาน:** รวมรายการสินค้า + รายละเอียดคำสั่งซื้อ

```
[Products API] ──┐
                 ├──► [Merge Node] ──► [Code: สรุปยอดตามสินค้า]
[Carts API]    ──┘     (Join by "productId")
```

**การตั้งค่า Merge Node:**
- **Mode:** Combine
- **Combine By:** Matching Rules
- **Fields to Match:** `id` = `productId`

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
<h2>Monthly Operations Summary — {{ $json.month }}</h2>
<table border="1"
  style="border-collapse:collapse;width:100%">
  <tr style="background:#1B4F72;color:white">
    <th>ตัวชี้วัด</th>
    <th>ค่า</th>
    <th>เปลี่ยนแปลง</th>
  </tr>
  <tr>
    <td>ราคาเฉลี่ยสินค้า</td>
    <td>{{ $json.avg_price }}</td>
    <td>{{ $json.price_change }}%</td>
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
  "text": "Daily operations summary\n{{ $json.summary }}"
}
```

</div>
</div>

---

<!-- _class: divider -->

## 05
## Workshop Exercise

สร้าง Production-minded Data Pipeline

---

<!-- _class: highlight -->

## Workshop A — Product Catalog Pipeline

### โจทย์: สร้าง Automated Pipeline จาก Product Catalog
```
GET https://dummyjson.com/products?limit=100
```

1. ดึงข้อมูลสินค้าจาก Public API และจัดการ Pagination
2. ตรวจสอบ required fields และแปลงชนิดข้อมูล
3. คำนวณจำนวนสินค้าและราคาเฉลี่ยแยกตามหมวด
4. แยกสินค้า stock ต่ำและ TOP 5 ตาม rating
5. สร้าง Summary Report และแจ้งเตือนทีม

---

## โครงสร้างข้อมูล Product Dataset


| ฟิลด์ | ชนิด | ตัวอย่างค่า | ความหมาย |
|---|---|---|---|
| `id` | numeric | `1` | รหัสสินค้า |
| `title` | text | `"Essence Mascara"` | ชื่อสินค้า |
| `category` | text | `"beauty"` | หมวดสินค้า |
| `price` | numeric | `9.99` | ราคา |
| `stock` | numeric | `99` | จำนวนคงเหลือ |
| `rating` | numeric | `4.5` | คะแนนรีวิว |

> API ส่งข้อมูลตัวอย่างกลับมาใน JSON; ตรวจ Response จริงก่อนนำไปใช้

---
<!-- _class: dense -->
## Hint: ขั้นตอนที่ 1 — HTTP Request Node

### ตั้งค่า HTTP Request และตรวจสอบ Response

**วิธีที่ 1 — Query String (เร็ว, Filter ฝั่ง Server):**
```
Method:  GET
URL:     https://dummyjson.com/products?limit=100&skip=0
```




---
<!-- _class: dense -->
## Hint: Workshop A

### Workflow Structure

<div class="center">

![w:900px](fig/m4_Ex1.png)

</div>


---

<!-- _class: highlight -->

## Workshop B — Product and Cart Analysis Pipeline

### โจทย์: รวมข้อมูลสินค้าและตะกร้าสั่งซื้อจาก Public API



| | Dataset | API endpoint |
|---|---|---|
| **ชุดที่ 1** | Product catalog พร้อมหมวด ราคา และจำนวนคงเหลือ | `https://dummyjson.com/products?limit=100` |
| **ชุดที่ 2** | Carts พร้อมรายการและยอดสั่งซื้อ | `https://dummyjson.com/carts?limit=100` |

**ความต้องการ:**
1. ดึงข้อมูลจาก 2 API พร้อมกัน (Parallel) และจัดการ Error แยกกัน
2. รวมข้อมูลตะกร้ากับสินค้าโดยใช้ `productId`
3. คำนวณยอดสั่งซื้อและหาสินค้าที่ถูกสั่งซื้อมากที่สุด
4. สร้าง Summary Report พร้อมเวลาที่ดึงข้อมูล

---

## โครงสร้างข้อมูล: ชุดที่ 1 — Products

| ฟิลด์ | ชนิด | ตัวอย่างค่า |
|---|---|---|
| `id` | numeric | `1` |
| `title` | text | `"Sample product"` |
| `category` | text | `"beauty"` |
| `price` | numeric | `9.99` |
| `stock` | numeric | `99` |

```
GET https://dummyjson.com/products?limit=100
```

---

## โครงสร้างข้อมูล: ชุดที่ 2 — Carts

| ฟิลด์ | ชนิด | ตัวอย่างค่า |
|---|---|---|
| `id` | numeric | `1` |
| `userId` | numeric | `1` |
| `products[].id` | numeric | `1` |
| `products[].quantity` | numeric | `2` |
| `total` | numeric | `19.98` |

```
GET https://dummyjson.com/carts?limit=100
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

### ความปลอดภัยสำหรับ Workflow ที่ใช้งานจริง

- 🔑 **ใช้ Credentials เสมอ** — ห้าม Hardcode API Key
- 🔒 **HTTPS เท่านั้น** สำหรับ API ภายนอก
- 🏛️ **Deployment** — เลือก Self-hosted หรือ Cloud ตามความเสี่ยงและข้อกำหนด
- 👤 **Role-Based Access** — ตั้ง Permission ผู้ใช้ n8n
- 📋 **Audit Log** — เปิด Execution History ทุก Workflow
- 🔄 **Backup** — Backup n8n Database สม่ำเสมอ

---

## สรุป Module 4

### สิ่งที่เรียนรู้ใน Module นี้

- ✅ **Pipeline Architecture** ออกแบบระบบ End-to-End
- ✅ **Public APIs** และการจัดการข้อมูลจากหลายแหล่ง
- ✅ **Data Cleaning & Aggregation** ด้วย Code Node
- ✅ **Merge ข้อมูล** จากหลายแหล่งด้วย Merge Node
- ✅ **Excel Report + Email** ส่งรายงานอัตโนมัติ
- ✅ **Security Best Practices** สำหรับ Workflow ที่ใช้งานจริง




---

<!-- footer: "Module 5 — LLM and Structured Outputs" -->


<!-- _class: lead -->

<style scoped>
.logo-bar { position: absolute; top: 36px; right: 64px; display: flex; align-items: center; gap: 16px; }
.logo-bar img { width: 100px; height: 100px; object-fit: contain; }
</style>

<div class="logo-bar">
  <img src="fig/logos/mahidol.svg" alt="Mahidol University">
</div>

# Workshop: ใช้ LLM วิเคราะห์ข้อความอย่างมีโครงสร้าง

<div class="subtitle">Module 5 — Prompt Engineering, Classification and Structured Output</div>


ผศ. ดร.ทวีศักดิ์ สมานชื่น
CBTU · คณะวิศวกรรมศาสตร์ · มหาวิทยาลัยมหิดล

---

## วัตถุประสงค์การเรียนรู้

เมื่อจบ module นี้ ผู้เรียนสามารถ:

1. **ออกแบบ** Prompt สำหรับงานจำแนกและสกัดข้อมูลจากข้อความ
2. **สร้าง** LLM Workflow ที่คืนผลลัพธ์แบบมีโครงสร้าง
3. **กำหนด** Schema และตรวจสอบผลลัพธ์ก่อนส่งต่อ
4. **ประมวลผล** ข้อความตัวอย่างและจัดการกรณีผิดพลาด
5. **ประเมิน** คุณภาพผลลัพธ์และข้อจำกัดของโมเดล

---

## เนื้อหาใน Module นี้

1. **LLM Extraction & Classification** — เข้าใจงานและกำหนดผลลัพธ์
2. **Prompt Engineering** — ออกแบบคำสั่งให้ได้ผลลัพธ์สม่ำเสมอ
3. **Workshop Part A:** จำแนกข้อความ Feedback
4. **Workshop Part B:** สกัดประเด็นและเร่งส่งต่อกรณีเร่งด่วน
5. **Structured Output & Evaluation** — ตรวจสอบผลและวัดคุณภาพ

---

<!-- _class: divider -->

## 01
## Structured Text Analysis

LLM Classification and Extraction

---

## วิเคราะห์ Feedback ด้วย LLM

### การวิเคราะห์ความคิดเห็นอัตโนมัติ

- **Sentiment Analysis** — จำแนกข้อความว่า "บวก / กลาง / ลบ" โดยอัตโนมัติ
- **Use Case** — จัดหมวดหมู่ Feedback และค้นหาประเด็นที่ควรติดตาม
- **Traditional vs AI** — จากคีย์เวิร์ดธรรมดา สู่ LLM ที่เข้าใจบริบทภาษาไทย

### ความแตกต่างของ Sentiment

| ระดับ | ตัวอย่างข้อความ | ความหมาย |
|---|---|---|
| **Positive** | "ใช้งานง่ายและส่งไว" | พอใจ / ชื่นชม |
| **Neutral** | "ได้รับสินค้าตามรายการ" | กลาง / ไม่แสดงความรู้สึก |
| **Negative** | "ตั้งค่าไม่ผ่านและคู่มือไม่ชัด" | ไม่พอใจ / ต้องปรับปรุง |

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

> **User:**  `วิเคราะห์ความคิดเห็นนี้: "สินค้าดีมาก แต่คู่มือการตั้งค่าไม่ชัด"`

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
## Prompt Engineering สำหรับ Classification

การออกแบบ Prompt เพื่อวิเคราะห์ภาษาไทย

---

## หลักการเขียน Prompt สำหรับ Classification

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

สร้าง Workflow วิเคราะห์ Feedback

---

## Workshop A: Structured Feedback Analysis Workflow


###  Workflow
<div class="center">

![w:900px](fig/m5_Ex1.png)

</div>


---

## ตัวอย่างผลลัพธ์ Workshop A

### Input → Output

**Input ข้อความ:** `"สินค้าดีมาก แต่คู่มือการตั้งค่าไม่ชัด"`

**Output จาก LLM:**
```json
{
  "sentiment": "neutral",
  "score": 5,
  "summary": "พอใจกับสินค้า แต่คู่มือการตั้งค่าควรปรับปรุง",
  "category": "คู่มือการใช้งาน"
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

ประมวลผล Product Feedback (ชุดข้อมูลตัวอย่าง)

---

## Workshop B: Feedback Classification Pipeline

### ประมวลผล Feedback แบบ Batch พร้อมตรวจสอบผลลัพธ์
Data : [Sentiment Data (Click!!!)](https://docs.google.com/spreadsheets/d/1RhQWTeL1bKHKBOYOZRroSpC8VWmeCPMCMjfuFXqMhDA/edit?usp=sharing)
### โครงสร้างข้อมูลตัวอย่าง

| ฟิลด์ | คำอธิบาย | ตัวอย่าง |
|---|---|---|
| `id` | รหัส Feedback | `FB-001` |
| `product` | หมวดสินค้าหรือบริการ | `mobile app` |
| `feedback` | ข้อความความคิดเห็น | "ใช้งานง่าย แต่คู่มือไม่ชัด" |
| `rating` | คะแนน 1–5 (ถ้ามี) | `4` |
| `date` | วันที่รับ Feedback | `2025-01-15` |

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
2. **Google Sheets Node** — อ่าน Sheet `feedback` ตามจำนวนข้อมูลตัวอย่าง
3. **SplitInBatches Node** — ตั้ง `batch size = 10` เพื่อไม่ให้ API เกิน Rate Limit

### Step 4–6: ประมวลผลและสรุป

4. **AI/LLM Node** — ส่ง `feedback` ทีละรายการ รับ sentiment + score
5. **Code Node** — คำนวณสัดส่วน Sentiment และตรวจผลที่ขาด/ผิด Schema
6. **Google Sheets** — บันทึกผลพร้อมสถานะการตรวจสอบ

---

## รูปแบบผลสรุปจากการ Run

### Summary Dashboard (Google Sheets)

| หมวดหมู่ | จำนวน | % |
|---|---|---|
| **Positive** | คำนวณจากผลจริง | คำนวณจากผลจริง |
| **Neutral** | คำนวณจากผลจริง | คำนวณจากผลจริง |
| **Negative** | คำนวณจากผลจริง | คำนวณจากผลจริง |
| **Invalid / Needs Review** | คำนวณจากผลจริง | — |

> ตรวจผลลัพธ์ตัวอย่างด้วยคนก่อนนำไปใช้ตัดสินใจ และอย่าถือคะแนนที่ LLM สร้างเป็นค่าที่วัดได้จริง

---

## Tips: Batch Processing ใน n8n

### ปัญหาที่พบบ่อยและวิธีแก้

- ⏱️ **Rate Limit** — ใช้ `Wait Node` หน่วง 1 วินาทีระหว่าง batch
- ❌ **LLM Error** — ใช้ `Error Trigger` + Retry logic
- 📏 **Token Limit** — ตัดข้อความที่ยาวเกิน 500 ตัวอักษรก่อนส่ง
- 🔄 **ข้อมูลไม่สม่ำเสมอ** — ใช้ `IF Node` จัดการ null/empty fields

### Best Practice
```
ทดสอบด้วยตัวอย่างจำนวนน้อย → ตรวจสอบ Output → แล้วค่อยประมวลผลทั้งชุด
```

---

<!-- _class: divider -->

## 05
## สรุปและบทเรียนถัดไป

Summary & What's Next

---

## สรุป Module 5

### สิ่งที่เรียนรู้ใน Module นี้

- ✅ **LLM Classification** — จำแนก Feedback ภาษาไทยเป็นผลลัพธ์ที่มีโครงสร้าง
- ✅ **Prompt Engineering** — ออกแบบ Prompt ให้ได้ผล JSON มีโครงสร้าง
- ✅ **Workshop A** — Webhook → LLM → Google Sheets แบบ Real-time
- ✅ **Workshop B** — Batch Processing พร้อมจัดการ Rate Limit และ Error
- ✅ **Evaluation** — ตรวจ Schema, Error Cases และสัดส่วนผลลัพธ์จริง

### Module ถัดไป

**Module 6:** Security and Responsible AI — ปกป้องข้อมูลและกำหนด Guardrails

---

<!-- _class: lead -->

# คำถาม?

<div class="subtitle">Questions & Discussion</div>

**ผศ.ดร. ทวีศักดิ์ สมานชื่น**
taweesak.sam@mahidol.ac.th

คณะวิศวกรรมศาสตร์ · มหาวิทยาลัยมหิดล
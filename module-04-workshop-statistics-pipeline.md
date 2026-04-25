---
marp: true
theme: mahidol
paginate: true
size: 16:9
footer: "n8n Workflow Automation | Module 4 — Workshop: ข้อมูลสถิติอัตโนมัติ | สำนักงานสถิติแห่งชาติ"
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

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

### โจทย์: สร้าง Automated Pipeline

**ความต้องการ:**
1. ดึงข้อมูลประชากรรายจังหวัดจาก Open Data API
2. คำนวณ: ค่าเฉลี่ย, สูงสุด, ต่ำสุด, รวมทั้งประเทศ
3. แยกข้อมูล TOP 5 และ BOTTOM 5 จังหวัด
4. Export เป็น Excel Report
5. ส่ง Email สรุปพร้อมแนบไฟล์
6. ตั้งเวลาให้รันอัตโนมัติทุกต้นเดือน



---
<!-- _class: dense -->
## Hint: Workshop 4.1

### Workflow Structure

<div class="center">

![w:1000px](fig/m4_Ex1.png)

</div>



---

<!-- _class: highlight -->

## Workshop 4.2 — Household Finance Analysis

**โจทย์: วิเคราะห์ฐานะทางการเงินครัวเรือนไทยจาก NSO Open Data**

**แหล่งข้อมูล 3 ชุด (NSO Data Catalog):**
- **ชุดที่ 1:** ค่าใช้จ่ายเฉลี่ยต่อเดือนของครัวเรือน จำแนกตามประเภทค่าใช้จ่าย
- **ชุดที่ 2:** หนี้สินเฉลี่ยต่อครัวเรือน จำแนกตามวัตถุประสงค์การกู้ยืม
- **ชุดที่ 3:** อัตราการมีงานทำต่อประชากรวัยแรงงาน จำแนกตามระดับการศึกษา

---

<!-- _class: highlight -->

## Workshop 4.2 — Household Finance Analysis (ต่อ)
**สิ่งที่ต้องสร้าง:**
1. Parallel HTTP Request จาก 3 API (NSO Catalog CSV)
2. Clean & Normalize แต่ละ dataset
3. Merge ค่าใช้จ่าย + หนี้สิน (match: `year` + `province` + `soc_eco_class2`)
4. คำนวณ Debt-to-Expenditure Ratio รายสถานะเศรษฐสังคม
5. Map จังหวัด → ภาค และ Merge กับอัตราการจ้างงาน
6. ส่งรายงานไปยัง Google Sheets และ Email อัตโนมัติ

---
<!-- _class: dense -->
## Dataset: NSO Catalog APIs

| Dataset | NSO Table | ระดับ | Columns หลัก |
|---|---|---|---|
| ค่าใช้จ่ายครัวเรือน | `SFD_SPB0804` | จังหวัด | year, province, soc_eco_class2, type_expenditure1, value |
| หนี้สินครัวเรือน | `SFD_SPB0806` | จังหวัด | year, province, soc_eco_class2, purpose_source_bor, value |
| อัตราการมีงานทำ | `OS_02_0016_02` | ภาค/เขต | year, quarter, region, area, level_of_edu, value |

**API Pattern (NSO Catalog):**
```
GET https://catalogapi.nso.go.th/api/index?table={TABLE_NAME}&format=csv
```

> ⚠️ **ข้อควรระวัง:** ค่าใช้จ่ายและหนี้สินมีระดับ **จังหวัด** แต่อัตราการมีงานทำมีระดับ **ภาค**
> ต้อง groupBy จังหวัด → ภาคก่อน Merge ชุดที่ 2

---
<!-- _class: dense -->
## Workflow Structure — Workshop 4.2
### Workflow Structure
<div class="center">

![w:1000px](fig/m4_Ex2.png)
</div>


---
<!-- _class: dense -->
## Code Node: Debt-to-Expenditure Ratio
<div class="columns">
<div>

### สูตรคำนวณ

$$\text{DE Ratio} = \frac{\text{หนี้สินเฉลี่ย}}{\text{ค่าใช้จ่าย/เดือน} \times 12}$$

| DE Ratio | ระดับความเสี่ยง |
|---|---|
| < 1.0 | 🟢 ต่ำ |
| 1.0 – 3.0 | 🟡 ปานกลาง |
| > 3.0 | 🔴 สูง |

> `soc_eco_class2` = สถานะเศรษฐสังคม เช่น เกษตรกร / ลูกจ้าง / ผู้ประกอบการ

</div>
<div>

```javascript
const PROVINCE_REGION = {
  'กรุงเทพมหานคร': 'กลาง','เชียงใหม่': 'เหนือ',
  'ขอนแก่น': 'ตะวันออกเฉียงเหนือ', 'สงขลา': 'ใต้',
  // ... ครบ 77 จังหวัด
};
const merged = $input.all().map(i => i.json);
return merged.map(row => {
  const annual = row.expenditure * 12;
  const de = annual > 0
    ? row.debt / annual : null;
  const risk = de === null ? 'N/A'
    : de < 1 ? 'LOW'
    : de < 3 ? 'MEDIUM' : 'HIGH';
  return { json: {
    ...row,
    region: PROVINCE_REGION[row.province],
    de_ratio: de?.toFixed(2),
    risk_level: risk
  }};
});
```

</div>
</div>

---

<!-- _class: divider -->

## 06
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

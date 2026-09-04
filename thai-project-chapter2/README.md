# ตัวช่วยเขียนบทที่ 2 โครงงาน/งานวิจัยไทย

สกิล Claude สำหรับเขียน แก้ไข หรือตรวจ "บทที่ 2 (เอกสารและงานวิจัยที่เกี่ยวข้อง)" หรือ "แนวคิด ทฤษฎี
และงานวิจัยที่เกี่ยวข้อง" ของโครงงาน/งานวิจัยภาษาไทยระดับมัธยมปลายถึงอุดมศึกษา
สกิลค้นและตรวจสอบแหล่งจริงก่อนเขียนเสมอ สังเคราะห์งานในประเทศและต่างประเทศ
จัดหมวดหมู่ ป้องกันเนื้อหาซ้ำ และจัดการอ้างอิงแบบนาม-ปี (APA) อย่างสม่ำเสมอ
ใช้ได้กับโครงงานทุกสาขา ไม่ใช้แทนบทนำ (บทที่ 1) หรือวิธีดำเนินงาน (บทที่ 3)

## ใช้เมื่อไหร่

- ขอทำ **"บทที่ 2"** หรือ **"ทบทวนวรรณกรรม"**
- พูดถึง **"เอกสารที่เกี่ยวข้อง"** หรือ **"งานวิจัยที่เกี่ยวข้อง"**
- ขอสร้าง **"กรอบแนวคิดการวิจัย"** หรือ **"ผังความเชื่อมโยง"**
- ขอ **"ตรวจภาษาและแหล่งอ้างอิง"** ของเนื้อหาบทที่ 2 ที่มีอยู่แล้ว
- ต้องการ **"รวบรวมงานวิจัยที่เกี่ยวข้อง"** สำหรับโครงงานสาขาใดก็ตาม

## ความเข้ากันได้

สกิลนี้เป็นไฟล์ Markdown ตามมาตรฐาน Claude Skill (`SKILL.md` + โฟลเดอร์ `reference/` + `agents/`) รองรับทุก platform ที่อ่านรูปแบบนี้ได้

| Platform | รองรับ | หมายเหตุ |
|---|---|---|
| **Claude Code** (CLI) | ✅ | macOS · Linux · Windows (WSL2) |
| **Claude Desktop App** (Code tab) | ✅ | macOS · Windows |
| **Claude Cowork** | ✅ | วางในโฟลเดอร์ skills ของ workspace |
| AI agent อื่นที่อ่าน SKILL.md | ✅ | ขึ้นกับ agent นั้น ๆ |

**Claude model:** ทุก version ที่รองรับ Claude Skills (Haiku, Sonnet, Opus) — สกิลนี้ใช้ WebSearch จึงแนะนำ Sonnet ขึ้นไป

**ระบบปฏิบัติการ:** macOS 12+, Ubuntu 20.04+, Debian 11+, Windows 10/11 (via WSL2)

## วิธีติดตั้ง

### ข้อกำหนดเบื้องต้น

- [Claude Code](https://claude.ai/code) หรือ Claude Desktop App ติดตั้งและล็อกอินแล้ว
- Git 2.x+ (`git --version` เพื่อตรวจสอบ)

---

### วิธีที่ 1 — ติดตั้งแบบ Global *(แนะนำ)*

ใช้ได้กับทุก project บนเครื่อง สกิลพร้อมใช้งานทันทีในทุก session

```bash
# 1. Clone repo
git clone https://github.com/sriwitsumo/thai-project-chapter2.git

# 2. สร้างโฟลเดอร์ skills (ถ้ายังไม่มี)
mkdir -p ~/.claude/skills

# 3. คัดลอกสกิล (ต้องคัดลอกทั้งโฟลเดอร์ รวม reference/ และ agents/)
cp -R thai-project-chapter2 ~/.claude/skills/

# 4. ตรวจสอบ
ls ~/.claude/skills/thai-project-chapter2/
# ควรเห็น: SKILL.md  agents/  reference/
```

---

### วิธีที่ 2 — ติดตั้งแบบ Project-local

ใช้เฉพาะใน project ที่ต้องการ ไม่กระทบ project อื่น

```bash
# ภายในโฟลเดอร์ project ของคุณ
mkdir -p .claude/skills
cp -R thai-project-chapter2 .claude/skills/
```

---

### วิธีที่ 3 — Clone จาก repo รวมทุกสกิล (`project-skill`)

ถ้าต้องการใช้หลายสกิลในชุดนี้พร้อมกัน ติดตั้งทีเดียวจาก repo รวม

```bash
git clone https://github.com/sriwitsumo/project-skill.git
mkdir -p ~/.claude/skills
cp -R project-skill/thai-project-chapter2 ~/.claude/skills/

# ติดตั้งสกิลอื่น ๆ ในชุดเดียวกันต่อได้เลย เช่น:
cp -R project-skill/thai-project-intake     ~/.claude/skills/
cp -R project-skill/thai-project-chapter1   ~/.claude/skills/
cp -R project-skill/thai-project-chapter3   ~/.claude/skills/
cp -R project-skill/thai-project-references ~/.claude/skills/
```

---

### Claude Cowork

วางโฟลเดอร์ `thai-project-chapter2/` (พร้อม `reference/` และ `agents/`) ไว้ใน skills directory ของ Cowork workspace แล้ว reload workspace

---

### ตรวจสอบว่าสกิลทำงาน

เปิด Claude แล้วลองพูดว่า:

> "ช่วยเขียนบทที่ 2 เอกสารและงานวิจัยที่เกี่ยวข้องให้หน่อย"

ถ้าสกิลทำงาน: Claude จะถามประเภทโครงงาน ชื่อเรื่อง และเริ่มค้นหาแหล่งอ้างอิงจริงก่อนเขียน

---

### อัปเดตสกิล

```bash
cd thai-project-chapter2
git pull
cp -R . ~/.claude/skills/thai-project-chapter2/
```

## โครงสร้างไฟล์

```
thai-project-chapter2/
├── SKILL.md                                    # ไฟล์หลักของสกิล
├── agents/
│   └── openai.yaml                             # config สำหรับ agent ที่ใช้ OpenAI
└── reference/
    ├── 01-structure-by-project-type.md         # โครงสร้างตามประเภทโครงงาน
    ├── 02-search-and-source-validation.md      # การค้นและตรวจสอบแหล่ง
    ├── 03-citation-style.md                    # รูปแบบอ้างอิง APA นาม-ปี
    ├── 04-synthesis-and-framework.md           # การสังเคราะห์และกรอบแนวคิด
    └── 05-content-ownership-and-quality.md     # ตารางเจ้าของเนื้อหาและด่านคุณภาพ
```

## เกี่ยวข้องกับสกิลอื่นในชุดเดียวกัน

สกิลนี้เป็นส่วนหนึ่งของชุด `thai-project-*` ใน [project-skill](https://github.com/sriwitsumo/project-skill):

- **`thai-project-intake`** — ใช้ก่อนสกิลนี้เมื่อเริ่มโครงงานใหม่ เพื่อรวบรวมข้อมูลโครงงานให้ครบในครั้งเดียว
- **`thai-project-chapter1`** — บทที่ 1 (บทนำ) ที่ควรเขียนก่อนสกิลนี้
- **`thai-project-chapter3`** — ใช้ต่อสำหรับวิธีดำเนินงาน/วิธีดำเนินการวิจัย
- **`thai-project-references`** — ใช้เป็นขั้นตอนสุดท้าย รวบรวมและจัดรูปแบบรายการอ้างอิงจากแหล่งที่อ้างในบทที่ 2 เป็นหลัก

---

GitHub: [sriwitsumo](https://github.com/sriwitsumo)

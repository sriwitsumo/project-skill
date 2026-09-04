# ตัวช่วยซักข้อมูลโครงงานก่อนเริ่มเขียน

สกิล Claude สำหรับซักถามผู้ใช้เพื่อเก็บข้อมูลพื้นฐานของโครงงาน/งานวิจัยภาษาไทย
(ระดับมัธยมปลายถึงอุดมศึกษา) ให้ครบก่อนเริ่มเขียนบทที่ 1, 2 หรือ 3
แล้วสรุปเป็น "โปรไฟล์โครงงาน" ไฟล์เดียวที่สกิลเขียนบทอื่นอ่านต่อได้ทันทีโดยไม่ต้องถามซ้ำ
แก้ปัญหาที่ผู้ใช้ต้องตอบคำถามเดิมซ้ำทุกครั้งที่สลับไปเขียนคนละบท

## ใช้เมื่อไหร่

- **เริ่มต้นโครงงานใหม่** ที่ยังไม่มีข้อมูลใด ๆ
- พูดว่า **"อยากทำโครงงานเกี่ยวกับ..."** หรือ **"เริ่มทำโครงงาน"**
- ขอให้ **"ช่วยถามข้อมูลโครงงานหน่อย"** หรือบอกว่า **"ยังไม่มีข้อมูลโครงงานเลย"**
- ขอให้เขียนบทที่ 1/2/3 ทั้งที่ยังไม่เคยให้ข้อมูลโครงงานมาก่อนในบทสนทนานี้
- ไม่ต้องใช้ซ้ำถ้ามีไฟล์โปรไฟล์โครงงานอยู่แล้ว หรือผู้ใช้ให้ข้อมูลครบในข้อความเดียว

## ความเข้ากันได้

สกิลนี้เป็นไฟล์ Markdown ตามมาตรฐาน Claude Skill (`SKILL.md`) รองรับทุก platform ที่อ่านรูปแบบนี้ได้

| Platform | รองรับ | หมายเหตุ |
|---|---|---|
| **Claude Code** (CLI) | ✅ | macOS · Linux · Windows (WSL2) |
| **Claude Desktop App** (Code tab) | ✅ | macOS · Windows |
| **Claude Cowork** | ✅ | วางในโฟลเดอร์ skills ของ workspace |
| AI agent อื่นที่อ่าน SKILL.md | ✅ | ขึ้นกับ agent นั้น ๆ |

**Claude model:** ทุก version ที่รองรับ Claude Skills (Haiku, Sonnet, Opus)

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
git clone https://github.com/sriwitsumo/thai-project-intake.git

# 2. สร้างโฟลเดอร์ skills (ถ้ายังไม่มี)
mkdir -p ~/.claude/skills

# 3. คัดลอกสกิล
cp -R thai-project-intake ~/.claude/skills/

# 4. ตรวจสอบ
ls ~/.claude/skills/
# ควรเห็น: thai-project-intake/
```

---

### วิธีที่ 2 — ติดตั้งแบบ Project-local

ใช้เฉพาะใน project ที่ต้องการ ไม่กระทบ project อื่น

```bash
# ภายในโฟลเดอร์ project ของคุณ
mkdir -p .claude/skills
cp -R thai-project-intake .claude/skills/
```

---

### วิธีที่ 3 — ติดตั้งพร้อมสกิลทั้งชุด *(แนะนำสำหรับผู้ใช้ที่ต้องการครบชุด)*

`thai-project-intake` ทำงานได้ดีที่สุดเมื่อติดตั้งพร้อมสกิลเขียนบทที่ 1–3 เพราะจะส่งต่อข้อมูลให้สกิลเหล่านั้นโดยตรง

```bash
git clone https://github.com/sriwitsumo/project-skill.git
mkdir -p ~/.claude/skills

# ติดตั้ง intake และสกิลเขียนบทครบชุด
cp -R project-skill/thai-project-intake     ~/.claude/skills/
cp -R project-skill/thai-project-chapter1   ~/.claude/skills/
cp -R project-skill/thai-project-chapter2   ~/.claude/skills/
cp -R project-skill/thai-project-chapter3   ~/.claude/skills/
cp -R project-skill/thai-project-references ~/.claude/skills/
```

---

### Claude Cowork

วางโฟลเดอร์ `thai-project-intake/` ไว้ใน skills directory ของ Cowork workspace แล้ว reload workspace

---

### ตรวจสอบว่าสกิลทำงาน

เปิด Claude แล้วลองพูดว่า:

> "อยากทำโครงงานเกี่ยวกับการปลูกผักไฮโดรโปนิกส์ ช่วยถามข้อมูลให้หน่อย"

ถ้าสกิลทำงาน: Claude จะเริ่มถามคำถามเป็นชุด (กรอบโครงงาน → เนื้อหา → ขอบเขตสถาบัน) แทนที่จะเริ่มเขียนทันที

---

### อัปเดตสกิล

```bash
cd thai-project-intake
git pull
cp -R . ~/.claude/skills/thai-project-intake/
```

## โครงสร้างไฟล์

```
thai-project-intake/
└── SKILL.md    # ไฟล์หลักของสกิล
```

## เกี่ยวข้องกับสกิลอื่นในชุดเดียวกัน

สกิลนี้เป็น **จุดเริ่มต้นของชุด `thai-project-*`** ใน [project-skill](https://github.com/sriwitsumo/project-skill) ใช้ก่อนสกิลอื่นเสมอเมื่อเริ่มโครงงานใหม่:

- **`thai-project-chapter1`** — เขียนบทที่ 1 (บทนำ) ต่อจากโปรไฟล์โครงงานที่สกิลนี้สร้าง
- **`thai-project-chapter2`** — เขียนบทที่ 2 (เอกสารและงานวิจัยที่เกี่ยวข้อง)
- **`thai-project-chapter3`** — เขียนบทที่ 3 (วิธีดำเนินงาน)
- **`thai-project-references`** — จัดทำรายการอ้างอิงเป็นขั้นตอนสุดท้าย

---

GitHub: [sriwitsumo](https://github.com/sriwitsumo)

# Thai Official & Academic Writing

สกิล Claude สำหรับร่าง แก้ไข และตรวจคุณภาพหนังสือราชการไทย ข้อเสนอโครงงาน งานวิจัย
และรายการอ้างอิง APA 7 ครอบคลุมการจัดตัวอักษรและเลย์เอาต์เอกสารภาษาไทย
ยึดตามเทมเพลตของสถาบันเมื่อผู้ใช้ให้มา และแยกหลักฐานออกจากข้อสรุปอย่างเคร่งครัด

## ใช้เมื่อไหร่

- ขอร่าง/แก้ **หนังสือราชการ** (หนังสือภายนอก หนังสือภายใน บันทึกข้อความ หนังสือเวียน คำสั่ง)
- ต้องการเขียน **โครงงาน, proposal, research plan, research report, article, thesis/dissertation**
- ขอให้ **ตรวจหรือขัดภาษาไทยวิชาการ** ให้ถูกต้องและน่าเชื่อถือ
- ต้องการ **in-text citation, reference list, หรือการอ้างอิง APA 7** แบบไทย
- มีเอกสารภาษาไทยที่ต้องการ **จัดรูปแบบ/เลย์เอาต์** ให้พร้อมส่งหรือพิมพ์

## ความเข้ากันได้

สกิลนี้เป็นไฟล์ Markdown ตามมาตรฐาน Claude Skill (`SKILL.md`) รองรับทุก platform ที่อ่านรูปแบบนี้ได้

| Platform | รองรับ SKILL.md | หมายเหตุ |
|---|---|---|
| **Claude Code** (CLI) | ✅ | macOS · Linux · Windows (WSL2) |
| **Claude Desktop App** (Code tab) | ✅ | macOS · Windows |
| **Claude Cowork** | ✅ | วางในโฟลเดอร์ skills ของ workspace |
| Claude mobile (iOS/Android) | ❌ | chat interface เท่านั้น ไม่มีระบบ skill |
| ChatGPT / GPT-4o (OpenAI) | ❌ | ใช้รูปแบบ Custom GPT ของตัวเอง |
| Gemini (Google) | ❌ | ใช้รูปแบบ Gem ของตัวเอง |
| Microsoft Copilot | ❌ | ไม่รองรับ SKILL.md |
| Perplexity / อื่น ๆ | ❌ | ไม่รองรับ SKILL.md |

**Claude model:** ทุก version ที่รองรับ Claude Skills (Haiku, Sonnet, Opus) — งานที่ซับซ้อน (วิทยานิพนธ์ หนังสือราชการยาว) แนะนำ Sonnet ขึ้นไป

**ระบบปฏิบัติการ:** macOS 12+, Ubuntu 20.04+, Debian 11+, Windows 10/11 (via WSL2)

## ⚠️ ข้อควรระวัง

> ผลลัพธ์ที่ได้จากสกิลนี้เป็น **ตัวอย่างและจุดเริ่มต้นเท่านั้น**

- **ไม่ควรนำส่งตรง ๆ** โดยไม่อ่านและแก้ไขก่อน — เนื้อหาที่ AI สร้างอาจมีข้อผิดพลาด ข้อมูลคลาดเคลื่อน หรือไม่ตรงกับบริบทจริง
- **อ่านทบทวนทุกประโยค** ก่อนใช้งาน แก้ไขส่วนที่ผิดหรือไม่ตรงกับความต้องการของคุณ
- **เขียนใหม่ด้วยสำนวนของตัวเอง** — งานราชการและวิชาการควรสะท้อนเจตนาและความรับผิดชอบของผู้ส่ง ไม่ใช่ AI
- ตรวจสอบว่าเนื้อหาตรงตาม **รูปแบบและข้อกำหนดของสถาบัน/หน่วยงาน** ของคุณ

## วิธีติดตั้ง

สกิลนี้ไม่มี repo แยกเป็นของตัวเอง — ติดตั้งผ่าน repo รวม [`project-skill`](https://github.com/sriwitsumo/project-skill)

### ข้อกำหนดเบื้องต้น

- [Claude Code](https://claude.ai/code) หรือ Claude Desktop App ติดตั้งและล็อกอินแล้ว
- Git 2.x+ (`git --version` เพื่อตรวจสอบ)

---

### วิธีที่ 1 — ติดตั้งแบบ Global *(แนะนำ)*

ใช้ได้กับทุก project บนเครื่อง สกิลพร้อมใช้งานทันทีในทุก session

```bash
# 1. Clone repo รวม
git clone https://github.com/sriwitsumo/project-skill.git

# 2. สร้างโฟลเดอร์ skills (ถ้ายังไม่มี)
mkdir -p ~/.claude/skills

# 3. คัดลอกสกิล
cp -R project-skill/thai-official-academic-writing ~/.claude/skills/

# 4. ตรวจสอบ
ls ~/.claude/skills/
# ควรเห็น: thai-official-academic-writing/
```

---

### วิธีที่ 2 — ติดตั้งแบบ Project-local

```bash
# ภายในโฟลเดอร์ project ของคุณ
mkdir -p .claude/skills
cp -R project-skill/thai-official-academic-writing .claude/skills/
```

---

### Claude Cowork

วางโฟลเดอร์ `thai-official-academic-writing/` ไว้ใน skills directory ของ Cowork workspace แล้ว reload workspace

---

### ตรวจสอบว่าสกิลทำงาน

เปิด Claude แล้วลองพูดว่า:

> "ช่วยร่างหนังสือราชการภายนอกให้หน่อย" หรือ "ช่วยตรวจภาษาวิชาการของ thesis ให้หน่อย"

ถ้าสกิลทำงาน: Claude จะถามประเภทเอกสาร วัตถุประสงค์ และข้อมูลที่จำเป็น ก่อนร่างหรือตรวจ — ไม่ตอบแบบทั่วไปทันที

---

### อัปเดตสกิล

```bash
cd project-skill
git pull
cp -R thai-official-academic-writing ~/.claude/skills/
```

## โครงสร้างไฟล์

```
thai-official-academic-writing/
└── SKILL.md    # ไฟล์หลักของสกิล
```

---

GitHub: [sriwitsumo](https://github.com/sriwitsumo)

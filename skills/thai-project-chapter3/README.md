# ตัวช่วยเขียนบทที่ 3 โครงงาน/งานวิจัยไทย (วิธีดำเนินงาน)

สกิล Claude สำหรับเขียน "บทที่ 3 (วิธีดำเนินงาน/วิธีดำเนินการวิจัย)" ของโครงงาน/งานวิจัยภาษาไทย
ระดับมัธยมปลายถึงอุดมศึกษา เขียนแบบสั้น กระชับ เข้าใจง่าย เหมือนคู่มือที่คนไม่มีพื้นฐานอ่านตามได้
ครอบคลุม วัสดุอุปกรณ์ ขั้นตอนการดำเนินงาน การเก็บรวบรวมข้อมูล และการวิเคราะห์ข้อมูล

## ใช้เมื่อไหร่

- พูดถึง **"บทที่ 3"** หรือ **"วิธีดำเนินงาน"** / **"วิธีดำเนินการวิจัย"**
- ขอเขียน **"ขั้นตอนการทำโครงงาน"** หรือ **"วัสดุอุปกรณ์ที่ใช้"**
- ถามเรื่อง **"วิธีเก็บข้อมูล"** หรือ **"การวิเคราะห์ข้อมูล"** ในบริบทโครงงาน
- ขอให้ **"เขียนบทที่ 3 ให้หน่อย"**

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

**Claude model:** ทุก version ที่รองรับ Claude Skills (Haiku, Sonnet, Opus)

**ระบบปฏิบัติการ:** macOS 12+, Ubuntu 20.04+, Debian 11+, Windows 10/11 (via WSL2)

## ⚠️ ข้อควรระวัง

> ผลลัพธ์ที่ได้จากสกิลนี้เป็น **ตัวอย่างและจุดเริ่มต้นเท่านั้น**

- **ไม่ควรนำส่งตรง ๆ** โดยไม่อ่านและแก้ไขก่อน — เนื้อหาที่ AI สร้างอาจมีข้อผิดพลาด ข้อมูลคลาดเคลื่อน หรือไม่ตรงกับบริบทจริง
- **อ่านทบทวนทุกประโยค** ก่อนใช้งาน แก้ไขส่วนที่ผิดหรือไม่ตรงกับโครงงานของคุณ
- **เขียนใหม่ด้วยสำนวนของตัวเอง** — งานวิชาการควรสะท้อนความเข้าใจและเสียงของผู้เขียน ไม่ใช่ AI
- ตรวจสอบว่าเนื้อหาตรงตาม **รูปแบบและข้อกำหนดของสถาบัน/อาจารย์** ของคุณ

## วิธีติดตั้ง

### ข้อกำหนดเบื้องต้น

- [Claude Code](https://claude.ai/code) หรือ Claude Desktop App ติดตั้งและล็อกอินแล้ว
- Git 2.x+ (`git --version` เพื่อตรวจสอบ)

---

### วิธีที่ 1 — ติดตั้งแบบ Global *(แนะนำ)*

ใช้ได้กับทุก project บนเครื่อง สกิลพร้อมใช้งานทันทีในทุก session

```bash
# 1. Clone repo
git clone https://github.com/sriwitsumo/thai-project-chapter3.git

# 2. สร้างโฟลเดอร์ skills (ถ้ายังไม่มี)
mkdir -p ~/.claude/skills

# 3. คัดลอกสกิล
cp -R thai-project-chapter3 ~/.claude/skills/

# 4. ตรวจสอบ
ls ~/.claude/skills/
# ควรเห็น: thai-project-chapter3/
```

---

### วิธีที่ 2 — ติดตั้งแบบ Project-local

ใช้เฉพาะใน project ที่ต้องการ ไม่กระทบ project อื่น

```bash
# ภายในโฟลเดอร์ project ของคุณ
mkdir -p .claude/skills
cp -R thai-project-chapter3 .claude/skills/
```

---

### วิธีที่ 3 — Clone จาก repo รวมทุกสกิล (`project-skill`)

ถ้าต้องการใช้หลายสกิลในชุดนี้พร้อมกัน ติดตั้งทีเดียวจาก repo รวม

```bash
git clone https://github.com/sriwitsumo/project-skill.git
mkdir -p ~/.claude/skills
cp -R project-skill/thai-project-chapter3 ~/.claude/skills/

# ติดตั้งสกิลอื่น ๆ ในชุดเดียวกันต่อได้เลย เช่น:
cp -R project-skill/thai-project-intake     ~/.claude/skills/
cp -R project-skill/thai-project-chapter1   ~/.claude/skills/
cp -R project-skill/thai-project-chapter2   ~/.claude/skills/
cp -R project-skill/thai-project-references ~/.claude/skills/
```

---

### Claude Cowork

วางโฟลเดอร์ `thai-project-chapter3/` ไว้ใน skills directory ของ Cowork workspace แล้ว reload workspace

---

### ตรวจสอบว่าสกิลทำงาน

เปิด Claude แล้วลองพูดว่า:

> "ช่วยเขียนบทที่ 3 วิธีดำเนินงานให้หน่อย"

ถ้าสกิลทำงาน: Claude จะถามรายละเอียดอุปกรณ์และขั้นตอนการทำโครงงานจริงก่อนเขียน

---

### อัปเดตสกิล

```bash
cd thai-project-chapter3
git pull
cp -R . ~/.claude/skills/thai-project-chapter3/
```

## โครงสร้างไฟล์

```
thai-project-chapter3/
└── SKILL.md    # ไฟล์หลักของสกิล
```

## เกี่ยวข้องกับสกิลอื่นในชุดเดียวกัน

สกิลนี้เป็นส่วนหนึ่งของชุด `thai-project-*` ใน [project-skill](https://github.com/sriwitsumo/project-skill):

- **`thai-project-intake`** — ใช้ก่อนสกิลนี้เมื่อเริ่มโครงงานใหม่ เพื่อรวบรวมข้อมูลโครงงานให้ครบในครั้งเดียว
- **`thai-project-chapter1`** — บทที่ 1 (บทนำ) ที่ควรเขียนก่อน
- **`thai-project-chapter2`** — บทที่ 2 (เอกสารและงานวิจัยที่เกี่ยวข้อง) ที่ควรเขียนก่อน
- **`thai-project-references`** — ใช้เป็นขั้นตอนสุดท้ายหลังเขียนทั้งสามบทเสร็จแล้ว

---

GitHub: [sriwitsumo](https://github.com/sriwitsumo)

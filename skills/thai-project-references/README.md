# ตัวช่วยจัดทำรายการอ้างอิง/บรรณานุกรม

สกิล Claude สำหรับจัดทำหัวข้อ "รายการอ้างอิง" / "เอกสารอ้างอิง" / "บรรณานุกรม" ท้ายเล่ม
ของโครงงาน/งานวิจัยภาษาไทยระดับมัธยมปลายถึงอุดมศึกษา รวบรวมแหล่งอ้างอิงทั้งหมดที่ใช้ในบทที่ 1–3
มาจัดรูปแบบตามหลัก APA แบบไทย เรียงลำดับถูกต้อง (บล็อกไทยก่อน บล็อกอังกฤษตาม)
และตรวจสอบว่าการอ้างอิงในเนื้อหาทุกจุดมีรายการตรงกันครบ 1:1 ไม่มีรายการขาด/เกิน

## ใช้เมื่อไหร่

- ขอทำ **"รายการอ้างอิง"**, **"เอกสารอ้างอิง"**, หรือ **"บรรณานุกรม"**
- ต้องการ **"รวบรวมแหล่งอ้างอิงทั้งหมดให้หน่อย"**
- ขอให้ **"เช็ครายการอ้างอิงให้ตรงกับที่อ้างในเนื้อหา"**
- พูดถึง **"reference list"** หรือ **"บทที่ท้ายเล่ม"** (ส่วนรายการอ้างอิง)
- มักใช้เป็น **ขั้นตอนสุดท้าย** หลังเขียนบทที่ 1–3 เสร็จแล้ว

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

**Claude model:** ทุก version ที่รองรับ Claude Skills (Haiku, Sonnet, Opus) — สกิลนี้ใช้ WebSearch เพื่อยืนยันข้อมูลแหล่งอ้างอิง จึงแนะนำ Sonnet ขึ้นไป

**ระบบปฏิบัติการ:** macOS 12+, Ubuntu 20.04+, Debian 11+, Windows 10/11 (via WSL2)

## ⚠️ ข้อควรระวัง

> ผลลัพธ์ที่ได้จากสกิลนี้เป็น **ตัวอย่างและจุดเริ่มต้นเท่านั้น**

- **ไม่ควรนำส่งตรง ๆ** โดยไม่อ่านและแก้ไขก่อน — รายการอ้างอิงที่ AI สร้างอาจมีรูปแบบผิด ข้อมูลไม่ครบ หรือแหล่งที่ไม่มีอยู่จริง
- **ตรวจสอบทุกรายการ** กับแหล่งต้นฉบับจริงก่อนส่ง
- **เขียน/แก้ไขด้วยตัวเอง** — ผู้เขียนมีหน้าที่รับผิดชอบต่อความถูกต้องของรายการอ้างอิงทั้งหมด
- ตรวจสอบว่ารูปแบบตรงตาม **ข้อกำหนดของสถาบัน/อาจารย์** ของคุณ

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
cp -R project-skill/thai-project-references ~/.claude/skills/

# 4. ตรวจสอบ
ls ~/.claude/skills/
# ควรเห็น: thai-project-references/
```

---

### วิธีที่ 2 — ติดตั้งแบบ Project-local

```bash
# ภายในโฟลเดอร์ project ของคุณ
mkdir -p .claude/skills
cp -R project-skill/thai-project-references .claude/skills/
```

---

### ติดตั้งพร้อมสกิลทั้งชุด *(แนะนำสำหรับผู้ใช้ที่ต้องการครบชุด)*

สกิลนี้ทำงานได้ดีที่สุดเมื่อติดตั้งพร้อมสกิลเขียนบทที่ 1–3 เพราะใช้ต่อจากเนื้อหาที่สกิลเหล่านั้นเขียนไว้

```bash
git clone https://github.com/sriwitsumo/project-skill.git
mkdir -p ~/.claude/skills
cp -R project-skill/thai-project-intake     ~/.claude/skills/
cp -R project-skill/thai-project-chapter1   ~/.claude/skills/
cp -R project-skill/thai-project-chapter2   ~/.claude/skills/
cp -R project-skill/thai-project-chapter3   ~/.claude/skills/
cp -R project-skill/thai-project-references ~/.claude/skills/
```

---

### Claude Cowork

วางโฟลเดอร์ `thai-project-references/` ไว้ใน skills directory ของ Cowork workspace แล้ว reload workspace

---

### ตรวจสอบว่าสกิลทำงาน

เปิด Claude แล้วลองพูดว่า:

> "ช่วยรวบรวมรายการอ้างอิงให้หน่อย" หรือ "ทำ reference list ให้หน่อย"

ถ้าสกิลทำงาน: Claude จะถามว่าต้องการ "รายการอ้างอิง" หรือ "บรรณานุกรม" และขอเนื้อหาบทที่ 1–3 ก่อนจัดรูปแบบ

---

### อัปเดตสกิล

```bash
cd project-skill
git pull
cp -R thai-project-references ~/.claude/skills/
```

## โครงสร้างไฟล์

```
thai-project-references/
└── SKILL.md    # ไฟล์หลักของสกิล
```

## เกี่ยวข้องกับสกิลอื่นในชุดเดียวกัน

สกิลนี้คือ **ขั้นตอนสุดท้ายของชุด `thai-project-*`** ใน [project-skill](https://github.com/sriwitsumo/project-skill) ใช้หลังจากสกิลอื่นทำงานเสร็จแล้ว:

- **`thai-project-chapter1`** — บทที่ 1 ที่มีการอ้างอิงแหล่งข้อมูล
- **`thai-project-chapter2`** — บทที่ 2 ที่มีการอ้างอิงหนาแน่นที่สุด (แหล่งส่วนใหญ่มาจากที่นี่)
- **`thai-project-chapter3`** — บทที่ 3 ที่อาจมีการอ้างอิงเพิ่มเติม
- **`thai-project-intake`** — จุดเริ่มต้นของกระบวนการเขียนโครงงานทั้งชุด

---

GitHub: [sriwitsumo](https://github.com/sriwitsumo)

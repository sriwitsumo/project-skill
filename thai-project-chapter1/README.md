# ตัวช่วยเขียนบทที่ 1 โครงงาน/งานวิจัยไทย

สกิล Claude สำหรับเขียน แก้ไข หรือตรวจ "บทที่ 1 (บทนำ)" ของโครงงาน/งานวิจัยภาษาไทยระดับมัธยมปลายถึงอุดมศึกษา
ครอบคลุมทุกหัวข้อย่อยมาตรฐาน ได้แก่ ที่มาและความสำคัญ, วัตถุประสงค์, สมมติฐาน, ขอบเขตการศึกษา, ประโยชน์ที่คาดว่าจะได้รับ
และนิยามศัพท์เฉพาะ พร้อมกลไกป้องกันเนื้อหาซ้ำซ้อน ("วกไปวนมา") และคลังคำ/สำนวนภาษาไทยเชิงวิชาการที่ถูกต้อง
ใช้ได้กับโครงงานทุกประเภท: วิทยาศาสตร์ สิ่งประดิษฐ์ คอมพิวเตอร์ สำรวจ สังคมศาสตร์ และวิจัยในชั้นเรียน

## ใช้เมื่อไหร่

- พูดถึง **"บทที่ 1"** หรือ **"บทนำโครงงาน"**
- ขอเขียน/ตรวจ **"ที่มาและความสำคัญ"** หรือ **"วัตถุประสงค์ของโครงงาน"**
- พูดถึง **"สมมติฐาน"**, **"ขอบเขตการวิจัย"**, **"ประโยชน์ที่คาดว่าจะได้รับ"**, หรือ **"นิยามศัพท์เฉพาะ"**
- ขอให้ **"เขียนโครงงานให้หน่อย"**, **"ตรวจภาษาโครงงาน"**, หรือ **"แก้บทนำให้เป็นทางการขึ้น"**
- แม้ผู้ใช้จะไม่ได้พูดคำว่า "บทที่ 1" ตรง ๆ แต่บริบทชัดว่าต้องการเนื้อหาส่วนนำของโครงงาน

## ความเข้ากันได้

สกิลนี้เป็นไฟล์ Markdown ตามมาตรฐาน Claude Skill (`SKILL.md` + โฟลเดอร์ `reference/`) รองรับทุก platform ที่อ่านรูปแบบนี้ได้

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
git clone https://github.com/sriwitsumo/thai-project-chapter1.git

# 2. สร้างโฟลเดอร์ skills (ถ้ายังไม่มี)
mkdir -p ~/.claude/skills

# 3. คัดลอกสกิล
cp -R thai-project-chapter1 ~/.claude/skills/

# 4. ตรวจสอบ
ls ~/.claude/skills/
# ควรเห็น: thai-project-chapter1/
```

---

### วิธีที่ 2 — ติดตั้งแบบ Project-local

ใช้เฉพาะใน project ที่ต้องการ ไม่กระทบ project อื่น วาง `.claude/skills/` ไว้ใน root ของ project

```bash
# ภายในโฟลเดอร์ project ของคุณ
mkdir -p .claude/skills
cp -R thai-project-chapter1 .claude/skills/
```

---

### วิธีที่ 3 — Clone จาก repo รวมทุกสกิล (`project-skill`)

ถ้าต้องการใช้หลายสกิลในชุดนี้พร้อมกัน ติดตั้งทีเดียวจาก repo รวม

```bash
git clone https://github.com/sriwitsumo/project-skill.git
mkdir -p ~/.claude/skills
cp -R project-skill/thai-project-chapter1 ~/.claude/skills/

# ติดตั้งสกิลอื่น ๆ ในชุดเดียวกันต่อได้เลย เช่น:
cp -R project-skill/thai-project-intake     ~/.claude/skills/
cp -R project-skill/thai-project-chapter2   ~/.claude/skills/
cp -R project-skill/thai-project-chapter3   ~/.claude/skills/
cp -R project-skill/thai-project-references ~/.claude/skills/
```

---

### Claude Cowork

วางโฟลเดอร์ `thai-project-chapter1/` ไว้ใน skills directory ของ Cowork workspace แล้ว reload workspace

---

### ตรวจสอบว่าสกิลทำงาน

เปิด Claude แล้วลองพูดว่า:

> "ช่วยเขียนบทที่ 1 โครงงานให้หน่อย"

ถ้าสกิลทำงาน: Claude จะถามข้อมูลโครงงาน (หรือแนะนำให้ใช้ `thai-project-intake` ก่อน) แทนที่จะตอบแบบทั่วไป

---

### อัปเดตสกิล

```bash
cd thai-project-chapter1
git pull
cp -R . ~/.claude/skills/thai-project-chapter1/
```

## โครงสร้างไฟล์

```
thai-project-chapter1/
├── SKILL.md                          # ไฟล์หลักของสกิล
└── reference/
    ├── 01-thima-khwamsamkhan.md      # ที่มาและความสำคัญของปัญหา
    ├── 02-watthuprasong.md           # วัตถุประสงค์
    ├── 03-sommutithan.md             # สมมติฐาน
    ├── 04-khobkhet.md                # ขอบเขตการศึกษา + แผนดำเนินงาน
    ├── 05-prayotchn.md               # ประโยชน์ที่คาดว่าจะได้รับ
    ├── 06-niyamsap.md                # นิยามศัพท์เฉพาะ
    ├── 07-phasa-wichakan.md          # คลังคำ/ไวยากรณ์ภาษาไทยเชิงวิชาการ
    ├── 08-pongkan-wangwon.md         # กลไกป้องกันการเขียนซ้ำ/วกวน
    └── 09-tuapae.md                  # ตัวแปรที่เกี่ยวข้อง
```

## เกี่ยวข้องกับสกิลอื่นในชุดเดียวกัน

สกิลนี้เป็นส่วนหนึ่งของชุด `thai-project-*` ใน [project-skill](https://github.com/sriwitsumo/project-skill):

- **`thai-project-intake`** — ใช้ก่อนสกิลนี้เมื่อเริ่มโครงงานใหม่ เพื่อรวบรวมข้อมูลโครงงานให้ครบในครั้งเดียว
- **`thai-project-chapter2`** — ใช้ต่อเมื่อเขียนบทที่ 1 เสร็จแล้ว สำหรับเอกสารและงานวิจัยที่เกี่ยวข้อง
- **`thai-project-chapter3`** — ใช้ต่อสำหรับวิธีดำเนินงาน/วิธีดำเนินการวิจัย
- **`thai-project-references`** — ใช้เป็นขั้นตอนสุดท้าย รวบรวมและจัดรูปแบบรายการอ้างอิงทั้งเล่ม

---

GitHub: [sriwitsumo](https://github.com/sriwitsumo)

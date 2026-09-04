# Thai Word Line Fit

สกิล Claude สำหรับจัดหรือแก้เอกสาร Microsoft Word ภาษาไทยให้ฟอนต์ TH Sarabun New 16 pt
ตัดบรรทัดสวยตามธรรมชาติโดยไม่ยืดช่องว่างระหว่างคำ รักษาโครงสร้างย่อหน้าที่ถูกต้อง
และไม่กด Enter กลางย่อหน้าที่ยังไม่จบ ปรับผลลัพธ์ให้อ่านง่ายและโครงสร้างเอกสารถูกต้อง

## ใช้เมื่อไหร่

- ต้องการ **จัดบรรทัดเอกสาร Word ภาษาไทย** ให้สวยตามธรรมชาติ
- เจอ **ข้อความไทยตกคำ** (คำถูกแยกออกไปอยู่คนละบรรทัดอย่างน่าเกลียด)
- มี **เครื่องหมายย่อหน้า (¶) เกินจำเป็น** กระจายกลางย่อหน้า
- ต้องการแก้เอกสาร **งานรายงาน โครงงาน หรือเอกสารวิชาการ** ให้บรรทัดพอดีสวยงาม
- ช่องว่างระหว่างคำถูก **ยืดผิดปกติ** เพราะ Justify/Thai Distributed

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

**Microsoft Word:** ทดสอบกับ Word for Mac 16.112 (Microsoft 365) — version อื่นอาจมีตำแหน่งเมนูต่างกัน แต่ผลลัพธ์ที่มองเห็นเป็นเกณฑ์หลัก

## ⚠️ ข้อควรระวัง

> คำแนะนำที่ได้จากสกิลนี้เป็น **ตัวอย่างและแนวทางเท่านั้น**

- **ไม่ควรนำไปปฏิบัติตามทันที** โดยไม่ตรวจสอบกับเอกสารจริงของคุณก่อน — ผลลัพธ์อาจต่างกันตาม version ของ Word และ OS
- **ทดสอบกับสำเนาก่อน** ไม่ใช่ไฟล์ต้นฉบับ เผื่อกรณีที่ผลลัพธ์ไม่เป็นไปตามที่คาดหวัง
- **ตรวจสอบด้วยตาตัวเอง** ว่าเอกสารดูถูกต้องและสวยงามหลังจากใช้คำแนะนำ

## วิธีติดตั้ง

สกิลนี้ไม่มี repo แยกเป็นของตัวเอง — ติดตั้งผ่าน repo รวม [`project-skill`](https://github.com/sriwitsumo/project-skill)

### ข้อกำหนดเบื้องต้น

- [Claude Code](https://claude.ai/code) หรือ Claude Desktop App ติดตั้งและล็อกอินแล้ว
- Git 2.x+ (`git --version` เพื่อตรวจสอบ)
- Microsoft Word (ทุก version ที่รองรับ TH Sarabun New)

---

### วิธีที่ 1 — ติดตั้งแบบ Global *(แนะนำ)*

ใช้ได้กับทุก project บนเครื่อง สกิลพร้อมใช้งานทันทีในทุก session

```bash
# 1. Clone repo รวม
git clone https://github.com/sriwitsumo/project-skill.git

# 2. สร้างโฟลเดอร์ skills (ถ้ายังไม่มี)
mkdir -p ~/.claude/skills

# 3. คัดลอกสกิล
cp -R project-skill/thai-word-line-fit ~/.claude/skills/

# 4. ตรวจสอบ
ls ~/.claude/skills/
# ควรเห็น: thai-word-line-fit/
```

---

### วิธีที่ 2 — ติดตั้งแบบ Project-local

```bash
# ภายในโฟลเดอร์ project ของคุณ
mkdir -p .claude/skills
cp -R project-skill/thai-word-line-fit .claude/skills/
```

---

### Claude Cowork

วางโฟลเดอร์ `thai-word-line-fit/` ไว้ใน skills directory ของ Cowork workspace แล้ว reload workspace

---

### ตรวจสอบว่าสกิลทำงาน

เปิด Claude แล้วลองพูดว่า:

> "เอกสาร Word ภาษาไทยของฉันข้อความตกคำ ช่วยจัดให้หน่อย"

ถ้าสกิลทำงาน: Claude จะถามรายละเอียดเอกสาร (font, margin, ปัญหาที่เจอ) และให้คำแนะนำแบบ step-by-step ตามหลักการของสกิล แทนที่จะตอบทั่วไป

---

### อัปเดตสกิล

```bash
cd project-skill
git pull
cp -R thai-word-line-fit ~/.claude/skills/
```

## โครงสร้างไฟล์

```
thai-word-line-fit/
└── SKILL.md    # ไฟล์หลักของสกิล
```

---

GitHub: [sriwitsumo](https://github.com/sriwitsumo)

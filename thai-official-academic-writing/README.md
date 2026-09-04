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

## วิธีติดตั้ง

สกิลนี้เป็นไฟล์ Markdown ตามมาตรฐาน Claude Skill (`SKILL.md`) ใช้ได้กับทั้ง
Claude Code, Claude Cowork หรือเครื่องมือ AI agent อื่นที่รองรับรูปแบบ skill เดียวกัน

1. ดาวน์โหลด/clone repo [`project-skill`](https://github.com/sriwitsumo/project-skill) (repo รวมทุกสกิล)
2. คัดลอกโฟลเดอร์ `thai-official-academic-writing/` ไปไว้ในตำแหน่งที่เครื่องมือ AI agent ของคุณอ่าน skill (เช่น `~/.claude/skills/`)
3. เรียกใช้งานโดยพูดถึงหัวข้อที่เกี่ยวข้อง ระบบจะเลือกสกิลนี้ให้อัตโนมัติ

```bash
git clone https://github.com/sriwitsumo/project-skill.git
cp -R project-skill/thai-official-academic-writing ~/.claude/skills/
```

## โครงสร้างไฟล์

```
thai-official-academic-writing/
└── SKILL.md    # ไฟล์หลักของสกิล
```

---

GitHub: [sriwitsumo](https://github.com/sriwitsumo)

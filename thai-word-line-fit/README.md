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

## วิธีติดตั้ง

สกิลนี้เป็นไฟล์ Markdown ตามมาตรฐาน Claude Skill (`SKILL.md`) ใช้ได้กับทั้ง
Claude Code, Claude Cowork หรือเครื่องมือ AI agent อื่นที่รองรับรูปแบบ skill เดียวกัน

1. ดาวน์โหลด/clone repo [`project-skill`](https://github.com/sriwitsumo/project-skill) (repo รวมทุกสกิล)
2. คัดลอกโฟลเดอร์ `thai-word-line-fit/` ไปไว้ในตำแหน่งที่เครื่องมือ AI agent ของคุณอ่าน skill (เช่น `~/.claude/skills/`)
3. เรียกใช้งานโดยพูดถึงหัวข้อที่เกี่ยวข้อง ระบบจะเลือกสกิลนี้ให้อัตโนมัติ

```bash
git clone https://github.com/sriwitsumo/project-skill.git
cp -R project-skill/thai-word-line-fit ~/.claude/skills/
```

## โครงสร้างไฟล์

```
thai-word-line-fit/
└── SKILL.md    # ไฟล์หลักของสกิล
```

---

GitHub: [sriwitsumo](https://github.com/sriwitsumo)

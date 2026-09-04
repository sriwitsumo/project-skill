# claude-thai-skills

ชุด Claude Skills สำหรับงานเขียนภาษาไทยเชิงวิชาการและงานเอกสารราชการ
A collection of Claude Skills for Thai academic writing, official correspondence, and Word document typography.

---

## สกิลในรีโปนี้ / Skills in this repo

### 1. `thai-official-academic-writing`

**ไทย:** ร่าง ปรับแก้ และตรวจคุณภาพหนังสือราชการไทย ข้อเสนอโครงงาน งานเขียนเชิงวิจัย และรายการอ้างอิงแบบ APA 7 ครอบคลุมการจัดตัวอักษรและเลย์เอาต์เอกสารภาษาไทย ใช้กับหนังสือราชการ โครงงาน รายงาน วิทยานิพนธ์ หรือบทความวิชาการ และจะยึดตามเทมเพลตของสถาบันเมื่อผู้ใช้ให้มา

**EN:** Draft, revise, and quality-check Thai official correspondence, project proposals, research writing, and APA 7 references, including Thai typography and document layout. Use for หนังสือราชการ, โครงงาน, reports, theses, or academic manuscripts; defers to an institution's required template when supplied.

### 2. `thai-project-references`

**ไทย:** จัดทำหัวข้อ "รายการอ้างอิง" / "เอกสารอ้างอิง" / "บรรณานุกรม" ท้ายเล่มโครงงานหรืองานวิจัยภาษาไทยระดับมัธยมปลายถึงอุดมศึกษา โดยรวบรวมแหล่งอ้างอิงทั้งหมดที่ใช้ในบทที่ 1–3 (โดยเฉพาะบทที่ 2) มาจัดรูปแบบตามหลัก APA แบบไทย เรียงลำดับตัวอักษรถูกต้อง (บล็อกไทยก่อน บล็อกอังกฤษตาม) และตรวจสอบว่าการอ้างอิงในเนื้อหาทุกจุดมีรายการตรงกันครบ 1:1 ไม่มีรายการขาดหรือรายการเกิน มักใช้เป็นขั้นตอนสุดท้ายหลังเขียนบทที่ 1–3 เสร็จแล้ว

**EN:** Builds the end-of-document reference list (รายการอ้างอิง / เอกสารอ้างอิง / บรรณานุกรม) for Thai high-school-to-university projects and research papers. Collects every source cited in Chapters 1–3 (especially Chapter 2), formats them in Thai-style APA, sorts them correctly (Thai block first, English block second), and verifies a strict 1:1 match between in-text citations and list entries — no missing and no extra entries. Typically the final step after Chapters 1–3 are written.

### 3. `thai-word-line-fit`

**ไทย:** จัดหรือแก้เอกสาร Microsoft Word ภาษาไทยให้ฟอนต์ TH Sarabun New ขนาด 16 ตัดบรรทัดสวยตามธรรมชาติ โดยไม่ยืดช่องว่างระหว่างคำ รักษาย่อหน้าเดิม และไม่กด Enter กลางย่อหน้า ใช้เมื่อผู้ใช้ต้องการจัดบรรทัดงานรายงาน หรือแก้ข้อความไทยที่ตกคำและมีเครื่องหมายย่อหน้าเกินจำเป็น

**EN:** Fixes Thai line breaking in Microsoft Word documents set in TH Sarabun New 16, so lines wrap naturally without stretched word spacing. Preserves real paragraph structure and never inserts hard returns mid-paragraph. Use for report line-fitting or for Thai text with dropped words and stray paragraph marks.

---

## การติดตั้ง / Installation

**ไทย:** คัดลอกโฟลเดอร์สกิลที่ต้องการไปไว้ใน `~/.claude/skills/` แล้วเริ่ม Claude ใหม่

**EN:** Copy the skill folder(s) you want into `~/.claude/skills/`, then restart Claude.

```bash
git clone https://github.com/<your-username>/claude-thai-skills.git
cd claude-thai-skills

mkdir -p ~/.claude/skills
cp -R thai-official-academic-writing ~/.claude/skills/
cp -R thai-project-references        ~/.claude/skills/
cp -R thai-word-line-fit             ~/.claude/skills/
```

ตรวจสอบว่าติดตั้งแล้ว / Verify:

```bash
ls ~/.claude/skills/
```

**ไทย:** สกิลจะทำงานอัตโนมัติเมื่อ Claude เห็นว่าคำขอของคุณตรงกับคำอธิบายของสกิลนั้น ไม่ต้องเรียกด้วยชื่อ (แต่จะเรียกชื่อตรง ๆ ก็ได้)

**EN:** Skills trigger automatically when Claude judges your request to match a skill's description — no need to invoke them by name, though you can.

---

## โครงสร้าง / Repository layout

```
claude-thai-skills/
├── README.md
├── .gitignore
├── thai-official-academic-writing/
│   └── SKILL.md
├── thai-project-references/
│   └── SKILL.md
└── thai-word-line-fit/
    └── SKILL.md
```

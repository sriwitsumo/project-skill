# project-skill

ชุด Claude Skills สำหรับงานเขียนภาษาไทยเชิงวิชาการ งานเอกสารราชการ และโครงงานวิจัย  
A collection of Claude Skills for Thai academic writing, official correspondence, research projects, and Word document typography.

---

## สกิลในรีโปนี้ / Skills in this repo

### 1. `thai-official-academic-writing`

**ไทย:** ร่าง ปรับแก้ และตรวจคุณภาพหนังสือราชการไทย ข้อเสนอโครงงาน งานเขียนเชิงวิจัย และรายการอ้างอิงแบบ APA 7 ครอบคลุมการจัดตัวอักษรและเลย์เอาต์เอกสารภาษาไทย ใช้กับหนังสือราชการ โครงงาน รายงาน วิทยานิพนธ์ หรือบทความวิชาการ และจะยึดตามเทมเพลตของสถาบันเมื่อผู้ใช้ให้มา

**EN:** Draft, revise, and quality-check Thai official correspondence, project proposals, research writing, and APA 7 references, including Thai typography and document layout. Use for หนังสือราชการ, โครงงาน, reports, theses, or academic manuscripts; defers to an institution's required template when supplied.

---

### 2. `thai-project-references`

**ไทย:** จัดทำหัวข้อ "รายการอ้างอิง" / "เอกสารอ้างอิง" / "บรรณานุกรม" ท้ายเล่มโครงงานหรืองานวิจัยภาษาไทยระดับมัธยมปลายถึงอุดมศึกษา โดยรวบรวมแหล่งอ้างอิงทั้งหมดที่ใช้ในบทที่ 1–3 มาจัดรูปแบบตามหลัก APA แบบไทย เรียงลำดับตัวอักษรถูกต้อง และตรวจสอบว่าการอ้างอิงในเนื้อหาทุกจุดมีรายการตรงกันครบ 1:1

**EN:** Builds the end-of-document reference list (รายการอ้างอิง / เอกสารอ้างอิง / บรรณานุกรม) for Thai high-school-to-university projects. Formats every source in Thai-style APA, sorts correctly (Thai block first, English block second), and verifies a strict 1:1 match between in-text citations and list entries.

---

### 3. `thai-word-line-fit`

**ไทย:** จัดหรือแก้เอกสาร Microsoft Word ภาษาไทยให้ฟอนต์ TH Sarabun New ขนาด 16 ตัดบรรทัดสวยตามธรรมชาติ โดยไม่ยืดช่องว่างระหว่างคำ รักษาย่อหน้าเดิม และไม่กด Enter กลางย่อหน้า

**EN:** Fixes Thai line breaking in Microsoft Word documents set in TH Sarabun New 16, so lines wrap naturally without stretched word spacing. Preserves real paragraph structure and never inserts hard returns mid-paragraph.

---

### 4. `thai-project-chapter1`

**ไทย:** เขียนบทที่ 1 ของโครงงานวิจัยภาษาไทยระดับมัธยมปลายถึงอุดมศึกษา ครอบคลุมที่มาและความสำคัญของปัญหา วัตถุประสงค์ สมมติฐาน ขอบเขต นิยามศัพท์ และประโยชน์ที่คาดว่าจะได้รับ โดยใช้ภาษาวิชาการไทยที่ถูกต้องตามรูปแบบของสถาบัน

**EN:** Writes Chapter 1 of Thai research projects (high school to university level), covering background and significance, objectives, hypotheses, scope, term definitions, and expected benefits. Uses formal Thai academic language following the institution's required format. Contains reference materials for Thai academic conventions (ที่มาความสำคัญ, วัตถุประสงค์, สมมติฐาน, ขอบเขต, นิยามศัพท์, ประโยชน์).

---

### 5. `thai-project-chapter2`

**ไทย:** เขียนบทที่ 2 ของโครงงานวิจัยภาษาไทย (เอกสารและงานวิจัยที่เกี่ยวข้อง) โดยค้นหาแหล่งอ้างอิงที่เชื่อถือได้ สังเคราะห์กรอบแนวคิด และอ้างอิงแบบ APA ภาษาไทย ใช้ได้กับโครงงานทุกสาขา

**EN:** Writes Chapter 2 of Thai research projects (related documents and research). Searches for credible sources, synthesizes a conceptual framework, and cites in Thai APA style. Works across all subject areas. Includes reference materials for structure by project type, search and source validation, citation style, synthesis and framework, and content ownership and quality. Also includes an OpenAI agents config.

---

### 6. `thai-project-chapter3`

**ไทย:** เขียนบทที่ 3 ของโครงงานวิจัยภาษาไทย (วิธีดำเนินการวิจัย) ครอบคลุมรูปแบบการวิจัย ประชากรและกลุ่มตัวอย่าง เครื่องมือ การเก็บรวบรวมข้อมูล และการวิเคราะห์ข้อมูล

**EN:** Writes Chapter 3 of Thai research projects (research methodology), covering research design, population and sampling, instruments, data collection, and data analysis procedures.

---

### 7. `thai-project-intake`

**ไทย:** รวบรวมข้อมูลโครงงานจากผู้ใช้ก่อนส่งต่อให้สกิลเขียนบทที่ 1–3 โดยถามข้อมูลสำคัญของโครงงานอย่างเป็นระบบ เช่น หัวข้อ วัตถุประสงค์ กลุ่มตัวอย่าง และเครื่องมือ

**EN:** Intake skill — collects project information from the user before handing off to Chapter 1–3 writing skills. Systematically gathers key project details such as topic, objectives, sample group, and instruments.

---

## การติดตั้ง / Installation

**ไทย:** คัดลอกโฟลเดอร์สกิลที่ต้องการไปไว้ใน `~/.claude/skills/` แล้วเริ่ม Claude ใหม่

**EN:** Copy the skill folder(s) you want into `~/.claude/skills/`, then restart Claude.

```bash
git clone https://github.com/sriwitsumo/project-skill.git
cd project-skill

mkdir -p ~/.claude/skills

# ติดตั้งสกิลที่ต้องการ / install whichever skills you need:
cp -R thai-official-academic-writing ~/.claude/skills/
cp -R thai-project-references        ~/.claude/skills/
cp -R thai-word-line-fit             ~/.claude/skills/
cp -R thai-project-chapter1         ~/.claude/skills/
cp -R thai-project-chapter2         ~/.claude/skills/
cp -R thai-project-chapter3         ~/.claude/skills/
cp -R thai-project-intake           ~/.claude/skills/
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
project-skill/
├── README.md
├── .gitignore
├── thai-official-academic-writing/
│   └── SKILL.md
├── thai-project-references/
│   └── SKILL.md
├── thai-word-line-fit/
│   └── SKILL.md
├── thai-project-chapter1/
│   ├── SKILL.md
│   ├── README.md
│   └── reference/
│       ├── 01-thima-khwamsamkhan.md
│       ├── 02-watthuprasong.md
│       ├── 03-sommutithan.md
│       ├── 04-khobkhet.md
│       ├── 05-prayotchn.md
│       ├── 06-niyamsap.md
│       ├── 07-phasa-wichakan.md
│       ├── 08-pongkan-wangwon.md
│       └── 09-tuapae.md
├── thai-project-chapter2/
│   ├── SKILL.md
│   ├── agents/
│   │   └── openai.yaml
│   └── reference/
│       ├── 01-structure-by-project-type.md
│       ├── 02-search-and-source-validation.md
│       ├── 03-citation-style.md
│       ├── 04-synthesis-and-framework.md
│       └── 05-content-ownership-and-quality.md
├── thai-project-chapter3/
│   └── SKILL.md
└── thai-project-intake/
    └── SKILL.md
```

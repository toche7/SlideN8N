#!/usr/bin/env bash
# merge-modules.sh — รวม module-01 ถึง module-09 เป็นไฟล์เดียว
# ใช้ frontmatter ของ module-01 เป็นหลัก แล้วตัด frontmatter ของโมดูลอื่นออก

OUTPUT="all-modules.md"
MODULES=(
  # module-01-intro-ai-workflow.md
  # module-02-intro-n8n.md
  # module-03-workshop-basic-workflow.md
  # module-04-workshop-statistics-pipeline.md
  # module-05-workshop-sentiment-satisfaction.md
  # module-06-encryption-sensitive-data.md
  module-07-workshop-basic-ai-agent.md
  module-08-workshop-ai-agent-statistics.md
  module-09-workshop-ai-agent-realworld.md
)

cd "$(dirname "$0")"

> "$OUTPUT"  # clear/create output file

for i in "${!MODULES[@]}"; do
  FILE="${MODULES[$i]}"
  if [[ ! -f "$FILE" ]]; then
    echo "WARNING: $FILE not found, skipping."
    continue
  fi

  # ดึง footer จาก frontmatter ของโมดูลนี้ (ใช้ awk เพื่อ compatibility กับ macOS)
  FOOTER=$(awk 'BEGIN{in_fm=0} /^---$/{if(!in_fm){in_fm=1;next}else{exit}} in_fm && /^footer:/{sub(/^footer:[[:space:]]*/,""); gsub(/^"|"$/,""); print; exit}' "$FILE")

  if [[ $i -eq 0 ]]; then
    # โมดูลแรก: เก็บ frontmatter ไว้ทั้งหมด
    cat "$FILE" >> "$OUTPUT"
  else
    # โมดูลอื่น: ตัด frontmatter ออก แล้วเพิ่ม slide separator
    echo "" >> "$OUTPUT"
    echo "---" >> "$OUTPUT"
    echo "" >> "$OUTPUT"
    # inject footer directive ก่อนเนื้อหา เพื่อ override footer ของโมดูลก่อนหน้า
    if [[ -n "$FOOTER" ]]; then
      echo "<!-- footer: \"$FOOTER\" -->" >> "$OUTPUT"
      echo "" >> "$OUTPUT"
    fi
    # ใช้ awk ข้าม frontmatter block แรก
    awk '
      BEGIN { in_fm=0; done=0 }
      done { print; next }
      /^---$/ && !in_fm { in_fm=1; next }
      /^---$/ && in_fm  { done=1; next }
    ' "$FILE" >> "$OUTPUT"
  fi
done

echo "Done! Output: $OUTPUT"

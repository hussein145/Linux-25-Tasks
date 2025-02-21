cut -f1 keys && cut -f2 keys | sort | uniq -d > extracted_Keys.txt
# Extract URLs
grep -Eo 'https?://[a-zA-Z0-9./_-]+|www\.[a-zA-Z0-9.-]+' data.txt > urls.txt
# Extract Phone Numbers
grep -Eo '\+?[0-9]{1,4}[0-9]{7,}' data.txt > phone_numbers.txt
# Extract IP Addresses
grep -Eo '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b' data.txt > ip_addresses.txt

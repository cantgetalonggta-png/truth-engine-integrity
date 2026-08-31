rule Webpage_Script_Injection_Signatures
{
    meta:
        description = "Detects hidden script injections and anomalies"
        author = "Digital Research Entity Forensic Engine"
        version = "1.0"

    strings:
        // Hidden element containers
        $hidden_iframe = /<iframe[^>]*style=['"][^'"]*(display:\s*none|visibility:\s*hidden|opacity:\s*0|position:\s*absolute;\s*left:\s*-)/i

        // Base64 evaluation loaders
        $js_obfuscation = /String\.fromCharCode|unescape|atob\s*\(|eval\s*\(|Function\s*\([^)]*base64/i

        // Core DOM overrides
        $dom_hijack = /document\.write\s*\(|\.innerHTML\s*=|\.insertAdjacentHTML\s*\(|Object\.defineProperty\s*\(\s*window/i

        // Zero-width space segmentation strings
        $zero_width_flood = /(\xEE\x80\x8B|\x20\x20\x8B|\x26\x23\x78\x32\x30\x30\x42\x3B){5,}/

    condition:
        any of them
}

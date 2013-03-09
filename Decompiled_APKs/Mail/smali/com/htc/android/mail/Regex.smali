.class public Lcom/htc/android/mail/Regex;
.super Ljava/lang/Object;
.source "Regex.java"


# static fields
.field private static final ADDR_SPEC:Ljava/lang/String; = "((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*)))"

.field private static final ATOM:Ljava/lang/String; = "(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+\\s*)"

.field private static final BODYTAG:Ljava/lang/String; = "(<[Bb][Oo][Dd][Yy][^>]*>)"

.field private static final BODY_SIZE:Ljava/lang/String; = "BODY\\[.*\\].* \\{(.*)\\}"

.field private static final DOMAIN_NAME:Ljava/lang/String; = "(((([a-zA-Z0-9][a-zA-Z0-9\\-\\_]*)*[a-zA-Z0-9]\\.)+((aero|arpa|a[cdefgilmnoqrstuwxz])|(biz|b[abdefghijmnorstvwyz])|(cat|com|coop|c[acdfghiklmnorsuvxyz])|d[ejkmoz]|(edu|e[ceghrstu])|f[ijkmor]|(gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(info|int|i[delmnoqrst])|(jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(mil|mobi|museum|m[acdghklmnopqrstuvwxyz])|(name|net|n[acefgilopruz])|(om|org)|(pro|p[aefghklmnrstwy])|qa|r[eouw]|s[abcdeghijklmnortvyz]|(travel|t[cdfghjklmnoprtvwz])|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw]))|((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))"

.field private static final EMAIL_ADDRESS:Ljava/lang/String; = "[a-zA-Z0-9\\.\\_\\%\\-]+\\@((([a-zA-Z0-9][a-zA-Z0-9\\-\\_]*)*[a-zA-Z0-9]\\.)+((aero|arpa|a[cdefgilmnoqrstuwxz])|(biz|b[abdefghijmnorstvwyz])|(cat|com|coop|c[acdfghiklmnorsuvxyz])|d[ejkmoz]|(edu|e[ceghrstu])|f[ijkmor]|(gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(info|int|i[delmnoqrst])|(jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(mil|mobi|museum|m[acdghklmnopqrstuvwxyz])|(name|net|n[acefgilopruz])|(om|org)|(pro|p[aefghklmnrstwy])|qa|r[eouw]|s[abcdeghijklmnortvyz]|(travel|t[cdfghjklmnoprtvwz])|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw]))"

.field private static final IMAGE_SRC:Ljava/lang/String; = "<[Ii][Mm][Gg]\\s+[Ss][Rr][Cc]=\"([^ \\t\\n\\f\\r>\"]+)\"[^>]*>"

.field private static final IMAP4_MAILBOX_FORMAT:Ljava/lang/String; = "\\*\\s+LIST\\s+\\((.*)\\)\\s+\".*\"\\s+(.+)"

.field public static final INDEX_ADDR_SPEC:I = 0xc

.field public static final INDEX_ATOM:I = 0xa

.field public static final INDEX_BODYTAG:I = 0xf

.field public static final INDEX_BODY_SIZE:I = 0x9

.field public static final INDEX_DOMAIN_NAME:I = 0x0

.field public static final INDEX_EMAIL_ADDRESS:I = 0x1

.field public static final INDEX_IMAGE_SRC:I = 0x12

.field public static final INDEX_IMAP4_MAILBOX_FORMAT:I = 0x10

.field public static final INDEX_LOOSE_MAILBOX:I = 0x14

.field public static final INDEX_MAILBOX:I = 0xd

.field public static final INDEX_MAILBOXFOR2003:I = 0xe

.field public static final INDEX_MAIL_STATUS:I = 0x6

.field public static final INDEX_MAIL_STATUS_END:I = 0x8

.field public static final INDEX_MAIL_STATUS_HEADER:I = 0x7

.field public static final INDEX_NAME_ADDR:I = 0xb

.field public static final INDEX_RFC_2047:I = 0x4

.field public static final INDEX_UIDPLUS_RESPONSE:I = 0x13

.field public static final INDEX_USER_NAME:I = 0x11

.field public static final INDEX_US_PHONE:I = 0x3

.field public static final INDEX_UTF8:I = 0x5

.field public static final INDEX_WEB_URL:I = 0x2

.field private static final IP_ADDRESS:Ljava/lang/String; = "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

.field private static final LOOSE_ANGLE_EMAILADDRESS_PATTERN:Ljava/lang/String; = "\\s*<\\s*([^ <>]+)\\s*>\\s*"

.field private static final LOOSE_DISPLAYNAME_PATTERN:Ljava/lang/String; = "(?:\\s+\"|^\")(.*[^\\s<]+@[^\\s>]+.*[^\\\\])\"\\s*"

.field private static final LOOSE_EMAILADDRESS_PATTERN:Ljava/lang/String; = "[^\\s<]+@[^\\s>]+"

.field private static final LOOSE_MAILBOX:Ljava/lang/String; = "(?:(?:\\s+\"|^\")(.*[^\\s<]+@[^\\s>]+.*[^\\\\])\"\\s*)*\\s*\\s*<\\s*([^ <>]+)\\s*>\\s*|\\s*([^\\s<]+@[^\\s>]+)\\s*"

.field private static final LOOSE_NAME_ADDRESS_PATTERN:Ljava/lang/String; = "(?:(?:\\s+\"|^\")(.*[^\\s<]+@[^\\s>]+.*[^\\\\])\"\\s*)*\\s*\\s*<\\s*([^ <>]+)\\s*>\\s*"

.field private static final MAILBOX:Ljava/lang/String; = "(?:(?:\\s*((?:(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))?\\s*(?:\\s*<\\s*((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*)))\\s*>\\s*)\\s*)|((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*))))"

.field private static final MAILBOXFOR2003:Ljava/lang/String; = "(?:(?:\\s*((?:(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\-() [\\P{M}&&[^\\p{ASCII}]]]+\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))?\\s*(?:\\s*<\\s*((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*)))\\s*>\\s*)\\s*)|((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*))))"

.field private static final MAIL_STATUS:Ljava/lang/String; = ".* \\(UID (.*) RFC822\\.SIZE (\\d+) FLAGS \\((.*)\\) BODY\\[.*\\] \\{(.*)\\}.*"

.field private static final MAIL_STATUS_END:Ljava/lang/String; = "(.*)\\)"

.field private static final MAIL_STATUS_HEADER:Ljava/lang/String; = ".* FETCH \\((.*) BODY\\[.*\\] \\{(.*)\\}.*"

.field private static final NAME_ADDR:Ljava/lang/String; = "(?:\\s*((?:(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))?\\s*(?:\\s*<\\s*((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*)))\\s*>\\s*)\\s*)"

.field private static final NO_WS_CTL:Ljava/lang/String; = "[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]"

.field private static PATTERN_POOL:[Ljava/util/regex/Pattern; = null

.field private static REGEX_STRING:[Ljava/lang/String; = null

.field private static final RFC_2047:Ljava/lang/String; = "=\\?([\\S]*)\\?([qQbB])\\?([^\\?]*)(\\?=)+"

.field private static final TOP_LEVEL_DOMAIN:Ljava/lang/String; = "((aero|arpa|a[cdefgilmnoqrstuwxz])|(biz|b[abdefghijmnorstvwyz])|(cat|com|coop|c[acdfghiklmnorsuvxyz])|d[ejkmoz]|(edu|e[ceghrstu])|f[ijkmor]|(gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(info|int|i[delmnoqrst])|(jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(mil|mobi|museum|m[acdghklmnopqrstuvwxyz])|(name|net|n[acefgilopruz])|(om|org)|(pro|p[aefghklmnrstwy])|qa|r[eouw]|s[abcdeghijklmnortvyz]|(travel|t[cdfghjklmnoprtvwz])|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw])"

.field private static final UIDPLUS_RESPONSE:Ljava/lang/String; = "\\S+ \\S+ \\[(.*)\\]\\s"

.field private static final USER_NAME:Ljava/lang/String; = "[a-zA-Z0-9\\.\\_\\%\\-]+"

.field private static final US_PHONE:Ljava/lang/String; = "\\b(?:\\+?1)?(?:[ -\\.])?\\(?(\\d{3})?\\)?(?:[ -\\.\\/])?(\\d{3})(?:[ -\\.])?(\\d{4})\\b"

.field private static final UTF8:Ljava/lang/String; = "(.*)\\&(.*)-(.*)"

.field private static final WEB_URL:Ljava/lang/String; = "((?:(http|https):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2}))+(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2}))+)?\\@)?)?((?:(?:[a-zA-Z0-9][a-zA-Z0-9\\-]*\\.)+(?:(?:aero|arpa|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnorsuvxyz])|d[ejkmoz]|(?:edu|e[ceghrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:om|org)|(?:pro|p[aefghklmnrstwy])|qa|r[eouw]|s[abcdeghijklmnortvyz]|(?:travel|t[cdfghjklmnoprtvwz])|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))))(\\/(?:(?:[a-zA-Z0-9\\;\\/\\?\\:\\@\\&\\=\\#\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?"

.field private static final addr_spec:Ljava/lang/String; = "((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*)))"

.field private static final angle_addr:Ljava/lang/String; = "(?:\\s*<\\s*((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*)))\\s*>\\s*)"

.field private static final atext:Ljava/lang/String; = "[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]"

.field private static final atext2003:Ljava/lang/String; = "[\\w!#$%&\'*+=/?^_`{|}~\\-() [\\P{M}&&[^\\p{ASCII}]]]"

.field private static final atext_include_dot:Ljava/lang/String; = "[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]"

.field private static final atom:Ljava/lang/String; = "(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+\\s*)"

.field private static final atom2003:Ljava/lang/String; = "(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\-() [\\P{M}&&[^\\p{ASCII}]]]+\\s*)"

.field private static final dcontent:Ljava/lang/String; = "(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))"

.field private static final display_name:Ljava/lang/String; = "(?:(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))"

.field private static final display_name2003:Ljava/lang/String; = "(?:(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\-() [\\P{M}&&[^\\p{ASCII}]]]+\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))"

.field private static final domain:Ljava/lang/String; = "(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*))"

.field private static final domain_literal:Ljava/lang/String; = "(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*)"

.field private static final dot_atom:Ljava/lang/String; = "(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)"

.field private static final dot_atom_special:Ljava/lang/String; = "(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)"

.field private static final dot_atom_text:Ljava/lang/String; = "(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)"

.field private static final dot_atom_text_special:Ljava/lang/String; = "(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)"

.field private static final dtext:Ljava/lang/String; = "[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]"

.field private static final local_part:Ljava/lang/String; = "(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))"

.field private static mCache:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/htc/android/mail/Regex;",
            ">;"
        }
    .end annotation
.end field

.field private static mLock:Ljava/lang/Object; = null

.field private static final name_addr:Ljava/lang/String; = "(?:\\s*((?:(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))?\\s*(?:\\s*<\\s*((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*)))\\s*>\\s*)\\s*)"

.field private static final name_addr2003:Ljava/lang/String; = "(?:\\s*((?:(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\-() [\\P{M}&&[^\\p{ASCII}]]]+\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))?\\s*(?:\\s*<\\s*((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*)))\\s*>\\s*)\\s*)"

.field private static final phrase:Ljava/lang/String; = "(?:(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))"

.field private static final phrase2003:Ljava/lang/String; = "(?:(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\-() [\\P{M}&&[^\\p{ASCII}]]]+\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))"

.field private static final qcontent:Ljava/lang/String; = "(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]]))"

.field private static final qtext:Ljava/lang/String; = "[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]"

.field private static final quoted_pair:Ljava/lang/String; = "(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])"

.field private static final quoted_string:Ljava/lang/String; = "(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)"

.field private static final text:Ljava/lang/String; = "[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]]"

.field private static final unicode:Ljava/lang/String; = "[\\P{M}&&[^\\p{ASCII}]]"

.field private static final word:Ljava/lang/String; = "(?:(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))"

.field private static final word2003:Ljava/lang/String; = "(?:(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\-() [\\P{M}&&[^\\p{ASCII}]]]+\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 177
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "(((([a-zA-Z0-9][a-zA-Z0-9\\-\\_]*)*[a-zA-Z0-9]\\.)+((aero|arpa|a[cdefgilmnoqrstuwxz])|(biz|b[abdefghijmnorstvwyz])|(cat|com|coop|c[acdfghiklmnorsuvxyz])|d[ejkmoz]|(edu|e[ceghrstu])|f[ijkmor]|(gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(info|int|i[delmnoqrst])|(jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(mil|mobi|museum|m[acdghklmnopqrstuvwxyz])|(name|net|n[acefgilopruz])|(om|org)|(pro|p[aefghklmnrstwy])|qa|r[eouw]|s[abcdeghijklmnortvyz]|(travel|t[cdfghjklmnoprtvwz])|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw]))|((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "[a-zA-Z0-9\\.\\_\\%\\-]+\\@((([a-zA-Z0-9][a-zA-Z0-9\\-\\_]*)*[a-zA-Z0-9]\\.)+((aero|arpa|a[cdefgilmnoqrstuwxz])|(biz|b[abdefghijmnorstvwyz])|(cat|com|coop|c[acdfghiklmnorsuvxyz])|d[ejkmoz]|(edu|e[ceghrstu])|f[ijkmor]|(gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(info|int|i[delmnoqrst])|(jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(mil|mobi|museum|m[acdghklmnopqrstuvwxyz])|(name|net|n[acefgilopruz])|(om|org)|(pro|p[aefghklmnrstwy])|qa|r[eouw]|s[abcdeghijklmnortvyz]|(travel|t[cdfghjklmnoprtvwz])|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw]))"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "((?:(http|https):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2}))+(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2}))+)?\\@)?)?((?:(?:[a-zA-Z0-9][a-zA-Z0-9\\-]*\\.)+(?:(?:aero|arpa|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnorsuvxyz])|d[ejkmoz]|(?:edu|e[ceghrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:om|org)|(?:pro|p[aefghklmnrstwy])|qa|r[eouw]|s[abcdeghijklmnortvyz]|(?:travel|t[cdfghjklmnoprtvwz])|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))))(\\/(?:(?:[a-zA-Z0-9\\;\\/\\?\\:\\@\\&\\=\\#\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\\b(?:\\+?1)?(?:[ -\\.])?\\(?(\\d{3})?\\)?(?:[ -\\.\\/])?(\\d{3})(?:[ -\\.])?(\\d{4})\\b"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "=\\?([\\S]*)\\?([qQbB])\\?([^\\?]*)(\\?=)+"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "(.*)\\&(.*)-(.*)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".* \\(UID (.*) RFC822\\.SIZE (\\d+) FLAGS \\((.*)\\) BODY\\[.*\\] \\{(.*)\\}.*"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".* FETCH \\((.*) BODY\\[.*\\] \\{(.*)\\}.*"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "(.*)\\)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BODY\\[.*\\].* \\{(.*)\\}"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+\\s*)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "(?:\\s*((?:(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))?\\s*(?:\\s*<\\s*((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*)))\\s*>\\s*)\\s*)"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*)))"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "(?:(?:\\s*((?:(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))?\\s*(?:\\s*<\\s*((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*)))\\s*>\\s*)\\s*)|((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*))))"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "(?:(?:\\s*((?:(?:\\s*[\\w!#$%&\'*+=/?^_`{|}~\\-() [\\P{M}&&[^\\p{ASCII}]]]+\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))?\\s*(?:\\s*<\\s*((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*)))\\s*>\\s*)\\s*)|((?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.+[\\w!#$%&\'*+=/?^_`{|}~\\-. [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*))@(?:(?:\\s*(?:[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+(?:\\.[\\w!#$%&\'*+=/?^_`{|}~\\- [\\P{M}&&[^\\p{ASCII}]]]+)*)\\s*)|(?:\\s*\\[(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21-\\x5A\\x5E-\\x7E]|(?:\\s*\\\"(?:\\s*(?:[[\\x01-\\x08\\x0B\\x0C\\x0E-\\x1F\\x7F]\\x21\\x23-\\x5B\\x5D-\\x7E[\\P{M}&&[^\\p{ASCII}]]]|(?:\\\\[\\x01-\\x09\\x0B\\x0C\\x0E-\\x7F[\\P{M}&&[^\\p{ASCII}]]])))*\\s*\\\"\\s*)))*\\s*\\]\\s*))))"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "(<[Bb][Oo][Dd][Yy][^>]*>)"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\\*\\s+LIST\\s+\\((.*)\\)\\s+\".*\"\\s+(.+)"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "[a-zA-Z0-9\\.\\_\\%\\-]+"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "<[Ii][Mm][Gg]\\s+[Ss][Rr][Cc]=\"([^ \\t\\n\\f\\r>\"]+)\"[^>]*>"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\\S+ \\S+ \\[(.*)\\]\\s"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "(?:(?:\\s+\"|^\")(.*[^\\s<]+@[^\\s>]+.*[^\\\\])\"\\s*)*\\s*\\s*<\\s*([^ <>]+)\\s*>\\s*|\\s*([^\\s<]+@[^\\s>]+)\\s*"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/Regex;->REGEX_STRING:[Ljava/lang/String;

    .line 201
    sget-object v0, Lcom/htc/android/mail/Regex;->REGEX_STRING:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/regex/Pattern;

    sput-object v0, Lcom/htc/android/mail/Regex;->PATTERN_POOL:[Ljava/util/regex/Pattern;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/Regex;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/htc/android/mail/Regex;
    .locals 4

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, reg:Lcom/htc/android/mail/Regex;
    sget-object v3, Lcom/htc/android/mail/Regex;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 210
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/Regex;->mCache:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/android/mail/Regex;->mCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/Regex;

    move-object v0, v2

    .line 211
    :goto_0
    if-nez v0, :cond_0

    .line 212
    new-instance v1, Lcom/htc/android/mail/Regex;

    invoke-direct {v1}, Lcom/htc/android/mail/Regex;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .end local v0           #reg:Lcom/htc/android/mail/Regex;
    .local v1, reg:Lcom/htc/android/mail/Regex;
    :try_start_1
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/htc/android/mail/Regex;->mCache:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 215
    .end local v1           #reg:Lcom/htc/android/mail/Regex;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 216
    return-object v0

    .line 210
    .restart local v0       #reg:Lcom/htc/android/mail/Regex;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 215
    .end local v0           #reg:Lcom/htc/android/mail/Regex;
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v1       #reg:Lcom/htc/android/mail/Regex;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .local v0, reg:Ljava/lang/Object;
    goto :goto_1
.end method


# virtual methods
.method public getPattern(I)Ljava/util/regex/Pattern;
    .locals 3
    .parameter "index"

    .prologue
    .line 220
    sget-object v1, Lcom/htc/android/mail/Regex;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/Regex;->PATTERN_POOL:[Ljava/util/regex/Pattern;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 222
    sget-object v0, Lcom/htc/android/mail/Regex;->PATTERN_POOL:[Ljava/util/regex/Pattern;

    sget-object v2, Lcom/htc/android/mail/Regex;->REGEX_STRING:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, p1

    .line 224
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    sget-object v0, Lcom/htc/android/mail/Regex;->PATTERN_POOL:[Ljava/util/regex/Pattern;

    aget-object v0, v0, p1

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

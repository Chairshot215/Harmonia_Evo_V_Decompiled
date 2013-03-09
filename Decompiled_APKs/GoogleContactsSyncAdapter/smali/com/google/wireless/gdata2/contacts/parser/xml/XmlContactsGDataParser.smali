.class public Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;
.super Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.source "XmlContactsGDataParser.java"


# static fields
.field private static final IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

.field public static final IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_CALENDARLINK:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_EVENT:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_EXTERNALID:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_IM:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_JOT:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_PRIORITY:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_RELATION:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_SENSITIVITY:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_SIP:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_WEBSITE:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_CALENDARLINK:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_EVENT:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_EXTERNALID:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_IM:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_JOT:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_PRIORITY:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_RELATION:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_SENSITIVITY:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_SIP:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_WEBSITE:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 152
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 153
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

    .line 157
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

    .line 159
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 160
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "http://schemas.google.com/g/2005#mobile"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "http://schemas.google.com/g/2005#pager"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "http://schemas.google.com/g/2005#home_fax"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "http://schemas.google.com/g/2005#work_fax"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "http://schemas.google.com/g/2005#assistant"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "http://schemas.google.com/g/2005#callback"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "http://schemas.google.com/g/2005#car"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "http://schemas.google.com/g/2005#company_main"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "http://schemas.google.com/g/2005#isdn"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "http://schemas.google.com/g/2005#main"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "http://schemas.google.com/g/2005#other_fax"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "http://schemas.google.com/g/2005#radio"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "http://schemas.google.com/g/2005#telex"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "http://schemas.google.com/g/2005#tty_tdd"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "http://schemas.google.com/g/2005#work_mobile"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "http://schemas.google.com/g/2005#work_pager"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

    .line 180
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

    .line 182
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 183
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

    .line 187
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;

    .line 189
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 190
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_IM:Ljava/util/Hashtable;

    .line 194
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_IM:Ljava/util/Hashtable;

    .line 196
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 197
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

    .line 200
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

    .line 202
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 203
    const-string v1, "http://schemas.google.com/g/2005#AIM"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "http://schemas.google.com/g/2005#MSN"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "http://schemas.google.com/g/2005#YAHOO"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "http://schemas.google.com/g/2005#SKYPE"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "http://schemas.google.com/g/2005#QQ"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "http://schemas.google.com/g/2005#GOOGLE_TALK"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "http://schemas.google.com/g/2005#ICQ"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "http://schemas.google.com/g/2005#JABBER"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "http://schemas.google.com/g/2005#netmeeting"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

    .line 214
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable;

    .line 216
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 217
    const-string v1, "home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "free-busy"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_CALENDARLINK:Ljava/util/Hashtable;

    .line 221
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_CALENDARLINK:Ljava/util/Hashtable;

    .line 223
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 224
    const-string v1, "anniversary"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v1, "other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EVENT:Ljava/util/Hashtable;

    .line 227
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EVENT:Ljava/util/Hashtable;

    .line 229
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 230
    const-string v1, "account"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, "customer"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "network"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "organization"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EXTERNALID:Ljava/util/Hashtable;

    .line 235
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EXTERNALID:Ljava/util/Hashtable;

    .line 237
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 238
    const-string v1, "home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "keywords"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v1, "user"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_JOT:Ljava/util/Hashtable;

    .line 244
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_JOT:Ljava/util/Hashtable;

    .line 246
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 247
    const-string v1, "high"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "normal"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v1, "low"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PRIORITY:Ljava/util/Hashtable;

    .line 251
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PRIORITY:Ljava/util/Hashtable;

    .line 253
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 254
    const-string v1, "assistant"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "brother"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "child"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "domestic-partner"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v1, "father"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "friend"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "manager"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "mother"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "parent"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "partner"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "referred-by"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v1, "relative"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "sister"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v1, "spouse"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_RELATION:Ljava/util/Hashtable;

    .line 269
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_RELATION:Ljava/util/Hashtable;

    .line 271
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 272
    const-string v1, "confidential"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v1, "normal"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "personal"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v1, "private"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_SENSITIVITY:Ljava/util/Hashtable;

    .line 281
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_SENSITIVITY:Ljava/util/Hashtable;

    .line 283
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 284
    const-string v1, "blog"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v1, "home-page"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "profile"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v1, "work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v1, "other"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v1, "ftp"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_WEBSITE:Ljava/util/Hashtable;

    .line 292
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_WEBSITE:Ljava/util/Hashtable;

    .line 294
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 295
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_SIP:Ljava/util/Hashtable;

    .line 299
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_SIP:Ljava/util/Hashtable;

    .line 300
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .parameter "is"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 325
    return-void
.end method

.method private static handleEventSubElement(Lcom/google/wireless/gdata2/contacts/data/Event;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .parameter "element"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 577
    .local v0, depth:I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, tag:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 585
    return-void

    .line 579
    :cond_1
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHEN:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 580
    const/4 v3, 0x0

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->STARTTIME:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, startDate:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Event;->setStartDate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static handleNameSubElement(Lcom/google/wireless/gdata2/contacts/data/Name;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter "element"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 590
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 592
    .local v0, depth:I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, tag:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 616
    return-void

    .line 594
    :cond_1
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_GIVENNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 595
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setGivenNameYomi(Ljava/lang/String;)V

    .line 597
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setGivenName(Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_2
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_ADDITIONALNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 599
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setAdditionalNameYomi(Ljava/lang/String;)V

    .line 601
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setAdditionalName(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_3
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_FAMILYNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 603
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFamilyNameYomi(Ljava/lang/String;)V

    .line 605
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFamilyName(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_4
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 607
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setNamePrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_5
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_SUFFIX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 609
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setNameSuffix(Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_6
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_FULLNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFullNameYomi(Ljava/lang/String;)V

    .line 613
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFullName(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static handleOrganizationSubElement(Lcom/google/wireless/gdata2/contacts/data/Organization;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .parameter "element"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 552
    .local v0, depth:I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, tag:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 570
    return-void

    .line 554
    :cond_1
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_NAME:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 555
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_2
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_TITLE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 557
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_3
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_DEPARTMENT:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 559
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgDepartment(Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_4
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_JOBDESC:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 561
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgJobDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_5
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_SYMBOL:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 563
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgSymbol(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_6
    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHERE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    const/4 v3, 0x0

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUESTRING:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, where:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setWhere(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static handleStructuredPostalAddressSubElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter "element"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 623
    .local v0, depth:I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, tag:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 643
    return-void

    .line 625
    :cond_1
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_STREET:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setStreet(Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_2
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_POBOX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 628
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setPobox(Ljava/lang/String;)V

    goto :goto_0

    .line 629
    :cond_3
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_NEIGHBORHOOD:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 630
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setNeighborhood(Ljava/lang/String;)V

    goto :goto_0

    .line 631
    :cond_4
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_CITY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 632
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setCity(Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_5
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_REGION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 634
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setRegion(Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_6
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_POSTCODE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 636
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setPostcode(Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_7
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_COUNTRY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 638
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setCountry(Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_8
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_FORMATTEDADDRESS:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setFormattedAddress(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V
    .locals 3
    .parameter "element"
    .parameter "parser"
    .parameter "relToTypeMap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-static {p0, p1, p2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 517
    const-string v0, "true"

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->PRIMARY:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->setIsPrimary(Z)V

    .line 518
    return-void
.end method

.method private parseExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V
    .locals 3
    .parameter "extendedProperty"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 653
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 654
    .local v0, parser:Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setName(Ljava/lang/String;)V

    .line 655
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setValue(Ljava/lang/String;)V

    .line 656
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractFirstChildTextIgnoreRest(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setXmlBlob(Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method private static parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V
    .locals 4
    .parameter "element"
    .parameter "parser"
    .parameter "relToTypeMap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 522
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, rel:Ljava/lang/String;
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, label:Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 527
    :cond_1
    const-string v1, "http://schemas.google.com/g/2005#other"

    .line 530
    :cond_2
    if-eqz v1, :cond_3

    .line 531
    invoke-static {v1, p2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->relToType(Ljava/lang/String;Ljava/util/Hashtable;)B

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setType(B)V

    .line 533
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setLabel(Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method private static relToType(Ljava/lang/String;Ljava/util/Hashtable;)B
    .locals 4
    .parameter "rel"
    .parameter "relToTypeMap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 538
    if-eqz p0, :cond_1

    .line 539
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 540
    .local v0, type:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 541
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown rel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :cond_0
    check-cast v0, Ljava/lang/Byte;

    .end local v0           #type:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 545
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 7
    .parameter "originalMap"

    .prologue
    .line 303
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 304
    .local v2, newMap:Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 305
    .local v0, enumeration:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 306
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 307
    .local v1, key:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 308
    .local v3, value:Ljava/lang/Object;
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was already encountered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 312
    :cond_0
    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 314
    .end local v1           #key:Ljava/lang/Object;
    .end local v3           #value:Ljava/lang/Object;
    :cond_1
    return-object v2
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata2/data/Entry;
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata2/data/Feed;
    .locals 1

    .prologue
    .line 332
    new-instance v0, Lcom/google/wireless/gdata2/contacts/data/ContactsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 29
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    .line 346
    .local v17, parser:Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 347
    new-instance v26, Ljava/lang/IllegalArgumentException;

    const-string v27, "Expected ContactEntry!"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v26

    :cond_0
    move-object/from16 v4, p1

    .line 349
    check-cast v4, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .line 350
    .local v4, contactEntry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 351
    .local v14, name:Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v15

    .line 353
    .local v15, ns:Ljava/lang/String;
    const-string v26, "http://schemas.google.com/g/2005"

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 354
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EMAIL:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 355
    new-instance v5, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-direct {v5}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;-><init>()V

    .line 356
    .local v5, emailAddress:Lcom/google/wireless/gdata2/contacts/data/EmailAddress;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v5, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 357
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EMAIL_DISPLAYNAME:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setDisplayName(Ljava/lang/String;)V

    .line 359
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setAddress(Ljava/lang/String;)V

    .line 361
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_LINKSTO:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setLinksTo(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v4, v5}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addEmailAddress(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)V

    .line 502
    .end local v5           #emailAddress:Lcom/google/wireless/gdata2/contacts/data/EmailAddress;
    :cond_1
    :goto_0
    return-void

    .line 363
    :cond_2
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_DELETED:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 364
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setDeleted(Z)V

    goto :goto_0

    .line 365
    :cond_3
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_IM:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 366
    new-instance v10, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-direct {v10}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;-><init>()V

    .line 367
    .local v10, imAddress:Lcom/google/wireless/gdata2/contacts/data/ImAddress;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_IM:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v10, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 368
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setAddress(Ljava/lang/String;)V

    .line 370
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setLabel(Ljava/lang/String;)V

    .line 372
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PROTOCOL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 374
    .local v21, protocolString:Ljava/lang/String;
    if-nez v21, :cond_4

    .line 375
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 376
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    .line 387
    :goto_1
    invoke-virtual {v4, v10}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addImAddress(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)V

    goto :goto_0

    .line 378
    :cond_4
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Byte;

    .line 379
    .local v20, predefinedProtocol:Ljava/lang/Byte;
    if-nez v20, :cond_5

    .line 380
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 381
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    goto :goto_1

    .line 383
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Byte;->byteValue()B

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 384
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    goto :goto_1

    .line 388
    .end local v10           #imAddress:Lcom/google/wireless/gdata2/contacts/data/ImAddress;
    .end local v20           #predefinedProtocol:Ljava/lang/Byte;
    .end local v21           #protocolString:Ljava/lang/String;
    :cond_6
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 389
    new-instance v19, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-direct/range {v19 .. v19}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;-><init>()V

    .line 390
    .local v19, postalAddress:Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 391
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleStructuredPostalAddressSubElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 392
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addPostalAddress(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)V

    goto/16 :goto_0

    .line 393
    .end local v19           #postalAddress:Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;
    :cond_7
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PHONENUMBER:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 394
    new-instance v18, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-direct/range {v18 .. v18}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;-><init>()V

    .line 395
    .local v18, phoneNumber:Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 396
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 397
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_LINKSTO:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->setLinksTo(Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addPhoneNumber(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)V

    goto/16 :goto_0

    .line 399
    .end local v18           #phoneNumber:Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;
    :cond_8
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORGANIZATION:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 400
    new-instance v16, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-direct/range {v16 .. v16}, Lcom/google/wireless/gdata2/contacts/data/Organization;-><init>()V

    .line 401
    .local v16, organization:Lcom/google/wireless/gdata2/contacts/data/Organization;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 402
    invoke-static/range {v16 .. v17}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleOrganizationSubElement(Lcom/google/wireless/gdata2/contacts/data/Organization;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 403
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addOrganization(Lcom/google/wireless/gdata2/contacts/data/Organization;)V

    goto/16 :goto_0

    .line 404
    .end local v16           #organization:Lcom/google/wireless/gdata2/contacts/data/Organization;
    :cond_9
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EXTENDEDPROPERTY:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 405
    new-instance v7, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-direct {v7}, Lcom/google/wireless/gdata2/data/ExtendedProperty;-><init>()V

    .line 406
    .local v7, extendedProperty:Lcom/google/wireless/gdata2/data/ExtendedProperty;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V

    .line 407
    invoke-virtual {v4, v7}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V

    goto/16 :goto_0

    .line 408
    .end local v7           #extendedProperty:Lcom/google/wireless/gdata2/data/ExtendedProperty;
    :cond_a
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 409
    new-instance v13, Lcom/google/wireless/gdata2/contacts/data/Name;

    invoke-direct {v13}, Lcom/google/wireless/gdata2/contacts/data/Name;-><init>()V

    .line 410
    .local v13, n:Lcom/google/wireless/gdata2/contacts/data/Name;
    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleNameSubElement(Lcom/google/wireless/gdata2/contacts/data/Name;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 411
    invoke-virtual {v4, v13}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setName(Lcom/google/wireless/gdata2/contacts/data/Name;)V

    goto/16 :goto_0

    .line 413
    .end local v13           #n:Lcom/google/wireless/gdata2/contacts/data/Name;
    :cond_b
    const-string v26, "http://schemas.google.com/contact/2008"

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 414
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GMI:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 415
    new-instance v9, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-direct {v9}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;-><init>()V

    .line 416
    .local v9, group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->setGroup(Ljava/lang/String;)V

    .line 418
    const-string v26, "true"

    const/16 v27, 0x0

    sget-object v28, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_DELETED:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->setDeleted(Z)V

    .line 420
    invoke-virtual {v4, v9}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addGroup(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)V

    goto/16 :goto_0

    .line 421
    .end local v9           #group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    :cond_c
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_BIRTHDAY:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 422
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHEN:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setBirthday(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    :cond_d
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_BILLINGINFO:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 425
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setBillingInformation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    :cond_e
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_CALENDARLINK:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 427
    new-instance v3, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-direct {v3}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;-><init>()V

    .line 428
    .local v3, cl:Lcom/google/wireless/gdata2/contacts/data/CalendarLink;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_CALENDARLINK:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v3, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 429
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->setHRef(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v4, v3}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addCalendarLink(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)V

    goto/16 :goto_0

    .line 431
    .end local v3           #cl:Lcom/google/wireless/gdata2/contacts/data/CalendarLink;
    :cond_f
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_DIRECTORYSERVER:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 432
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setDirectoryServer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 433
    :cond_10
    const-string v26, "event"

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 434
    new-instance v6, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-direct {v6}, Lcom/google/wireless/gdata2/contacts/data/Event;-><init>()V

    .line 435
    .local v6, event:Lcom/google/wireless/gdata2/contacts/data/Event;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EVENT:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v6, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 436
    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleEventSubElement(Lcom/google/wireless/gdata2/contacts/data/Event;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 437
    invoke-virtual {v4, v6}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addEvent(Lcom/google/wireless/gdata2/contacts/data/Event;)V

    goto/16 :goto_0

    .line 438
    .end local v6           #event:Lcom/google/wireless/gdata2/contacts/data/Event;
    :cond_11
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_EXTERNALID:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 439
    new-instance v8, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-direct {v8}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;-><init>()V

    .line 440
    .local v8, externalId:Lcom/google/wireless/gdata2/contacts/data/ExternalId;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EXTERNALID:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v8, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 441
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->setValue(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v4, v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addExternalId(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)V

    goto/16 :goto_0

    .line 443
    .end local v8           #externalId:Lcom/google/wireless/gdata2/contacts/data/ExternalId;
    :cond_12
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GENDER:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 444
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setGender(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :cond_13
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_HOBBY:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 446
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addHobby(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 447
    :cond_14
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_INITIALS:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 448
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setInitials(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    :cond_15
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_JOT:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 450
    new-instance v11, Lcom/google/wireless/gdata2/contacts/data/Jot;

    invoke-direct {v11}, Lcom/google/wireless/gdata2/contacts/data/Jot;-><init>()V

    .line 451
    .local v11, jot:Lcom/google/wireless/gdata2/contacts/data/Jot;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_JOT:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v11, v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 452
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/google/wireless/gdata2/contacts/data/Jot;->setLabel(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v4, v11}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addJot(Lcom/google/wireless/gdata2/contacts/data/Jot;)V

    goto/16 :goto_0

    .line 454
    .end local v11           #jot:Lcom/google/wireless/gdata2/contacts/data/Jot;
    :cond_16
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 455
    new-instance v12, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-direct {v12}, Lcom/google/wireless/gdata2/contacts/data/Language;-><init>()V

    .line 456
    .local v12, language:Lcom/google/wireless/gdata2/contacts/data/Language;
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->CODE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/google/wireless/gdata2/contacts/data/Language;->setCode(Ljava/lang/String;)V

    .line 457
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/google/wireless/gdata2/contacts/data/Language;->setLabel(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v4, v12}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addLanguage(Lcom/google/wireless/gdata2/contacts/data/Language;)V

    goto/16 :goto_0

    .line 459
    .end local v12           #language:Lcom/google/wireless/gdata2/contacts/data/Language;
    :cond_17
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_MAIDENNAME:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 460
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setMaidenName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    :cond_18
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_MILEAGE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 462
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setMileage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 463
    :cond_19
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_NICKNAME:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 464
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setNickname(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 465
    :cond_1a
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_OCCUPATION:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 466
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setOccupation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 467
    :cond_1b
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_PRIORITY:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 468
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PRIORITY:Ljava/util/Hashtable;

    invoke-static/range {v26 .. v27}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->relToType(Ljava/lang/String;Ljava/util/Hashtable;)B

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setPriority(B)V

    goto/16 :goto_0

    .line 471
    :cond_1c
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_RELATION:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 472
    new-instance v22, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-direct/range {v22 .. v22}, Lcom/google/wireless/gdata2/contacts/data/Relation;-><init>()V

    .line 473
    .local v22, relation:Lcom/google/wireless/gdata2/contacts/data/Relation;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_RELATION:Ljava/util/Hashtable;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 474
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/Relation;->setText(Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addRelation(Lcom/google/wireless/gdata2/contacts/data/Relation;)V

    goto/16 :goto_0

    .line 476
    .end local v22           #relation:Lcom/google/wireless/gdata2/contacts/data/Relation;
    :cond_1d
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SENSITIVITY:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 477
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_SENSITIVITY:Ljava/util/Hashtable;

    invoke-static/range {v26 .. v27}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->relToType(Ljava/lang/String;Ljava/util/Hashtable;)B

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setSensitivity(B)V

    goto/16 :goto_0

    .line 480
    :cond_1e
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SHORTNAME:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 481
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setShortName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 482
    :cond_1f
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SUBJECT:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_20

    .line 483
    invoke-static/range {v17 .. v17}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setSubject(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 484
    :cond_20
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_UDF:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_21

    .line 485
    new-instance v24, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-direct/range {v24 .. v24}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;-><init>()V

    .line 486
    .local v24, udf:Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->KEY:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->setKey(Ljava/lang/String;)V

    .line 487
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->setValue(Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addUserDefinedField(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)V

    goto/16 :goto_0

    .line 489
    .end local v24           #udf:Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;
    :cond_21
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_WEBSITE:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_22

    .line 490
    new-instance v25, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-direct/range {v25 .. v25}, Lcom/google/wireless/gdata2/contacts/data/WebSite;-><init>()V

    .line 491
    .local v25, ws:Lcom/google/wireless/gdata2/contacts/data/WebSite;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_WEBSITE:Ljava/util/Hashtable;

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 492
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->setHRef(Ljava/lang/String;)V

    .line 493
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_LINKSTO:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->setLinksTo(Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addWebSite(Lcom/google/wireless/gdata2/contacts/data/WebSite;)V

    goto/16 :goto_0

    .line 495
    .end local v25           #ws:Lcom/google/wireless/gdata2/contacts/data/WebSite;
    :cond_22
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SIP:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 496
    new-instance v23, Lcom/google/wireless/gdata2/contacts/data/SipAddress;

    invoke-direct/range {v23 .. v23}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;-><init>()V

    .line 497
    .local v23, sipaddr:Lcom/google/wireless/gdata2/contacts/data/SipAddress;
    sget-object v26, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_SIP:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 498
    const/16 v26, 0x0

    sget-object v27, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->setAddress(Ljava/lang/String;)V

    .line 499
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addSipAddress(Lcom/google/wireless/gdata2/contacts/data/SipAddress;)V

    goto/16 :goto_0
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 5
    .parameter "rel"
    .parameter "type"
    .parameter "href"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    const-string v3, "http://schemas.google.com/contacts/2008/rel#photo"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p4

    .line 507
    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .line 508
    .local v0, contactEntry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 509
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "http://schemas.google.com/g/2005"

    sget-object v4, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, etag:Ljava/lang/String;
    invoke-virtual {v0, p3, p2, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setLinkPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .end local v0           #contactEntry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    .end local v1           #etag:Ljava/lang/String;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    return-void
.end method

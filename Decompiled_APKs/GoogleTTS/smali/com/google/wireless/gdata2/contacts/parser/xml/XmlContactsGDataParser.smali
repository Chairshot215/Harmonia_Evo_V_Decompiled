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

.class public Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;
.super Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;
.source "XmlContactsGDataParser.java"


# static fields
.field private static final GD_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/g/2005#"

.field public static final IM_PROTOCOL_AIM:Ljava/lang/String; = "http://schemas.google.com/g/2005#AIM"

.field public static final IM_PROTOCOL_GOOGLE_TALK:Ljava/lang/String; = "http://schemas.google.com/g/2005#GOOGLE_TALK"

.field public static final IM_PROTOCOL_ICQ:Ljava/lang/String; = "http://schemas.google.com/g/2005#ICQ"

.field public static final IM_PROTOCOL_JABBER:Ljava/lang/String; = "http://schemas.google.com/g/2005#JABBER"

.field public static final IM_PROTOCOL_MSN:Ljava/lang/String; = "http://schemas.google.com/g/2005#MSN"

.field public static final IM_PROTOCOL_NETMEETING:Ljava/lang/String; = "http://schemas.google.com/g/2005#netmeeting"

.field public static final IM_PROTOCOL_QQ:Ljava/lang/String; = "http://schemas.google.com/g/2005#QQ"

.field public static final IM_PROTOCOL_SKYPE:Ljava/lang/String; = "http://schemas.google.com/g/2005#SKYPE"

.field private static final IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable; = null

.field public static final IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable; = null

.field public static final IM_PROTOCOL_YAHOO:Ljava/lang/String; = "http://schemas.google.com/g/2005#YAHOO"

.field public static final LINK_REL_PHOTO:Ljava/lang/String; = "http://schemas.google.com/contacts/2008/rel#photo"

.field public static final NAMESPACE_CONTACTS:Ljava/lang/String; = "gContact"

.field public static final NAMESPACE_CONTACTS_URI:Ljava/lang/String; = "http://schemas.google.com/contact/2008"

.field private static final REL_TO_TYPE_CALENDARLINK:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_EMAIL:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_EVENT:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_EXTERNALID:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_IM:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_JOT:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_PHONE:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_POSTAL:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_PRIORITY:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_RELATION:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_SENSITIVITY:Ljava/util/Hashtable; = null

.field private static final REL_TO_TYPE_WEBSITE:Ljava/util/Hashtable; = null

.field public static final TYPESTRING_ASSISTANT:Ljava/lang/String; = "http://schemas.google.com/g/2005#assistant"

.field public static final TYPESTRING_CALENDARLINK_FREEBUSY:Ljava/lang/String; = "free-busy"

.field public static final TYPESTRING_CALENDARLINK_HOME:Ljava/lang/String; = "home"

.field public static final TYPESTRING_CALENDARLINK_WORK:Ljava/lang/String; = "work"

.field public static final TYPESTRING_CALLBACK:Ljava/lang/String; = "http://schemas.google.com/g/2005#callback"

.field public static final TYPESTRING_CAR:Ljava/lang/String; = "http://schemas.google.com/g/2005#car"

.field public static final TYPESTRING_COMPANY_MAIN:Ljava/lang/String; = "http://schemas.google.com/g/2005#company_main"

.field public static final TYPESTRING_EVENT_ANNIVERARY:Ljava/lang/String; = "anniversary"

.field public static final TYPESTRING_EVENT_OTHER:Ljava/lang/String; = "other"

.field public static final TYPESTRING_EXTERNALID_ACCOUNT:Ljava/lang/String; = "account"

.field public static final TYPESTRING_EXTERNALID_CUSTOMER:Ljava/lang/String; = "customer"

.field public static final TYPESTRING_EXTERNALID_NETWORK:Ljava/lang/String; = "network"

.field public static final TYPESTRING_EXTERNALID_ORGANIZATION:Ljava/lang/String; = "organization"

.field public static final TYPESTRING_HOME:Ljava/lang/String; = "http://schemas.google.com/g/2005#home"

.field public static final TYPESTRING_HOME_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#home_fax"

.field public static final TYPESTRING_ISDN:Ljava/lang/String; = "http://schemas.google.com/g/2005#isdn"

.field public static final TYPESTRING_JOT_HOME:Ljava/lang/String; = "home"

.field public static final TYPESTRING_JOT_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final TYPESTRING_JOT_OTHER:Ljava/lang/String; = "other"

.field public static final TYPESTRING_JOT_USER:Ljava/lang/String; = "user"

.field public static final TYPESTRING_JOT_WORK:Ljava/lang/String; = "work"

.field public static final TYPESTRING_MAIN:Ljava/lang/String; = "http://schemas.google.com/g/2005#main"

.field public static final TYPESTRING_MOBILE:Ljava/lang/String; = "http://schemas.google.com/g/2005#mobile"

.field public static final TYPESTRING_OTHER:Ljava/lang/String; = "http://schemas.google.com/g/2005#other"

.field public static final TYPESTRING_OTHER_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#other_fax"

.field public static final TYPESTRING_PAGER:Ljava/lang/String; = "http://schemas.google.com/g/2005#pager"

.field public static final TYPESTRING_PRIORITY_HIGH:Ljava/lang/String; = "high"

.field public static final TYPESTRING_PRIORITY_LOW:Ljava/lang/String; = "low"

.field public static final TYPESTRING_PRIORITY_NORMAL:Ljava/lang/String; = "normal"

.field public static final TYPESTRING_RADIO:Ljava/lang/String; = "http://schemas.google.com/g/2005#radio"

.field public static final TYPESTRING_RELATION_ASSISTANT:Ljava/lang/String; = "assistant"

.field public static final TYPESTRING_RELATION_BROTHER:Ljava/lang/String; = "brother"

.field public static final TYPESTRING_RELATION_CHILD:Ljava/lang/String; = "child"

.field public static final TYPESTRING_RELATION_DOMESTICPARTNER:Ljava/lang/String; = "domestic-partner"

.field public static final TYPESTRING_RELATION_FATHER:Ljava/lang/String; = "father"

.field public static final TYPESTRING_RELATION_FRIEND:Ljava/lang/String; = "friend"

.field public static final TYPESTRING_RELATION_MANAGER:Ljava/lang/String; = "manager"

.field public static final TYPESTRING_RELATION_MOTHER:Ljava/lang/String; = "mother"

.field public static final TYPESTRING_RELATION_PARENT:Ljava/lang/String; = "parent"

.field public static final TYPESTRING_RELATION_PARTNER:Ljava/lang/String; = "partner"

.field public static final TYPESTRING_RELATION_REFERREDBY:Ljava/lang/String; = "referred-by"

.field public static final TYPESTRING_RELATION_RELATIVE:Ljava/lang/String; = "relative"

.field public static final TYPESTRING_RELATION_SISTER:Ljava/lang/String; = "sister"

.field public static final TYPESTRING_RELATION_SPOUSE:Ljava/lang/String; = "spouse"

.field public static final TYPESTRING_SENSITIVITY_CONFIDENTIAL:Ljava/lang/String; = "confidential"

.field public static final TYPESTRING_SENSITIVITY_NORMAL:Ljava/lang/String; = "normal"

.field public static final TYPESTRING_SENSITIVITY_PERSONAL:Ljava/lang/String; = "personal"

.field public static final TYPESTRING_SENSITIVITY_PRIVATE:Ljava/lang/String; = "private"

.field public static final TYPESTRING_TELEX:Ljava/lang/String; = "http://schemas.google.com/g/2005#telex"

.field public static final TYPESTRING_TTY_TDD:Ljava/lang/String; = "http://schemas.google.com/g/2005#tty_tdd"

.field public static final TYPESTRING_WEBSITE_BLOG:Ljava/lang/String; = "blog"

.field public static final TYPESTRING_WEBSITE_FTP:Ljava/lang/String; = "ftp"

.field public static final TYPESTRING_WEBSITE_HOME:Ljava/lang/String; = "home"

.field public static final TYPESTRING_WEBSITE_HOMEPAGE:Ljava/lang/String; = "home-page"

.field public static final TYPESTRING_WEBSITE_OTHER:Ljava/lang/String; = "other"

.field public static final TYPESTRING_WEBSITE_PROFILE:Ljava/lang/String; = "profile"

.field public static final TYPESTRING_WEBSITE_WORK:Ljava/lang/String; = "work"

.field public static final TYPESTRING_WORK:Ljava/lang/String; = "http://schemas.google.com/g/2005#work"

.field public static final TYPESTRING_WORK_FAX:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_fax"

.field public static final TYPESTRING_WORK_MOBILE:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_mobile"

.field public static final TYPESTRING_WORK_PAGER:Ljava/lang/String; = "http://schemas.google.com/g/2005#work_pager"

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

    .line 150
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 151
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

    .line 155
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

    .line 157
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 158
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "http://schemas.google.com/g/2005#mobile"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "http://schemas.google.com/g/2005#pager"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "http://schemas.google.com/g/2005#home_fax"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "http://schemas.google.com/g/2005#work_fax"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "http://schemas.google.com/g/2005#assistant"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "http://schemas.google.com/g/2005#callback"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "http://schemas.google.com/g/2005#car"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "http://schemas.google.com/g/2005#company_main"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "http://schemas.google.com/g/2005#isdn"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "http://schemas.google.com/g/2005#main"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "http://schemas.google.com/g/2005#other_fax"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "http://schemas.google.com/g/2005#radio"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "http://schemas.google.com/g/2005#telex"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "http://schemas.google.com/g/2005#tty_tdd"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "http://schemas.google.com/g/2005#work_mobile"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "http://schemas.google.com/g/2005#work_pager"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

    .line 178
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

    .line 180
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 181
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

    .line 185
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;

    .line 187
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 188
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_IM:Ljava/util/Hashtable;

    .line 192
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_IM:Ljava/util/Hashtable;

    .line 194
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 195
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

    .line 198
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

    .line 200
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 201
    const-string v1, "http://schemas.google.com/g/2005#AIM"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "http://schemas.google.com/g/2005#MSN"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "http://schemas.google.com/g/2005#YAHOO"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "http://schemas.google.com/g/2005#SKYPE"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "http://schemas.google.com/g/2005#QQ"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "http://schemas.google.com/g/2005#GOOGLE_TALK"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "http://schemas.google.com/g/2005#ICQ"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "http://schemas.google.com/g/2005#JABBER"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "http://schemas.google.com/g/2005#netmeeting"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

    .line 212
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable;

    .line 214
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 215
    const-string v1, "home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v1, "free-busy"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_CALENDARLINK:Ljava/util/Hashtable;

    .line 219
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_CALENDARLINK:Ljava/util/Hashtable;

    .line 221
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 222
    const-string v1, "anniversary"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EVENT:Ljava/util/Hashtable;

    .line 225
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EVENT:Ljava/util/Hashtable;

    .line 227
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 228
    const-string v1, "account"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "customer"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "network"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, "organization"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EXTERNALID:Ljava/util/Hashtable;

    .line 233
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EXTERNALID:Ljava/util/Hashtable;

    .line 235
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 236
    const-string v1, "home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v1, "keywords"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "user"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_JOT:Ljava/util/Hashtable;

    .line 242
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_JOT:Ljava/util/Hashtable;

    .line 244
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 245
    const-string v1, "high"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v1, "normal"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "low"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PRIORITY:Ljava/util/Hashtable;

    .line 249
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PRIORITY:Ljava/util/Hashtable;

    .line 251
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 252
    const-string v1, "assistant"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v1, "brother"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "child"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "domestic-partner"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "father"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v1, "friend"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v1, "manager"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "mother"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "parent"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "partner"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "referred-by"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "relative"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "sister"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v1, "spouse"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_RELATION:Ljava/util/Hashtable;

    .line 267
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_RELATION:Ljava/util/Hashtable;

    .line 269
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 270
    const-string v1, "confidential"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v1, "normal"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v1, "personal"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "private"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_SENSITIVITY:Ljava/util/Hashtable;

    .line 279
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_SENSITIVITY:Ljava/util/Hashtable;

    .line 281
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 282
    const-string v1, "blog"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v1, "home-page"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v1, "profile"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v1, "home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "other"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v1, "ftp"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_WEBSITE:Ljava/util/Hashtable;

    .line 291
    invoke-static {v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_WEBSITE:Ljava/util/Hashtable;

    .line 293
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/XmlGDataParser;-><init>(Ljava/io/InputStream;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 318
    return-void
.end method

.method private static handleEventSubElement(Lcom/google/wireless/gdata2/contacts/data/Event;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 562
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v1

    .line 563
    if-nez v1, :cond_1

    .line 570
    return-void

    .line 564
    :cond_1
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHEN:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->STARTTIME:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Event;->setStartDate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static handleNameSubElement(Lcom/google/wireless/gdata2/contacts/data/Name;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 575
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 577
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v1

    .line 578
    if-nez v1, :cond_1

    .line 601
    return-void

    .line 579
    :cond_1
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_GIVENNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 580
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->setGivenNameYomi(Ljava/lang/String;)V

    .line 582
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->setGivenName(Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :cond_2
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_ADDITIONALNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 584
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->setAdditionalNameYomi(Ljava/lang/String;)V

    .line 586
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->setAdditionalName(Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :cond_3
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_FAMILYNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 588
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFamilyNameYomi(Ljava/lang/String;)V

    .line 590
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFamilyName(Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_4
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 592
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->setNamePrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_5
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_SUFFIX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 594
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->setNameSuffix(Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_6
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_FULLNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME_YOMI:Ljava/lang/String;

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFullNameYomi(Ljava/lang/String;)V

    .line 598
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFullName(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static handleOrganizationSubElement(Lcom/google/wireless/gdata2/contacts/data/Organization;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 537
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v1

    .line 538
    if-nez v1, :cond_1

    .line 555
    return-void

    .line 539
    :cond_1
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 540
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_2
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 542
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_3
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_DEPARTMENT:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 544
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgDepartment(Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_4
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_JOBDESC:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 546
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgJobDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_5
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORG_SYMBOL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 548
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgSymbol(Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :cond_6
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHERE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUESTRING:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setWhere(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static handleStructuredPostalAddressSubElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 608
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->nextDirectChildTag(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/String;

    move-result-object v1

    .line 609
    if-nez v1, :cond_1

    .line 628
    return-void

    .line 610
    :cond_1
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_STREET:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setStreet(Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_2
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_POBOX:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 613
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setPobox(Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :cond_3
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_NEIGHBORHOOD:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 615
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setNeighborhood(Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_4
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_CITY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 617
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setCity(Ljava/lang/String;)V

    goto :goto_0

    .line 618
    :cond_5
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_REGION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 619
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setRegion(Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_6
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_POSTCODE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 621
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setPostcode(Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_7
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_COUNTRY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 623
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setCountry(Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :cond_8
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA_FORMATTEDADDRESS:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setFormattedAddress(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-static {p0, p1, p2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 502
    const-string v0, "true"

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->PRIMARY:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->setIsPrimary(Z)V

    .line 503
    return-void
.end method

.method private parseExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 638
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 639
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setName(Ljava/lang/String;)V

    .line 640
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setValue(Ljava/lang/String;)V

    .line 641
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractFirstChildTextIgnoreRest(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setXmlBlob(Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method private static parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 507
    sget-object v0, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 512
    :cond_1
    const-string v0, "http://schemas.google.com/g/2005#other"

    .line 515
    :cond_2
    if-eqz v0, :cond_3

    .line 516
    invoke-static {v0, p2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->relToType(Ljava/lang/String;Ljava/util/Hashtable;)B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setType(B)V

    .line 518
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setLabel(Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method private static relToType(Ljava/lang/String;Ljava/util/Hashtable;)B
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 523
    if-eqz p0, :cond_1

    .line 524
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 525
    if-nez v1, :cond_0

    .line 526
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

    .line 528
    :cond_0
    move-object v0, v1

    check-cast v0, Ljava/lang/Byte;

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 530
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 5
    .parameter

    .prologue
    .line 296
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 297
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 298
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 300
    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 301
    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was already encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 307
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected createEntry()Lcom/google/wireless/gdata2/data/Entry;
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;-><init>()V

    return-object v0
.end method

.method protected createFeed()Lcom/google/wireless/gdata2/data/Feed;
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lcom/google/wireless/gdata2/contacts/data/ContactsFeed;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/contacts/data/ContactsFeed;-><init>()V

    return-object v0
.end method

.method protected handleExtraElementInEntry(Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 339
    instance-of v1, p1, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    if-nez v1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected ContactEntry!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    check-cast p1, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .line 343
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 346
    const-string v3, "http://schemas.google.com/g/2005"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 347
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EMAIL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 348
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;-><init>()V

    .line 349
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

    invoke-static {v1, v0, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 350
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EMAIL_DISPLAYNAME:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setDisplayName(Ljava/lang/String;)V

    .line 352
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setAddress(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addEmailAddress(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)V

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 355
    :cond_2
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_DELETED:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 356
    invoke-virtual {p1, v5}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setDeleted(Z)V

    goto :goto_0

    .line 357
    :cond_3
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_IM:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 358
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;-><init>()V

    .line 359
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_IM:Ljava/util/Hashtable;

    invoke-static {v1, v0, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 360
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ADDRESS:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setAddress(Ljava/lang/String;)V

    .line 362
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setLabel(Ljava/lang/String;)V

    .line 364
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PROTOCOL:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    if-nez v0, :cond_4

    .line 367
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 368
    invoke-virtual {v1, v4}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    .line 379
    :goto_1
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addImAddress(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)V

    goto :goto_0

    .line 370
    :cond_4
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    .line 371
    if-nez p0, :cond_5

    .line 372
    invoke-virtual {v1, v5}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 373
    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    goto :goto_1

    .line 375
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 376
    invoke-virtual {v1, v4}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    goto :goto_1

    .line 380
    :cond_6
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_SPA:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 381
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;-><init>()V

    .line 382
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

    invoke-static {v1, v0, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 383
    invoke-static {v1, v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleStructuredPostalAddressSubElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 384
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addPostalAddress(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)V

    goto :goto_0

    .line 385
    :cond_7
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_PHONENUMBER:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 386
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;-><init>()V

    .line 387
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

    invoke-static {v1, v0, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 388
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addPhoneNumber(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)V

    goto/16 :goto_0

    .line 390
    :cond_8
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_ORGANIZATION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 391
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/Organization;-><init>()V

    .line 392
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

    invoke-static {v1, v0, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 393
    invoke-static {v1, v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleOrganizationSubElement(Lcom/google/wireless/gdata2/contacts/data/Organization;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 394
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addOrganization(Lcom/google/wireless/gdata2/contacts/data/Organization;)V

    goto/16 :goto_0

    .line 395
    :cond_9
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_EXTENDEDPROPERTY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 396
    new-instance v0, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-direct {v0}, Lcom/google/wireless/gdata2/data/ExtendedProperty;-><init>()V

    .line 397
    invoke-direct {p0, v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V

    .line 398
    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V

    goto/16 :goto_0

    .line 399
    :cond_a
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/Name;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/Name;-><init>()V

    .line 401
    invoke-static {v1, v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleNameSubElement(Lcom/google/wireless/gdata2/contacts/data/Name;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 402
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setName(Lcom/google/wireless/gdata2/contacts/data/Name;)V

    goto/16 :goto_0

    .line 404
    :cond_b
    const-string v3, "http://schemas.google.com/contact/2008"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GMI:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 406
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;-><init>()V

    .line 407
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->setGroup(Ljava/lang/String;)V

    .line 409
    const-string v2, "true"

    sget-object v3, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_DELETED:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->setDeleted(Z)V

    .line 411
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addGroup(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)V

    goto/16 :goto_0

    .line 412
    :cond_c
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_BIRTHDAY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 413
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GD_WHEN:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setBirthday(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    :cond_d
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_BILLINGINFO:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 416
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setBillingInformation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 417
    :cond_e
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_CALENDARLINK:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 418
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;-><init>()V

    .line 419
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_CALENDARLINK:Ljava/util/Hashtable;

    invoke-static {v1, v0, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 420
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->setHRef(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addCalendarLink(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)V

    goto/16 :goto_0

    .line 422
    :cond_f
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_DIRECTORYSERVER:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 423
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setDirectoryServer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    :cond_10
    const-string v2, "event"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 425
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/Event;-><init>()V

    .line 426
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EVENT:Ljava/util/Hashtable;

    invoke-static {v1, v0, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 427
    invoke-static {v1, v0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->handleEventSubElement(Lcom/google/wireless/gdata2/contacts/data/Event;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 428
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addEvent(Lcom/google/wireless/gdata2/contacts/data/Event;)V

    goto/16 :goto_0

    .line 429
    :cond_11
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_EXTERNALID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 430
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;-><init>()V

    .line 431
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EXTERNALID:Ljava/util/Hashtable;

    invoke-static {v1, v0, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 432
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->setValue(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addExternalId(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)V

    goto/16 :goto_0

    .line 434
    :cond_12
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_GENDER:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 435
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setGender(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 436
    :cond_13
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_HOBBY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 437
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addHobby(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    :cond_14
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_INITIALS:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 439
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setInitials(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    :cond_15
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_JOT:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 441
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/Jot;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/Jot;-><init>()V

    .line 442
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_JOT:Ljava/util/Hashtable;

    invoke-static {v1, v0, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 443
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/contacts/data/Jot;->setLabel(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addJot(Lcom/google/wireless/gdata2/contacts/data/Jot;)V

    goto/16 :goto_0

    .line 445
    :cond_16
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 446
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/Language;-><init>()V

    .line 447
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->CODE:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Language;->setCode(Ljava/lang/String;)V

    .line 448
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->LABEL:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/contacts/data/Language;->setLabel(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addLanguage(Lcom/google/wireless/gdata2/contacts/data/Language;)V

    goto/16 :goto_0

    .line 450
    :cond_17
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_MAIDENNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 451
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setMaidenName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 452
    :cond_18
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_MILEAGE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 453
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setMileage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :cond_19
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_NICKNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 455
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setNickname(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 456
    :cond_1a
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_OCCUPATION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 457
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setOccupation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :cond_1b
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_PRIORITY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 459
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PRIORITY:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->relToType(Ljava/lang/String;Ljava/util/Hashtable;)B

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setPriority(B)V

    goto/16 :goto_0

    .line 462
    :cond_1c
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_RELATION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 463
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/Relation;-><init>()V

    .line 464
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_RELATION:Ljava/util/Hashtable;

    invoke-static {v1, v0, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseTypedElement(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 465
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/contacts/data/Relation;->setText(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addRelation(Lcom/google/wireless/gdata2/contacts/data/Relation;)V

    goto/16 :goto_0

    .line 467
    :cond_1d
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SENSITIVITY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 468
    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->REL:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_SENSITIVITY:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->relToType(Ljava/lang/String;Ljava/util/Hashtable;)B

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setSensitivity(B)V

    goto/16 :goto_0

    .line 471
    :cond_1e
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SHORTNAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 472
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setShortName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    :cond_1f
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_SUBJECT:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 474
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/XmlUtils;->extractChildText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setSubject(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 475
    :cond_20
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_UDF:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 476
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;-><init>()V

    .line 477
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->KEY:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->setKey(Ljava/lang/String;)V

    .line 478
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->VALUE:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->setValue(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addUserDefinedField(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)V

    goto/16 :goto_0

    .line 480
    :cond_21
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->GC_WEBSITE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/WebSite;-><init>()V

    .line 482
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_WEBSITE:Ljava/util/Hashtable;

    invoke-static {v1, v0, v2}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->parseContactsElement(Lcom/google/wireless/gdata2/contacts/data/ContactsElement;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Hashtable;)V

    .line 483
    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->HREF:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->setHRef(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p1, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addWebSite(Lcom/google/wireless/gdata2/contacts/data/WebSite;)V

    goto/16 :goto_0
.end method

.method protected handleExtraLinkInEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/data/Entry;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    const-string v0, "http://schemas.google.com/contacts/2008/rel#photo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    check-cast p4, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .line 493
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlContactsGDataParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 494
    const-string v1, "http://schemas.google.com/g/2005"

    sget-object v2, Lcom/google/wireless/gdata2/contacts/parser/xml/XmlNametable;->ETAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-virtual {p4, p3, p2, v0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setLinkPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_0
    return-void
.end method

.class public Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;
.super Lcom/google/wireless/gdata/parser/xml/XmlGDataParser;
.source "XmlContactsGDataParser.java"


# static fields
.field private static final IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

.field public static final IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_IM:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

.field private static final REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_IM:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

.field public static final TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 81
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 82
    .local v0, map:Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "http://schemas.google.com/g/2005#primary"

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sput-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_EMAIL:Ljava/util/Hashtable;

    .line 88
    invoke-static {v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_EMAIL:Ljava/util/Hashtable;

    .line 90
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 91
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "http://schemas.google.com/g/2005#mobile"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "http://schemas.google.com/g/2005#pager"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "http://schemas.google.com/g/2005#home_fax"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "http://schemas.google.com/g/2005#work_fax"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sput-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_PHONE:Ljava/util/Hashtable;

    .line 99
    invoke-static {v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_PHONE:Ljava/util/Hashtable;

    .line 101
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 102
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sput-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_POSTAL:Ljava/util/Hashtable;

    .line 106
    invoke-static {v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_POSTAL:Ljava/util/Hashtable;

    .line 108
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 109
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#home"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sput-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_IM:Ljava/util/Hashtable;

    .line 113
    invoke-static {v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_IM:Ljava/util/Hashtable;

    .line 115
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 116
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#work"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "http://schemas.google.com/g/2005#other"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sput-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->REL_TO_TYPE_ORGANIZATION:Ljava/util/Hashtable;

    .line 119
    invoke-static {v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->TYPE_TO_REL_ORGANIZATION:Ljava/util/Hashtable;

    .line 121
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #map:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 122
    .restart local v0       #map:Ljava/util/Hashtable;
    const-string v1, "http://schemas.google.com/g/2005#AIM"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "http://schemas.google.com/g/2005#MSN"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "http://schemas.google.com/g/2005#YAHOO"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "http://schemas.google.com/g/2005#SKYPE"

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "http://schemas.google.com/g/2005#QQ"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "http://schemas.google.com/g/2005#GOOGLE_TALK"

    new-instance v2, Ljava/lang/Byte;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "http://schemas.google.com/g/2005#ICQ"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "http://schemas.google.com/g/2005#JABBER"

    new-instance v2, Ljava/lang/Byte;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sput-object v0, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_STRING_TO_TYPE_MAP:Ljava/util/Hashtable;

    .line 131
    invoke-static {v0}, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    sput-object v1, Lcom/google/wireless/gdata/contacts/parser/xml/XmlContactsGDataParser;->IM_PROTOCOL_TYPE_TO_STRING_MAP:Ljava/util/Hashtable;

    .line 132
    return-void
.end method

.method private static swapMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 7
    .parameter "originalMap"

    .prologue
    .line 135
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 136
    .local v2, newMap:Ljava/util/Hashtable;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 137
    .local v0, enumeration:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, key:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 140
    .local v3, value:Ljava/lang/Object;
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
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

    .line 144
    :cond_0
    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    .end local v1           #key:Ljava/lang/Object;
    .end local v3           #value:Ljava/lang/Object;
    :cond_1
    return-object v2
.end method

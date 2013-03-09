.class public Lcom/htc/sie/tool/RunXLoadAPN;
.super Ljava/lang/Object;
.source "RunXLoadAPN.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private PREFER_APN_URI:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mNumericSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/htc/sie/tool/RunXLoadAPN;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sie/tool/RunXLoadAPN;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sie/tool/RunXLoadAPN;->PREFER_APN_URI:Landroid/net/Uri;

    .line 29
    iput-object p1, p0, Lcom/htc/sie/tool/RunXLoadAPN;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/sie/tool/RunXLoadAPN;->mNumericSet:Ljava/util/HashSet;

    .line 31
    return-void
.end method

.method private getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 21
    .parameter "parser"

    .prologue
    .line 90
    const-string v18, "apn"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 91
    const/4 v5, 0x0

    .line 165
    :goto_0
    return-object v5

    .line 94
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v5, map:Landroid/content/ContentValues;
    const/16 v18, 0x0

    const-string v19, "mcc"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, mcc:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "mnc"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, mnc:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, numeric:Ljava/lang/String;
    const-string v18, "numeric"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v18, "mcc"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v18, "mnc"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v18, "name"

    const/16 v19, 0x0

    const-string v20, "carrier"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v18, "apn"

    const/16 v19, 0x0

    const-string v20, "apn"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v18, "user"

    const/16 v19, 0x0

    const-string v20, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v18, "server"

    const/16 v19, 0x0

    const-string v20, "server"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v18, "password"

    const/16 v19, 0x0

    const-string v20, "password"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/16 v18, 0x0

    const-string v19, "proxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 111
    .local v15, proxy:Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 112
    const-string v18, "proxy"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    const/16 v18, 0x0

    const-string v19, "port"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 115
    .local v13, port:Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 116
    const-string v18, "port"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_2
    const/16 v18, 0x0

    const-string v19, "mmsproxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, mmsproxy:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 120
    const-string v18, "mmsproxy"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_3
    const/16 v18, 0x0

    const-string v19, "mmsport"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 123
    .local v7, mmsport:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 124
    const-string v18, "mmsport"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_4
    const/16 v18, 0x0

    const-string v19, "mmsprotocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, mmsprotocol:Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 128
    const-string v18, "mmsprotocol"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_5
    const/16 v18, 0x0

    const-string v19, "state"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 133
    .local v16, state:Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 134
    const-string v18, "state"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_6
    const-string v18, "mmsc"

    const/16 v19, 0x0

    const-string v20, "mmsc"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/16 v18, 0x0

    const-string v19, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 138
    .local v17, type:Ljava/lang/String;
    if-eqz v17, :cond_7

    .line 139
    const-string v18, "type"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_7
    const/16 v18, 0x0

    const-string v19, "authtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, auth:Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 144
    const-string v18, "authtype"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    :cond_8
    const/16 v18, 0x0

    const-string v19, "operator"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 149
    .local v12, op:Ljava/lang/String;
    if-eqz v12, :cond_9

    .line 150
    const-string v18, "operator"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_9
    const/16 v18, 0x0

    const-string v19, "databearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, databearer:Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 156
    const-string v18, "databearer"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_a
    const/16 v18, 0x0

    const-string v19, "pppnumber"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 159
    .local v14, pppnumber:Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 160
    const-string v18, "pppnumber"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_b
    const-string v18, "insert_by"

    const-string v19, "internal"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private loadApns(Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "cr"
    .parameter "parser"

    .prologue
    .line 44
    if-eqz p2, :cond_1

    .line 46
    const/4 v0, 0x0

    .line 49
    .local v0, bChanged:Z
    :goto_0
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 50
    invoke-direct {p0, p2}, Lcom/htc/sie/tool/RunXLoadAPN;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v3

    .line 51
    .local v3, row:Landroid/content/ContentValues;
    if-eqz v3, :cond_2

    .line 52
    const-string v4, "numeric"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, numeric:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/sie/tool/RunXLoadAPN;->mNumericSet:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 56
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "numeric = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    iget-object v4, p0, Lcom/htc/sie/tool/RunXLoadAPN;->mNumericSet:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    const/4 v0, 0x1

    .line 60
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 76
    .end local v2           #numeric:Ljava/lang/String;
    .end local v3           #row:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v4, Lcom/htc/sie/tool/RunXLoadAPN;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Got execption while load apns xml."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v0           #bChanged:Z
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 69
    .restart local v0       #bChanged:Z
    .restart local v3       #row:Landroid/content/ContentValues;
    :cond_2
    if-eqz v0, :cond_1

    .line 70
    :try_start_1
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 78
    .end local v3           #row:Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    .line 79
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/htc/sie/tool/RunXLoadAPN;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Got execption while load apns xml."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public LoadApnXml(Ljava/lang/String;)V
    .locals 5
    .parameter "apnxmlpath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v4, p0, Lcom/htc/sie/tool/RunXLoadAPN;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 34
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 35
    .local v1, confparser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, confFile:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 37
    .local v3, inputStream:Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 38
    const-string v4, "UTF-8"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 39
    const-string v4, "apns"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 40
    iget-object v4, p0, Lcom/htc/sie/tool/RunXLoadAPN;->mNumericSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 41
    invoke-direct {p0, v2, v1}, Lcom/htc/sie/tool/RunXLoadAPN;->loadApns(Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 42
    return-void
.end method

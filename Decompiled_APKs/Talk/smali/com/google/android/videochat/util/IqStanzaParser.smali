.class public Lcom/google/android/videochat/util/IqStanzaParser;
.super Ljava/lang/Object;
.source "IqStanzaParser.java"


# instance fields
.field public mAccountId:Ljava/lang/String;

.field public mFrom:Ljava/lang/String;

.field public mId:Ljava/lang/String;

.field private mRawStanza:Ljava/lang/String;

.field public mTo:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "iqStanzaString"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "0"

    iput-object v0, p0, Lcom/google/android/videochat/util/IqStanzaParser;->mId:Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/videochat/util/IqStanzaParser;->parseIqStanzaString(Ljava/lang/String;)Z

    .line 44
    return-void
.end method

.method public static makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 5
    .parameter "stanza"

    .prologue
    .line 117
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 118
    .local v0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 119
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 121
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "IqStanzaParser"

    const-string v4, "Couldn\'t parse stanza"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseIqStanzaString(Ljava/lang/String;)Z
    .locals 19
    .parameter "iqStanzaString"

    .prologue
    .line 52
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/videochat/util/IqStanzaParser;->mRawStanza:Ljava/lang/String;

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/videochat/util/IqStanzaParser;->mRawStanza:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/videochat/util/IqStanzaParser;->makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 55
    .local v12, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 59
    .local v4, eventType:I
    :goto_0
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v4, v0, :cond_7

    .line 60
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v4, v0, :cond_6

    const-string v16, "iq"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 62
    const/4 v5, 0x0

    .line 63
    .local v5, fromFound:Z
    const/4 v13, 0x0

    .line 64
    .local v13, toFound:Z
    const/4 v2, 0x0

    .line 65
    .local v2, accountIdFound:Z
    const/4 v7, 0x0

    .line 66
    .local v7, idFound:Z
    const/4 v14, 0x0

    .line 68
    .local v14, typeFound:Z
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 69
    .local v3, attributeCount:I
    const/4 v6, 0x0

    .line 72
    .local v6, i:I
    :goto_1
    if-ge v6, v3, :cond_7

    if-eqz v5, :cond_0

    if-eqz v13, :cond_0

    if-eqz v2, :cond_0

    if-nez v7, :cond_7

    .line 73
    :cond_0
    invoke-interface {v12, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 75
    .local v9, name:Ljava/lang/String;
    if-nez v5, :cond_2

    const-string v16, "from"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 76
    invoke-interface {v12, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/videochat/util/IqStanzaParser;->mFrom:Ljava/lang/String;

    .line 77
    const/4 v7, 0x1

    .line 91
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 92
    goto :goto_1

    .line 78
    :cond_2
    if-nez v13, :cond_3

    const-string v16, "to"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 79
    invoke-interface {v12, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/videochat/util/IqStanzaParser;->mTo:Ljava/lang/String;

    .line 80
    const/4 v7, 0x1

    goto :goto_2

    .line 81
    :cond_3
    if-nez v2, :cond_4

    const-string v16, "account_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 82
    invoke-interface {v12, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/videochat/util/IqStanzaParser;->mAccountId:Ljava/lang/String;

    .line 83
    const/4 v7, 0x1

    goto :goto_2

    .line 84
    :cond_4
    if-nez v7, :cond_5

    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 85
    invoke-interface {v12, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/videochat/util/IqStanzaParser;->mId:Ljava/lang/String;

    .line 86
    const/4 v7, 0x1

    goto :goto_2

    .line 87
    :cond_5
    if-nez v14, :cond_1

    const-string v16, "type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 88
    invoke-interface {v12, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/videochat/util/IqStanzaParser;->mType:Ljava/lang/String;

    .line 89
    const/4 v7, 0x1

    goto :goto_2

    .line 95
    .end local v2           #accountIdFound:Z
    .end local v3           #attributeCount:I
    .end local v5           #fromFound:Z
    .end local v6           #i:I
    .end local v7           #idFound:Z
    .end local v9           #name:Ljava/lang/String;
    .end local v13           #toFound:Z
    .end local v14           #typeFound:Z
    :cond_6
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v4

    goto/16 :goto_0

    .line 98
    .end local v4           #eventType:I
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v15

    .line 99
    .local v15, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v16, "IqStanzaParser"

    const-string v17, "Couldn\'t parse stanza"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    const/16 v16, 0x0

    .line 112
    .end local v15           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return v16

    .line 101
    :catch_1
    move-exception v11

    .line 102
    .local v11, npe:Ljava/lang/NullPointerException;
    const-string v16, "IqStanzaParser"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Couldn\'t parse the stanza "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    const/16 v16, 0x0

    goto :goto_3

    .line 104
    .end local v11           #npe:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v10

    .line 105
    .local v10, nfe:Ljava/lang/NumberFormatException;
    const-string v16, "IqStanzaParser"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Couldn\'t parse the sessionId "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    const/16 v16, 0x0

    goto :goto_3

    .line 107
    .end local v10           #nfe:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v8

    .line 108
    .local v8, ioe:Ljava/io/IOException;
    const-string v16, "IqStanzaParser"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Couldn\'t parse the stanza "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const/16 v16, 0x0

    goto :goto_3

    .line 112
    .end local v8           #ioe:Ljava/io/IOException;
    .restart local v4       #eventType:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_7
    const/16 v16, 0x1

    goto :goto_3
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/videochat/util/IqStanzaParser;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/videochat/util/IqStanzaParser;->mType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

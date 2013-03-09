.class public Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;
.super Ljava/lang/Object;
.source "JingleAndGingleStanzaParser.java"


# instance fields
.field public mId:Ljava/lang/String;

.field private mIsJingle:Z

.field public mRawStanza:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionStanzaString"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->parseStanzaString(Ljava/lang/String;)Z

    .line 44
    return-void
.end method

.method public static makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 5
    .parameter "stanza"

    .prologue
    .line 153
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 154
    .local v0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 155
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 157
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-object v1

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "vclib:JingleAndGingleStanzaParser"

    const-string v4, "Couldn\'t parse stanza"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseJingleAttributes(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .parameter "parser"

    .prologue
    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, idFound:Z
    const/4 v4, 0x0

    .line 118
    .local v4, typeFound:Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 119
    .local v0, attributeCount:I
    const/4 v1, 0x0

    .line 121
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    if-eqz v2, :cond_0

    if-nez v4, :cond_3

    .line 122
    :cond_0
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, name:Ljava/lang/String;
    if-nez v2, :cond_2

    const-string v5, "sid"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mId:Ljava/lang/String;

    .line 126
    const/4 v2, 0x1

    .line 131
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 132
    goto :goto_0

    .line 127
    :cond_2
    if-nez v4, :cond_1

    const-string v5, "action"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mType:Ljava/lang/String;

    .line 129
    const/4 v4, 0x1

    goto :goto_1

    .line 133
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private parseSessionAttributes(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .parameter "parser"

    .prologue
    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, idFound:Z
    const/4 v4, 0x0

    .line 99
    .local v4, typeFound:Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 100
    .local v0, attributeCount:I
    const/4 v1, 0x0

    .line 102
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    if-eqz v2, :cond_0

    if-nez v4, :cond_3

    .line 103
    :cond_0
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, name:Ljava/lang/String;
    if-nez v2, :cond_2

    const-string v5, "id"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mId:Ljava/lang/String;

    .line 106
    const/4 v2, 0x1

    .line 111
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 112
    goto :goto_0

    .line 107
    :cond_2
    if-nez v4, :cond_1

    const-string v5, "type"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mType:Ljava/lang/String;

    .line 109
    const/4 v4, 0x1

    goto :goto_1

    .line 113
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private parseStanzaString(Ljava/lang/String;)Z
    .locals 12
    .parameter "stanza"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 56
    :try_start_0
    iput-object p1, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mRawStanza:Ljava/lang/String;

    .line 57
    iget-object v10, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mRawStanza:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 58
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 62
    .local v2, eventType:I
    :goto_0
    if-eq v2, v8, :cond_0

    .line 63
    const/4 v10, 0x2

    if-ne v2, v10, :cond_2

    .line 64
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, elemName:Ljava/lang/String;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, elemNs:Ljava/lang/String;
    const-string v10, "session"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "http://www.google.com/session"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 68
    invoke-direct {p0, v6}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->parseSessionAttributes(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 69
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mIsJingle:Z

    .line 93
    .end local v0           #elemName:Ljava/lang/String;
    .end local v1           #elemNs:Ljava/lang/String;
    .end local v2           #eventType:I
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_1
    return v8

    .line 71
    .restart local v0       #elemName:Ljava/lang/String;
    .restart local v1       #elemNs:Ljava/lang/String;
    .restart local v2       #eventType:I
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    const-string v10, "jingle"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "urn:xmpp:jingle:1"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 72
    invoke-direct {p0, v6}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->parseJingleAttributes(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 73
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mIsJingle:Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 79
    .end local v0           #elemName:Ljava/lang/String;
    .end local v1           #elemNs:Ljava/lang/String;
    .end local v2           #eventType:I
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v7

    .line 80
    .local v7, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "vclib:JingleAndGingleStanzaParser"

    const-string v10, "Couldn\'t parse stanza"

    invoke-static {v8, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 81
    goto :goto_1

    .line 77
    .end local v7           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #eventType:I
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    goto :goto_0

    .line 82
    .end local v2           #eventType:I
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v5

    .line 83
    .local v5, npe:Ljava/lang/NullPointerException;
    const-string v8, "vclib:JingleAndGingleStanzaParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t parse the stanza "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 84
    goto :goto_1

    .line 85
    .end local v5           #npe:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    .line 86
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const-string v8, "vclib:JingleAndGingleStanzaParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t parse the sessionId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 87
    goto :goto_1

    .line 88
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v3

    .line 89
    .local v3, ioe:Ljava/io/IOException;
    const-string v8, "vclib:JingleAndGingleStanzaParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t parse the stanza "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 90
    goto :goto_1
.end method


# virtual methods
.method public isJingle()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mIsJingle:Z

    return v0
.end method

.method public isTypeInitiate()Z
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->isJingle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "session-initiate"

    iget-object v1, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const-string v0, "initiate"

    iget-object v1, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isTypeTerminate()Z
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->isJingle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "session-terminate"

    iget-object v1, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    const-string v0, "terminate"

    iget-object v1, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isValidJingleOrGingleStanza()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/videochat/util/JingleAndGingleStanzaParser;->mType:Ljava/lang/String;

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

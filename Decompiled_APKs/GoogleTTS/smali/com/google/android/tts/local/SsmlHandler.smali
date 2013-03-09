.class Lcom/google/android/tts/local/SsmlHandler;
.super Ljava/lang/Object;
.source "SsmlHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# static fields
.field static final DEFAULT_BREAK_MS:J = 0xc8L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mCurrentBuilder:Ljava/lang/StringBuilder;

.field private final mUtteranceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/tts/local/Utterance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/tts/local/Utterance;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, utteranceList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/tts/local/Utterance;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/tts/local/SsmlHandler;->mCurrentBuilder:Ljava/lang/StringBuilder;

    .line 40
    iput-object p1, p0, Lcom/google/android/tts/local/SsmlHandler;->mUtteranceList:Ljava/util/List;

    .line 41
    return-void
.end method

.method private maybeAppendCurrentString()V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lcom/google/android/tts/local/SsmlHandler;->mCurrentBuilder:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/google/android/tts/local/SsmlHandler;->mCurrentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, current:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/tts/local/SsmlHandler;->mUtteranceList:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/tts/local/Utterance;->createSpeech(Ljava/lang/String;)Lcom/google/android/tts/local/Utterance;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/tts/local/SsmlHandler;->mCurrentBuilder:Ljava/lang/StringBuilder;

    .line 157
    .end local v0           #current:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private parseTimeAttribute(Ljava/lang/String;)J
    .locals 9
    .parameter "time"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, numberPart:Ljava/lang/String;
    const/4 v0, 0x0

    .line 123
    .local v0, isSeconds:Z
    const-string v7, "ms"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    .line 124
    const-string v7, "ms"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 136
    :goto_0
    const-wide/16 v3, 0x0

    .line 138
    .local v3, silence:J
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 143
    if-eqz v0, :cond_0

    .line 144
    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 147
    .end local v3           #silence:J
    :cond_0
    :goto_1
    return-wide v3

    .line 125
    :cond_1
    const-string v7, "s"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_2

    .line 126
    const-string v7, "s"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move-wide v3, v5

    .line 130
    goto :goto_1

    .line 139
    .restart local v3       #silence:J
    :catch_0
    move-exception v1

    .local v1, nfe:Ljava/lang/NumberFormatException;
    move-wide v3, v5

    .line 140
    goto :goto_1
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/tts/local/SsmlHandler;->mCurrentBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/local/SsmlHandler;->mCurrentBuilder:Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/tts/local/SsmlHandler;->mCurrentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/google/android/tts/local/SsmlHandler;->mCurrentBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/google/android/tts/local/SsmlHandler;->mCurrentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 53
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/tts/local/SsmlHandler;->maybeAppendCurrentString()V

    .line 58
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 61
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 64
    return-void
.end method

.method handleBreakElement(Ljava/lang/String;)V
    .locals 4
    .parameter "time"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/tts/local/SsmlHandler;->maybeAppendCurrentString()V

    .line 99
    const-wide/16 v0, -0x1

    .line 102
    .local v0, breakDuration:J
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/tts/local/SsmlHandler;->parseTimeAttribute(Ljava/lang/String;)J

    move-result-wide v0

    .line 106
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 107
    const-wide/16 v0, 0xc8

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/google/android/tts/local/SsmlHandler;->mUtteranceList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/tts/local/Utterance;->createSilence(J)Lcom/google/android/tts/local/Utterance;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 67
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "target"
    .parameter "data"

    .prologue
    .line 70
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .parameter "locator"

    .prologue
    .line 73
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 76
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"

    .prologue
    .line 84
    const-string v0, "break"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, ""

    const-string v1, "time"

    invoke-interface {p4, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/tts/local/SsmlHandler;->handleBreakElement(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 90
    return-void
.end method

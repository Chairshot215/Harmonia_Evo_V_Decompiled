.class public Lcom/google/android/tts/local/TextPreprocessor;
.super Ljava/lang/Object;
.source "TextPreprocessor.java"


# instance fields
.field private final mEngGbrSentenceIterator:Ljava/text/BreakIterator;

.field private final mEngUsaSentenceIterator:Ljava/text/BreakIterator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/local/TextPreprocessor;->mEngUsaSentenceIterator:Ljava/text/BreakIterator;

    .line 36
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/tts/local/TextPreprocessor;->mEngGbrSentenceIterator:Ljava/text/BreakIterator;

    .line 37
    return-void
.end method

.method private addSentenceTo(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "sentence"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/tts/local/Utterance;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, returnVal:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/tts/local/Utterance;>;"
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_0

    .line 76
    :cond_0
    sget-object v2, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v2, p2}, Lcom/google/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, stripped:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-static {v1}, Lcom/google/android/tts/local/AsciiLimiter;->toAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, asciiOnly:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/tts/local/Utterance;->createSpeech(Ljava/lang/String;)Lcom/google/android/tts/local/Utterance;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getIteratorFor(Ljava/lang/String;Ljava/lang/String;)Ljava/text/BreakIterator;
    .locals 2
    .parameter "language"
    .parameter "country"

    .prologue
    .line 89
    const-string v1, "eng"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    const/4 v0, 0x0

    .line 98
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/google/android/tts/local/TextPreprocessor;->mEngUsaSentenceIterator:Ljava/text/BreakIterator;

    .line 94
    .local v0, it:Ljava/text/BreakIterator;
    const-string v1, "GBR"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/tts/local/TextPreprocessor;->mEngGbrSentenceIterator:Ljava/text/BreakIterator;

    if-eqz v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/tts/local/TextPreprocessor;->mEngGbrSentenceIterator:Ljava/text/BreakIterator;

    goto :goto_0
.end method


# virtual methods
.method isSsmlLike(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 106
    if-eqz p1, :cond_0

    const-string v0, "<speak"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method maybeParseSsml(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "text"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/tts/local/Utterance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v2, returnVal:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/tts/local/Utterance;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/tts/local/TextPreprocessor;->isSsmlLike(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    invoke-static {p1}, Lcom/google/android/tts/local/Utterance;->createSpeech(Ljava/lang/String;)Lcom/google/android/tts/local/Utterance;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :goto_0
    return-object v2

    .line 121
    :cond_0
    new-instance v1, Lcom/google/android/tts/local/SsmlHandler;

    invoke-direct {v1, v2}, Lcom/google/android/tts/local/SsmlHandler;-><init>(Ljava/util/List;)V

    .line 124
    .local v1, handler:Lcom/google/android/tts/local/SsmlHandler;
    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Lorg/xml/sax/SAXException;
    const-string v3, "TextPreprocessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing XML : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "inputText"
    .parameter "language"
    .parameter "country"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/tts/local/Utterance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/tts/local/TextPreprocessor;->maybeParseSsml(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 42
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/tts/local/Utterance;>;"
    invoke-direct {p0, p2, p3}, Lcom/google/android/tts/local/TextPreprocessor;->getIteratorFor(Ljava/lang/String;Ljava/lang/String;)Ljava/text/BreakIterator;

    move-result-object v2

    .line 43
    .local v2, it:Ljava/text/BreakIterator;
    if-nez v2, :cond_0

    .line 44
    const-string v7, "TextPreprocessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find break iterator, lang = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", country ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/tts/local/Utterance;>;"
    :goto_0
    return-object v3

    .line 49
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/tts/local/Utterance;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .local v4, returnVal:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/tts/local/Utterance;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/tts/local/Utterance;

    .line 52
    .local v6, u:Lcom/google/android/tts/local/Utterance;
    iget v7, v6, Lcom/google/android/tts/local/Utterance;->mType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 53
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_2
    iget v7, v6, Lcom/google/android/tts/local/Utterance;->mType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 55
    iget-object v7, v6, Lcom/google/android/tts/local/Utterance;->mText:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Ljava/text/BreakIterator;->first()I

    move-result v5

    .line 58
    .local v5, start:I
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v0

    .local v0, end:I
    :goto_2
    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    .line 60
    iget-object v7, v6, Lcom/google/android/tts/local/Utterance;->mText:Ljava/lang/String;

    invoke-virtual {v7, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lcom/google/android/tts/local/TextPreprocessor;->addSentenceTo(Ljava/util/List;Ljava/lang/String;)V

    .line 58
    move v5, v0

    .line 59
    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v0

    goto :goto_2

    .end local v0           #end:I
    .end local v5           #start:I
    .end local v6           #u:Lcom/google/android/tts/local/Utterance;
    :cond_3
    move-object v3, v4

    .line 65
    goto :goto_0
.end method

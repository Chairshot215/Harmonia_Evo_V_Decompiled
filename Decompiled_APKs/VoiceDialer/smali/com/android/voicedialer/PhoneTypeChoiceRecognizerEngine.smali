.class public Lcom/android/voicedialer/PhoneTypeChoiceRecognizerEngine;
.super Lcom/android/voicedialer/RecognizerEngine;
.source "PhoneTypeChoiceRecognizerEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/voicedialer/RecognizerEngine;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method protected onRecognitionSuccess(Lcom/android/voicedialer/RecognizerClient;)V
    .locals 11
    .parameter "recognizerClient"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 50
    const-string v7, "RecognizerEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onRecognitionSuccess "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v9}, Landroid/speech/srec/Recognizer;->getResultCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v7, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v7}, Lcom/android/voicedialer/RecognizerLogger;->logNbestHeader()V

    .line 54
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v2, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/4 v5, 0x0

    .line 57
    .local v5, result:I
    :goto_0
    iget-object v7, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v7}, Landroid/speech/srec/Recognizer;->getResultCount()I

    move-result v7

    if-ge v5, v7, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_1

    .line 60
    iget-object v7, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    const-string v8, "conf"

    invoke-virtual {v7, v5, v8}, Landroid/speech/srec/Recognizer;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, conf:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    const-string v8, "literal"

    invoke-virtual {v7, v5, v8}, Landroid/speech/srec/Recognizer;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, literal:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    const-string v8, "meaning"

    invoke-virtual {v7, v5, v8}, Landroid/speech/srec/Recognizer;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, semantic:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "conf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lit="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sem="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, msg:Ljava/lang/String;
    const-string v7, "RecognizerEngine"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 68
    .end local v0           #conf:Ljava/lang/String;
    .end local v3           #literal:Ljava/lang/String;
    .end local v4           #msg:Ljava/lang/String;
    .end local v6           #semantic:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v7}, Landroid/speech/srec/Recognizer;->getResultCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 70
    iget-object v7, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    const-string v8, "conf"

    invoke-virtual {v7, v10, v8}, Landroid/speech/srec/Recognizer;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0       #conf:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    const-string v8, "literal"

    invoke-virtual {v7, v10, v8}, Landroid/speech/srec/Recognizer;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .restart local v3       #literal:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    const-string v8, "meaning"

    invoke-virtual {v7, v10, v8}, Landroid/speech/srec/Recognizer;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    .restart local v6       #semantic:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "conf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lit="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sem="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .restart local v4       #msg:Ljava/lang/String;
    const-string v7, "RecognizerEngine"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v7, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v7, v4}, Lcom/android/voicedialer/RecognizerLogger;->logLine(Ljava/lang/String;)V

    .line 77
    :cond_2
    const-string v7, "H"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "M"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "W"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "O"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "R"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "X"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 83
    :cond_3
    const-string v7, "RecognizerEngine"

    const-string v8, " got valid response"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.voicedialer.ACTION_RECOGNIZER_RESULT"

    const/4 v8, 0x0

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 85
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "sentence"

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v7, "semantic"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-static {v2, v1}, Lcom/android/voicedialer/PhoneTypeChoiceRecognizerEngine;->addIntent(Ljava/util/ArrayList;Landroid/content/Intent;)V

    .line 94
    .end local v0           #conf:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #literal:Ljava/lang/String;
    .end local v4           #msg:Ljava/lang/String;
    .end local v6           #semantic:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v7, v2}, Lcom/android/voicedialer/RecognizerLogger;->logIntents(Ljava/util/ArrayList;)V

    .line 97
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 99
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_7

    .line 100
    const-string v7, "RecognizerEngine"

    const-string v8, " no intents"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v7, "No Intents generated"

    invoke-interface {p1, v7}, Lcom/android/voicedialer/RecognizerClient;->onRecognitionFailure(Ljava/lang/String;)V

    .line 108
    :goto_1
    return-void

    .line 104
    :cond_7
    const-string v7, "RecognizerEngine"

    const-string v8, " success"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/content/Intent;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/Intent;

    invoke-interface {p1, v7}, Lcom/android/voicedialer/RecognizerClient;->onRecognitionSuccess([Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected setupGrammar()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    if-nez v0, :cond_0

    .line 36
    const-string v0, "RecognizerEngine"

    const-string v1, "start new Grammar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Landroid/speech/srec/Recognizer$Grammar;

    iget-object v1, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/voicedialer/RecognizerEngine;->SREC_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/grammars/phone_type_choice.g2g"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/speech/srec/Recognizer$Grammar;-><init>(Landroid/speech/srec/Recognizer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 38
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v0}, Landroid/speech/srec/Recognizer$Grammar;->setupRecognizer()V

    .line 40
    :cond_0
    return-void
.end method

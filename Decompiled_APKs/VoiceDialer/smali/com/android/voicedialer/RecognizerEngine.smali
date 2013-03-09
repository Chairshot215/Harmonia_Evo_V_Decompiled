.class public abstract Lcom/android/voicedialer/RecognizerEngine;
.super Ljava/lang/Object;
.source "RecognizerEngine.java"


# static fields
.field protected static final ACTION_RECOGNIZER_RESULT:Ljava/lang/String; = "com.android.voicedialer.ACTION_RECOGNIZER_RESULT"

.field protected static final OPEN_ENTRIES:Ljava/lang/String; = "openentries.txt"

.field protected static final RESULT_LIMIT:I = 0x5

.field public static final SEMANTIC_EXTRA:Ljava/lang/String; = "semantic"

.field public static final SENTENCE_EXTRA:Ljava/lang/String; = "sentence"

.field protected static final TAG:Ljava/lang/String; = "RecognizerEngine"


# instance fields
.field protected final SREC_DIR:Ljava/lang/String;

.field protected mActivity:Landroid/app/Activity;

.field protected mLogger:Lcom/android/voicedialer/RecognizerLogger;

.field protected mSampleRate:I

.field protected mSrec:Landroid/speech/srec/Recognizer;

.field protected mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->getConfigDir(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->SREC_DIR:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSampleRate:I

    .line 86
    return-void
.end method

.method protected static addIntent(Ljava/util/ArrayList;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 241
    .local v1, in:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    .end local v1           #in:Landroid/content/Intent;
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected abstract onRecognitionSuccess(Lcom/android/voicedialer/RecognizerClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public recognize(Lcom/android/voicedialer/RecognizerClient;Landroid/app/Activity;Ljava/io/File;I)V
    .locals 13
    .parameter "recognizerClient"
    .parameter "activity"
    .parameter "micFile"
    .parameter "sampleRate"

    .prologue
    .line 115
    const/4 v5, 0x0

    .line 116
    .local v5, mic:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 118
    .local v8, recognizerStarted:Z
    :try_start_0
    iput-object p2, p0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    .line 120
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    .line 121
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/voicedialer/RecognizerLogger;->isEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 122
    new-instance v9, Lcom/android/voicedialer/RecognizerLogger;

    iget-object v10, p0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v10}, Lcom/android/voicedialer/RecognizerLogger;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    .line 125
    :cond_0
    iget v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSampleRate:I

    move/from16 v0, p4

    if-eq v9, v0, :cond_2

    .line 128
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    if-eqz v9, :cond_1

    .line 129
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v9}, Landroid/speech/srec/Recognizer$Grammar;->destroy()V

    .line 131
    :cond_1
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 132
    move/from16 v0, p4

    iput v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSampleRate:I

    .line 136
    :cond_2
    const-string v9, "RecognizerEngine"

    const-string v10, "start new Recognizer"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    if-nez v9, :cond_4

    .line 138
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/voicedialer/RecognizerEngine;->SREC_DIR:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/baseline11k.par"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, parFilePath:Ljava/lang/String;
    const/16 v9, 0x1f40

    move/from16 v0, p4

    if-ne v0, v9, :cond_3

    .line 140
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/voicedialer/RecognizerEngine;->SREC_DIR:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/baseline8k.par"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 142
    :cond_3
    new-instance v9, Landroid/speech/srec/Recognizer;

    invoke-direct {v9, v7}, Landroid/speech/srec/Recognizer;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    .line 146
    .end local v7           #parFilePath:Ljava/lang/String;
    :cond_4
    if-eqz p3, :cond_9

    .line 147
    const-string v9, "RecognizerEngine"

    const-string v10, "using mic file"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 149
    .end local v5           #mic:Ljava/io/InputStream;
    .local v6, mic:Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Landroid/speech/srec/WaveHeader;

    invoke-direct {v4}, Landroid/speech/srec/WaveHeader;-><init>()V

    .line 150
    .local v4, hdr:Landroid/speech/srec/WaveHeader;
    invoke-virtual {v4, v6}, Landroid/speech/srec/WaveHeader;->read(Ljava/io/InputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    move-object v5, v6

    .line 158
    .end local v4           #hdr:Landroid/speech/srec/WaveHeader;
    .end local v6           #mic:Ljava/io/InputStream;
    .restart local v5       #mic:Ljava/io/InputStream;
    :goto_0
    :try_start_2
    invoke-interface {p1, v5}, Lcom/android/voicedialer/RecognizerClient;->onMicrophoneStart(Ljava/io/InputStream;)V

    .line 161
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    move/from16 v0, p4

    invoke-virtual {v9, v5, v0}, Lcom/android/voicedialer/RecognizerLogger;->logInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v5

    .line 162
    :cond_5
    const-string v9, "RecognizerEngine"

    const-string v10, "before setupGrammar()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Lcom/android/voicedialer/RecognizerEngine;->setupGrammar()V

    .line 164
    const-string v9, "RecognizerEngine"

    const-string v10, "after setupGrammar()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v9, "RecognizerEngine"

    const-string v10, "before mSrec.start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v9}, Landroid/speech/srec/Recognizer;->start()V

    .line 168
    const-string v9, "RecognizerEngine"

    const-string v10, "after mSrec.start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v8, 0x1

    .line 171
    const-string v9, "RecognizerEngine"

    const-string v10, "before entering while"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_1
    :pswitch_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/InterruptedException;
    :goto_2
    :try_start_3
    const-string v9, "RecognizerEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start interrupted "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 205
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lcom/android/voicedialer/RecognizerClient;->onRecognitionError(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    const-string v9, "RecognizerEngine"

    const-string v10, "start mSrec.stop"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v9}, Landroid/speech/srec/Recognizer;->stop()V

    .line 220
    :cond_6
    if-eqz v5, :cond_7

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 225
    :cond_7
    :goto_3
    const/4 v5, 0x0

    .line 229
    :try_start_5
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v9}, Lcom/android/voicedialer/RecognizerLogger;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 234
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_8
    :goto_4
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    .line 236
    const-string v9, "RecognizerEngine"

    const-string v10, "start bye"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 152
    :cond_9
    :try_start_6
    const-string v9, "RecognizerEngine"

    const-string v10, "start new MicrophoneInputStream, before"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v6, Landroid/speech/srec/MicrophoneInputStream;

    mul-int/lit8 v9, p4, 0xf

    move/from16 v0, p4

    invoke-direct {v6, v0, v9}, Landroid/speech/srec/MicrophoneInputStream;-><init>(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 154
    .end local v5           #mic:Ljava/io/InputStream;
    .restart local v6       #mic:Ljava/io/InputStream;
    :try_start_7
    const-string v9, "RecognizerEngine"

    const-string v10, "start new MicrophoneInputStream, after"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d

    move-object v5, v6

    .end local v6           #mic:Ljava/io/InputStream;
    .restart local v5       #mic:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 176
    :cond_a
    :try_start_8
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v9}, Landroid/speech/srec/Recognizer;->advance()I

    move-result v2

    .line 177
    .local v2, event:I
    const/4 v9, 0x2

    if-eq v2, v9, :cond_b

    const/16 v9, 0xb

    if-eq v2, v9, :cond_b

    .line 179
    const-string v9, "RecognizerEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start advance()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/speech/srec/Recognizer;->eventToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " avail "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_b
    packed-switch v2, :pswitch_data_0

    .line 195
    :pswitch_1
    const-string v9, "RecognizerEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {v2}, Landroid/speech/srec/Recognizer;->eventToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lcom/android/voicedialer/RecognizerClient;->onRecognitionFailure(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 215
    :goto_5
    const-string v9, "RecognizerEngine"

    const-string v10, "start mSrec.stop"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    if-eqz v9, :cond_c

    if-eqz v8, :cond_c

    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v9}, Landroid/speech/srec/Recognizer;->stop()V

    .line 220
    :cond_c
    if-eqz v5, :cond_d

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    .line 225
    :cond_d
    :goto_6
    const/4 v5, 0x0

    .line 229
    :try_start_a
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v9}, Lcom/android/voicedialer/RecognizerLogger;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_4

    .line 231
    :catch_1
    move-exception v3

    .line 232
    .local v3, ex:Ljava/io/IOException;
    const-string v9, "RecognizerEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start - mLoggger.close failed - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 189
    .end local v3           #ex:Ljava/io/IOException;
    :pswitch_2
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/voicedialer/RecognizerEngine;->onRecognitionSuccess(Lcom/android/voicedialer/RecognizerClient;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_5

    .line 206
    .end local v2           #event:I
    :catch_2
    move-exception v1

    .line 207
    .local v1, e:Ljava/io/IOException;
    :goto_7
    :try_start_c
    const-string v9, "RecognizerEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start new Srec failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 209
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lcom/android/voicedialer/RecognizerClient;->onRecognitionError(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 215
    const-string v9, "RecognizerEngine"

    const-string v10, "start mSrec.stop"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    if-eqz v9, :cond_e

    if-eqz v8, :cond_e

    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v9}, Landroid/speech/srec/Recognizer;->stop()V

    .line 220
    :cond_e
    if-eqz v5, :cond_f

    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 225
    :cond_f
    :goto_8
    const/4 v5, 0x0

    .line 229
    :try_start_e
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v9}, Lcom/android/voicedialer/RecognizerLogger;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_4

    .line 231
    :catch_3
    move-exception v3

    .line 232
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v9, "RecognizerEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start - mLoggger.close failed - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 192
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/IOException;
    .restart local v2       #event:I
    :pswitch_3
    :try_start_f
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v9, v5}, Landroid/speech/srec/Recognizer;->putAudio(Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_1

    .line 210
    .end local v2           #event:I
    :catch_4
    move-exception v1

    .line 211
    .local v1, e:Ljava/lang/Exception;
    :goto_9
    :try_start_10
    const-string v9, "RecognizerEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lcom/android/voicedialer/RecognizerClient;->onRecognitionError(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 215
    const-string v9, "RecognizerEngine"

    const-string v10, "start mSrec.stop"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    if-eqz v9, :cond_10

    if-eqz v8, :cond_10

    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v9}, Landroid/speech/srec/Recognizer;->stop()V

    .line 220
    :cond_10
    if-eqz v5, :cond_11

    :try_start_11
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 225
    :cond_11
    :goto_a
    const/4 v5, 0x0

    .line 229
    :try_start_12
    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v9}, Lcom/android/voicedialer/RecognizerLogger;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_4

    .line 231
    :catch_5
    move-exception v3

    .line 232
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v9, "RecognizerEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start - mLoggger.close failed - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 215
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_b
    const-string v10, "RecognizerEngine"

    const-string v11, "start mSrec.stop"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v10, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    if-eqz v10, :cond_12

    if-eqz v8, :cond_12

    iget-object v10, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v10}, Landroid/speech/srec/Recognizer;->stop()V

    .line 220
    :cond_12
    if-eqz v5, :cond_13

    :try_start_13
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    .line 225
    :cond_13
    :goto_c
    const/4 v5, 0x0

    .line 229
    :try_start_14
    iget-object v10, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v10}, Lcom/android/voicedialer/RecognizerLogger;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    .line 234
    :cond_14
    :goto_d
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    .line 215
    throw v9

    .line 222
    :catch_6
    move-exception v3

    .line 223
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v10, "RecognizerEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "start - mic.close failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 231
    .end local v3           #ex:Ljava/io/IOException;
    :catch_7
    move-exception v3

    .line 232
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v10, "RecognizerEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "start - mLoggger.close failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 222
    .end local v3           #ex:Ljava/io/IOException;
    .local v1, e:Ljava/lang/InterruptedException;
    :catch_8
    move-exception v3

    .line 223
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v9, "RecognizerEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start - mic.close failed - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 231
    .end local v3           #ex:Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 232
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v9, "RecognizerEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start - mLoggger.close failed - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 222
    .end local v3           #ex:Ljava/io/IOException;
    .local v1, e:Ljava/io/IOException;
    :catch_a
    move-exception v3

    .line 223
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v9, "RecognizerEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start - mic.close failed - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 222
    .end local v3           #ex:Ljava/io/IOException;
    .local v1, e:Ljava/lang/Exception;
    :catch_b
    move-exception v3

    .line 223
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v9, "RecognizerEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start - mic.close failed - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 222
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #ex:Ljava/io/IOException;
    .restart local v2       #event:I
    :catch_c
    move-exception v3

    .line 223
    .restart local v3       #ex:Ljava/io/IOException;
    const-string v9, "RecognizerEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start - mic.close failed - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 215
    .end local v2           #event:I
    .end local v3           #ex:Ljava/io/IOException;
    .end local v5           #mic:Ljava/io/InputStream;
    .restart local v6       #mic:Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #mic:Ljava/io/InputStream;
    .restart local v5       #mic:Ljava/io/InputStream;
    goto/16 :goto_b

    .line 210
    .end local v5           #mic:Ljava/io/InputStream;
    .restart local v6       #mic:Ljava/io/InputStream;
    :catch_d
    move-exception v1

    move-object v5, v6

    .end local v6           #mic:Ljava/io/InputStream;
    .restart local v5       #mic:Ljava/io/InputStream;
    goto/16 :goto_9

    .line 206
    .end local v5           #mic:Ljava/io/InputStream;
    .restart local v6       #mic:Ljava/io/InputStream;
    :catch_e
    move-exception v1

    move-object v5, v6

    .end local v6           #mic:Ljava/io/InputStream;
    .restart local v5       #mic:Ljava/io/InputStream;
    goto/16 :goto_7

    .line 202
    .end local v5           #mic:Ljava/io/InputStream;
    .restart local v6       #mic:Ljava/io/InputStream;
    :catch_f
    move-exception v1

    move-object v5, v6

    .end local v6           #mic:Ljava/io/InputStream;
    .restart local v5       #mic:Ljava/io/InputStream;
    goto/16 :goto_2

    .line 181
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract setupGrammar()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

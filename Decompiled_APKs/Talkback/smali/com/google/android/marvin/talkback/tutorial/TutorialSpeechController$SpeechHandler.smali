.class Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;
.super Lcom/google/android/marvin/utils/WeakReferenceHandler;
.source "TutorialSpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpeechHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/marvin/utils/WeakReferenceHandler",
        "<",
        "Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_DONE:I = 0x4

.field private static final MSG_DONE_SPEAKING:I = 0x3

.field private static final MSG_REPEAT:I = 0x5

.field private static final MSG_SPEAK:I = 0x1

.field private static final MSG_START_SPEAKING:I = 0x2

.field private static final REPEAT_DELAY:J = 0xbb8L


# instance fields
.field private mShouldRepeatIdAfterDone:I

.field private mShouldRepeatTextAfterDone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/google/android/marvin/utils/WeakReferenceHandler;-><init>(Ljava/lang/Object;)V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->mShouldRepeatTextAfterDone:Ljava/lang/String;

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->mShouldRepeatIdAfterDone:I

    .line 248
    return-void
.end method

.method private doneInternal(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;I)V
    .locals 7
    .parameter "parent"
    .parameter "id"

    .prologue
    .line 322
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->mShouldRepeatTextAfterDone:Ljava/lang/String;

    .line 323
    .local v2, shouldRepeatText:Ljava/lang/String;
    iget v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->mShouldRepeatIdAfterDone:I

    .line 325
    .local v1, shouldRepeatId:I
    if-lez v1, :cond_0

    if-ne p2, v1, :cond_0

    .line 326
    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v4, v1, v5, v6}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 327
    .local v3, speak:Landroid/os/Message;
    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 330
    .end local v3           #speak:Landroid/os/Message;
    :cond_0
    #getter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mListeners:Ljava/util/LinkedList;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$10(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 331
    :try_start_0
    #getter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mListeners:Ljava/util/LinkedList;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$10(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 330
    monitor-exit v5

    .line 335
    return-void

    .line 331
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;

    .line 332
    .local v0, listener:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;
    invoke-interface {v0, p2}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;->onDone(I)V

    goto :goto_0

    .line 330
    .end local v0           #listener:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private doneSpeakingInternal(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 314
    #getter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mListeners:Ljava/util/LinkedList;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$10(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 315
    :try_start_0
    #getter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mListeners:Ljava/util/LinkedList;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$10(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 314
    monitor-exit v2

    .line 319
    return-void

    .line 315
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;

    .line 316
    .local v0, listener:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;
    invoke-interface {v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;->onDoneSpeaking()V

    goto :goto_0

    .line 314
    .end local v0           #listener:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private speakInternal(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;Ljava/lang/String;I)V
    .locals 3
    .parameter "parent"
    .parameter "text"
    .parameter "id"

    .prologue
    .line 295
    #getter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedText:Ljava/util/LinkedList;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$6(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 296
    :try_start_0
    #getter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mTtsReady:Z
    invoke-static {p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$7(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    #getter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedText:Ljava/util/LinkedList;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$6(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 298
    #getter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mQueuedIds:Ljava/util/LinkedList;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$8(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 295
    :goto_0
    monitor-exit v1

    .line 303
    return-void

    .line 300
    :cond_0
    #calls: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->speakImmediately(Ljava/lang/String;I)Z
    invoke-static {p1, p2, p3}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$9(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;Ljava/lang/String;I)Z

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startSpeakingInternal(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 306
    #getter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mListeners:Ljava/util/LinkedList;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$10(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 307
    :try_start_0
    #getter for: Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->mListeners:Ljava/util/LinkedList;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->access$10(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    monitor-exit v2

    .line 311
    return-void

    .line 307
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;

    .line 308
    .local v0, listener:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;
    invoke-interface {v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;->onStartSpeaking()V

    goto :goto_0

    .line 306
    .end local v0           #listener:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)V
    .locals 2
    .parameter "msg"
    .parameter "parent"

    .prologue
    .line 252
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 269
    :goto_0
    return-void

    .line 254
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->speakInternal(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;Ljava/lang/String;I)V

    goto :goto_0

    .line 257
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->startSpeakingInternal(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)V

    goto :goto_0

    .line 260
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->doneSpeakingInternal(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)V

    goto :goto_0

    .line 263
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p2, v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->doneInternal(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;I)V

    goto :goto_0

    .line 266
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->speakInternal(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;Ljava/lang/String;I)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;)V

    return-void
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->removeMessages(I)V

    .line 273
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->removeMessages(I)V

    .line 274
    return-void
.end method

.method public postDone(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 291
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 292
    return-void
.end method

.method public postDoneSpeaking()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->sendEmptyMessage(I)Z

    .line 288
    return-void
.end method

.method public postStartSpeaking()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->sendEmptyMessage(I)Z

    .line 284
    return-void
.end method

.method public speak(Ljava/lang/String;IZ)V
    .locals 2
    .parameter "text"
    .parameter "id"
    .parameter "shouldRepeat"

    .prologue
    .line 277
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->removeMessages(I)V

    .line 278
    if-eqz p3, :cond_0

    move v0, p2

    :goto_0
    iput v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->mShouldRepeatIdAfterDone:I

    .line 279
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 280
    return-void

    .line 278
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

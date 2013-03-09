.class Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;
.super Lcom/google/android/marvin/utils/WeakReferenceHandler;
.source "SpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/SpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpeechHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/marvin/utils/WeakReferenceHandler",
        "<",
        "Lcom/google/android/marvin/talkback/SpeechController;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_INITIALIZED:I = 0x1

.field private static final MSG_MEDIA_STATE_CHANGED:I = 0x3

.field private static final MSG_UTTERANCE_COMPLETED:I = 0x2


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/SpeechController;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 1249
    invoke-direct {p0, p1}, Lcom/google/android/marvin/utils/WeakReferenceHandler;-><init>(Ljava/lang/Object;)V

    .line 1250
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/SpeechController;)V
    .locals 2
    .parameter "msg"
    .parameter "parent"

    .prologue
    .line 1254
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1264
    :goto_0
    return-void

    .line 1256
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/google/android/marvin/talkback/SpeechController;->handleTtsInitialized(I)V
    invoke-static {p2, v0}, Lcom/google/android/marvin/talkback/SpeechController;->access$11(Lcom/google/android/marvin/talkback/SpeechController;I)V

    goto :goto_0

    .line 1259
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    #calls: Lcom/google/android/marvin/talkback/SpeechController;->handleUtteranceCompleted(Ljava/lang/String;Z)V
    invoke-static {p2, v0, v1}, Lcom/google/android/marvin/talkback/SpeechController;->access$12(Lcom/google/android/marvin/talkback/SpeechController;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1262
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/google/android/marvin/talkback/SpeechController;->handleMediaStateChanged(Ljava/lang/String;)V
    invoke-static {p2, v0}, Lcom/google/android/marvin/talkback/SpeechController;->access$13(Lcom/google/android/marvin/talkback/SpeechController;Ljava/lang/String;)V

    goto :goto_0

    .line 1254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/google/android/marvin/talkback/SpeechController;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;->handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/SpeechController;)V

    return-void
.end method

.method public onMediaStateChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 1275
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1276
    return-void
.end method

.method public onTtsInitialized(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 1267
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1268
    return-void
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 1
    .parameter "utteranceId"

    .prologue
    .line 1271
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1272
    return-void
.end method

.class Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;
.super Lcom/google/android/marvin/utils/WeakReferenceHandler;
.source "VolumeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/VolumeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/marvin/utils/WeakReferenceHandler",
        "<",
        "Lcom/google/android/marvin/talkback/VolumeMonitor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACQUIRED_CONTROL_TIMEOUT:J = 0x3e8L

.field private static final MSG_CONTROL:I = 0x2

.field private static final MSG_RELEASE_CONTROL:I = 0x3

.field private static final MSG_VOLUME_CHANGED:I = 0x1

.field private static final RELEASE_CONTROL_TIMEOUT:J = 0x7d0L


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/VolumeMonitor;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/google/android/marvin/utils/WeakReferenceHandler;-><init>(Ljava/lang/Object;)V

    .line 381
    return-void
.end method


# virtual methods
.method public clearReleaseControl()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->removeMessages(I)V

    .line 425
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->removeMessages(I)V

    .line 426
    return-void
.end method

.method public handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/VolumeMonitor;)V
    .locals 6
    .parameter "msg"
    .parameter "parent"

    .prologue
    .line 385
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 406
    :goto_0
    return-void

    .line 387
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 388
    .local v2, type:Ljava/lang/Integer;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 389
    .local v3, value:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 391
    .local v0, prevValue:I
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    #calls: Lcom/google/android/marvin/talkback/VolumeMonitor;->internalOnVolumeChanged(III)V
    invoke-static {p2, v5, v3, v0}, Lcom/google/android/marvin/talkback/VolumeMonitor;->access$2(Lcom/google/android/marvin/talkback/VolumeMonitor;III)V

    goto :goto_0

    .line 395
    .end local v0           #prevValue:I
    .end local v2           #type:Ljava/lang/Integer;
    .end local v3           #value:I
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 396
    .local v1, streamType:I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 398
    .local v4, volume:I
    #calls: Lcom/google/android/marvin/talkback/VolumeMonitor;->internalOnControlAcquired(I)V
    invoke-static {p2, v1}, Lcom/google/android/marvin/talkback/VolumeMonitor;->access$3(Lcom/google/android/marvin/talkback/VolumeMonitor;I)V

    goto :goto_0

    .line 402
    .end local v1           #streamType:I
    .end local v4           #volume:I
    :pswitch_2
    #calls: Lcom/google/android/marvin/talkback/VolumeMonitor;->internalOnReleaseControl()V
    invoke-static {p2}, Lcom/google/android/marvin/talkback/VolumeMonitor;->access$4(Lcom/google/android/marvin/talkback/VolumeMonitor;)V

    goto :goto_0

    .line 385
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
    check-cast p2, Lcom/google/android/marvin/talkback/VolumeMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/VolumeMonitor;)V

    return-void
.end method

.method public onControlAcquired(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x2

    .line 435
    invoke-virtual {p0, v2}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->removeMessages(I)V

    .line 436
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->removeMessages(I)V

    .line 439
    const/4 v1, 0x0

    invoke-virtual {p0, v2, p1, v1}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 440
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 441
    return-void
.end method

.method public onVolumeChanged(III)V
    .locals 2
    .parameter "type"
    .parameter "value"
    .parameter "prevValue"

    .prologue
    .line 451
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 452
    return-void
.end method

.method public releaseControl()V
    .locals 3

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->clearReleaseControl()V

    .line 416
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 417
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 418
    return-void
.end method

.class Lcom/android/phone/DTMFTwelveKeyDialer$1;
.super Landroid/os/Handler;
.source "DTMFTwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 394
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 399
    :pswitch_0
    const-string v0, "disconnect message recieved, shutting down."

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$500(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 402
    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-nez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 407
    :cond_1
    const-string v0, "PHONE_DISCONNECT, Empty DTMFQueue)."

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$500(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$500(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$600(Lcom/android/phone/DTMFTwelveKeyDialer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$700(Lcom/android/phone/DTMFTwelveKeyDialer;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z
    invoke-static {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$802(Lcom/android/phone/DTMFTwelveKeyDialer;Z)Z

    .line 414
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$700(Lcom/android/phone/DTMFTwelveKeyDialer;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 415
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 423
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->handleBurstDtmfConfirmation()V

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/htc/omadm/libdo/status/StateTracker$1;
.super Landroid/telephony/PhoneStateListener;
.source "StateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/libdo/status/StateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/libdo/status/StateTracker;


# direct methods
.method constructor <init>(Lcom/htc/omadm/libdo/status/StateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 177
    const-string v0, "ConnMo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->mCallState:I
    invoke-static {v0, p1}, Lcom/htc/omadm/libdo/status/StateTracker;->access$902(Lcom/htc/omadm/libdo/status/StateTracker;I)I

    .line 179
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mCallState:I
    invoke-static {v1}, Lcom/htc/omadm/libdo/status/StateTracker;->access$900(Lcom/htc/omadm/libdo/status/StateTracker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/status/StateRegister;->notifyPhoneStateObservers(I)V

    .line 180
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mCallState:I
    invoke-static {v1}, Lcom/htc/omadm/libdo/status/StateTracker;->access$900(Lcom/htc/omadm/libdo/status/StateTracker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/status/StateRegister;->notifyPhoneCallStateChangedObservers(I)V

    .line 181
    return-void
.end method

.method public onDataActivity(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->mDataActivity:I
    invoke-static {v0, p1}, Lcom/htc/omadm/libdo/status/StateTracker;->access$1102(Lcom/htc/omadm/libdo/status/StateTracker;I)I

    .line 205
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mDataActivity:I
    invoke-static {v1}, Lcom/htc/omadm/libdo/status/StateTracker;->access$1100(Lcom/htc/omadm/libdo/status/StateTracker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/status/StateRegister;->notifyDataActivityObservers(I)V

    .line 207
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mDataActivity:I
    invoke-static {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->access$1100(Lcom/htc/omadm/libdo/status/StateTracker;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mDataActivity:I
    invoke-static {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->access$1100(Lcom/htc/omadm/libdo/status/StateTracker;)I

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    const/4 v1, 0x1

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->bIsDormancy:Z
    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/status/StateTracker;->access$1202(Lcom/htc/omadm/libdo/status/StateTracker;Z)Z

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    const/4 v1, 0x0

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->bIsDormancy:Z
    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/status/StateTracker;->access$1202(Lcom/htc/omadm/libdo/status/StateTracker;Z)Z

    goto :goto_0
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->mDataState:I
    invoke-static {v0, p1}, Lcom/htc/omadm/libdo/status/StateTracker;->access$1002(Lcom/htc/omadm/libdo/status/StateTracker;I)I

    .line 187
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateRegister;->getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mDataState:I
    invoke-static {v1}, Lcom/htc/omadm/libdo/status/StateTracker;->access$1000(Lcom/htc/omadm/libdo/status/StateTracker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/status/StateRegister;->notifyDataConnStateChangedObservers(I)V

    .line 189
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mDataState:I
    invoke-static {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->access$1000(Lcom/htc/omadm/libdo/status/StateTracker;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mDataActivity:I
    invoke-static {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->access$1100(Lcom/htc/omadm/libdo/status/StateTracker;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mDataActivity:I
    invoke-static {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->access$1100(Lcom/htc/omadm/libdo/status/StateTracker;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    const/4 v1, 0x1

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->bIsDormancy:Z
    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/status/StateTracker;->access$1202(Lcom/htc/omadm/libdo/status/StateTracker;Z)Z

    .line 199
    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/htc/omadm/libdo/status/StateTracker;->access$702(Lcom/htc/omadm/libdo/status/StateTracker;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 172
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    iget-object v1, p0, Lcom/htc/omadm/libdo/status/StateTracker$1;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v1}, Lcom/htc/omadm/libdo/status/StateTracker;->access$700(Lcom/htc/omadm/libdo/status/StateTracker;)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->mRoaming:Z
    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/status/StateTracker;->access$802(Lcom/htc/omadm/libdo/status/StateTracker;Z)Z

    .line 173
    return-void
.end method

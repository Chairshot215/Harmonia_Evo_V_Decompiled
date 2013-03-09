.class public Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/DataMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastDoneReceiver"
.end annotation


# instance fields
.field private mBroadcastIntent:Landroid/content/Intent;

.field private mBroadcastStartTime:J

.field private mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

.field private mFrom:Ljava/lang/String;

.field protected mResult:I


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/DataMessageManager;Landroid/content/Intent;Ljava/lang/String;J)V
    .locals 0
    .parameter "dataMessageManager"
    .parameter "intent"
    .parameter "from"
    .parameter "ts"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    .line 79
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mBroadcastIntent:Landroid/content/Intent;

    .line 80
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mFrom:Ljava/lang/String;

    .line 81
    iput-wide p4, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mBroadcastStartTime:J

    .line 82
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mBroadcastStartTime:J

    sub-long v0, v2, v4

    .line 86
    .local v0, duration:J
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->getResultCode()I

    move-result v2

    iput v2, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mResult:I

    .line 88
    const-string v2, "GTalkService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast done: timeElapsed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms, resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->getResultData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->access$000(Ljava/lang/String;)V

    .line 99
    :cond_0
    iget v2, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mResult:I

    if-nez v2, :cond_1

    .line 100
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DataMsgMgr] broadcast intent callback: result=CANCELLED for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mBroadcastIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mBroadcastIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->findReceiverForIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mBroadcastIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mFrom:Ljava/lang/String;

    #calls: Lcom/google/android/gsf/gtalkservice/DataMessageManager;->reportNoReceiverError(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->access$100(Lcom/google/android/gsf/gtalkservice/DataMessageManager;Landroid/content/Intent;Ljava/lang/String;)V

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->releaseWakeLock()V

    .line 108
    return-void
.end method

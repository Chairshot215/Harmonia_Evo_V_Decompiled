.class Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcWimaxStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v1, "HtcWimaxStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiver intent, aciton:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.net.wimax.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;

    const-string v2, "newRssiLevel"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mMtWimaxSignal:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->access$002(Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;I)I

    const-string v1, "HtcWimaxStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiMAX Signal Strength changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mMtWimaxSignal:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->access$000(Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->updateMtWimaxIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->access$100(Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "HtcWimaxStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiMAX Signal Strength changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mMtWimaxSignal:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->access$000(Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HtcWimaxStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiMAX ENABLED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "curWimaxEnabledState"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->updateMtWimaxIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->access$100(Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtcWimaxStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiMAX Signal Strength changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->mMtWimaxSignal:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->access$000(Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcWimaxStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiMAX State:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->updateMtWimaxIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;->access$100(Lcom/android/systemui/statusbar/phone/HtcWimaxStatusBar;)V

    goto/16 :goto_0
.end method

.class Lcom/android/phone/InCallScreen$PwdResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PwdResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method private constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 9846
    iput-object p1, p0, Lcom/android/phone/InCallScreen$PwdResultReceiver;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9846
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen$PwdResultReceiver;-><init>(Lcom/android/phone/InCallScreen;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 9849
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 9850
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PwdResultReceiver onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9851
    :cond_0
    const-string v2, "com.htc.action.CONFIRM_PASSWORD_RESULT"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9852
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 9853
    .local v1, result_code:I
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9854
    :cond_1
    const/4 v2, -0x1

    if-ne v2, v1, :cond_3

    .line 9855
    iget-object v2, p0, Lcom/android/phone/InCallScreen$PwdResultReceiver;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->processPendingRequest()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$5700(Lcom/android/phone/InCallScreen;)V

    .line 9865
    .end local v1           #result_code:I
    :cond_2
    :goto_0
    return-void

    .line 9857
    .restart local v1       #result_code:I
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InCallScreen$PwdResultReceiver;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->clearPwdResultReceiver()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$5800(Lcom/android/phone/InCallScreen;)V

    .line 9858
    iget-object v2, p0, Lcom/android/phone/InCallScreen$PwdResultReceiver;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mPendingRequest:Lcom/android/phone/util/PendingRequest;
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreen;->access$5902(Lcom/android/phone/InCallScreen;Lcom/android/phone/util/PendingRequest;)Lcom/android/phone/util/PendingRequest;

    goto :goto_0
.end method

.class Lcom/android/phone/HtcCdmaLoopbackScreen$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaLoopbackScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaLoopbackScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaLoopbackScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$2;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    iget-object v3, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$2;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    new-instance v4, Lcom/android/internal/telephony/gsm/OperatorInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/OperatorInfo;-><init>()V

    #setter for: Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    invoke-static {v3, v4}, Lcom/android/phone/HtcCdmaLoopbackScreen;->access$302(Lcom/android/phone/HtcCdmaLoopbackScreen;Lcom/android/internal/telephony/gsm/OperatorInfo;)Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 377
    iget-object v3, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$2;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    #getter for: Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    invoke-static {v3}, Lcom/android/phone/HtcCdmaLoopbackScreen;->access$300(Lcom/android/phone/HtcCdmaLoopbackScreen;)Lcom/android/internal/telephony/gsm/OperatorInfo;

    move-result-object v3

    const-string v4, "networkState"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    iput-boolean v1, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    .line 380
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$2;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    #getter for: Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaLoopbackScreen;->access$300(Lcom/android/phone/HtcCdmaLoopbackScreen;)Lcom/android/internal/telephony/gsm/OperatorInfo;

    move-result-object v1

    const-string v3, "showSpn"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    .line 381
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$2;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    #getter for: Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaLoopbackScreen;->access$300(Lcom/android/phone/HtcCdmaLoopbackScreen;)Lcom/android/internal/telephony/gsm/OperatorInfo;

    move-result-object v1

    const-string v3, "showPlmn"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    .line 382
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$2;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    #getter for: Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaLoopbackScreen;->access$300(Lcom/android/phone/HtcCdmaLoopbackScreen;)Lcom/android/internal/telephony/gsm/OperatorInfo;

    move-result-object v1

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    .line 383
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$2;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    #getter for: Lcom/android/phone/HtcCdmaLoopbackScreen;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaLoopbackScreen;->access$300(Lcom/android/phone/HtcCdmaLoopbackScreen;)Lcom/android/internal/telephony/gsm/OperatorInfo;

    move-result-object v1

    const-string v2, "plmn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    .line 384
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$2;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    #calls: Lcom/android/phone/HtcCdmaLoopbackScreen;->updateOperatorName()V
    invoke-static {v1}, Lcom/android/phone/HtcCdmaLoopbackScreen;->access$400(Lcom/android/phone/HtcCdmaLoopbackScreen;)V

    .line 386
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackScreen$2;->this$0:Lcom/android/phone/HtcCdmaLoopbackScreen;

    #calls: Lcom/android/phone/HtcCdmaLoopbackScreen;->updateCdmaRoamingIcon()V
    invoke-static {v1}, Lcom/android/phone/HtcCdmaLoopbackScreen;->access$500(Lcom/android/phone/HtcCdmaLoopbackScreen;)V

    .line 390
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 377
    goto :goto_0
.end method

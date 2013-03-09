.class Lcom/android/phone/InCallScreen$2;
.super Landroid/content/BroadcastReceiver;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 1001
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1010
    iget-object v2, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3000(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x67

    const-string v4, "state"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 1012
    .local v1, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3000(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1027
    .end local v1           #message:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1016
    iget-object v2, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getInCallPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 1017
    iget-object v2, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateCdmaOperatorInfo(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/phone/InCallScreen;->access$3100(Lcom/android/phone/InCallScreen;Landroid/content/Intent;)V

    .line 1019
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateOperatorName()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3200(Lcom/android/phone/InCallScreen;)V

    .line 1021
    iget-object v2, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getInCallPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateCdmaRoamingIcon()V
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$3300(Lcom/android/phone/InCallScreen;)V

    goto :goto_0
.end method

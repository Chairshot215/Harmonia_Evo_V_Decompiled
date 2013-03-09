.class Lcom/android/phone/HtcWorldPhoneOptions$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcWorldPhoneOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcWorldPhoneOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcWorldPhoneOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcWorldPhoneOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/phone/HtcWorldPhoneOptions$2;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 340
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions$2;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->INTENT_OF_UPDATE_PREFERRED_NETWORK_TYPE:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/HtcWorldPhoneOptions;->access$300(Lcom/android/phone/HtcWorldPhoneOptions;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions$2;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/HtcWorldPhoneOptions;->access$500(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneOptions$2;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;
    invoke-static {v2}, Lcom/android/phone/HtcWorldPhoneOptions;->access$400(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 345
    :cond_0
    return-void
.end method

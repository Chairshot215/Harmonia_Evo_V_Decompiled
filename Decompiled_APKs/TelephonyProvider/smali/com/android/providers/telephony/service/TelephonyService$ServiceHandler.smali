.class final Lcom/android/providers/telephony/service/TelephonyService$ServiceHandler;
.super Landroid/os/Handler;
.source "TelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/service/TelephonyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/service/TelephonyService;


# direct methods
.method public constructor <init>(Lcom/android/providers/telephony/service/TelephonyService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/providers/telephony/service/TelephonyService$ServiceHandler;->this$0:Lcom/android/providers/telephony/service/TelephonyService;

    .line 37
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 42
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 43
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 44
    .local v0, action:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_0
    if-nez v0, :cond_1

    .line 47
    iget-object v2, p0, Lcom/android/providers/telephony/service/TelephonyService$ServiceHandler;->this$0:Lcom/android/providers/telephony/service/TelephonyService;

    invoke-virtual {v2, p1}, Lcom/android/providers/telephony/service/TelephonyService;->handleMessageWhat(Landroid/os/Message;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/android/providers/telephony/service/TelephonyService$ServiceHandler;->this$0:Lcom/android/providers/telephony/service/TelephonyService;

    invoke-virtual {v2, v1}, Lcom/android/providers/telephony/service/TelephonyService;->handleIntent(Landroid/content/Intent;)V

    .line 51
    iget-object v2, p0, Lcom/android/providers/telephony/service/TelephonyService$ServiceHandler;->this$0:Lcom/android/providers/telephony/service/TelephonyService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/providers/telephony/service/TelephonyService;->stopService(I)V

    goto :goto_0
.end method

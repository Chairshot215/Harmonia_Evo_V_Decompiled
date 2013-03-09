.class Lcom/android/phone/HtcCtCustomize$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcCtCustomize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCtCustomize;-><init>(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCtCustomize;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCtCustomize;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/phone/HtcCtCustomize$1;->this$0:Lcom/android/phone/HtcCtCustomize;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/android/phone/HtcCtCustomize$1;->this$0:Lcom/android/phone/HtcCtCustomize;

    #getter for: Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;
    invoke-static {v3}, Lcom/android/phone/HtcCtCustomize;->access$000(Lcom/android/phone/HtcCtCustomize;)Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/android/phone/HtcCtCustomize$1;->this$0:Lcom/android/phone/HtcCtCustomize;

    #getter for: Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;
    invoke-static {v3}, Lcom/android/phone/HtcCtCustomize;->access$000(Lcom/android/phone/HtcCtCustomize;)Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->inService:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/HtcCtCustomize$1;->this$0:Lcom/android/phone/HtcCtCustomize;

    #getter for: Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;
    invoke-static {v3}, Lcom/android/phone/HtcCtCustomize;->access$000(Lcom/android/phone/HtcCtCustomize;)Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->inService:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/HtcCtCustomize$1;->this$0:Lcom/android/phone/HtcCtCustomize;

    #getter for: Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;
    invoke-static {v3}, Lcom/android/phone/HtcCtCustomize;->access$000(Lcom/android/phone/HtcCtCustomize;)Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->isRoaming:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 59
    .local v0, inRoamingService:Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/HtcCtCustomize$1;->this$0:Lcom/android/phone/HtcCtCustomize;

    #getter for: Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;
    invoke-static {v3}, Lcom/android/phone/HtcCtCustomize;->access$000(Lcom/android/phone/HtcCtCustomize;)Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 64
    .local v1, ss:Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 72
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/HtcCtCustomize$1;->this$0:Lcom/android/phone/HtcCtCustomize;

    #getter for: Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;
    invoke-static {v3}, Lcom/android/phone/HtcCtCustomize;->access$000(Lcom/android/phone/HtcCtCustomize;)Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, v3, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->inService:Ljava/lang/Boolean;

    .line 75
    :goto_1
    iget-object v3, p0, Lcom/android/phone/HtcCtCustomize$1;->this$0:Lcom/android/phone/HtcCtCustomize;

    #getter for: Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;
    invoke-static {v3}, Lcom/android/phone/HtcCtCustomize;->access$000(Lcom/android/phone/HtcCtCustomize;)Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->isRoaming:Z

    .line 77
    if-eqz v0, :cond_0

    .line 80
    iget-object v3, p0, Lcom/android/phone/HtcCtCustomize$1;->this$0:Lcom/android/phone/HtcCtCustomize;

    #getter for: Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;
    invoke-static {v3}, Lcom/android/phone/HtcCtCustomize;->access$000(Lcom/android/phone/HtcCtCustomize;)Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->inService:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/HtcCtCustomize$1;->this$0:Lcom/android/phone/HtcCtCustomize;

    #getter for: Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;
    invoke-static {v3}, Lcom/android/phone/HtcCtCustomize;->access$000(Lcom/android/phone/HtcCtCustomize;)Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->inService:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/android/phone/HtcCtCustomize$1;->this$0:Lcom/android/phone/HtcCtCustomize;

    invoke-virtual {v3, v2}, Lcom/android/phone/HtcCtCustomize;->sendEmptyMessage(I)Z

    .line 86
    .end local v0           #inRoamingService:Z
    .end local v1           #ss:Landroid/telephony/ServiceState;
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 56
    goto :goto_0

    .line 66
    .restart local v0       #inRoamingService:Z
    .restart local v1       #ss:Landroid/telephony/ServiceState;
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/HtcCtCustomize$1;->this$0:Lcom/android/phone/HtcCtCustomize;

    #getter for: Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;
    invoke-static {v3}, Lcom/android/phone/HtcCtCustomize;->access$000(Lcom/android/phone/HtcCtCustomize;)Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, v3, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->inService:Ljava/lang/Boolean;

    goto :goto_1

    .line 69
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/HtcCtCustomize$1;->this$0:Lcom/android/phone/HtcCtCustomize;

    #getter for: Lcom/android/phone/HtcCtCustomize;->mObj:Lcom/android/phone/HtcCtCustomize$CustomizeObj;
    invoke-static {v3}, Lcom/android/phone/HtcCtCustomize;->access$000(Lcom/android/phone/HtcCtCustomize;)Lcom/android/phone/HtcCtCustomize$CustomizeObj;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/phone/HtcCtCustomize$CustomizeObj;->inService:Ljava/lang/Boolean;

    goto :goto_1

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

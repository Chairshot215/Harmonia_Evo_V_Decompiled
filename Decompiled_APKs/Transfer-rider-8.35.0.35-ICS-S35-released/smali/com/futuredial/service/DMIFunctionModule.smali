.class public Lcom/futuredial/service/DMIFunctionModule;
.super Ljava/lang/Object;
.source "DMIFunctionModule.java"


# static fields
.field public static final ARG_DMI_BT_NOTIFY_OFF:I = 0x0

.field public static final ARG_DMI_BT_NOTIFY_ON:I = 0x1

.field public static final DMI_BT_NOTIFY_ACTION:I = 0xa


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected m_service:Landroid/app/Service;

.field protected m_uiHandler:Lcom/futuredial/ui/UIHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "DMIFunctionModule"

    iput-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->TAG:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/futuredial/service/DMIFunctionModule;->m_service:Landroid/app/Service;

    .line 15
    iput-object v1, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    return-void
.end method


# virtual methods
.method protected SendMsg()Z
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    iget-object v1, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    invoke-virtual {v1}, Lcom/futuredial/ui/UIHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/UIHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected SendMsg(I)Z
    .locals 2
    .parameter "what"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    iget-object v1, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    invoke-virtual {v1, p1}, Lcom/futuredial/ui/UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/UIHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected SendMsg(III)Z
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    iget-object v1, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    invoke-virtual {v1, p1, p2, p3}, Lcom/futuredial/ui/UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/UIHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected SendMsg(IIILjava/lang/Object;)Z
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    iget-object v1, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/futuredial/ui/UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/UIHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected SendMsg(ILjava/lang/Object;)Z
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    iget-object v1, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    invoke-virtual {v1, p1, p2}, Lcom/futuredial/ui/UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/UIHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finalize_module()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public get_resource_string(I)Ljava/lang/String;
    .locals 1
    .parameter "iResourceID"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_service:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init_module()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method protected registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 2
    .parameter "receiver"
    .parameter "filter"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_service:Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_service:Landroid/app/Service;

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->TAG:Ljava/lang/String;

    const-string v1, "no service for this function module - r"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendBroadcast(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_service:Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_service:Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->TAG:Ljava/lang/String;

    const-string v1, "no service for this function module - s"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public set_service_handler(Landroid/app/Service;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/futuredial/service/DMIFunctionModule;->m_service:Landroid/app/Service;

    .line 61
    return-void
.end method

.method public set_ui_handler(Lcom/futuredial/ui/UIHandler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/futuredial/service/DMIFunctionModule;->m_uiHandler:Lcom/futuredial/ui/UIHandler;

    .line 65
    return-void
.end method

.method protected sleep_for_while(I)V
    .locals 3
    .parameter "ms"

    .prologue
    .line 49
    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .parameter "receiver"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_service:Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->m_service:Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/futuredial/service/DMIFunctionModule;->TAG:Ljava/lang/String;

    const-string v1, "no service for this function module - u"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

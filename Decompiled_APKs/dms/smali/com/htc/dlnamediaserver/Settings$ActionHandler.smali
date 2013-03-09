.class final Lcom/htc/dlnamediaserver/Settings$ActionHandler;
.super Landroid/os/Handler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamediaserver/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamediaserver/Settings;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamediaserver/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/htc/dlnamediaserver/Settings$ActionHandler;->this$0:Lcom/htc/dlnamediaserver/Settings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamediaserver/Settings;Lcom/htc/dlnamediaserver/Settings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/htc/dlnamediaserver/Settings$ActionHandler;-><init>(Lcom/htc/dlnamediaserver/Settings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 241
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/htc/dlnamediaserver/Settings$HandlerAction;->UpdateStatus:Lcom/htc/dlnamediaserver/Settings$HandlerAction;

    invoke-virtual {v2}, Lcom/htc/dlnamediaserver/Settings$HandlerAction;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/htc/dlnamediaserver/Settings$ActionHandler;->this$0:Lcom/htc/dlnamediaserver/Settings;

    #getter for: Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;
    invoke-static {v1}, Lcom/htc/dlnamediaserver/Settings;->access$400(Lcom/htc/dlnamediaserver/Settings;)Lcom/htc/dlnamediaserver/ServiceCommunication;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dlnamediaserver/Settings$ActionHandler;->this$0:Lcom/htc/dlnamediaserver/Settings;

    #getter for: Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;
    invoke-static {v1}, Lcom/htc/dlnamediaserver/Settings;->access$400(Lcom/htc/dlnamediaserver/Settings;)Lcom/htc/dlnamediaserver/ServiceCommunication;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/dlnamediaserver/ServiceCommunication;->IsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/htc/dlnamediaserver/Settings$ActionHandler;->this$0:Lcom/htc/dlnamediaserver/Settings;

    #calls: Lcom/htc/dlnamediaserver/Settings;->UpdateStatus()Z
    invoke-static {v1}, Lcom/htc/dlnamediaserver/Settings;->access$500(Lcom/htc/dlnamediaserver/Settings;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

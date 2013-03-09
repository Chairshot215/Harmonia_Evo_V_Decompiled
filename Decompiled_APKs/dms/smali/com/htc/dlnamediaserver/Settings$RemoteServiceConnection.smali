.class Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamediaserver/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamediaserver/Settings;


# direct methods
.method constructor <init>(Lcom/htc/dlnamediaserver/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;->this$0:Lcom/htc/dlnamediaserver/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "boundService"

    .prologue
    .line 259
    const-string v0, "DLNAMediaServer"

    const-string v1, "Service connected !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;->this$0:Lcom/htc/dlnamediaserver/Settings;

    invoke-static {p2}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnamediaserver/ServiceCommunication;

    move-result-object v1

    #setter for: Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;
    invoke-static {v0, v1}, Lcom/htc/dlnamediaserver/Settings;->access$402(Lcom/htc/dlnamediaserver/Settings;Lcom/htc/dlnamediaserver/ServiceCommunication;)Lcom/htc/dlnamediaserver/ServiceCommunication;

    .line 261
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;->this$0:Lcom/htc/dlnamediaserver/Settings;

    sget-object v1, Lcom/htc/dlnamediaserver/Settings$ButtonState;->SERVERON:Lcom/htc/dlnamediaserver/Settings$ButtonState;

    #calls: Lcom/htc/dlnamediaserver/Settings;->SetButtonState(Lcom/htc/dlnamediaserver/Settings$ButtonState;)V
    invoke-static {v0, v1}, Lcom/htc/dlnamediaserver/Settings;->access$600(Lcom/htc/dlnamediaserver/Settings;Lcom/htc/dlnamediaserver/Settings$ButtonState;)V

    .line 262
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 267
    const-string v0, "DLNAMediaServer"

    const-string v1, "Service disconnected !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;->this$0:Lcom/htc/dlnamediaserver/Settings;

    const/4 v1, 0x0

    #setter for: Lcom/htc/dlnamediaserver/Settings;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;
    invoke-static {v0, v1}, Lcom/htc/dlnamediaserver/Settings;->access$402(Lcom/htc/dlnamediaserver/Settings;Lcom/htc/dlnamediaserver/ServiceCommunication;)Lcom/htc/dlnamediaserver/ServiceCommunication;

    .line 269
    iget-object v0, p0, Lcom/htc/dlnamediaserver/Settings$RemoteServiceConnection;->this$0:Lcom/htc/dlnamediaserver/Settings;

    sget-object v1, Lcom/htc/dlnamediaserver/Settings$ButtonState;->SERVEROFF:Lcom/htc/dlnamediaserver/Settings$ButtonState;

    #calls: Lcom/htc/dlnamediaserver/Settings;->SetButtonState(Lcom/htc/dlnamediaserver/Settings$ButtonState;)V
    invoke-static {v0, v1}, Lcom/htc/dlnamediaserver/Settings;->access$600(Lcom/htc/dlnamediaserver/Settings;Lcom/htc/dlnamediaserver/Settings$ButtonState;)V

    .line 270
    return-void
.end method

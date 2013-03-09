.class Lcom/htc/dlnamediaserver/ShareFolder$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "ShareFolder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamediaserver/ShareFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamediaserver/ShareFolder;


# direct methods
.method constructor <init>(Lcom/htc/dlnamediaserver/ShareFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/htc/dlnamediaserver/ShareFolder$RemoteServiceConnection;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "boundService"

    .prologue
    .line 253
    const-string v0, "DLNAMediaServer"

    const-string v1, "ShareFolder: Service connected !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder$RemoteServiceConnection;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    invoke-static {p2}, Lcom/htc/dlnamediaserver/ServiceCommunication$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnamediaserver/ServiceCommunication;

    move-result-object v1

    #setter for: Lcom/htc/dlnamediaserver/ShareFolder;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;
    invoke-static {v0, v1}, Lcom/htc/dlnamediaserver/ShareFolder;->access$102(Lcom/htc/dlnamediaserver/ShareFolder;Lcom/htc/dlnamediaserver/ServiceCommunication;)Lcom/htc/dlnamediaserver/ServiceCommunication;

    .line 255
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder$RemoteServiceConnection;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    #getter for: Lcom/htc/dlnamediaserver/ShareFolder;->mActionHandler:Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;
    invoke-static {v0}, Lcom/htc/dlnamediaserver/ShareFolder;->access$500(Lcom/htc/dlnamediaserver/ShareFolder;)Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;->sendEmptyMessage(I)Z

    .line 256
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 261
    const-string v0, "DLNAMediaServer"

    const-string v1, "ShareFolder: Service disconnected !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder$RemoteServiceConnection;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    const/4 v1, 0x0

    #setter for: Lcom/htc/dlnamediaserver/ShareFolder;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;
    invoke-static {v0, v1}, Lcom/htc/dlnamediaserver/ShareFolder;->access$102(Lcom/htc/dlnamediaserver/ShareFolder;Lcom/htc/dlnamediaserver/ServiceCommunication;)Lcom/htc/dlnamediaserver/ServiceCommunication;

    .line 263
    return-void
.end method

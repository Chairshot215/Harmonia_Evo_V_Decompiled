.class public Lcom/htc/providers/uploads/UploadService$UploadServiceConnection;
.super Ljava/lang/Object;
.source "UploadService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/providers/uploads/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadServiceConnection"
.end annotation


# instance fields
.field serviceHandler:Lcom/htc/providers/uploads/UploadService$UploadHandler;


# direct methods
.method public constructor <init>(Lcom/htc/providers/uploads/UploadService$UploadHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 1067
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1068
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadService$UploadServiceConnection;->serviceHandler:Lcom/htc/providers/uploads/UploadService$UploadHandler;

    .line 1069
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 1093
    const-string v0, "UploadService"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService$UploadServiceConnection;->serviceHandler:Lcom/htc/providers/uploads/UploadService$UploadHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1096
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1072
    const-string v2, "UploadService"

    const-string v3, "onServiceConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-static {p2}, Lcom/htc/opensense/upload/IUploadInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/upload/IUploadInterface;

    move-result-object v1

    .line 1076
    .local v1, uploadInterface:Lcom/htc/opensense/upload/IUploadInterface;
    :try_start_0
    invoke-interface {v1}, Lcom/htc/opensense/upload/IUploadInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    :goto_0
    iget-object v2, p0, Lcom/htc/providers/uploads/UploadService$UploadServiceConnection;->serviceHandler:Lcom/htc/providers/uploads/UploadService$UploadHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1084
    return-void

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "UploadService"

    const-string v3, "link to death error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 1087
    const-string v0, "UploadService"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService$UploadServiceConnection;->serviceHandler:Lcom/htc/providers/uploads/UploadService$UploadHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1090
    return-void
.end method

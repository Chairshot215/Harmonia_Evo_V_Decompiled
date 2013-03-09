.class Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;
.super Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;
.source "FtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/FtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothFTPServiceStub"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    .line 55
    iput-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mContext:Landroid/content/Context;

    .line 60
    iput-object p1, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "bluetooth_ftp"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    iput-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    .line 63
    return-void
.end method


# virtual methods
.method public declared-synchronized closeFtpServer()V
    .locals 3

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->closeFtpServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ftpServerAccessRsp(BZLjava/lang/String;)V
    .locals 1
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V
    .locals 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->registerCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V

    .line 71
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V
    .locals 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FtpService$BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->unregisterCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V

    .line 79
    :cond_0
    return-void
.end method

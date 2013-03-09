.class Lcom/sprint/internal/htcsprintservice/IHtcSprintService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IHtcSprintService.java"

# interfaces
.implements Lcom/sprint/internal/htcsprintservice/IHtcSprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/internal/htcsprintservice/IHtcSprintService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sprint/internal/htcsprintservice/IHtcSprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 61
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sprint/internal/htcsprintservice/IHtcSprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "com.sprint.internal.htcsprintservice.IHtcSprintService"

    return-object v0
.end method

.method public reboot()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 73
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 75
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.sprint.internal.htcsprintservice.IHtcSprintService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/sprint/internal/htcsprintservice/IHtcSprintService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 77
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 81
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 83
    return-void

    .line 80
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 81
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.class Lcom/htc/android/mail/eassvc/pim/EASEventCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "EASEventCallback.java"

# interfaces
.implements Lcom/htc/android/mail/eassvc/pim/EASEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/pim/EASEventCallback$Stub;
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
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/pim/EASEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 67
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public callback(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 80
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.htc.android.mail.eassvc.pim.EASEventCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    return-void

    .line 86
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "com.htc.android.mail.eassvc.pim.EASEventCallback"

    return-object v0
.end method

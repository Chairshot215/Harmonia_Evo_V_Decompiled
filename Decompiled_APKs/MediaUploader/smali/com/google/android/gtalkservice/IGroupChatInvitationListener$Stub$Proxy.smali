.class Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGroupChatInvitationListener.java"

# interfaces
.implements Lcom/google/android/gtalkservice/IGroupChatInvitationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;
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
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 74
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "com.google.android.gtalkservice.IGroupChatInvitationListener"

    return-object v0
.end method

.method public onInvitationReceived(Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 92
    :try_start_0
    const-string v2, "com.google.android.gtalkservice.IGroupChatInvitationListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 93
    if-eqz p1, :cond_0

    .line 94
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gtalkservice/GroupChatInvitation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    .line 105
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 108
    return v2

    .line 98
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    move v2, v5

    .line 102
    goto :goto_1
.end method

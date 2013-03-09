.class Lcom/htc/dcs/DCSServiceComponent$Stub$Proxy;
.super Ljava/lang/Object;
.source "DCSServiceComponent.java"

# interfaces
.implements Lcom/htc/dcs/DCSServiceComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dcs/DCSServiceComponent$Stub;
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
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/htc/dcs/DCSServiceComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 89
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/dcs/DCSServiceComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public fetch(JILandroid/os/Bundle;[Landroid/os/Bundle;)[Landroid/os/Bundle;
    .locals 6
    .parameter "useCacheTime"
    .parameter "roamingSetting"
    .parameter "extendSetting"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 121
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 124
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dcs.DCSServiceComponent"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    if-eqz p4, :cond_0

    .line 128
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v3, 0x0

    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, p5, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 135
    iget-object v3, p0, Lcom/htc/dcs/DCSServiceComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 137
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .local v2, _result:[Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    return-object v2

    .line 132
    .end local v2           #_result:[Landroid/os/Bundle;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public fetchData(I[Landroid/os/Bundle;I)[Landroid/os/Bundle;
    .locals 6
    .parameter "cache"
    .parameter "params"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 104
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dcs.DCSServiceComponent"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 107
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v3, p0, Lcom/htc/dcs/DCSServiceComponent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 110
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .local v2, _result:[Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 116
    return-object v2

    .line 113
    .end local v2           #_result:[Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "com.htc.dcs.DCSServiceComponent"

    return-object v0
.end method

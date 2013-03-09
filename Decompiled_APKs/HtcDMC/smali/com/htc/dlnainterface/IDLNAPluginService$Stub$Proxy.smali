.class Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDLNAPluginService.java"

# interfaces
.implements Lcom/htc/dlnainterface/IDLNAPluginService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnainterface/IDLNAPluginService$Stub;
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
    .line 806
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 807
    iput-object p1, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 808
    return-void
.end method


# virtual methods
.method public albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1103
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1105
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1107
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1109
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1116
    return-void

    .line 1113
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    .locals 5
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "count"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1016
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1018
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1023
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1025
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1026
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1032
    return-void

    .line 1029
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1046
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1048
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1053
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1060
    return-void

    .line 1057
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public cancelContentThumbnail(II)V
    .locals 5
    .parameter "cookie"
    .parameter "groupID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2183
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2185
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2187
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2188
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2189
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2195
    return-void

    .line 2192
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public changeDuration(ILjava/lang/String;J)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "durationMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1645
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1647
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1649
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1650
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1651
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1652
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1658
    return-void

    .line 1655
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public changeRendererOutput(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID_Old"
    .parameter "rendererID_New"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1620
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1622
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1623
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1624
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1625
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1626
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1633
    return-void

    .line 1630
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public createMediaController(ILjava/lang/String;ILjava/lang/String;)I
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "filterType"
    .parameter "controllerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1732
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1735
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1737
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1740
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1741
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1742
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1745
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1748
    return v2

    .line 1745
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public destroyMediaController(ILjava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1761
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1763
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1765
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1766
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1767
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1770
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1773
    return-void

    .line 1770
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1879
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1881
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1882
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1883
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1885
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1886
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1892
    return-void

    .line 1889
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "groupID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 982
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 984
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 985
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 989
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 990
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 996
    return-void

    .line 993
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getControlItemInfo(ILjava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1905
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1907
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1908
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1909
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1910
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1911
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1917
    return-void

    .line 1914
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1587
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1590
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1592
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1593
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1594
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1595
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1596
    sget-object v3, Lcom/htc/dlnainterface/DLNAControllerStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/DLNAControllerStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1603
    .local v2, _result:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1606
    return-object v2

    .line 1599
    .end local v2           #_result:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/htc/dlnainterface/DLNAControllerStatus;
    goto :goto_0

    .line 1603
    .end local v2           #_result:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "serverID"
    .parameter "contentID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1789
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1792
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1794
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1796
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1797
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1799
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1800
    sget-object v3, Lcom/htc/dlnainterface/DLNAContentItemDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1807
    .local v2, _result:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1810
    return-object v2

    .line 1803
    .end local v2           #_result:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    goto :goto_0

    .line 1807
    .end local v2           #_result:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1960
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1963
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1964
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1965
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1966
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1967
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1968
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1971
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1974
    return-object v2

    .line 1971
    .end local v2           #_result:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1931
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1934
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1935
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1936
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1937
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1938
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1939
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1942
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1945
    return-object v2

    .line 1942
    .end local v2           #_result:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDMCCurrentLocalPlayId(ILjava/lang/String;)I
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1990
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1993
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1994
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1995
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1996
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1997
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1998
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2001
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2004
    return v2

    .line 2001
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2092
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2093
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2096
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2098
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2099
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2100
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2101
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2104
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2107
    return v2

    .line 2104
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDMCMuteControlSupport(ILjava/lang/String;)Z
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2238
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2241
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2242
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2243
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2244
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2245
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2246
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2249
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2252
    return v2

    .line 2249
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDMCPhotoSlideshowState(ILjava/lang/String;)I
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2155
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2158
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2160
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2161
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2162
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2163
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2166
    .local v2, _result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2169
    return v2

    .line 2166
    .end local v2           #_result:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getDMCVolumeControlSupport(ILjava/lang/String;)Z
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2209
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2212
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2213
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2214
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2215
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2217
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2220
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2223
    return v2

    .line 2220
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    const-string v0, "com.htc.dlnainterface.IDLNAPluginService"

    return-object v0
.end method

.method public getLocalContentItemDetails(III)V
    .locals 5
    .parameter "cookie"
    .parameter "id"
    .parameter "filterCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2423
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2425
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2426
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2427
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2428
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2429
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2430
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2436
    return-void

    .line 2433
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getPlayPosition(ILjava/lang/String;)J
    .locals 7
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1507
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1510
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1512
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1513
    iget-object v4, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1514
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1515
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1518
    .local v2, _result:J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1521
    return-wide v2

    .line 1518
    .end local v2           #_result:J
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getPlaylistPlayIndex(ILjava/lang/String;)J
    .locals 7
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1533
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1536
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1538
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1539
    iget-object v4, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1b

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1540
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1541
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1544
    .local v2, _result:J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1547
    return-wide v2

    .line 1544
    .end local v2           #_result:J
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getPlaylistTotalCount(ILjava/lang/String;)J
    .locals 7
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1559
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1562
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1564
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1565
    iget-object v4, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1c

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1566
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1567
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1570
    .local v2, _result:J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1573
    return-wide v2

    .line 1570
    .end local v2           #_result:J
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getRendererList(II)V
    .locals 5
    .parameter "cookie"
    .parameter "filterCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 903
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 905
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 915
    return-void

    .line 912
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getRendererThumbnail(ILjava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 954
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 956
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 959
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 960
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 966
    return-void

    .line 963
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getServerList(I)V
    .locals 5
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 878
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 880
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 883
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 889
    return-void

    .line 886
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getServerThumbnail(ILjava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "serverID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 929
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 931
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 934
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 935
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 941
    return-void

    .line 938
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public imageDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1075
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1077
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1081
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1082
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1088
    return-void

    .line 1085
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1849
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1852
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1854
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1855
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1856
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1857
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1858
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1861
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1864
    return v2

    .line 1861
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public lockPlayingContents(ILjava/lang/String;Ljava/lang/String;JZI)V
    .locals 5
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "isBrowsingDown"
    .parameter "filterCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2360
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2362
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2363
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2364
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2365
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2366
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2367
    if-eqz p6, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2368
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2369
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2370
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2376
    return-void

    .line 2373
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public newPlaylist(ILjava/lang/String;Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)Z
    .locals 7
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "playlistInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1130
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1133
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1135
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1136
    if-eqz p3, :cond_0

    .line 1137
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1143
    :goto_0
    iget-object v4, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1148
    .local v2, _result:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1151
    return v2

    .line 1141
    .end local v2           #_result:Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1148
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_1
    move v2, v3

    .line 1145
    goto :goto_1
.end method

.method public newPushPlaylist(ILjava/lang/String;I[IIJ)Z
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "index"
    .parameter "idList"
    .parameter "filterCapability"
    .parameter "durationMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1172
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1175
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1180
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    .line 1182
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1183
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1184
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1187
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1190
    return v2

    .line 1187
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public pause(ILjava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1283
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1285
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1287
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1288
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1289
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1295
    return-void

    .line 1292
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public play(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "serverID"
    .parameter "contentID"
    .parameter "containerID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1672
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1674
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1676
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1677
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1678
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1679
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1680
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1681
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1687
    return-void

    .line 1684
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public playPush(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1699
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1701
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1702
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1703
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1704
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1705
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1706
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1712
    return-void

    .line 1709
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public reArrangePushPlaylist(ILjava/lang/String;I[I)Z
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "newIndex"
    .parameter "idList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2391
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2394
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2396
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2397
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2398
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2399
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2400
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2401
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2404
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2407
    return v2

    .line 2404
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public reSearchDevices(I)V
    .locals 5
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1822
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1824
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1826
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1827
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1833
    return-void

    .line 1830
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    .locals 5
    .parameter "cookie"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 830
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 832
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 835
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 836
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 842
    return-void

    .line 834
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 839
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public resume(ILjava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1259
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1261
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1264
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1271
    return-void

    .line 1268
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public serverSubscribed(ILjava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "serverID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2041
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2043
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2044
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2045
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2046
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2053
    return-void

    .line 2050
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public serverUnsubscribed(ILjava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "serverID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2066
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2068
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2070
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2071
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2072
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2075
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2078
    return-void

    .line 2075
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setBrowseThumbSize(ILjava/lang/String;)Z
    .locals 6
    .parameter "cookie"
    .parameter "sizeSequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2268
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2271
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2272
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2273
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2274
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2275
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2276
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2279
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2282
    return v2

    .line 2279
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setControllingTimeout(J)V
    .locals 5
    .parameter "timeoutMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2017
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2019
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2020
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2021
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2022
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2028
    return-void

    .line 2025
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setDMCPhotoSlideshowState(ILjava/lang/String;I)Z
    .locals 6
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2123
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2126
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2130
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2131
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2132
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2135
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2138
    return v2

    .line 2135
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setDMCThumbSize(ILjava/lang/String;)Z
    .locals 6
    .parameter "cookie"
    .parameter "sizeSequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2328
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2331
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2333
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2334
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2335
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2336
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2339
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2342
    return v2

    .line 2339
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setDMPAlbumArtSize(ILjava/lang/String;)Z
    .locals 6
    .parameter "cookie"
    .parameter "sizeSequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2298
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2301
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2302
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2303
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2304
    iget-object v3, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2305
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2306
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2309
    .local v2, _result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2312
    return v2

    .line 2309
    .end local v2           #_result:Z
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setMute(ILjava/lang/String;Z)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "bMute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1358
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1360
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1362
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1363
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1364
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1365
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1371
    return-void

    .line 1368
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setRepeat(ILjava/lang/String;I)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "repeatMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1437
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1439
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1441
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1443
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1444
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1450
    return-void

    .line 1447
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setSeek(ILjava/lang/String;J)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1384
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1386
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1388
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1390
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1391
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1397
    return-void

    .line 1394
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setShuffle(ILjava/lang/String;Z)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "bShuffle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1410
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1412
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1415
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1423
    return-void

    .line 1420
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setVolume(ILjava/lang/String;I)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1332
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1334
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1338
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1339
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1345
    return-void

    .line 1342
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public startPlaylist(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "contentID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1206
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1208
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1212
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1213
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1219
    return-void

    .line 1216
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public startPushPlaylist(ILjava/lang/String;J)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1233
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1235
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1239
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1246
    return-void

    .line 1243
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public stop(ILjava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1307
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1309
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1312
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1319
    return-void

    .line 1316
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public switchPlaylistNextItem(ILjava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1461
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1463
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1464
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1466
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1473
    return-void

    .line 1470
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public switchPlaylistPrevItem(ILjava/lang/String;)V
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1484
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1486
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1488
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1489
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1490
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1496
    return-void

    .line 1493
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    .locals 5
    .parameter "cookie"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 854
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 856
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/htc/dlnainterface/IDLNAPluginNotify;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 859
    iget-object v2, p0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 860
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 866
    return-void

    .line 858
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 863
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

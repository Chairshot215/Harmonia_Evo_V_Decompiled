.class public abstract Lcom/htc/dlnainterface/IDLNAPluginService$Stub;
.super Landroid/os/Binder;
.source "IDLNAPluginService.java"

# interfaces
.implements Lcom/htc/dlnainterface/IDLNAPluginService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnainterface/IDLNAPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.dlnainterface.IDLNAPluginService"

.field static final TRANSACTION_albumArtDownload:I = 0xb

.field static final TRANSACTION_browse:I = 0x8

.field static final TRANSACTION_browseCancel:I = 0x9

.field static final TRANSACTION_cancelContentThumbnail:I = 0x32

.field static final TRANSACTION_changeDuration:I = 0x1f

.field static final TRANSACTION_changeRendererOutput:I = 0x1e

.field static final TRANSACTION_continueBrowseDown:I = 0x3c

.field static final TRANSACTION_createMediaController:I = 0x22

.field static final TRANSACTION_destroyMediaController:I = 0x23

.field static final TRANSACTION_getContentItemDetails:I = 0x27

.field static final TRANSACTION_getContentThumbnail:I = 0x7

.field static final TRANSACTION_getControlItemInfo:I = 0x28

.field static final TRANSACTION_getControlStatus:I = 0x1d

.field static final TRANSACTION_getControllingRendererID:I = 0x3b

.field static final TRANSACTION_getDMCContentItemDetails:I = 0x24

.field static final TRANSACTION_getDMCCurrentContainerID:I = 0x2a

.field static final TRANSACTION_getDMCCurrentContentID:I = 0x29

.field static final TRANSACTION_getDMCCurrentLocalPlayId:I = 0x2b

.field static final TRANSACTION_getDMCCurrentLocalPlayIndex:I = 0x2f

.field static final TRANSACTION_getDMCMuteControlSupport:I = 0x34

.field static final TRANSACTION_getDMCPhotoSlideshowState:I = 0x31

.field static final TRANSACTION_getDMCVolumeControlSupport:I = 0x33

.field static final TRANSACTION_getLocalContentItemDetails:I = 0x3a

.field static final TRANSACTION_getPlayPosition:I = 0x1a

.field static final TRANSACTION_getPlaylistPlayIndex:I = 0x1b

.field static final TRANSACTION_getPlaylistTotalCount:I = 0x1c

.field static final TRANSACTION_getRendererList:I = 0x4

.field static final TRANSACTION_getRendererThumbnail:I = 0x6

.field static final TRANSACTION_getServerList:I = 0x3

.field static final TRANSACTION_getServerThumbnail:I = 0x5

.field static final TRANSACTION_imageDownload:I = 0xa

.field static final TRANSACTION_isBrowsingCmdDone:I = 0x26

.field static final TRANSACTION_lockPlayingContents:I = 0x38

.field static final TRANSACTION_newPlaylist:I = 0xc

.field static final TRANSACTION_newPushPlaylist:I = 0xd

.field static final TRANSACTION_pause:I = 0x11

.field static final TRANSACTION_play:I = 0x20

.field static final TRANSACTION_playPush:I = 0x21

.field static final TRANSACTION_reArrangePushPlaylist:I = 0x39

.field static final TRANSACTION_reSearchDevices:I = 0x25

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_resume:I = 0x10

.field static final TRANSACTION_serverSubscribed:I = 0x2d

.field static final TRANSACTION_serverUnsubscribed:I = 0x2e

.field static final TRANSACTION_setBrowseThumbSize:I = 0x35

.field static final TRANSACTION_setControllingTimeout:I = 0x2c

.field static final TRANSACTION_setDMCPhotoSlideshowState:I = 0x30

.field static final TRANSACTION_setDMCThumbSize:I = 0x37

.field static final TRANSACTION_setDMPAlbumArtSize:I = 0x36

.field static final TRANSACTION_setMute:I = 0x14

.field static final TRANSACTION_setRepeat:I = 0x17

.field static final TRANSACTION_setSeek:I = 0x15

.field static final TRANSACTION_setShuffle:I = 0x16

.field static final TRANSACTION_setVolume:I = 0x13

.field static final TRANSACTION_startPlaylist:I = 0xe

.field static final TRANSACTION_startPushPlaylist:I = 0xf

.field static final TRANSACTION_stop:I = 0x12

.field static final TRANSACTION_switchPlaylistNextItem:I = 0x18

.field static final TRANSACTION_switchPlaylistPrevItem:I = 0x19

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/dlnainterface/IDLNAPluginService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 831
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 51
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginNotify;

    move-result-object v5

    .line 52
    .local v5, _arg1:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v3, 0x1

    goto :goto_0

    .line 58
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    :sswitch_2
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 62
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginNotify;

    move-result-object v5

    .line 63
    .restart local v5       #_arg1:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v3, 0x1

    goto :goto_0

    .line 69
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    :sswitch_3
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 72
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getServerList(I)V

    .line 73
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    const/4 v3, 0x1

    goto :goto_0

    .line 78
    .end local v4           #_arg0:I
    :sswitch_4
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 82
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 83
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getRendererList(II)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v3, 0x1

    goto :goto_0

    .line 89
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_5
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 93
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getServerThumbnail(ILjava/lang/String;)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 100
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_6
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 104
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 105
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getRendererThumbnail(ILjava/lang/String;)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 111
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_7
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 117
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 120
    .local v7, _arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 126
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:I
    :sswitch_8
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 130
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 132
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 134
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 136
    .local v7, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 138
    .local v9, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .local v10, _arg5:J
    move-object/from16 v3, p0

    .line 139
    invoke-virtual/range {v3 .. v11}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 145
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:J
    .end local v9           #_arg4:I
    .end local v10           #_arg5:J
    :sswitch_9
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 149
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 151
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 153
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .restart local v7       #_arg3:J
    move-object/from16 v3, p0

    .line 154
    invoke-virtual/range {v3 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 160
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:J
    :sswitch_a
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 164
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 166
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 167
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->imageDownload(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 173
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_b
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 177
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 179
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 180
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 186
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_c
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 190
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 192
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    sget-object v3, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    .line 198
    .local v6, _arg2:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newPlaylist(ILjava/lang/String;Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)Z

    move-result v26

    .line 199
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v26, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 196
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    .end local v26           #_result:Z
    :cond_0
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    goto :goto_1

    .line 200
    .restart local v26       #_result:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 205
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    .end local v26           #_result:Z
    :sswitch_d
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 209
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 211
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 213
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 215
    .local v7, _arg3:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 217
    .restart local v9       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .restart local v10       #_arg5:J
    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v9

    move-wide/from16 v18, v10

    .line 218
    invoke-virtual/range {v12 .. v19}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z

    move-result v26

    .line 219
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v26, :cond_2

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 220
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 225
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:[I
    .end local v9           #_arg4:I
    .end local v10           #_arg5:J
    .end local v26           #_result:Z
    :sswitch_e
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 229
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 231
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->startPlaylist(ILjava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 238
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_f
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 242
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 244
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 245
    .local v24, _arg2:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->startPushPlaylist(ILjava/lang/String;J)V

    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 251
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v24           #_arg2:J
    :sswitch_10
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 255
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 256
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->resume(ILjava/lang/String;)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 262
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_11
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 266
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 267
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->pause(ILjava/lang/String;)V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 273
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_12
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 277
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 278
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->stop(ILjava/lang/String;)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 284
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_13
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 288
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 290
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 291
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setVolume(ILjava/lang/String;I)V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 297
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    :sswitch_14
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 301
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 303
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    .line 304
    .local v6, _arg2:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setMute(ILjava/lang/String;Z)V

    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 303
    .end local v6           #_arg2:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 310
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_15
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 314
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 316
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 317
    .restart local v24       #_arg2:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setSeek(ILjava/lang/String;J)V

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 323
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v24           #_arg2:J
    :sswitch_16
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 327
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 329
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v6, 0x1

    .line 330
    .restart local v6       #_arg2:Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setShuffle(ILjava/lang/String;Z)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 329
    .end local v6           #_arg2:Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    .line 336
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_17
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 340
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 342
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 343
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setRepeat(ILjava/lang/String;I)V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 349
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    :sswitch_18
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 353
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 354
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->switchPlaylistNextItem(ILjava/lang/String;)V

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 360
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_19
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 364
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 365
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->switchPlaylistPrevItem(ILjava/lang/String;)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 371
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_1a
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 375
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 376
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getPlayPosition(ILjava/lang/String;)J

    move-result-wide v26

    .line 377
    .local v26, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 379
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 383
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:J
    :sswitch_1b
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 387
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 388
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getPlaylistPlayIndex(ILjava/lang/String;)J

    move-result-wide v26

    .line 389
    .restart local v26       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 391
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 395
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:J
    :sswitch_1c
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 399
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 400
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getPlaylistTotalCount(ILjava/lang/String;)J

    move-result-wide v26

    .line 401
    .restart local v26       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 403
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 407
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:J
    :sswitch_1d
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 411
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 412
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v26

    .line 413
    .local v26, _result:Lcom/htc/dlnainterface/DLNAControllerStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    if-eqz v26, :cond_5

    .line 415
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/dlnainterface/DLNAControllerStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 421
    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 419
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 425
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :sswitch_1e
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 429
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 431
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 432
    .local v6, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->changeRendererOutput(ILjava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 438
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_1f
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 442
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 444
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 445
    .restart local v24       #_arg2:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->changeDuration(ILjava/lang/String;J)V

    .line 446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 451
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v24           #_arg2:J
    :sswitch_20
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 455
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 457
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 459
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 461
    .local v7, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, _arg4:Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    .line 462
    invoke-virtual/range {v12 .. v17}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->play(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 468
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v9           #_arg4:Ljava/lang/String;
    :sswitch_21
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 472
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 474
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 475
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->playPush(ILjava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 481
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_22
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 485
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 487
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 489
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 490
    .restart local v7       #_arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->createMediaController(ILjava/lang/String;ILjava/lang/String;)I

    move-result v26

    .line 491
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 497
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_23
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 501
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 502
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->destroyMediaController(ILjava/lang/String;)V

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 508
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_24
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 512
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 514
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 516
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 517
    .restart local v7       #_arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v26

    .line 518
    .local v26, _result:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v26, :cond_6

    .line 520
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/dlnainterface/DLNAContentItemDetails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 526
    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 524
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 530
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v26           #_result:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :sswitch_25
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 533
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->reSearchDevices(I)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 539
    .end local v4           #_arg0:I
    :sswitch_26
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 543
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 545
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 546
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 547
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v26, :cond_7

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 548
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 553
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_27
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 557
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 559
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 560
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 566
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_28
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 570
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 571
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getControlItemInfo(ILjava/lang/String;)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 577
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_29
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 581
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 582
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 583
    .local v26, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 589
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_2a
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 593
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 594
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 595
    .restart local v26       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 601
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_2b
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 605
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 606
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCCurrentLocalPlayId(ILjava/lang/String;)I

    move-result v26

    .line 607
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 613
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_2c
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 616
    .local v22, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setControllingTimeout(J)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 622
    .end local v22           #_arg0:J
    :sswitch_2d
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 626
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 627
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->serverSubscribed(ILjava/lang/String;)V

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 633
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_2e
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 637
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 638
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->serverUnsubscribed(ILjava/lang/String;)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 644
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_2f
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 648
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 649
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I

    move-result v26

    .line 650
    .restart local v26       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 656
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_30
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 660
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 662
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 663
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    move-result v26

    .line 664
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    if-eqz v26, :cond_8

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 665
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 670
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v26           #_result:Z
    :sswitch_31
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 674
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 675
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCPhotoSlideshowState(ILjava/lang/String;)I

    move-result v26

    .line 676
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 682
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_32
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 686
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 687
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->cancelContentThumbnail(II)V

    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 693
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_33
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 697
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 698
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCVolumeControlSupport(ILjava/lang/String;)Z

    move-result v26

    .line 699
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    if-eqz v26, :cond_9

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 700
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 705
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_34
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 709
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 710
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCMuteControlSupport(ILjava/lang/String;)Z

    move-result v26

    .line 711
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    if-eqz v26, :cond_a

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 712
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 717
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_35
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 721
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 722
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setBrowseThumbSize(ILjava/lang/String;)Z

    move-result v26

    .line 723
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    if-eqz v26, :cond_b

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 724
    :cond_b
    const/4 v3, 0x0

    goto :goto_c

    .line 729
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_36
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 733
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 734
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setDMPAlbumArtSize(ILjava/lang/String;)Z

    move-result v26

    .line 735
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    if-eqz v26, :cond_c

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 736
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 741
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_37
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 745
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 746
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setDMCThumbSize(ILjava/lang/String;)Z

    move-result v26

    .line 747
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    if-eqz v26, :cond_d

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 748
    :cond_d
    const/4 v3, 0x0

    goto :goto_e

    .line 753
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_38
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 757
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 759
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 761
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 763
    .local v7, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    const/4 v9, 0x1

    .line 765
    .local v9, _arg4:Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, _arg5:I
    move-object/from16 v3, p0

    .line 766
    invoke-virtual/range {v3 .. v10}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->lockPlayingContents(ILjava/lang/String;Ljava/lang/String;JZI)V

    .line 767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 763
    .end local v9           #_arg4:Z
    .end local v10           #_arg5:I
    :cond_e
    const/4 v9, 0x0

    goto :goto_f

    .line 772
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:J
    :sswitch_39
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 776
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 778
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 780
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 781
    .local v7, _arg3:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->reArrangePushPlaylist(ILjava/lang/String;I[I)Z

    move-result v26

    .line 782
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    if-eqz v26, :cond_f

    const/4 v3, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 783
    :cond_f
    const/4 v3, 0x0

    goto :goto_10

    .line 788
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:[I
    .end local v26           #_result:Z
    :sswitch_3a
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 792
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 794
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 795
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getLocalContentItemDetails(III)V

    .line 796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 801
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_3b
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 804
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getControllingRendererID(I)Ljava/lang/String;

    move-result-object v26

    .line 805
    .local v26, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 807
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 811
    .end local v4           #_arg0:I
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_3c
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 815
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 817
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 819
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 821
    .local v7, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 823
    .local v18, _arg4:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 825
    .restart local v10       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .local v21, _arg6:I
    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move-wide/from16 v16, v7

    move/from16 v20, v10

    .line 826
    invoke-virtual/range {v12 .. v21}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V

    .line 827
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

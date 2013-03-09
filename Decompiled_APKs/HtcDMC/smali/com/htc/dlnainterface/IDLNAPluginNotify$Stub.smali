.class public abstract Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
.super Landroid/os/Binder;
.source "IDLNAPluginNotify.java"

# interfaces
.implements Lcom/htc/dlnainterface/IDLNAPluginNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnainterface/IDLNAPluginNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.dlnainterface.IDLNAPluginNotify"

.field static final TRANSACTION_albumArtDownloadedNotify:I = 0xf

.field static final TRANSACTION_contentAddedNotify:I = 0xa

.field static final TRANSACTION_contentBrowsingDoneNotify:I = 0xb

.field static final TRANSACTION_contentBrowsingErrorNotify:I = 0xc

.field static final TRANSACTION_contentThumbnailUpdateNotify:I = 0x9

.field static final TRANSACTION_contentUpdatedNotify:I = 0xd

.field static final TRANSACTION_controllerErrorNotify:I = 0x14

.field static final TRANSACTION_controllerResponseNotify:I = 0x15

.field static final TRANSACTION_getContentItemDetailsNotify:I = 0x16

.field static final TRANSACTION_imageDownloadedNotify:I = 0xe

.field static final TRANSACTION_playlistCreatedResultNotify:I = 0x10

.field static final TRANSACTION_rendererAddedNotify:I = 0x4

.field static final TRANSACTION_rendererListUpdateNotify:I = 0x6

.field static final TRANSACTION_rendererRemovedNotify:I = 0x5

.field static final TRANSACTION_rendererThumbnailUpdateNotify:I = 0x8

.field static final TRANSACTION_serverAddedNotify:I = 0x1

.field static final TRANSACTION_serverListUpdateNotify:I = 0x3

.field static final TRANSACTION_serverRemovedNotify:I = 0x2

.field static final TRANSACTION_serverThumbnailUpdateNotify:I = 0x7

.field static final TRANSACTION_updateControlItemInfo:I = 0x12

.field static final TRANSACTION_updateControlItemThumbnail:I = 0x13

.field static final TRANSACTION_updateControllerStatus:I = 0x11

.field static final TRANSACTION_updateDownloadStoreAlbumArtNotify:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {p0, p0, v0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginNotify;
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
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 16
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

    .line 324
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x1

    goto :goto_0

    .line 57
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_2
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 63
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    const/4 v1, 0x1

    goto :goto_0

    .line 69
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_3
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/htc/dlnainterface/DLNAServerData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/dlnainterface/DLNAServerData;

    .line 72
    .local v2, _arg0:[Lcom/htc/dlnainterface/DLNAServerData;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V

    .line 73
    const/4 v1, 0x1

    goto :goto_0

    .line 77
    .end local v2           #_arg0:[Lcom/htc/dlnainterface/DLNAServerData;
    :sswitch_4
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    sget-object v1, Lcom/htc/dlnainterface/DLNARendererData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/DLNARendererData;

    .line 85
    .local v2, _arg0:Lcom/htc/dlnainterface/DLNARendererData;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V

    .line 86
    const/4 v1, 0x1

    goto :goto_0

    .line 83
    .end local v2           #_arg0:Lcom/htc/dlnainterface/DLNARendererData;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg0:Lcom/htc/dlnainterface/DLNARendererData;
    goto :goto_1

    .line 90
    .end local v2           #_arg0:Lcom/htc/dlnainterface/DLNARendererData;
    :sswitch_5
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 96
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 97
    .restart local v4       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 102
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_6
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    sget-object v1, Lcom/htc/dlnainterface/DLNARendererData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/dlnainterface/DLNARendererData;

    .line 105
    .local v2, _arg0:[Lcom/htc/dlnainterface/DLNARendererData;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V

    .line 106
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 110
    .end local v2           #_arg0:[Lcom/htc/dlnainterface/DLNARendererData;
    :sswitch_7
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 120
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_8
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 125
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 130
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_9
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 137
    .restart local v4       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 142
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_a
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 150
    .local v4, _arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, _arg3:J
    move-object/from16 v1, p0

    .line 151
    invoke-virtual/range {v1 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 152
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 156
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:J
    .end local v6           #_arg3:J
    :sswitch_b
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 164
    .restart local v4       #_arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 166
    .restart local v6       #_arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v8, 0x1

    .local v8, _arg4:Z
    :goto_2
    move-object/from16 v1, p0

    .line 167
    invoke-virtual/range {v1 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 168
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 166
    .end local v8           #_arg4:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 172
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:J
    .end local v6           #_arg3:J
    :sswitch_c
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 176
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 178
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 180
    .restart local v4       #_arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 182
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg4:Ljava/lang/String;
    move-object/from16 v9, p0

    move-object v10, v2

    move-object v11, v3

    move-wide v12, v4

    move v14, v6

    move-object v15, v8

    .line 183
    invoke-virtual/range {v9 .. v15}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 184
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 188
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:J
    .end local v6           #_arg3:I
    .end local v8           #_arg4:Ljava/lang/String;
    :sswitch_d
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 193
    .local v11, _arg1:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v12}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentUpdatedNotify(Ljava/lang/String;J)V

    .line 194
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 198
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v11           #_arg1:J
    :sswitch_e
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 210
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_f
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 216
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 217
    .restart local v4       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 222
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_10
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 228
    .restart local v11       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, _arg2:J
    move-object/from16 v9, p0

    move-object v10, v2

    move-wide v13, v4

    .line 229
    invoke-virtual/range {v9 .. v14}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->playlistCreatedResultNotify(Ljava/lang/String;JJ)V

    .line 230
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 234
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v4           #_arg2:J
    .end local v11           #_arg1:J
    :sswitch_11
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    sget-object v1, Lcom/htc/dlnainterface/DLNAControllerStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/DLNAControllerStatus;

    .line 242
    .local v2, _arg0:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V

    .line 243
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 240
    .end local v2           #_arg0:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg0:Lcom/htc/dlnainterface/DLNAControllerStatus;
    goto :goto_3

    .line 247
    .end local v2           #_arg0:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :sswitch_12
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    sget-object v1, Lcom/htc/dlnainterface/DLNAControlItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/DLNAControlItemData;

    .line 255
    .local v2, _arg0:Lcom/htc/dlnainterface/DLNAControlItemData;
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V

    .line 256
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 253
    .end local v2           #_arg0:Lcom/htc/dlnainterface/DLNAControlItemData;
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg0:Lcom/htc/dlnainterface/DLNAControlItemData;
    goto :goto_4

    .line 260
    .end local v2           #_arg0:Lcom/htc/dlnainterface/DLNAControlItemData;
    :sswitch_13
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 266
    .restart local v11       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v12, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V

    .line 268
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 272
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v11           #_arg1:J
    :sswitch_14
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 276
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 278
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 279
    .restart local v4       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V

    .line 280
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 284
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_15
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 291
    .restart local v4       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 296
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_16
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 303
    sget-object v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 308
    .local v4, _arg2:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V

    .line 309
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 306
    .end local v4           #_arg2:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #_arg2:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    goto :goto_5

    .line 313
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :sswitch_17
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 317
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 319
    .restart local v11       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v12, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V

    .line 321
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

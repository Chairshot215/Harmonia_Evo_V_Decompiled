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

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-virtual {p0, p0, v0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginNotify;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/htc/dlnainterface/IDLNAPluginNotify;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/dlnainterface/DLNAServerData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/dlnainterface/DLNAServerData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/dlnainterface/DLNARendererData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/DLNARendererData;

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/dlnainterface/DLNARendererData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/dlnainterface/DLNARendererData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v8, 0x1

    :goto_2
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :sswitch_c
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p0

    move-object v10, v2

    move-object v11, v3

    move-wide v12, v4

    move v14, v6

    move-object v15, v8

    invoke-virtual/range {v9 .. v15}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v12}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->contentUpdatedNotify(Ljava/lang/String;J)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v9, p0

    move-object v10, v2

    move-wide v13, v4

    invoke-virtual/range {v9 .. v14}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->playlistCreatedResultNotify(Ljava/lang/String;JJ)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/dlnainterface/DLNAControllerStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/DLNAControllerStatus;

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_12
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/htc/dlnainterface/DLNAControlItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnainterface/DLNAControlItemData;

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :sswitch_13
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v12, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/dlnainterface/DLNAContentItemDetails;

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    :sswitch_17
    const-string v1, "com.htc.dlnainterface.IDLNAPluginNotify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v12, v4}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

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

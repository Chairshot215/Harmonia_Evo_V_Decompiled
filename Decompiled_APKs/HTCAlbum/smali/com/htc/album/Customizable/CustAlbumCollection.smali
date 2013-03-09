.class public Lcom/htc/album/Customizable/CustAlbumCollection;
.super Ljava/lang/Object;
.source "CustAlbumCollection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomerFolderResourceId(Ljava/lang/String;)I
    .locals 1
    .parameter "szBucketId"

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public static getCustomerSourceType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "szBucketId"
    .parameter "szFilePath"

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, nSourceType:I
    return v0
.end method

.method public static getLocalPhotoAdater(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;ILjava/lang/Object;)Lcom/htc/opensense2/album/AdapterBase;
    .locals 8
    .parameter "activity"
    .parameter "hHander"
    .parameter "szFolderType"
    .parameter "nMediaType"
    .parameter "objRequest"
    .parameter "nCacheSize"
    .parameter "objExtra"

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, adapter:Lcom/htc/opensense2/album/AdapterBase;
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .end local v0           #adapter:Lcom/htc/opensense2/album/AdapterBase;
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILjava/lang/Object;IZLjava/lang/Object;)V

    .line 24
    .restart local v0       #adapter:Lcom/htc/opensense2/album/AdapterBase;
    return-object v0
.end method

.method public static isCustomerSmartFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "szBucketId"

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public static setTextColor_PhotoCount(Landroid/widget/TextView;)V
    .locals 0
    .parameter "txtView"

    .prologue
    .line 29
    return-void
.end method

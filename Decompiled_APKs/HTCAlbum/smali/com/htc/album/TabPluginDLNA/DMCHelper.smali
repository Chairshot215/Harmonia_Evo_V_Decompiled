.class public Lcom/htc/album/TabPluginDLNA/DMCHelper;
.super Ljava/lang/Object;
.source "DMCHelper.java"


# static fields
.field public static final CLASS_DMC:Ljava/lang/String; = "com.htc.dmc.HtcDMCAlbum"

.field public static final DMRSERVER_PICKPHOTO:I = 0x1

.field public static final DMRSERVER_PICKVIDEO:I = 0x2

.field public static final LOG_TAG:Ljava/lang/String; = "DMCHelper"

.field public static final PACKAGE_DMC:Ljava/lang/String; = "com.htc.dmc"

.field private static gDMR:Ljava/lang/String;

.field private static gDMS:Ljava/lang/String;

.field private static gFilterCap:I

.field private static gInDirect:Z

.field private static gPickDMRParam:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    sput-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMR:Ljava/lang/String;

    .line 31
    sput-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMS:Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    sput v0, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gFilterCap:I

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gInDirect:Z

    .line 34
    sput-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gPickDMRParam:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndLaunchDMC(Landroid/app/Activity;)Z
    .locals 15
    .parameter "activity"

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x4

    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 404
    const-string v0, "DMCHelper"

    const-string v3, "[HTCAlbum][ActivityMainDropList][checkAndLaunchDMC]..."

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v8, 0x0

    .line 408
    .local v8, bResult:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 409
    .local v11, intent:Landroid/content/Intent;
    if-nez v11, :cond_0

    move v9, v8

    .line 471
    .end local v8           #bResult:Z
    .local v9, bResult:I
    :goto_0
    return v9

    .line 412
    .end local v9           #bResult:I
    .restart local v8       #bResult:Z
    :cond_0
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, action:Ljava/lang/String;
    if-nez v6, :cond_1

    move v9, v8

    .line 414
    .restart local v9       #bResult:I
    goto :goto_0

    .line 416
    .end local v9           #bResult:I
    :cond_1
    const-string v0, "DMCHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityMainDropList][checkAndLaunchDMC]action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/4 v7, 0x0

    .line 420
    .local v7, bLaunchDMC:Z
    invoke-static {p0, v12}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getFilterCap(Landroid/content/Context;Z)I

    move-result v10

    .line 422
    .local v10, dmcfiltercap:I
    const-string v0, "DMCHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityMainDropList][checkAndLaunchDMC]dcmfiltercap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 426
    const/4 v7, 0x1

    .line 441
    :cond_2
    :goto_1
    if-eqz v7, :cond_5

    .line 443
    const-string v0, "DMCHelper"

    const-string v3, "[HTCAlbum][ActivityMainDropList][checkAndLaunchDMC]..."

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {p0, v12}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, dmr:Ljava/lang/String;
    invoke-static {p0, v12}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMS(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, dms:Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v12, :cond_4

    if-eq v10, v13, :cond_3

    if-ne v10, v14, :cond_4

    .line 452
    :cond_3
    if-ne v10, v13, :cond_8

    .line 454
    const-string v3, ""

    const-string v4, "invalid"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerPhotos(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 461
    :goto_2
    const/4 v8, 0x1

    .line 464
    :cond_4
    if-eqz v8, :cond_5

    .line 466
    const-string v0, "DMCHelper"

    const-string v3, "[HTCAlbum][ActivityMainDropList][checkAndLaunchDMC] finish activity drop list"

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .end local v1           #dmr:Ljava/lang/String;
    .end local v2           #dms:Ljava/lang/String;
    :cond_5
    move v9, v8

    .line 471
    .restart local v9       #bResult:I
    goto :goto_0

    .line 428
    .end local v9           #bResult:I
    :cond_6
    const-string v0, "com.htc.album.action.ALL_VIDEOS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 431
    if-ne v10, v14, :cond_2

    .line 432
    const/4 v7, 0x1

    goto :goto_1

    .line 434
    :cond_7
    const-string v0, "com.htc.album.action.MainEntry"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    if-ne v10, v13, :cond_2

    .line 438
    const/4 v7, 0x1

    goto :goto_1

    .line 458
    .restart local v1       #dmr:Ljava/lang/String;
    .restart local v2       #dms:Ljava/lang/String;
    :cond_8
    const-string v3, ""

    const-string v4, "invalid"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public static getDMR(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "bRefresh"

    .prologue
    .line 271
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 272
    const/4 v1, 0x0

    .line 281
    :goto_0
    return-object v1

    .line 274
    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMR:Ljava/lang/String;

    goto :goto_0

    .line 276
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    sget-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMR:Ljava/lang/String;

    goto :goto_0

    .line 279
    :cond_2
    const-string v1, "DMR"

    sget-object v2, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMR:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMR:Ljava/lang/String;

    .line 281
    sget-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMR:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDMS(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "bRefresh"

    .prologue
    .line 304
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 305
    const/4 v1, 0x0

    .line 314
    :goto_0
    return-object v1

    .line 307
    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMS:Ljava/lang/String;

    goto :goto_0

    .line 309
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 310
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    sget-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMS:Ljava/lang/String;

    goto :goto_0

    .line 312
    :cond_2
    const-string v1, "DMS"

    sget-object v2, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMS:Ljava/lang/String;

    .line 314
    sget-object v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMS:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getFilterCap(Landroid/content/Context;Z)I
    .locals 3
    .parameter "context"
    .parameter "bRefresh"

    .prologue
    .line 337
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 338
    const/4 v1, -0x1

    .line 347
    :goto_0
    return v1

    .line 340
    :cond_0
    if-nez p1, :cond_1

    sget v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gFilterCap:I

    goto :goto_0

    .line 342
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 343
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    sget v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gFilterCap:I

    goto :goto_0

    .line 345
    :cond_2
    const-string v1, "FilterCap"

    sget v2, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gFilterCap:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gFilterCap:I

    .line 347
    sget v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gFilterCap:I

    goto :goto_0
.end method

.method public static getInDirect(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "bRefresh"

    .prologue
    .line 367
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 368
    const/4 v1, 0x0

    .line 377
    :goto_0
    return v1

    .line 370
    :cond_0
    if-nez p1, :cond_1

    sget-boolean v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gInDirect:Z

    goto :goto_0

    .line 372
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 373
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    sget-boolean v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gInDirect:Z

    goto :goto_0

    .line 375
    :cond_2
    const-string v1, "InDirect"

    sget-boolean v2, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gInDirect:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gInDirect:Z

    .line 377
    sget-boolean v1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gInDirect:Z

    goto :goto_0
.end method

.method public static getPickDMRParam()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gPickDMRParam:Ljava/lang/Object;

    return-object v0
.end method

.method public static isDMCLaunch(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, bResult:Z
    if-nez p0, :cond_1

    .line 399
    .end local v0           #bResult:Z
    :cond_0
    :goto_0
    return v0

    .line 385
    .restart local v0       #bResult:Z
    :cond_1
    const/4 v1, 0x0

    .line 387
    .local v1, szDMCLaunch:Ljava/lang/String;
    const-string v2, "DMCHelper"

    const-string v3, "[HTCAlbum][DMCHelper][isDMCLaunch]: Begin"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getDMCLaunchUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 391
    const-string v2, "DMCHelper"

    const-string v3, "[HTCAlbum][DMCHelper][isDMCLaunch]: exits..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_2
    const-string v2, "DMCHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][DMCHelper][isDMCLaunch]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static launchDMCLocalPhotos(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;ILandroid/os/Bundle;)V
    .locals 18
    .parameter "activity"
    .parameter "dmr"
    .parameter "imageList"
    .parameter "pos"
    .parameter "params"

    .prologue
    .line 198
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-interface/range {p2 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v16

    .line 201
    .local v16, selectImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v16, :cond_3

    const/4 v15, -0x1

    .line 203
    .local v15, selectId:I
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v11, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    if-ge v8, v1, :cond_5

    .line 206
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v12

    .line 207
    .local v12, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v12, :cond_2

    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 201
    .end local v8           #i:I
    .end local v11           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v15           #selectId:I
    :cond_3
    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v1

    long-to-int v15, v1

    goto :goto_1

    .line 209
    .restart local v8       #i:I
    .restart local v11       #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v15       #selectId:I
    :cond_4
    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 212
    .end local v12           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v10, v1, [I

    .line 213
    .local v10, idArray:[I
    const/4 v13, 0x0

    .line 214
    .local v13, index:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 215
    .local v17, v:Ljava/lang/Integer;
    add-int/lit8 v14, v13, 0x1

    .end local v13           #index:I
    .local v14, index:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v10, v13

    move v13, v14

    .end local v14           #index:I
    .restart local v13       #index:I
    goto :goto_4

    .line 217
    .end local v17           #v:Ljava/lang/Integer;
    :cond_6
    array-length v1, v10

    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 219
    const-string v1, "DMCHelper"

    const-string v2, "List change, find new pos."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v8, 0x0

    :goto_5
    array-length v1, v10

    if-ge v8, v1, :cond_8

    .line 221
    aget v1, v10, v8

    if-ne v1, v15, :cond_7

    .line 222
    move/from16 p3, v8

    .line 220
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 225
    :cond_8
    if-nez p4, :cond_9

    .line 226
    new-instance p4, Landroid/os/Bundle;

    .end local p4
    invoke-direct/range {p4 .. p4}, Landroid/os/Bundle;-><init>()V

    .line 228
    .restart local p4
    :cond_9
    const-string v1, "DLNA_IDLIST"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 230
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setFilterCap(Landroid/content/Context;I)V

    .line 231
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.htc.album/photo"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchLocalDMC(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public static launchDMCLocalVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .parameter "activity"
    .parameter "dmr"
    .parameter "filePath"
    .parameter "mimetype"
    .parameter "params"

    .prologue
    .line 190
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setFilterCap(Landroid/content/Context;I)V

    .line 193
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchLocalDMC(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static launchDMCServerPhotos(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "activity"
    .parameter "dmr"
    .parameter "server"
    .parameter "container"
    .parameter "content"
    .parameter "params"

    .prologue
    const/4 v6, 0x2

    .line 236
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-static {p0, v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setFilterCap(Landroid/content/Context;I)V

    .line 239
    const-string v5, "com.htc.album/photo"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchServerDMC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static launchDMCServerVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "activity"
    .parameter "dmr"
    .parameter "server"
    .parameter "container"
    .parameter "content"
    .parameter "params"

    .prologue
    .line 244
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setFilterCap(Landroid/content/Context;I)V

    .line 248
    const-string v5, "com.htc.album/video"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchServerDMC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static launchLocalDMC(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .parameter "activity"
    .parameter "dmr"
    .parameter "mode"
    .parameter "filePath"
    .parameter "content"
    .parameter "type"
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 74
    const/4 v3, 0x0

    .line 75
    .local v3, idArray:[I
    if-eqz p6, :cond_0

    .line 76
    const-string v6, "DLNA_IDLIST"

    invoke-virtual {p6, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 78
    :cond_0
    const-string v7, "DMCHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "launch local DMC. dmr: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", filePath "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", list "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v3, :cond_4

    const-string v6, "None"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v5, 0x3

    .line 82
    .local v5, interval:I
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "slide_show_duration_setting"

    const-string v8, "3"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 89
    :goto_1
    invoke-static {p0, v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMS(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "Render"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v6, "cookie"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v6, "Mode"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string v6, "filepath"

    invoke-virtual {v4, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v6, "content"

    invoke-virtual {v4, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v6, "Extras"

    invoke-virtual {v4, v6, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    const-string v6, "interval"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    if-eqz v3, :cond_1

    .line 99
    const-string v6, "pushlist"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 100
    :cond_1
    const-string v6, "com.htc.dmc"

    const-string v7, "com.htc.dmc.HtcDMCAlbum"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v4, p5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/high16 v6, 0x400

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    :try_start_1
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    const-string v6, "DMCHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Finish activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 118
    .local v0, actParent:Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 119
    .local v1, actTop:Landroid/app/Activity;
    :cond_2
    if-nez v1, :cond_5

    if-nez v0, :cond_3

    move-object v0, p0

    .line 120
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 121
    .end local v0           #actParent:Landroid/app/Activity;
    .end local v1           #actTop:Landroid/app/Activity;
    :goto_3
    return-void

    .line 78
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #interval:I
    :cond_4
    array-length v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 108
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #interval:I
    :catch_0
    move-exception v2

    .line 110
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "DMCHelper"

    const-string v7, "start dmc activity fail"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #actParent:Landroid/app/Activity;
    .restart local v1       #actTop:Landroid/app/Activity;
    :cond_5
    move-object v0, v1

    .line 119
    goto :goto_2

    .line 84
    .end local v0           #actParent:Landroid/app/Activity;
    .end local v1           #actTop:Landroid/app/Activity;
    .end local v4           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v6

    goto/16 :goto_1
.end method

.method private static launchServerDMC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 15
    .parameter "activity"
    .parameter "dmr"
    .parameter "server"
    .parameter "container"
    .parameter "content"
    .parameter "type"
    .parameter "mode"
    .parameter "params"

    .prologue
    .line 125
    const-string v12, "DMCHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "launch server DMC. dmr: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", server "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", content "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMS(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    const/4 v8, 0x3

    .line 131
    .local v8, interval:I
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "slide_show_duration_setting"

    const-string v14, "3"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 138
    :goto_0
    const-wide/16 v10, -0x1

    .local v10, startIdx:J
    const-wide/16 v5, -0x1

    .line 139
    .local v5, endIdx:J
    const/4 v3, 0x0

    .line 140
    .local v3, direction:I
    const/4 v9, 0x0

    .line 142
    .local v9, location:Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 144
    const-string v12, "startIdx"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 145
    const-string v12, "endIdx"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 146
    const-string v12, "direction"

    const/4 v13, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 147
    const-string v12, "location"

    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 149
    const-string v12, "tab_default"

    const v13, 0x7f0b00b0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v7, intent:Landroid/content/Intent;
    const-string v12, "Render"

    move-object/from16 v0, p1

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v12, "Server"

    move-object/from16 v0, p2

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v12, "container"

    move-object/from16 v0, p3

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v12, "cookie"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const-string v12, "Mode"

    move/from16 v0, p6

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v12, "content"

    move-object/from16 v0, p4

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v12, "startIdx"

    invoke-virtual {v7, v12, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 160
    const-string v12, "endIdx"

    invoke-virtual {v7, v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 161
    const-string v12, "direction"

    invoke-virtual {v7, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v12, "Extras"

    move-object/from16 v0, p7

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 163
    const-string v12, "interval"

    invoke-virtual {v7, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    if-eqz v9, :cond_1

    .line 165
    const-string v12, "filepath"

    invoke-virtual {v7, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    :cond_1
    const-string v12, "com.htc.dmc"

    const-string v13, "com.htc.dmc.HtcDMCAlbum"

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const/high16 v12, 0x400

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    :try_start_1
    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    const-string v12, "DMCHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Finish activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 183
    .local v1, actParent:Landroid/app/Activity;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 184
    .local v2, actTop:Landroid/app/Activity;
    :goto_1
    if-nez v2, :cond_4

    if-nez v1, :cond_2

    move-object v1, p0

    .line 185
    :cond_2
    :goto_2
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 186
    .end local v1           #actParent:Landroid/app/Activity;
    .end local v2           #actTop:Landroid/app/Activity;
    :goto_3
    return-void

    .line 173
    :catch_0
    move-exception v4

    .line 175
    .local v4, e:Ljava/lang/Exception;
    const-string v12, "DMCHelper"

    const-string v13, "start dmc activity fail"

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 183
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #actParent:Landroid/app/Activity;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2       #actTop:Landroid/app/Activity;
    :cond_4
    move-object v1, v2

    .line 184
    goto :goto_2

    .line 133
    .end local v1           #actParent:Landroid/app/Activity;
    .end local v2           #actTop:Landroid/app/Activity;
    .end local v3           #direction:I
    .end local v5           #endIdx:J
    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #location:Ljava/lang/String;
    .end local v10           #startIdx:J
    :catch_1
    move-exception v12

    goto/16 :goto_0
.end method

.method public static pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V
    .locals 7
    .parameter "activity"
    .parameter "serverType"
    .parameter "resultMsgId"
    .parameter "inDirectMode"
    .parameter "param"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 41
    if-nez p0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 43
    :cond_0
    sput-object p4, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gPickDMRParam:Ljava/lang/Object;

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, filter:I
    and-int/lit8 v5, p1, 0x1

    if-ne v5, v3, :cond_1

    .line 47
    or-int/lit8 v1, v1, 0x2

    .line 48
    :cond_1
    and-int/lit8 v5, p1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 49
    or-int/lit8 v1, v1, 0x4

    .line 51
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.htc.dmc"

    const-string v6, "com.htc.dmc.DmrListActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v5, "cookie"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string v5, "filter"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    const-string v5, "directmode"

    if-eqz p3, :cond_3

    :goto_1
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    :try_start_0
    invoke-virtual {p0, v2, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DMCHelper"

    const-string v4, "start DMR list activity fail"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    move v3, v4

    .line 55
    goto :goto_1
.end method

.method public static setDMR(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "dmr"

    .prologue
    .line 253
    sput-object p1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMR:Ljava/lang/String;

    .line 255
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 256
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 261
    if-nez p1, :cond_2

    .line 262
    const-string v2, "DMR"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 264
    :cond_2
    const-string v2, "DMR"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setDMS(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "dms"

    .prologue
    .line 286
    sput-object p1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gDMS:Ljava/lang/String;

    .line 288
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 289
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 292
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 294
    if-nez p1, :cond_2

    .line 295
    const-string v2, "DMS"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 299
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 297
    :cond_2
    const-string v2, "DMS"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setFilterCap(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "filterCap"

    .prologue
    .line 319
    sput p1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gFilterCap:I

    .line 321
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 322
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 325
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 327
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 328
    const-string v2, "FilterCap"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 332
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 330
    :cond_2
    const-string v2, "FilterCap"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setInDirect(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "inDirect"

    .prologue
    .line 352
    sput-boolean p1, Lcom/htc/album/TabPluginDLNA/DMCHelper;->gInDirect:Z

    .line 354
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 355
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 358
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 360
    const-string v2, "InDirect"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

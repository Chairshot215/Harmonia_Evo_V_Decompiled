.class public Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;
.super Lcom/htc/home/personalize/widget/SkinPickerAdapter;
.source "PhoneSkinPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SkinPicker.SkinPickerAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultPaint:Landroid/graphics/Paint;

.field protected mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

.field protected mSkinList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "nPanelItemResource"
    .parameter "nListItemResource"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;-><init>(Landroid/content/Context;II)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    .line 51
    iput-object p1, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mDefaultPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mDefaultPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 54
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mDefaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 55
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mDefaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getSkinListfromCommonControl()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 249
    iget-object v4, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    .line 251
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    .line 256
    :goto_0
    iget-object v4, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinPackageName(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    .line 258
    iget-object v4, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    new-instance v5, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$1;

    invoke-direct {v5, p0}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$1;-><init>(Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 285
    iget-object v4, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 286
    .local v3, nIdxDefaultSkin:I
    if-lez v3, :cond_1

    .line 288
    iget-object v4, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, bDefaultSkinInserted:Z
    iget-object v4, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 292
    iget-object v5, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/htc/util/skin/HtcSkinUtil;->isSystemApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 294
    iget-object v4, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    const-string v6, "default"

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 295
    const/4 v0, 0x1

    .line 300
    :cond_0
    if-nez v0, :cond_1

    .line 301
    iget-object v4, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    const-string v5, "default"

    invoke-virtual {v4, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 304
    .end local v0           #bDefaultSkinInserted:Z
    .end local v1           #i:I
    :cond_1
    iget-object v4, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 305
    .local v2, nCount:I
    iput v7, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnCountOfPreDefinedSkin:I

    .line 306
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 308
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->isDefaultSkin(I)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 310
    iget v4, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnCountOfPreDefinedSkin:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnCountOfPreDefinedSkin:I

    .line 306
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 253
    .end local v1           #i:I
    .end local v2           #nCount:I
    .end local v3           #nIdxDefaultSkin:I
    :cond_3
    iget-object v4, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 290
    .restart local v0       #bDefaultSkinInserted:Z
    .restart local v1       #i:I
    .restart local v3       #nIdxDefaultSkin:I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 314
    .end local v0           #bDefaultSkinInserted:Z
    .restart local v2       #nCount:I
    :cond_5
    return-void
.end method


# virtual methods
.method public SetDeleteMode(ZI)V
    .locals 5
    .parameter "bDeleteMode"
    .parameter "nSelectedId"

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-object v2, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 151
    .local v1, nListCount:I
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteIndicator:[Z

    .line 152
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteIndicator:[Z

    .line 153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 155
    iget-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteIndicator:[Z

    aput-boolean v3, v2, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 159
    iput v3, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteSkinCount:I

    .line 160
    invoke-virtual {p0, p2}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->SwitchDeleteFlagForSkinItem(I)V

    .line 162
    :cond_1
    iput-boolean p1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteMode:Z

    .line 163
    const-string v2, "SkinPicker.SkinPickerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETEMODE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public applySkinPackage(ILcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;)V
    .locals 4
    .parameter "nIndex"
    .parameter "listener"

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->getSkinPackageNameByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, packageName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 346
    const-string v1, "SkinPicker.SkinPickerAdapter"

    const-string v2, "invalid package name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_0
    return-void

    .line 349
    :cond_0
    const-string v1, "SkinPicker.SkinPickerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apply skin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/home/personalize/PersonalizeCarousel;->launchHome(Landroid/content/Context;)V

    .line 355
    iget-object v1, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    invoke-interface {p2}, Lcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;->notifyComplete()V

    .line 357
    iget-object v1, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->applySkinWithWallpaperFromPackageName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteSelectedSkins()V
    .locals 11

    .prologue
    .line 362
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, strCurrentSkin:Ljava/lang/String;
    sget-object v7, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mArrayDeleteSkin:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 364
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->GetDeleteIndicatorList()[Z

    move-result-object v0

    .line 365
    .local v0, arrayDeleteIndicator:[Z
    array-length v4, v0

    .line 366
    .local v4, nLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 368
    const/4 v7, 0x1

    aget-boolean v8, v0, v1

    if-ne v7, v8, :cond_0

    .line 370
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->getSkinPackageNameByIndex(I)Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, strDeleteSkin:Ljava/lang/String;
    sget-object v7, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mArrayDeleteSkin:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 374
    if-eqz v1, :cond_1

    .line 376
    iget v7, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mSelectedSkinId:I

    new-instance v8, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$2;

    invoke-direct {v8, p0}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$2;-><init>(Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;)V

    invoke-virtual {p0, v7, v8}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->applySkinPackage(ILcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;)V

    .line 396
    :goto_1
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->moveFocusToSkin(Ljava/lang/String;)I

    .line 366
    .end local v6           #strDeleteSkin:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .restart local v6       #strDeleteSkin:Ljava/lang/String;
    :cond_1
    iget v7, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mSelectedSkinId:I

    new-instance v8, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$3;

    invoke-direct {v8, p0}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$3;-><init>(Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;)V

    invoke-virtual {p0, v7, v8}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->applySkinPackage(ILcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;)V

    goto :goto_1

    .line 400
    .end local v6           #strDeleteSkin:Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mArrayDeleteSkin:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 401
    .local v3, nDeleteCount:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v3, :cond_3

    .line 403
    sget-object v7, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mArrayDeleteSkin:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 404
    .restart local v6       #strDeleteSkin:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;

    iget-object v9, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mSkinPickerHandler:Landroid/os/Handler;

    invoke-direct {v8, v9, v6, v10}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$SkinUninstallObserver;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {v7, v6, v8}, Lcom/htc/home/personalize/util/FileHelper;->uninstallApk(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;)V

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 406
    .end local v6           #strDeleteSkin:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnCountOfPreDefinedSkin:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDownloadSkinCount()I
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnCountOfPreDefinedSkin:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getIndexByPackageName(Ljava/lang/String;)I
    .locals 1
    .parameter "strPackage"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "nPos"

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSkinListSize()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSkinNameByPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "strPackage"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getSkinNameByPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkinPackageNameByIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 214
    .local v0, strSkinPackageName:Ljava/lang/String;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #strSkinPackageName:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 219
    .restart local v0       #strSkinPackageName:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "nPos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x65

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 78
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnViewType:I

    const/16 v2, 0x66

    if-ne v0, v2, :cond_0

    .line 80
    const-string v0, "SkinPicker.SkinPickerAdapter"

    const-string v2, "do not know the view type"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 145
    :goto_0
    monitor-exit p0

    return-object v0

    .line 84
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnViewType:I

    if-eq v0, v2, :cond_2

    .line 86
    :cond_1
    iget v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnViewType:I

    if-ne v0, v8, :cond_3

    .line 88
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnListItemResource:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 89
    iget v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnViewType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 97
    const-string v0, "SkinPicker.SkinPickerAdapter"

    const-string v2, "mSkinList is null."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 98
    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnPanelItemResource:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 92
    iget v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnViewType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 101
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteMode:Z

    if-ne v0, v7, :cond_6

    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnCountOfPreDefinedSkin:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_6

    .line 104
    :cond_5
    const-string v0, "SkinPicker.SkinPickerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incorrect position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSkinList.size(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mnCountOfPreDefinedSkin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnCountOfPreDefinedSkin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 105
    goto/16 :goto_0

    .line 109
    :cond_6
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 110
    .local v5, nIndex:I
    const/4 v4, 0x0

    .line 111
    .local v4, bmpPreview:Landroid/graphics/Bitmap;
    const/4 v0, -0x1

    if-ne v5, v0, :cond_9

    .line 113
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->findValidIndexForCurrentSkin(I)I

    move-result v5

    .line 114
    const-string v1, "SkinPicker.SkinPickerAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findValidIndexForCurrentSkin: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    if-ltz v5, :cond_7

    .line 118
    :try_start_3
    sget v0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 119
    iget-object v1, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    .line 127
    :goto_2
    if-eqz v4, :cond_7

    .line 129
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 130
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_7
    :goto_3
    iget v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnViewType:I

    if-ne v0, v8, :cond_a

    .line 140
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->prepareListViewItem(ILandroid/view/View;Landroid/view/ViewGroup;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    move-object v0, p2

    .line 145
    goto/16 :goto_0

    .line 121
    :cond_8
    :try_start_5
    iget-object v1, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v4

    goto :goto_2

    .line 123
    :catch_0
    move-exception v6

    .line 124
    .local v6, e:Ljava/lang/OutOfMemoryError;
    :try_start_6
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 125
    const-string v0, "SkinPicker.SkinPickerAdapter"

    const-string v1, "getSkinPreviewImage fail. out of memory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 134
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :cond_9
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_7

    .line 135
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #bmpPreview:Landroid/graphics/Bitmap;
    check-cast v4, Landroid/graphics/Bitmap;

    .restart local v4       #bmpPreview:Landroid/graphics/Bitmap;
    goto :goto_3

    :cond_a
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->preparePanelViewItem(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Bitmap;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method

.method public hasDownloadedSkins()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v3, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v2

    .line 320
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnCountOfPreDefinedSkin:I

    sub-int v0, v3, v4

    .line 321
    .local v0, nCountOfCanDeleteSkin:I
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, strAppliedSkin:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 324
    iget-object v3, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/htc/util/skin/HtcSkinUtil;->isSystemApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 325
    add-int/lit8 v0, v0, -0x1

    .line 327
    :cond_2
    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected isAppliedSkin(I)Z
    .locals 5
    .parameter "nPos"

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v2, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 188
    const-string v2, "SkinPicker.SkinPickerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAppliedSkin invalid position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", skin size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    return v1

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    .local v0, strSkinName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 195
    const-string v2, "SkinPicker.SkinPickerAdapter"

    const-string v3, "can not get skin name"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_1
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isDefaultSkin(I)Z
    .locals 3
    .parameter "nPos"

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v2, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v1

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    .local v0, strSkinName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->isSystemApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public moveFocusToSkin(I)I
    .locals 1
    .parameter "nFocusedIndex"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 241
    iput p1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mSelectedSkinId:I

    .line 243
    :cond_0
    iget v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mSelectedSkinId:I

    return v0
.end method

.method public moveFocusToSkin(Ljava/lang/String;)I
    .locals 3
    .parameter "strPackageName"

    .prologue
    .line 224
    iget-object v2, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 227
    .local v1, nCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 229
    iget-object v2, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    iput v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mSelectedSkinId:I

    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0           #i:I
    .end local v1           #nCount:I
    :cond_1
    iget v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mSelectedSkinId:I

    return v2
.end method

.method public declared-synchronized updateSkinList()V
    .locals 1

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->getSkinListfromCommonControl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public abstract Lcom/htc/home/personalize/widget/SkinPickerAdapter;
.super Lcom/htc/widget/DeckControlAdapter;
.source "SkinPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;
    }
.end annotation


# static fields
.field protected static final DEFAULT_SKIN_PACKAGE_NAME:Ljava/lang/String; = "default"

.field protected static final TAG:Ljava/lang/String; = "SkinPicker.SkinPickerAdapter"

.field protected static mArrayDeleteSkin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static mOrientation:I


# instance fields
.field protected final COLOR_SELECT:I

.field protected final COLOR_UNSELECT:I

.field protected mArrayDeleteIndicator:[Z

.field protected mBitmapCacheIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mBitmapPreviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mDeleteMode:Z

.field protected mDeleteSkinCount:I

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field protected mSelectedSkinId:I

.field protected mSkinPickerHandler:Landroid/os/Handler;

.field protected mbmpDeleteIcon:Landroid/graphics/Bitmap;

.field protected mbmpListItemBackground:Landroid/graphics/Bitmap;

.field protected mbmpPanelItemBackground:Landroid/graphics/Bitmap;

.field protected mnCountOfPreDefinedSkin:I

.field protected mnListItemResource:I

.field protected mnPanelItemResource:I

.field protected mnReflectionHeight:I

.field protected mnReflectionWidth:I

.field protected mnViewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mOrientation:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteSkin:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "nPanelItemResource"
    .parameter "nListItemResource"

    .prologue
    const v4, 0x7f02000e

    const/16 v3, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/htc/widget/DeckControlAdapter;-><init>(Landroid/content/Context;)V

    .line 37
    const/high16 v0, -0x7100

    iput v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->COLOR_SELECT:I

    .line 38
    iput v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->COLOR_UNSELECT:I

    .line 43
    const/16 v0, 0x66

    iput v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnViewType:I

    .line 48
    iput-boolean v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteMode:Z

    .line 49
    iput-object v1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    .line 50
    iput-object v1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    .line 51
    iput-object v1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mbmpPanelItemBackground:Landroid/graphics/Bitmap;

    .line 52
    iput-object v1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mbmpListItemBackground:Landroid/graphics/Bitmap;

    .line 53
    iput-object v1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mbmpDeleteIcon:Landroid/graphics/Bitmap;

    .line 54
    iput v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnReflectionWidth:I

    .line 55
    iput v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnReflectionHeight:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mSelectedSkinId:I

    .line 57
    iput v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnCountOfPreDefinedSkin:I

    .line 59
    iput-object v1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteIndicator:[Z

    .line 60
    iput v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteSkinCount:I

    .line 61
    iput-object v1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mSkinPickerHandler:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mOrientation:I

    .line 92
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 93
    iput p2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnPanelItemResource:I

    .line 94
    iput p3, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnListItemResource:I

    .line 96
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 97
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 98
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 100
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnReflectionWidth:I

    .line 101
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnReflectionHeight:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    .line 106
    const-string v0, "SkinPicker.SkinPickerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBitmapCacheIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mbmpPanelItemBackground:Landroid/graphics/Bitmap;

    .line 108
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mbmpListItemBackground:Landroid/graphics/Bitmap;

    .line 109
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020003

    iget-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mbmpDeleteIcon:Landroid/graphics/Bitmap;

    .line 111
    return-void
.end method


# virtual methods
.method protected GetDeleteIndicatorList()[Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteIndicator:[Z

    return-object v0
.end method

.method public abstract SetDeleteMode(ZI)V
.end method

.method public SwitchDeleteFlagForSkinItem(I)V
    .locals 2
    .parameter "nIndex"

    .prologue
    const/4 v1, 0x1

    .line 344
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteIndicator:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->isDefaultSkin(I)Z

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->isAppliedSkin(I)Z

    move-result v0

    if-eq v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteIndicator:[Z

    aget-boolean v0, v0, p1

    if-ne v0, v1, :cond_2

    .line 350
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteIndicator:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 351
    iget v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteSkinCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteSkinCount:I

    .line 358
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->notifyUpdateItem(I)V

    goto :goto_0

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteIndicator:[Z

    aput-boolean v1, v0, p1

    .line 356
    iget v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteSkinCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteSkinCount:I

    goto :goto_1
.end method

.method public abstract applySkinPackage(ILcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;)V
.end method

.method public declared-synchronized deInit()V
    .locals 1

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/htc/home/personalize/util/BitmapUtils;->release(Ljava/util/ArrayList;)V

    .line 326
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 327
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mbmpPanelItemBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mbmpListItemBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 329
    iget-object v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mbmpDeleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract deleteSelectedSkins()V
.end method

.method protected findValidIndexForCurrentSkin(I)I
    .locals 8
    .parameter "nPos"

    .prologue
    const/16 v7, 0xa

    const/4 v4, -0x1

    .line 277
    iget-object v5, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v7, :cond_1

    .line 279
    :cond_0
    const-string v5, "SkinPicker.SkinPickerAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid cache index array "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 305
    :goto_0
    return v3

    .line 282
    :cond_1
    iget-object v5, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 283
    .local v3, nRet:I
    if-ne v3, v4, :cond_4

    .line 285
    const/4 v3, 0x0

    .line 286
    const/4 v1, -0x1

    .line 288
    .local v1, nCurrentDiff:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v7, :cond_3

    .line 290
    iget-object v4, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 291
    .local v2, nDiff:I
    if-le v2, v1, :cond_2

    .line 293
    move v3, v0

    .line 294
    move v1, v2

    .line 288
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    .end local v2           #nDiff:I
    :cond_3
    iget-object v4, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 300
    iget-object v4, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    .end local v0           #i:I
    .end local v1           #nCurrentDiff:I
    :cond_4
    iget-object v4, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public abstract getDownloadSkinCount()I
.end method

.method public abstract getIndexByPackageName(Ljava/lang/String;)I
.end method

.method public getSelectedDeletesSkinCount()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteSkinCount:I

    return v0
.end method

.method public abstract getSkinListSize()I
.end method

.method public abstract getSkinNameByPackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSkinPackageNameByIndex(I)Ljava/lang/String;
.end method

.method public abstract hasDownloadedSkins()Z
.end method

.method protected abstract isAppliedSkin(I)Z
.end method

.method protected abstract isDefaultSkin(I)Z
.end method

.method public abstract moveFocusToSkin(I)I
.end method

.method public abstract moveFocusToSkin(Ljava/lang/String;)I
.end method

.method protected prepareListViewItem(ILandroid/view/View;Landroid/view/ViewGroup;I)V
    .locals 16
    .parameter "nPos"
    .parameter "convertView"
    .parameter "parent"
    .parameter "nIndex"

    .prologue
    .line 125
    const v13, 0x7f0b0015

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 126
    .local v6, skinIcon:Landroid/widget/ImageView;
    const/4 v10, 0x0

    .line 127
    .local v10, textSkinName:Landroid/widget/TextView;
    const v13, 0x7f0b0016

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 128
    .local v12, viewNameOnly:Landroid/view/View;
    const v13, 0x7f0b0017

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 129
    .local v11, viewNameAndDescription:Landroid/view/View;
    const v13, 0x7f0b001a

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 130
    .local v5, radioSelector:Landroid/widget/RadioButton;
    const v13, 0x7f0b001b

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 131
    .local v1, checkDelete:Landroid/widget/CheckBox;
    const v13, 0x7f0b0019

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 133
    .local v9, textCurrent:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteMode:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 135
    const v13, 0x7f0b0018

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #textSkinName:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 136
    .restart local v10       #textSkinName:Landroid/widget/TextView;
    if-eqz v12, :cond_0

    .line 137
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :cond_0
    if-eqz v11, :cond_1

    .line 139
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    if-eqz v10, :cond_2

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-nez v9, :cond_5

    .line 150
    :cond_2
    const-string v13, "SkinPicker.SkinPickerAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invalid control : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_1
    return-void

    .line 141
    :cond_3
    const v13, 0x7f0b0016

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #textSkinName:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 142
    .restart local v10       #textSkinName:Landroid/widget/TextView;
    if-eqz v12, :cond_4

    .line 143
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_4
    if-eqz v11, :cond_1

    .line 145
    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 154
    :cond_5
    if-ltz p4, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 156
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->getSkinPackageNameByIndex(I)Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, strPackageName:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->getSkinNameByPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, strSkinName:Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 164
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteMode:Z

    if-nez v13, :cond_a

    .line 170
    const/4 v13, 0x4

    invoke-virtual {v1, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 171
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 172
    const/4 v13, 0x4

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mContext:Landroid/content/Context;

    const-string v14, "common_radiobutton"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 175
    .local v4, markID:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x20804c5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 176
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/widget/RadioButton;->setWidth(I)V

    .line 177
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/widget/RadioButton;->setHeight(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :goto_4
    if-eqz v4, :cond_8

    .line 182
    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 185
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mSelectedSkinId:I

    move/from16 v0, p1

    if-eq v13, v0, :cond_9

    .line 187
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 158
    .end local v4           #markID:I
    .end local v7           #strPackageName:Ljava/lang/String;
    .end local v8           #strSkinName:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mbmpListItemBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 166
    .restart local v7       #strPackageName:Ljava/lang/String;
    .restart local v8       #strSkinName:Ljava/lang/String;
    :cond_7
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 178
    .restart local v4       #markID:I
    :catch_0
    move-exception v3

    .line 179
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v13, "SkinPicker.SkinPickerAdapter"

    const-string v14, "com.htc.R.drawable.common_radiobutton not found"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 184
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_8
    const v13, 0x20804c5

    invoke-virtual {v5, v13}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    goto :goto_5

    .line 189
    :cond_9
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 192
    .end local v4           #markID:I
    :cond_a
    const/4 v13, 0x4

    invoke-virtual {v5, v13}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mContext:Landroid/content/Context;

    const-string v14, "common_delete"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 195
    .restart local v4       #markID:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x2080014

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 196
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/widget/CheckBox;->setWidth(I)V

    .line 197
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/widget/CheckBox;->setHeight(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :goto_6
    if-eqz v4, :cond_c

    .line 202
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 206
    :goto_7
    invoke-virtual/range {p0 .. p1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->isDefaultSkin(I)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->isAppliedSkin(I)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 208
    :cond_b
    const/4 v13, 0x4

    invoke-virtual {v1, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 221
    :goto_8
    if-eqz v7, :cond_f

    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    .line 223
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 198
    :catch_1
    move-exception v3

    .line 199
    .restart local v3       #e:Landroid/content/res/Resources$NotFoundException;
    const-string v13, "SkinPicker.SkinPickerAdapter"

    const-string v14, "com.htc.R.drawable.common_radiobutton not found"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 204
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_c
    const v13, 0x2080014

    invoke-virtual {v1, v13}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_7

    .line 210
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteIndicator:[Z

    aget-boolean v13, v13, p1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_e

    .line 212
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 213
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_8

    .line 217
    :cond_e
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_8

    .line 225
    :cond_f
    const/4 v13, 0x4

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected preparePanelViewItem(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Bitmap;I)V
    .locals 9
    .parameter "nPos"
    .parameter "convertView"
    .parameter "parent"
    .parameter "bmpPreview"
    .parameter "nIndex"

    .prologue
    const/high16 v8, -0x7100

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    const v2, 0x7f0b0037

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 234
    .local v1, viewSkin:Landroid/widget/ImageView;
    const v2, 0x7f0b0038

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 235
    .local v0, viewDelete:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 237
    :cond_0
    const-string v2, "SkinPicker.SkinPickerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid control :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    const-string v2, "SkinPicker.SkinPickerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preparePanelViewItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-boolean v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mDeleteMode:Z

    if-ne v2, v6, :cond_5

    .line 245
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->isAppliedSkin(I)Z

    move-result v2

    if-ne v2, v6, :cond_3

    .line 247
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 265
    :goto_1
    if-ltz p5, :cond_6

    iget-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p5, v2, :cond_6

    iget-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 267
    iget-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 250
    :cond_3
    iget-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteIndicator:[Z

    aget-boolean v2, v2, p1

    if-ne v2, v6, :cond_4

    .line 252
    iget-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mbmpDeleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 253
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 257
    :cond_4
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 261
    :cond_5
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 269
    :cond_6
    iget-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mbmpPanelItemBackground:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mbmpPanelItemBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 5

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 310
    iget-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/htc/home/personalize/util/BitmapUtils;->release(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 314
    :try_start_1
    iget-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 315
    iget-object v2, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 319
    const-string v2, "SkinPicker.SkinPickerAdapter"

    const-string v3, "OutOfMemoryError when reset SkinPickerAdapter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    const-string v2, "SkinPicker.SkinPickerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBitmapPreviewList size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 309
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mSkinPickerHandler:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .parameter "nType"

    .prologue
    .line 119
    iput p1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mnViewType:I

    .line 120
    return-void
.end method

.method public updateDeleteSkinToNormalMode()V
    .locals 2

    .prologue
    .line 363
    iget-object v1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteIndicator:[Z

    if-nez v1, :cond_1

    .line 370
    :cond_0
    return-void

    .line 365
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteIndicator:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->mArrayDeleteIndicator:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    .line 367
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widget/SkinPickerAdapter;->notifyUpdateItem(I)V

    .line 365
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract updateSkinList()V
.end method

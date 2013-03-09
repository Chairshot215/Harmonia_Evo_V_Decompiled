.class public Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
.super Lcom/htc/widget/DeckControlAdapter;
.source "OnlineSkinAdapter.java"


# static fields
.field private static DEFAULT_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SkinPicker.OnlineSkinAdapter"

.field private static mOrientation:I


# instance fields
.field private final CACHE_SIZE:I

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

.field private mContext:Landroid/content/Context;

.field private mIsListDownloaded:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mSelectedSkinId:I

.field private mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

.field private mSkinList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/storedatamanager/StoreItem;",
            ">;"
        }
    .end annotation
.end field

.field private mbmpDwonloadedIcon:Landroid/graphics/Bitmap;

.field private mbmpListItemBackground:Landroid/graphics/Bitmap;

.field private mbmpPanelItemBackground:Landroid/graphics/Bitmap;

.field private mnListItemResource:I

.field private mnPanelItemResource:I

.field private mnReflectionHeight:I

.field private mnReflectionWidth:I

.field private mnViewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->DEFAULT_COUNT:I

    .line 36
    sput v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroid/util/DisplayMetrics;)V
    .locals 5
    .parameter "context"
    .parameter "nPanelItemResource"
    .parameter "nListItemResource"
    .parameter "dm"

    .prologue
    const v4, 0x7f02000e

    const/16 v3, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/htc/widget/DeckControlAdapter;-><init>(Landroid/content/Context;)V

    .line 35
    iput v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->CACHE_SIZE:I

    .line 44
    iput-boolean v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mIsListDownloaded:Z

    .line 45
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    .line 46
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    .line 47
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnViewType:I

    .line 48
    iput v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSelectedSkinId:I

    .line 49
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpPanelItemBackground:Landroid/graphics/Bitmap;

    .line 50
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpListItemBackground:Landroid/graphics/Bitmap;

    .line 51
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpDwonloadedIcon:Landroid/graphics/Bitmap;

    .line 52
    iput-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    .line 54
    iput v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnReflectionWidth:I

    .line 55
    iput v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnReflectionHeight:I

    .line 59
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    .line 60
    iput p2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnPanelItemResource:I

    .line 61
    iput p3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnListItemResource:I

    .line 62
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mOrientation:I

    .line 64
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 66
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 67
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 68
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    .line 73
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnReflectionWidth:I

    .line 74
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnReflectionHeight:I

    .line 76
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpPanelItemBackground:Landroid/graphics/Bitmap;

    .line 77
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpListItemBackground:Landroid/graphics/Bitmap;

    .line 79
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    const-string v2, "common_icon_connected"

    const v3, 0x208003e

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpDwonloadedIcon:Landroid/graphics/Bitmap;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    .line 83
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    .line 84
    return-void
.end method

.method private findValidIndexForCurrentSkin(I)I
    .locals 9
    .parameter "nPos"

    .prologue
    const/16 v8, 0xa

    const/4 v5, -0x1

    .line 343
    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v8, :cond_1

    .line 345
    :cond_0
    const-string v6, "SkinPicker.OnlineSkinAdapter"

    const-string v7, "invalid cache index array"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 376
    :goto_0
    return v4

    .line 349
    :cond_1
    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 350
    .local v4, nRet:I
    if-ne v4, v5, :cond_4

    .line 352
    const/4 v4, 0x0

    .line 353
    const/4 v2, -0x1

    .line 355
    .local v2, nCurrentDiff:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v8, :cond_3

    .line 357
    iget-object v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 358
    .local v3, nDiff:I
    if-le v3, v2, :cond_2

    .line 360
    move v4, v1

    .line 361
    move v2, v3

    .line 355
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 364
    .end local v3           #nDiff:I
    :cond_3
    iget-object v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 368
    iget-object v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 369
    .local v0, bmpTemp:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 371
    iget-object v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 375
    .end local v0           #bmpTemp:Landroid/graphics/Bitmap;
    .end local v1           #i:I
    .end local v2           #nCurrentDiff:I
    :cond_4
    iget-object v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private prepareListViewItem(ILandroid/view/View;Landroid/view/ViewGroup;I)V
    .locals 14
    .parameter "nPos"
    .parameter "convertView"
    .parameter "parent"
    .parameter "nBmpCacheIndex"

    .prologue
    .line 211
    iget-boolean v11, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mIsListDownloaded:Z

    if-nez v11, :cond_0

    .line 283
    :goto_0
    return-void

    .line 216
    :cond_0
    const v11, 0x7f0b001c

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 217
    .local v6, skinIcon:Landroid/widget/ImageView;
    const v11, 0x7f0b001d

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 218
    .local v10, textSkinName:Landroid/widget/TextView;
    const v11, 0x7f0b001e

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 219
    .local v8, textDownloadState:Landroid/widget/TextView;
    const v11, 0x7f0b001a

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 221
    .local v5, radioSelector:Landroid/widget/RadioButton;
    if-eqz v6, :cond_1

    if-eqz v10, :cond_1

    if-eqz v5, :cond_1

    if-nez v8, :cond_2

    .line 223
    :cond_1
    const-string v11, "SkinPicker.OnlineSkinAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid skinicon or testSkinNmae : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_2
    const v11, 0x7f0b0020

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 228
    .local v4, progressBar:Landroid/widget/ProgressBar;
    if-eqz v4, :cond_3

    .line 230
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 233
    :cond_3
    const v11, 0x7f0b001f

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 234
    .local v9, textLoading:Landroid/widget/TextView;
    if-eqz v9, :cond_4

    .line 236
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    :cond_4
    if-ltz p4, :cond_7

    iget-object v11, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v0, p4

    if-le v11, v0, :cond_7

    iget-object v11, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 241
    iget-object v11, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    :cond_5
    :goto_1
    iget-object v11, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    iget-object v11, v11, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v11, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    .line 251
    .local v1, item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    if-eqz v1, :cond_6

    .line 253
    iget-object v7, v1, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    .line 254
    .local v7, strGUID:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    invoke-virtual {v11, v7}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->GetDownloadStatus(Ljava/lang/String;)I

    move-result v3

    .line 255
    .local v3, nStatue:I
    const/4 v11, 0x2

    if-ne v3, v11, :cond_8

    .line 257
    const v11, 0x20c0215

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 258
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    .end local v3           #nStatue:I
    .end local v7           #strGUID:Ljava/lang/String;
    :cond_6
    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 272
    iget-object v11, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    const-string v12, "common_radiobutton"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 273
    .local v2, markID:I
    if-eqz v2, :cond_a

    .line 274
    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 277
    :goto_3
    iget v11, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSelectedSkinId:I

    if-eq v11, p1, :cond_b

    .line 279
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 243
    .end local v1           #item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    .end local v2           #markID:I
    :cond_7
    iget-object v11, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpListItemBackground:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_5

    .line 245
    iget-object v11, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpListItemBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 260
    .restart local v1       #item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    .restart local v3       #nStatue:I
    .restart local v7       #strGUID:Ljava/lang/String;
    :cond_8
    const/4 v11, 0x1

    if-ne v3, v11, :cond_9

    .line 262
    const v11, 0x20c0214

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 263
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 267
    :cond_9
    const/4 v11, 0x4

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 276
    .end local v3           #nStatue:I
    .end local v7           #strGUID:Ljava/lang/String;
    .restart local v2       #markID:I
    :cond_a
    const v11, 0x20804c5

    invoke-virtual {v5, v11}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    goto :goto_3

    .line 281
    :cond_b
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method private preparePanelViewItem(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Bitmap;I)V
    .locals 10
    .parameter "nPos"
    .parameter "convertView"
    .parameter "parent"
    .parameter "bmpPreview"
    .parameter "nBmpCacheIndex"

    .prologue
    const/4 v9, 0x2

    .line 287
    iget-boolean v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mIsListDownloaded:Z

    if-nez v6, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_2

    .line 294
    const-string v6, "SkinPicker.OnlineSkinAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position inputed to get view is larger than the skin list size ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_2
    const v6, 0x7f0b0039

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 299
    .local v5, viewDownloadIcon:Landroid/widget/ImageView;
    const v6, 0x7f0b0037

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 301
    .local v3, skinView:Landroid/widget/ImageView;
    if-eqz v5, :cond_3

    if-nez v3, :cond_4

    .line 303
    :cond_3
    const-string v6, "SkinPicker.OnlineSkinAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid skinicon or testSkinNmae : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_4
    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    .line 308
    .local v0, item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    if-eqz v0, :cond_6

    .line 310
    iget-object v4, v0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    .line 311
    .local v4, strGUID:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    invoke-virtual {v6, v4}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->GetDownloadStatus(Ljava/lang/String;)I

    move-result v1

    .line 312
    .local v1, nStatueGUID:I
    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    iget-object v7, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    invoke-virtual {v7, v4}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->GetDownloadStatusByPackageName(Ljava/lang/String;)I

    move-result v2

    .line 313
    .local v2, nStatuePackage:I
    const-string v6, "SkinPicker.OnlineSkinAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PackageName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    invoke-virtual {v8, v4}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", strGuid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", nStatueGUID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", nStatuePackage"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-eq v1, v9, :cond_5

    if-ne v2, v9, :cond_7

    .line 317
    :cond_5
    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpDwonloadedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 318
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    .end local v1           #nStatueGUID:I
    .end local v2           #nStatuePackage:I
    .end local v4           #strGUID:Ljava/lang/String;
    :cond_6
    :goto_1
    if-eqz p4, :cond_8

    .line 329
    if-ltz p5, :cond_0

    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p5, v6, :cond_0

    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v6, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 331
    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v6, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 322
    .restart local v1       #nStatueGUID:I
    .restart local v2       #nStatuePackage:I
    .restart local v4       #strGUID:Ljava/lang/String;
    :cond_7
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 334
    .end local v1           #nStatueGUID:I
    .end local v2           #nStatuePackage:I
    .end local v4           #strGUID:Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpPanelItemBackground:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 336
    iget-object v6, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpPanelItemBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized deInit()V
    .locals 1

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/htc/home/personalize/util/BitmapUtils;->release(Ljava/util/ArrayList;)V

    .line 453
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    monitor-exit p0

    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-boolean v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mIsListDownloaded:Z

    if-nez v1, :cond_2

    .line 89
    iget v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnViewType:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    sget v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->DEFAULT_COUNT:I

    goto :goto_0

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 102
    invoke-static {}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->hasNextPage()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 104
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getIdxOfSkin(Ljava/lang/String;)I
    .locals 7
    .parameter "strGUID"

    .prologue
    const/4 v3, -0x1

    .line 418
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 420
    :cond_0
    const-string v4, "SkinPicker.OnlineSkinAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid guid in getIdxOfSkin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 433
    :cond_1
    :goto_0
    return v0

    .line 424
    :cond_2
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 425
    .local v1, nSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 427
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    .line 428
    .local v2, objItem:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 425
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2           #objItem:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    :cond_4
    move v0, v3

    .line 433
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "nPos"

    .prologue
    .line 117
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSkinOnIndex(I)Lcom/htc/home/personalize/storedatamanager/StoreItem;
    .locals 4
    .parameter "nIndex"

    .prologue
    const/4 v0, 0x0

    .line 401
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 403
    const-string v1, "SkinPicker.OnlineSkinAdapter"

    const-string v2, "invalid skin list, get item fail..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_0
    return-object v0

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 409
    const-string v1, "SkinPicker.OnlineSkinAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index is larger than the skin list size ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    goto :goto_0
.end method

.method public declared-synchronized getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "nPos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 123
    monitor-enter p0

    if-eqz p2, :cond_0

    const v4, 0x7f0b001c

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnViewType:I

    if-eq v4, v5, :cond_1

    .line 125
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnViewType:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_7

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnListItemResource:I

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 128
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnViewType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mIsListDownloaded:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_8

    .line 138
    :cond_2
    const v4, 0x7f0b0037

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 139
    .local v16, viewSkin:Landroid/widget/ImageView;
    if-eqz v16, :cond_3

    .line 140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpPanelItemBackground:Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mIsListDownloaded:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 144
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnViewType:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_6

    .line 146
    const v4, 0x7f0b0020

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ProgressBar;

    .line 147
    .local v13, progressBar:Landroid/widget/ProgressBar;
    if-eqz v13, :cond_4

    .line 149
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    :cond_4
    const v4, 0x7f0b001f

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 153
    .local v15, textLoading:Landroid/widget/TextView;
    if-eqz v15, :cond_5

    .line 155
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    :cond_5
    const v4, 0x7f0b001e

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 159
    .local v14, textDownloadState:Landroid/widget/TextView;
    if-eqz v14, :cond_6

    .line 161
    const/4 v4, 0x4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v13           #progressBar:Landroid/widget/ProgressBar;
    .end local v14           #textDownloadState:Landroid/widget/TextView;
    .end local v15           #textLoading:Landroid/widget/TextView;
    .end local v16           #viewSkin:Landroid/widget/ImageView;
    :cond_6
    :goto_1
    monitor-exit p0

    return-object p2

    .line 130
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnPanelItemResource:I

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 131
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnViewType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 123
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 170
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 171
    .local v9, nIndex:I
    const/4 v8, 0x0

    .line 172
    .local v8, bmpPreview:Landroid/graphics/Bitmap;
    const/4 v4, -0x1

    if-ne v9, v4, :cond_a

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    .line 175
    .local v11, objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    iget-object v5, v11, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    sget v6, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mOrientation:I

    invoke-static {v4, v5, v6}, Lcom/htc/home/personalize/util/FileHelper;->getPreviewFilePath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 176
    .local v12, previewPath:Ljava/lang/String;
    invoke-static {v12}, Lcom/htc/home/personalize/util/FileHelper;->IsFileExists(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_9

    .line 179
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v12, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v8

    .line 184
    :goto_2
    if-eqz v8, :cond_9

    .line 186
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v8, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 187
    invoke-direct/range {p0 .. p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->findValidIndexForCurrentSkin(I)I

    move-result v9

    .line 188
    if-ltz v9, :cond_9

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v9, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v11           #objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    .end local v12           #previewPath:Ljava/lang/String;
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnViewType:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_b

    .line 201
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->prepareListViewItem(ILandroid/view/View;Landroid/view/ViewGroup;I)V

    goto :goto_1

    .line 180
    .restart local v11       #objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    .restart local v12       #previewPath:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 181
    .local v10, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 182
    const-string v4, "SkinPicker.OnlineSkinAdapter"

    const-string v5, "decodeFile fail when get preview image. out of memory"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 195
    .end local v10           #e:Ljava/lang/OutOfMemoryError;
    .end local v11           #objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    .end local v12           #previewPath:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v9, :cond_9

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #bmpPreview:Landroid/graphics/Bitmap;
    check-cast v8, Landroid/graphics/Bitmap;

    .restart local v8       #bmpPreview:Landroid/graphics/Bitmap;
    goto :goto_3

    :cond_b
    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 203
    invoke-direct/range {v4 .. v9}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->preparePanelViewItem(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Bitmap;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized init()V
    .locals 5

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 438
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/htc/home/personalize/util/BitmapUtils;->release(Ljava/util/ArrayList;)V

    .line 440
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnReflectionWidth:I

    .line 441
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnReflectionHeight:I

    .line 443
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 444
    iget v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnReflectionWidth:I

    iget v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnReflectionHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 445
    .local v0, bmpReflectionItem:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapCacheIndex:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 446
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    .end local v0           #bmpReflectionItem:Landroid/graphics/Bitmap;
    :cond_0
    const-string v2, "SkinPicker.OnlineSkinAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBitmapPreviewList size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mBitmapPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    monitor-exit p0

    return-void

    .line 437
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public moveFocusToSkin(I)I
    .locals 1
    .parameter "nFocusedIndex"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 394
    iput p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSelectedSkinId:I

    .line 396
    :cond_0
    iget v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSelectedSkinId:I

    return v0
.end method

.method public reloadPanelItemBackground()V
    .locals 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpPanelItemBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpPanelItemBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpPanelItemBackground:Landroid/graphics/Bitmap;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mbmpPanelItemBackground:Landroid/graphics/Bitmap;

    .line 484
    return-void
.end method

.method public setIsListDownloaded(Z)V
    .locals 0
    .parameter "bDownloaded"

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mIsListDownloaded:Z

    .line 459
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "nOrientation"

    .prologue
    .line 473
    sput p1, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mOrientation:I

    .line 474
    return-void
.end method

.method public setSelectedSkinId(I)V
    .locals 0
    .parameter "nId"

    .prologue
    .line 468
    iput p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSelectedSkinId:I

    .line 469
    return-void
.end method

.method public setSkinList(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/storedatamanager/StoreItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, skinlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/home/personalize/storedatamanager/StoreItem;>;"
    if-nez p1, :cond_0

    .line 383
    const-string v0, "SkinPicker.OnlineSkinAdapter"

    const-string v1, "null list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 387
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mSkinList:Ljava/util/ArrayList;

    .line 388
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->init()V

    goto :goto_0
.end method

.method public declared-synchronized setViewType(I)V
    .locals 1
    .parameter "nType"

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->mnViewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

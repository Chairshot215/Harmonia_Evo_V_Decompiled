.class public Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;
.super Lcom/htc/widget/DeckControlAdapter;
.source "OnlineResourceListAdapter.java"

# interfaces
.implements Lcom/htc/home/personalize/abstractresource/PrepareThread$NextEvaluater;
.implements Lcom/htc/home/personalize/abstractresource/PrepareThread$Container;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter$1;
    }
.end annotation


# static fields
.field private static final INVALID_ID:Ljava/lang/String; = "invalid_id"

.field private static final RETRY_MAX_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final mOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private volatile aspect:Lcom/htc/home/personalize/abstractresource/Resource$Const;

.field busy:Z

.field private conf:Landroid/content/res/Configuration;

.field private final ctx:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

.field private history:[I

.field private list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private prepareIcon:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final thumbCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 48
    sget-object v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 49
    sget-object v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/htc/widget/DeckControlAdapter;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->thumbCaches:Ljava/util/Map;

    .line 56
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->aspect:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->history:[I

    .line 58
    iput-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    .line 59
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->prepareIcon:Ljava/lang/ref/SoftReference;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->busy:Z

    .line 66
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->ctx:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    .line 69
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->ctx:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->ctx:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-virtual {v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->conf:Landroid/content/res/Configuration;

    .line 71
    return-void

    .line 57
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private doEvaluateNextForAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;I)I
    .locals 5
    .parameter "aspect"
    .parameter "i"

    .prologue
    const/4 v4, 0x3

    .line 425
    const/4 v2, 0x0

    .local v2, shift:I
    :goto_0
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->size()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 426
    add-int v1, p2, v2

    .line 427
    .local v1, iShiftPlus:I
    sub-int v0, p2, v2

    .line 430
    .local v0, iShiftMinus:I
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v3, v1}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isReady(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v3, v1}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getRetryDownloadCount(Lcom/htc/home/personalize/abstractresource/Resource$Const;)I

    move-result v3

    if-ge v3, v4, :cond_0

    .line 434
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v3, v1}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->accumulateRetryDownloadCount(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V

    .line 446
    .end local v0           #iShiftMinus:I
    .end local v1           #iShiftPlus:I
    :goto_1
    return v1

    .line 437
    .restart local v0       #iShiftMinus:I
    .restart local v1       #iShiftPlus:I
    :cond_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v3, v0}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->isReady(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v3, v0}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getRetryDownloadCount(Lcom/htc/home/personalize/abstractresource/Resource$Const;)I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 441
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v3, v0}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->accumulateRetryDownloadCount(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V

    move v1, v0

    .line 442
    goto :goto_1

    .line 425
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    .end local v0           #iShiftMinus:I
    .end local v1           #iShiftPlus:I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getThumbnailBitmap(Lcom/htc/home/personalize/abstractresource/Resource;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "res"
    .parameter "type"

    .prologue
    .line 326
    if-nez p1, :cond_3

    const-string v2, "invalid_id"

    .line 327
    .local v2, productID:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_4

    const/4 v6, 0x0

    .line 328
    .local v6, tmp:Ljava/io/File;
    :goto_1
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 329
    :cond_0
    const-string v2, "invalid_id"

    .line 332
    :cond_1
    const/4 v5, 0x0

    .line 333
    .local v5, ret:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->thumbCaches:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 334
    .local v3, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v3, :cond_2

    .line 335
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ret:Landroid/graphics/Bitmap;
    check-cast v5, Landroid/graphics/Bitmap;

    .line 338
    .restart local v5       #ret:Landroid/graphics/Bitmap;
    :cond_2
    if-nez v5, :cond_8

    .line 339
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v7, 0x3

    if-ge v1, v7, :cond_7

    if-nez v5, :cond_7

    .line 342
    :try_start_0
    const-string v7, "invalid_id"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 343
    const/4 v7, 0x1

    if-ne v7, p2, :cond_5

    const v4, 0x7f02000d

    .line 345
    .local v4, resId:I
    :goto_3
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->ctx:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-virtual {v7}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v7, v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 339
    .end local v4           #resId:I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 326
    .end local v1           #i:I
    .end local v2           #productID:Ljava/lang/String;
    .end local v3           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v5           #ret:Landroid/graphics/Bitmap;
    .end local v6           #tmp:Ljava/io/File;
    :cond_3
    invoke-virtual {p1}, Lcom/htc/home/personalize/abstractresource/Resource;->getProductID()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 327
    .restart local v2       #productID:Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->aspect:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->fakeAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/htc/home/personalize/abstractresource/Resource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 343
    .restart local v1       #i:I
    .restart local v3       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v5       #ret:Landroid/graphics/Bitmap;
    .restart local v6       #tmp:Ljava/io/File;
    :cond_5
    const v4, 0x7f02000f

    goto :goto_3

    .line 347
    :cond_6
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_4

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 351
    sget-object v7, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->TAG:Ljava/lang/String;

    const-string v8, "getReflectedThumbnail: exception on create bitmap for thumbnail"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 355
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_7
    new-instance v3, Ljava/lang/ref/SoftReference;

    .end local v3           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-direct {v3, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 356
    .restart local v3       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    iget-object v7, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->thumbCaches:Ljava/util/Map;

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .end local v1           #i:I
    :cond_8
    return-object v5
.end method


# virtual methods
.method fakeAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .locals 3
    .parameter "aspect"

    .prologue
    const/4 v2, 0x2

    .line 100
    sget-object v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter$1;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    invoke-virtual {p1}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    .end local p1
    :goto_0
    return-object p1

    .line 103
    .restart local p1
    :pswitch_0
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->conf:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    .line 104
    sget-object p1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    goto :goto_0

    .line 106
    :cond_0
    sget-object p1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    goto :goto_0

    .line 110
    :pswitch_1
    sget-object p1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->conf:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_1

    .line 114
    sget-object p1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    goto :goto_0

    .line 116
    :cond_1
    sget-object p1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAspect()Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->aspect:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Lcom/htc/home/personalize/abstractresource/PrepareThread$Preparable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->getItem(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;
    .locals 1
    .parameter "position"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->getItem(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 96
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->history:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->history:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    aput v20, v18, v19

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->history:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->history:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    aput v20, v18, v19

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->history:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aput p1, v18, v19

    .line 127
    invoke-virtual/range {p0 .. p1}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->getItem(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v12

    .line 129
    .local v12, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    const/16 v17, 0x0

    .line 130
    .local v17, v:Landroid/widget/ImageView;
    const/4 v10, 0x0

    .line 132
    .local v10, pb:Landroid/widget/ProgressBar;
    if-nez v12, :cond_1

    const/4 v13, 0x0

    .line 133
    .local v13, status:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :goto_0
    if-nez v12, :cond_2

    const/16 v16, 0x0

    .line 135
    .local v16, tmp:Ljava/io/File;
    :goto_1
    sget-object v18, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter$1;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->aspect:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    :cond_0
    :goto_2
    move-object/from16 v4, p2

    .line 320
    .end local p2
    .local v4, convertView:Landroid/view/View;
    :goto_3
    return-object v4

    .line 132
    .end local v4           #convertView:Landroid/view/View;
    .end local v13           #status:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .end local v16           #tmp:Ljava/io/File;
    .restart local p2
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->ctx:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->fakeStatus(Lcom/htc/home/personalize/onlineresource/OnlineResource;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v13

    goto :goto_0

    .line 133
    .restart local v13       #status:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    :cond_2
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->aspect:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->fakeAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getPreviewPath(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    .restart local v16       #tmp:Ljava/io/File;
    :pswitch_0
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 138
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030010

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 139
    sget-object v18, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 143
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->getType()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->getThumbnailBitmap(Lcom/htc/home/personalize/abstractresource/Resource;I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 144
    .local v15, thumbnail:Landroid/graphics/Bitmap;
    const v18, 0x7f0b0037

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #v:Landroid/widget/ImageView;
    check-cast v17, Landroid/widget/ImageView;

    .line 145
    .restart local v17       #v:Landroid/widget/ImageView;
    if-nez v17, :cond_5

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030010

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 147
    const v18, 0x7f0b0037

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #v:Landroid/widget/ImageView;
    check-cast v17, Landroid/widget/ImageView;

    .line 149
    .restart local v17       #v:Landroid/widget/ImageView;
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    const v18, 0x7f0b0039

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #v:Landroid/widget/ImageView;
    check-cast v17, Landroid/widget/ImageView;

    .line 153
    .restart local v17       #v:Landroid/widget/ImageView;
    instance-of v0, v12, Lcom/htc/home/personalize/onlineresource/DummyResource;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 154
    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v6, v12

    .line 156
    check-cast v6, Lcom/htc/home/personalize/onlineresource/DummyResource;

    .line 157
    .local v6, dummy:Lcom/htc/home/personalize/onlineresource/DummyResource;
    iget v0, v6, Lcom/htc/home/personalize/onlineresource/DummyResource;->flag:I

    move/from16 v18, v0

    if-eqz v18, :cond_0

    goto/16 :goto_2

    .line 163
    .end local v6           #dummy:Lcom/htc/home/personalize/onlineresource/DummyResource;
    :cond_6
    sget-object v18, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, v18

    if-ne v0, v13, :cond_7

    .line 165
    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 167
    :cond_7
    sget-object v18, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, v18

    if-ne v0, v13, :cond_8

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->ctx:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    move-object/from16 v18, v0

    const-string v19, "common_icon_connected"

    const v20, 0x208003e

    invoke-static/range {v18 .. v20}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 170
    .local v5, downloadIconId:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 180
    .end local v5           #downloadIconId:I
    :cond_8
    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 186
    .end local v15           #thumbnail:Landroid/graphics/Bitmap;
    :pswitch_1
    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 187
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f03000e

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 188
    sget-object v18, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 192
    :cond_a
    const v18, 0x7f0b002c

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #v:Landroid/widget/ImageView;
    check-cast v17, Landroid/widget/ImageView;

    .line 193
    .restart local v17       #v:Landroid/widget/ImageView;
    if-nez v17, :cond_b

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f03000e

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 195
    const v18, 0x7f0b002c

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #v:Landroid/widget/ImageView;
    check-cast v17, Landroid/widget/ImageView;

    .line 197
    .restart local v17       #v:Landroid/widget/ImageView;
    :cond_b
    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_e

    .line 198
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->prepareIcon:Ljava/lang/ref/SoftReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_d

    .line 199
    new-instance v18, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->ctx:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f020010

    sget-object v21, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static/range {v19 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->prepareIcon:Ljava/lang/ref/SoftReference;

    .line 203
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->prepareIcon:Ljava/lang/ref/SoftReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Bitmap;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    :goto_4
    const v18, 0x7f0b002d

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17           #v:Landroid/widget/ImageView;
    check-cast v17, Landroid/widget/ImageView;

    .line 212
    .restart local v17       #v:Landroid/widget/ImageView;
    const v18, 0x7f0b002e

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #pb:Landroid/widget/ProgressBar;
    check-cast v10, Landroid/widget/ProgressBar;

    .line 213
    .restart local v10       #pb:Landroid/widget/ProgressBar;
    instance-of v0, v12, Lcom/htc/home/personalize/onlineresource/DummyResource;

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 214
    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v6, v12

    .line 217
    check-cast v6, Lcom/htc/home/personalize/onlineresource/DummyResource;

    .line 218
    .restart local v6       #dummy:Lcom/htc/home/personalize/onlineresource/DummyResource;
    iget v0, v6, Lcom/htc/home/personalize/onlineresource/DummyResource;->flag:I

    move/from16 v18, v0

    if-eqz v18, :cond_0

    goto/16 :goto_2

    .line 207
    .end local v6           #dummy:Lcom/htc/home/personalize/onlineresource/DummyResource;
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static/range {v18 .. v19}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 224
    :cond_f
    sget-object v18, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, v18

    if-ne v0, v13, :cond_10

    .line 226
    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 229
    :cond_10
    sget-object v18, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, v18

    if-ne v0, v13, :cond_11

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->ctx:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    move-object/from16 v18, v0

    const-string v19, "common_icon_connected"

    const v20, 0x208003e

    invoke-static/range {v18 .. v20}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 232
    .restart local v5       #downloadIconId:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 242
    .end local v5           #downloadIconId:I
    :cond_11
    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 249
    :pswitch_2
    if-eqz p2, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lcom/htc/home/personalize/abstractresource/Resource$Const;->LIST:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_13

    .line 250
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030009

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 251
    sget-object v18, Lcom/htc/home/personalize/abstractresource/Resource$Const;->LIST:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 254
    :cond_13
    const v18, 0x7f0b001c

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 255
    .local v7, icon:Landroid/widget/ImageView;
    const v18, 0x7f0b001d

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 256
    .local v8, label:Landroid/widget/TextView;
    const v18, 0x7f0b001a

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    .line 257
    .local v11, radioBtn:Landroid/widget/RadioButton;
    const v18, 0x7f0b001e

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 258
    .local v14, statusTv:Landroid/widget/TextView;
    if-eqz v7, :cond_14

    if-eqz v8, :cond_14

    if-eqz v11, :cond_14

    if-nez v14, :cond_15

    .line 259
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030009

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 260
    const v18, 0x7f0b001c

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #icon:Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 261
    .restart local v7       #icon:Landroid/widget/ImageView;
    const v18, 0x7f0b001d

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #label:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 262
    .restart local v8       #label:Landroid/widget/TextView;
    const v18, 0x7f0b001a

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #radioBtn:Landroid/widget/RadioButton;
    check-cast v11, Landroid/widget/RadioButton;

    .line 263
    .restart local v11       #radioBtn:Landroid/widget/RadioButton;
    const v18, 0x7f0b001e

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #statusTv:Landroid/widget/TextView;
    check-cast v14, Landroid/widget/TextView;

    .line 266
    .restart local v14       #statusTv:Landroid/widget/TextView;
    :cond_15
    instance-of v0, v12, Lcom/htc/home/personalize/onlineresource/DummyResource;

    move/from16 v18, v0

    if-eqz v18, :cond_16

    .line 268
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 270
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    const v18, 0x7f0b001f

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 272
    const v18, 0x7f0b0020

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 273
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v4, p2

    .line 275
    .end local p2
    .restart local v4       #convertView:Landroid/view/View;
    goto/16 :goto_3

    .line 278
    .end local v4           #convertView:Landroid/view/View;
    .restart local p2
    :cond_16
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 280
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    const v18, 0x7f0b001f

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const v18, 0x7f0b0020

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 285
    if-eqz v16, :cond_17

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_18

    .line 286
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->ctx:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02000d

    sget-object v20, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static/range {v18 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    :goto_5
    if-nez v12, :cond_19

    const-string v18, ""

    :goto_6
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->ctx:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    .line 297
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 304
    :goto_7
    sget-object v18, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADED:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, v18

    if-ne v0, v13, :cond_1b

    .line 305
    const v18, 0x20c0215

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 289
    :cond_18
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->ctx:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 291
    .local v9, left:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 294
    .end local v9           #left:Landroid/graphics/drawable/BitmapDrawable;
    :cond_19
    invoke-virtual {v12}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->getDisplayName()Ljava/lang/String;

    move-result-object v18

    goto :goto_6

    .line 299
    :cond_1a
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_7

    .line 307
    :cond_1b
    sget-object v18, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-object/from16 v0, v18

    if-ne v0, v13, :cond_1c

    .line 309
    const v18, 0x20c0214

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 313
    :cond_1c
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V
    .locals 0
    .parameter "aspect"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->aspect:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 388
    return-void
.end method

.method public setOnlineResourceList(Lcom/htc/home/personalize/onlineresource/OnlineResourceList;)V
    .locals 1
    .parameter "newList"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->deleteObserver(Ljava/util/Observer;)V

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    .line 80
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->list:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    invoke-virtual {v0, p0}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->addObserver(Ljava/util/Observer;)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6
    .parameter "list"
    .parameter "data"

    .prologue
    .line 366
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    move-object v2, p2

    check-cast v2, [Ljava/lang/Object;

    .line 367
    .local v2, tmp:[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v1, v2, v3

    check-cast v1, Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 368
    .local v1, oldStatus:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    const/4 v3, 0x1

    aget-object v0, v2, v3

    check-cast v0, Lcom/htc/home/personalize/abstractresource/Resource;

    .line 371
    .local v0, oldResource:Lcom/htc/home/personalize/abstractresource/Resource;
    sget-object v3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-eq v3, v1, :cond_0

    sget-object v3, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    if-ne v3, v1, :cond_2

    .line 373
    :cond_0
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->thumbCaches:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/htc/home/personalize/abstractresource/Resource;->getProductID()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_1
    :goto_0
    return-void

    .line 374
    :cond_2
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 376
    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->thumbCaches:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public whoIsNext([Lcom/htc/home/personalize/abstractresource/Resource$Const;)I
    .locals 6
    .parameter "badPractice"

    .prologue
    const/4 v5, 0x0

    .line 395
    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->aspect:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->fakeAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Lcom/htc/home/personalize/abstractresource/Resource$Const;

    move-result-object v1

    .line 396
    .local v1, tmp:Lcom/htc/home/personalize/abstractresource/Resource$Const;
    if-nez v1, :cond_0

    .line 398
    sget-object v1, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 401
    :cond_0
    aput-object v1, p1, v5

    .line 403
    :cond_1
    aget-object v2, p1, v5

    iget-object v3, p0, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->history:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter;->doEvaluateNextForAspect(Lcom/htc/home/personalize/abstractresource/Resource$Const;I)I

    move-result v0

    .line 404
    .local v0, i:I
    if-ltz v0, :cond_2

    .line 421
    :goto_0
    return v0

    .line 408
    :cond_2
    sget-object v2, Lcom/htc/home/personalize/olrespicker/OnlineResourceListAdapter$1;->$SwitchMap$com$htc$home$personalize$abstractresource$Resource$Const:[I

    aget-object v3, p1, v5

    invoke-virtual {v3}, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 419
    :goto_1
    aget-object v2, p1, v5

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 410
    :pswitch_0
    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    aput-object v2, p1, v5

    goto :goto_1

    .line 413
    :pswitch_1
    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->THUMBNAIL_LANDSCAPE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    aput-object v2, p1, v5

    goto :goto_1

    .line 416
    :pswitch_2
    sget-object v2, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ICON_PORTRAIT:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    aput-object v2, p1, v5

    goto :goto_1

    .line 408
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

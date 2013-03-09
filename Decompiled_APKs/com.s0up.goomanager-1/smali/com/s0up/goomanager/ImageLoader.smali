.class public Lcom/s0up/goomanager/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s0up/goomanager/ImageLoader$BitmapDisplayer;,
        Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;,
        Lcom/s0up/goomanager/ImageLoader$PhotosLoader;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field executorService:Ljava/util/concurrent/ExecutorService;

.field private imageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field memoryCache:Lcom/s0up/goomanager/MemoryCache;

.field final stub_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/s0up/goomanager/MemoryCache;

    invoke-direct {v0}, Lcom/s0up/goomanager/MemoryCache;-><init>()V

    iput-object v0, p0, Lcom/s0up/goomanager/ImageLoader;->memoryCache:Lcom/s0up/goomanager/MemoryCache;

    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/s0up/goomanager/ImageLoader;->imageViews:Ljava/util/Map;

    .line 28
    const v0, 0x7f020011

    iput v0, p0, Lcom/s0up/goomanager/ImageLoader;->stub_id:I

    .line 24
    iput-object p1, p0, Lcom/s0up/goomanager/ImageLoader;->context:Landroid/content/Context;

    .line 25
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/s0up/goomanager/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "name"

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, resourceID:I
    const-string v2, "icon_install"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const v1, 0x7f02000a

    .line 52
    :cond_0
    const-string v2, "icon_browse"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    const v1, 0x7f020007

    .line 55
    :cond_1
    const-string v2, "icon_update"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    const v1, 0x7f02000f

    .line 58
    :cond_2
    const-string v2, "icon_gapps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59
    const v1, 0x7f020009

    .line 61
    :cond_3
    const-string v2, "icon_reboot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 62
    const v1, 0x7f02000d

    .line 64
    :cond_4
    const-string v2, "icon_settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 65
    const v1, 0x7f02000e

    .line 67
    :cond_5
    const-string v2, "icon_login"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 68
    const v1, 0x7f02000c

    .line 70
    :cond_6
    const-string v2, "download"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 71
    const v1, 0x7f020003

    .line 73
    :cond_7
    const-string v2, "share"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 74
    const v1, 0x7f020010

    .line 76
    :cond_8
    const-string v2, "icon_flash_rom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 77
    const v1, 0x7f020008

    .line 79
    :cond_9
    const-string v2, "icon_install_recovery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 80
    const v1, 0x7f02000b

    .line 82
    :cond_a
    iget-object v2, p0, Lcom/s0up/goomanager/ImageLoader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    .local v0, b:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "url"
    .parameter "imageView"

    .prologue
    .line 44
    new-instance v0, Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;

    invoke-direct {v0, p0, p1, p2}, Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;-><init>(Lcom/s0up/goomanager/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 45
    .local v0, p:Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;
    iget-object v1, p0, Lcom/s0up/goomanager/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;

    invoke-direct {v2, p0, v0}, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;-><init>(Lcom/s0up/goomanager/ImageLoader;Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 46
    return-void
.end method


# virtual methods
.method public DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .parameter "url"
    .parameter "imageView"

    .prologue
    .line 31
    iget-object v1, p0, Lcom/s0up/goomanager/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lcom/s0up/goomanager/ImageLoader;->memoryCache:Lcom/s0up/goomanager/MemoryCache;

    invoke-virtual {v1, p1}, Lcom/s0up/goomanager/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/s0up/goomanager/ImageLoader;->queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 38
    const v1, 0x7f020011

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/s0up/goomanager/ImageLoader;->memoryCache:Lcom/s0up/goomanager/MemoryCache;

    invoke-virtual {v0}, Lcom/s0up/goomanager/MemoryCache;->clear()V

    .line 202
    return-void
.end method

.method imageViewReused(Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;)Z
    .locals 3
    .parameter "photoToLoad"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/s0up/goomanager/ImageLoader;->imageViews:Ljava/util/Map;

    iget-object v2, p1, Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    .local v0, tag:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    :cond_0
    const/4 v1, 0x1

    .line 179
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

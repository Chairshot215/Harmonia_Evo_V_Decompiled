.class public Lcom/htc/sunny2/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static sTextureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/sunny2/Texture;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCreateStack:Ljava/lang/String;

.field private mHeight:I

.field private mIdentifier:Ljava/lang/String;

.field private mOriSourceHeight:I

.field private mOriSourceWidth:I

.field private mSunnyEnvironment:I

.field private mTextureId:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    const-class v0, Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/htc/sunny2/Texture;->init()V

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/htc/sunny2/Texture;->init()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v1, "Bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/htc/sunny2/SBitmap;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/htc/sunny2/Texture;->init()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v1, "SBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createTexture()Lcom/htc/sunny2/Texture;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/Texture;

    invoke-direct {v0}, Lcom/htc/sunny2/Texture;-><init>()V

    return-object v0
.end method

.method public static createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;
    .locals 4

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/htc/sunny2/Texture;

    invoke-direct {v2, v0}, Lcom/htc/sunny2/Texture;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v2
.end method

.method public static createTexture(Landroid/content/Context;III)Lcom/htc/sunny2/Texture;
    .locals 6

    const/4 v5, 0x0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v5, v5, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v3, Lcom/htc/sunny2/Texture;

    invoke-direct {v3, v0}, Lcom/htc/sunny2/Texture;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v3
.end method

.method public static createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/Texture;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/Texture;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createTexture(Landroid/view/View;)Lcom/htc/sunny2/Texture;
    .locals 4

    invoke-static {p0}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/view/View;)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v2, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v3, "[createTexture(view)] Can\'t create SBitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/htc/sunny2/Texture;

    invoke-direct {v1}, Lcom/htc/sunny2/Texture;-><init>()V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/htc/sunny2/Texture;

    invoke-direct {v1, v0}, Lcom/htc/sunny2/Texture;-><init>(Lcom/htc/sunny2/SBitmap;)V

    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    goto :goto_0
.end method

.method public static createTexture(Lcom/htc/sunny2/SBitmap;)Lcom/htc/sunny2/Texture;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/Texture;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/Texture;-><init>(Lcom/htc/sunny2/SBitmap;)V

    return-object v0
.end method

.method private init()V
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/Texture;->mSunnyEnvironment:I

    iget v0, p0, Lcom/htc/sunny2/Texture;->mSunnyEnvironment:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->CreateTexture(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    iget v0, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "createTextureHandle NG - SunnyTexture is 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/Texture;->mIdentifier:Ljava/lang/String;

    iput v1, p0, Lcom/htc/sunny2/Texture;->mHeight:I

    iput v1, p0, Lcom/htc/sunny2/Texture;->mWidth:I

    sget-object v1, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/sunny2/Texture;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCreateStack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/Texture;->mCreateStack:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/Texture;->mHeight:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/Texture;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/Texture;->mOriSourceHeight:I

    return v0
.end method

.method public getSourceWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/Texture;->mOriSourceWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/Texture;->mWidth:I

    return v0
.end method

.method public release()V
    .locals 5

    iget v3, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    invoke-static {v3}, Lcom/htc/sunny2/Sunny2;->DestroyTexture(I)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    sget-object v4, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    monitor-enter v4

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    move-object v1, v2

    :cond_1
    if-eqz v1, :cond_2

    sget-object v3, Lcom/htc/sunny2/Texture;->sTextureList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v4

    :cond_3
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    iget v1, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "createTextureHandle NG - SunnyTexture is 0"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v2, "[setBitmap] Can\'t create SBitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;)V

    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/Texture;->mHeight:I

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/Texture;->mIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setSBitmap(Lcom/htc/sunny2/SBitmap;)V
    .locals 3

    iget v1, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "createTextureHandle NG - SunnyTexture is 0"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v2, "setBitmap NG - SBitmap is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/htc/sunny2/SBitmap;->getBmpId()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v1, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v2, "setBitmap NG - SunnyBitmap is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByBitmap_InRenderThread(IIZ)Z

    invoke-virtual {p1}, Lcom/htc/sunny2/SBitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/Texture;->mHeight:I

    invoke-virtual {p1}, Lcom/htc/sunny2/SBitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/Texture;->mWidth:I

    goto :goto_0
.end method

.method public setSBitmap(Lcom/htc/sunny2/SBitmap;Z)V
    .locals 3

    iget v1, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "createTextureHandle NG - SunnyTexture is 0"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Lcom/htc/sunny2/SBitmap;->getBmpId()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v2, "setBitmap NG - SunnyBitmap is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    invoke-static {v1, v0, p2}, Lcom/htc/sunny2/Sunny2;->Texture_SetupByBitmap_InRenderThread(IIZ)Z

    invoke-virtual {p1}, Lcom/htc/sunny2/SBitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/Texture;->mHeight:I

    invoke-virtual {p1}, Lcom/htc/sunny2/SBitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/Texture;->mWidth:I

    goto :goto_0
.end method

.method public setSourceHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/Texture;->mOriSourceHeight:I

    return-void
.end method

.method public setSourceWidth(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/Texture;->mOriSourceWidth:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 3

    iget v1, p0, Lcom/htc/sunny2/Texture;->mTextureId:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "createTextureHandle NG - SunnyTexture is 0"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/view/View;)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/htc/sunny2/Texture;->TAG:Ljava/lang/String;

    const-string v2, "[setView] Can\'t create SBitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;)V

    invoke-virtual {v0}, Lcom/htc/sunny2/SBitmap;->recycle()V

    goto :goto_0
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/Texture;->mWidth:I

    return-void
.end method

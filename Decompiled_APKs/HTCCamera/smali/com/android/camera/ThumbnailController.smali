.class public Lcom/android/camera/ThumbnailController;
.super Ljava/lang/Object;
.source "ThumbnailController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ThumbnailController$ImageFileObserver;
    }
.end annotation


# static fields
.field private static final BUFSIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "ThumbnailController"


# instance fields
.field private CURR_IMAGE_PATH:Ljava/lang/String;

.field private PREV_IMAGE_PATH:Ljava/lang/String;

.field private isNotDeleteThumb:Z

.field private final mButton:Landroid/widget/ImageView;

.field private mCameraUIHandler:Landroid/os/Handler;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

.field private final mResources:Landroid/content/res/Resources;

.field private mShouldAnimateThumb:Z

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumb_Old:Landroid/graphics/Bitmap;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;Landroid/os/Handler;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ThumbnailController;->isNotDeleteThumb:Z

    iput-object p1, p0, Lcom/android/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/camera/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/camera/ThumbnailController;->mCameraUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ThumbnailController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mCameraUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/ThumbnailController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ThumbnailController;->isNotDeleteThumb:Z

    return p1
.end method

.method private keepLastImgPath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->CURR_IMAGE_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ThumbnailController;->PREV_IMAGE_PATH:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/ThumbnailController;->CURR_IMAGE_PATH:Ljava/lang/String;

    return-void
.end method

.method private setImgObserver(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailController$ImageFileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "ThumbnailController"

    const-string v1, "mImgObserver avalible"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/ThumbnailController$ImageFileObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ThumbnailController$ImageFileObserver;-><init>(Lcom/android/camera/ThumbnailController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    iput p2, v0, Lcom/android/camera/ThumbnailController$ImageFileObserver;->mode:I

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailController$ImageFileObserver;->startWatching()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ThumbnailController;->isNotDeleteThumb:Z

    :goto_0
    return-void

    :cond_1
    const-string v0, "ThumbnailController"

    const-string v1, "mImgObserver UNavalible"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateThumb(Landroid/graphics/Bitmap;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    invoke-static {p1, v2, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v8, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v6, v5, v9

    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v5, v9

    iput-boolean v10, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    :goto_1
    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    aput-object v6, v5, v10

    iget-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v8, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v6, v5, v9

    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v6, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lcom/android/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    iput-boolean v9, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    goto :goto_1
.end method


# virtual methods
.method public clearButtonImage()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailController$ImageFileObserver;->stopWatching()V

    iput-object v2, p0, Lcom/android/camera/ThumbnailController;->mImgObserver:Lcom/android/camera/ThumbnailController$ImageFileObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    iput-object v2, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    :cond_3
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isUriValid()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "ThumbnailController"

    const-string v4, "Fail to open URI."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;)Z
    .locals 10

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v9, 0x1000

    invoke-direct {v1, v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Lcom/android/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v9, 0x1

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

    :goto_0
    return v9

    :catch_0
    move-exception v4

    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    :catchall_0
    move-exception v9

    :goto_2
    throw v9

    :catchall_1
    move-exception v9

    move-object v5, v6

    goto :goto_2

    :catchall_2
    move-exception v9

    move-object v0, v1

    move-object v5, v6

    goto :goto_2

    :catchall_3
    move-exception v9

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v5, v6

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v0, v1

    move-object v5, v6

    goto :goto_1

    :catch_3
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_1
.end method

.method public setData(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/camera/ThumbnailController;->mThumb_Old:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    iput-object v2, p0, Lcom/android/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/ThumbnailController;->updateThumb(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p2, p3}, Lcom/android/camera/ThumbnailController;->setImgObserver(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/android/camera/ThumbnailController;->keepLastImgPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p2, 0x0

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/android/camera/ThumbnailController;->updateThumb(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public storeData(Ljava/lang/String;)Z
    .locals 11

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v8, :cond_0

    :goto_0
    return v7

    :cond_0
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v1, v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v8, p0, Lcom/android/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_1
    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_2
    throw v7

    :catchall_1
    move-exception v7

    move-object v5, v6

    goto :goto_2

    :catchall_2
    move-exception v7

    move-object v0, v1

    move-object v5, v6

    goto :goto_2

    :catchall_3
    move-exception v7

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v5, v6

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v0, v1

    move-object v5, v6

    goto :goto_1

    :catch_3
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    move-object v5, v6

    goto :goto_1
.end method

.method public updateDisplayIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ThumbnailController;->mShouldAnimateThumb:Z

    :cond_0
    return-void
.end method

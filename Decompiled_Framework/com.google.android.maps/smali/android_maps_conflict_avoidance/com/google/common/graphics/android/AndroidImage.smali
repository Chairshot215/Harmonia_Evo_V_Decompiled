.class public Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;
.super Ljava/lang/Object;
.source "AndroidImage.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;
    }
.end annotation


# static fields
.field private static volatile bitmapCount:I


# instance fields
.field private volatile bitmap:Landroid/graphics/Bitmap;

.field private final isOriginal:Z

.field private pinned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    if-eqz p3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Null Bitmap!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    const-class v2, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    monitor-enter v2

    :try_start_0
    sget v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    invoke-static {p3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    if-ne p4, v3, :cond_0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    if-ne p4, v3, :cond_1

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPixelsPerInch()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_1
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null Bitmap! \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"; if seen during a test, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "this usually means that the image file needs to be added to the test.config file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-class v4, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    monitor-enter v4

    :try_start_0
    sget v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-class v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static cleanName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private compact()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    if-nez v1, :cond_1

    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    const-class v2, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    monitor-enter v2

    :try_start_1
    sget v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    sget v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    if-gez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public createScaledImage(IIIIII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 8

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;

    move-object v1, p0

    move v2, p5

    move v3, p6

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;-><init>(Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;IIIIII)V

    mul-int v1, p5, p6

    const/16 v2, 0x1000

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;

    :cond_0
    return-object v0
.end method

.method public drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;II)V
    .locals 6

    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v3, p2

    int-to-float v4, p3

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->compact()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;
    .locals 3

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;-><init>(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public pin()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    return-void
.end method

.method public recycle()V
    .locals 1

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

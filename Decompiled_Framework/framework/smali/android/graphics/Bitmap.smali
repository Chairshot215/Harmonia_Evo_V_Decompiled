.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/tracker/ObjectTracker$Visitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$BitmapFinalizer;,
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;,
        Landroid/graphics/Bitmap$BitmapStackTrace;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Bitmap"

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static sBitmapSize:I

.field private static volatile sDefaultDensity:I

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sScaleMatrix:Landroid/graphics/Matrix;

.field private static sStackTraces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Bitmap$BitmapStackTrace;",
            ">;"
        }
    .end annotation
.end field

.field private static sZygoteBitmapSize:I


# instance fields
.field private mBitmapSize:I

.field public mBuffer:[B

.field mDensity:I

.field private final mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

.field private mHeight:I

.field private mInUse:Z

.field private final mIsMutable:Z

.field private mIsPreloading:Z

.field private mIsPurgeable:Z

.field private mIsRestorable:Z

.field public final mNativeBitmap:I

.field private mNativeBitmapFreed:Z

.field private mNinePatchChunk:[B

.field private mPixelsIsAllocated:Z

.field private mRecycled:Z

.field private mRestorePolicyInfo:Ljava/lang/String;

.field private mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    sput v1, Landroid/graphics/Bitmap;->sBitmapSize:I

    sput v1, Landroid/graphics/Bitmap;->sZygoteBitmapSize:I

    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[BZ[BI)V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Landroid/graphics/Bitmap;->mWidth:I

    iput v4, p0, Landroid/graphics/Bitmap;->mHeight:I

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v4

    sput v4, Landroid/graphics/Bitmap;->sDefaultDensity:I

    iput v4, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput-object v5, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mIsPreloading:Z

    iput-object v5, p0, Landroid/graphics/Bitmap;->mRestorePolicyInfo:Ljava/lang/String;

    iput v6, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mIsPurgeable:Z

    iput-boolean v6, p0, Landroid/graphics/Bitmap;->mInUse:Z

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "internal error: native bitmap is 0"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iput-object p2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    iput p1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    new-instance v4, Landroid/graphics/Bitmap$BitmapFinalizer;

    invoke-direct {v4, p1}, Landroid/graphics/Bitmap$BitmapFinalizer;-><init>(I)V

    iput-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    iput-object p4, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    if-ltz p5, :cond_1

    iput p5, p0, Landroid/graphics/Bitmap;->mDensity:I

    :cond_1
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmap()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getRecycleBitmapSize()I

    move-result v5

    mul-int/lit16 v5, v5, 0x400

    if-le v4, v5, :cond_6

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0xc8

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Bytes, Width: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , Height: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , Hash code: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n This bitmap was created in:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/Bitmap$BitmapStackTrace;-><init>(Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v4, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v5, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    sput-object v4, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    :cond_4
    sget-object v4, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v6, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget-object v5, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;)V

    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    sget-object v5, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-boolean v4, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    if-nez v4, :cond_7

    sget v4, Landroid/graphics/Bitmap;->sBitmapSize:I

    iget v6, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    add-int/2addr v4, v6

    sput v4, Landroid/graphics/Bitmap;->sBitmapSize:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget v5, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapSize(I)V

    iget-object v4, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget-boolean v5, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapPixelIsAllocated(Z)V

    return-void

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Vector;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$420(I)I
    .locals 1

    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    sub-int/2addr v0, p0

    sput v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    return v0
.end method

.method static synthetic access$500(I)V
    .locals 0

    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeDestructor(I)V

    return-void
.end method

.method private checkPixelAccess(II)V
    .locals 2

    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .locals 4

    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    if-gez p3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-gez p4, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    add-int v2, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "x + width must be <= bitmap.width()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    add-int v2, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "y + height must be <= bitmap.height()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p3, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    add-int/lit8 v2, p4, -0x1

    mul-int/2addr v2, p6

    add-int v0, p5, v2

    array-length v1, p7

    if-ltz p5, :cond_5

    add-int v2, p5, p3

    if-gt v2, v1, :cond_5

    if-ltz v0, :cond_5

    add-int v2, v0, p3

    if-le v2, v1, :cond_6

    :cond_5
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_6
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkWidthHeight(II)V
    .locals 2

    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static checkXYSign(II)V
    .locals 2

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 8

    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v5, p2, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x1

    move v2, p0

    move v3, p0

    move v4, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_2

    iget v0, v7, Landroid/graphics/Bitmap;->mNativeBitmap:I

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    iget v0, v7, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p3}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(IZ)V

    :cond_2
    return-object v7
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 8

    if-eqz p5, :cond_0

    iget v5, p5, Landroid/graphics/Matrix;->native_instance:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreateBitmapFromSource(Landroid/graphics/Bitmap;IIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreateBitmapFromSource(Landroid/graphics/Bitmap;IIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0
.end method

.method public static createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 9

    invoke-static {p3, p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p4, -0x1

    mul-int/2addr v0, p2

    add-int v7, p1, v0

    array-length v8, p0

    if-ltz p1, :cond_1

    add-int v0, p1, p3

    if-gt v0, v8, :cond_1

    if-ltz v7, :cond_1

    add-int v0, v7, p3

    if-le v0, v8, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    if-lez p3, :cond_3

    if-gtz p4, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v5, p5, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, p1

    int-to-float v2, v3

    div-float v5, v0, v2

    int-to-float v0, p2

    int-to-float v2, v4

    div-float v6, v0, v2

    move-object v0, p0

    move v2, v1

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeCreateScaledBitmap(Landroid/graphics/Bitmap;IIIIFFZ)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method private static dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V
    .locals 8

    if-eqz p1, :cond_0

    const-string v5, "Bitmap"

    const-string v6, "Detect unrecycled bitmap.\n"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap$BitmapStackTrace;->getStackTrace()[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    const-string v5, "Bitmap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const-string v5, "Bitmap"

    const-string v6, "Detect out of memory. Dump bitmap stack trace\n"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v5, "Bitmap"

    const-string v6, "_"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dumpStackTrace(Ljava/io/PrintWriter;)V
    .locals 10

    sget-object v8, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    sget-object v7, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-nez v7, :cond_0

    const-string v7, "      None"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v8

    :goto_0
    return-void

    :cond_0
    sget-object v7, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-object v7, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v5}, Landroid/graphics/Bitmap$BitmapStackTrace;->getStackTrace()[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_1

    aget-object v6, v0, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "      "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const-string v7, ""

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static dumpStackTraces()V
    .locals 4

    const-string v2, "Bitmap"

    const-string v3, "dumpStackTraces"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-nez v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap$BitmapStackTrace;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Bitmap;->dumpStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;Z)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static freeNativeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->freeNativeBitmap()V

    goto :goto_0
.end method

.method static getDefaultDensity()I
    .locals 1

    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_0

    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    goto :goto_0
.end method

.method public static getTotalBitmapSize()I
    .locals 3

    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    sget v2, Landroid/graphics/Bitmap;->sZygoteBitmapSize:I

    sub-int/2addr v0, v2

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native nativeCompress(IIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeCompress_userdata(IIILjava/io/OutputStream;[BLjava/lang/String;[BI)Z
.end method

.method private static native nativeConfig(I)I
.end method

.method private static native nativeCopy(IIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateBitmapFromSource(Landroid/graphics/Bitmap;IIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateScaledBitmap(Landroid/graphics/Bitmap;IIIIFFZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeErase(II)V
.end method

.method private static native nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(I)I
.end method

.method private static native nativeGetPixel(III)I
.end method

.method private static native nativeGetPixels(I[IIIIIII)V
.end method

.method private static native nativeGetStreamLength(I)I
.end method

.method private static native nativeHasAlpha(I)Z
.end method

.method private static native nativeHeight(I)I
.end method

.method private static native nativePrepareToDraw(I)V
.end method

.method private static native nativeRecycle(I)V
.end method

.method private static native nativeReleasePixel(I)Z
.end method

.method private static native nativeRowBytes(I)I
.end method

.method private static native nativeSameAs(II)Z
.end method

.method private static native nativeSetHasAlpha(IZ)V
.end method

.method private static native nativeSetPixel(IIII)V
.end method

.method private static native nativeSetPixels(I[IIIIIII)V
.end method

.method private static native nativeWidth(I)I
.end method

.method private static native nativeWriteToParcel(IZILandroid/os/Parcel;)Z
.end method

.method public static scaleFromDensity(III)I
    .locals 2

    if-eqz p1, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return p0

    :cond_1
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int p0, v0, p1

    goto :goto_0
.end method

.method public static setDefaultDensity(I)V
    .locals 0

    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 3

    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v2, 0x1000

    new-array v2, v2, [B

    invoke-static {v0, v1, p2, p3, v2}, Landroid/graphics/Bitmap;->nativeCompress(IIILjava/io/OutputStream;[B)Z

    move-result v0

    return v0
.end method

.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;Ljava/lang/String;[BI)Z
    .locals 9

    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-eq v0, p1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "format must be PNG"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, p5

    if-le p6, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out of array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chung tag\'s length must be 4.Otherwise the PC\'s imageviewer can\'t see it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mInUse:Z

    const/4 v8, 0x0

    :try_start_0
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v2, 0x1000

    new-array v4, v2, [B

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeCompress_userdata(IIILjava/io/OutputStream;[BLjava/lang/String;[BI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mInUse:Z

    return v8

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/Bitmap;->mInUse:Z

    throw v0
.end method

.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;[BI)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;Ljava/lang/String;[BI)Z

    move-result v7

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    const-string v0, "Bitmap"

    const-string v1, "Save Done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v7

    :catch_0
    move-exception v8

    move-object v3, v10

    :goto_1
    const-string v0, "Bitmap"

    const-string v1, "Error"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 3

    const-string v1, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget v1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v2, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v1, v2, p2}, Landroid/graphics/Bitmap;->nativeCopy(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    return-object v0
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 8

    const-string v6, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-direct {p0, v6}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    instance-of v6, p1, Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    :goto_0
    int-to-long v6, v4

    shl-long v2, v6, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    int-to-long v0, v6

    cmp-long v6, v2, v0

    if-gez v6, :cond_3

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Buffer not large enough for pixels"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    instance-of v6, p1, Ljava/nio/ShortBuffer;

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    instance-of v6, p1, Ljava/nio/IntBuffer;

    if-eqz v6, :cond_2

    const/4 v5, 0x2

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "unsupported Buffer subclass"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    iget v6, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v6, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V

    return-void
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 11

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    :goto_0
    int-to-long v7, v2

    shl-long v0, v7, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v3, v7

    cmp-long v7, v0, v3

    if-gez v7, :cond_3

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    iget v7, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    int-to-long v7, v5

    shr-long v9, v3, v6

    add-long/2addr v7, v9

    long-to-int v5, v7

    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public eraseColor(I)V
    .locals 2

    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    return-void
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .locals 4

    const-string v2, "Can\'t extractAlpha on a recycled bitmap"

    invoke-direct {p0, v2}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    :goto_0
    iget v2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v2, v1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to extractAlpha on Bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v2, v0, Landroid/graphics/Bitmap;->mDensity:I

    return-object v0
.end method

.method public freeNativeBitmap()V
    .locals 5

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mInUse:Z

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v2}, Landroid/graphics/Bitmap;->nativeReleasePixel(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v3, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v4, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v3

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final getByteCount()I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeConfig(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 1

    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getGenerationId()I
    .locals 1

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeGenerationId(I)I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 2

    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHeight(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    goto :goto_0
.end method

.method public getNinePatchChunk()[B
    .locals 1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public getPixel(II)I
    .locals 1

    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(III)I

    move-result v0

    return v0
.end method

.method public getPixels([IIIIIII)V
    .locals 8

    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeGetPixels(I[IIIIIII)V

    goto :goto_0
.end method

.method public final getRowBytes()I
    .locals 1

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRowBytes(I)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/graphics/Canvas;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/util/DisplayMetrics;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/graphics/Canvas;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/util/DisplayMetrics;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 2

    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeWidth(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    goto :goto_0
.end method

.method public final hasAlpha()Z
    .locals 1

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHasAlpha(I)Z

    move-result v0

    return v0
.end method

.method public final isMutable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    return v0
.end method

.method isPurgeable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsPurgeable:Z

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method isRestorable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    return v0
.end method

.method final ni()I
    .locals 1

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    return v0
.end method

.method public prepareToDraw()V
    .locals 1

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativePrepareToDraw(I)V

    return-void
.end method

.method public recycle()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapRecycled(Z)V

    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_4

    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    iget v2, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    sub-int/2addr v0, v2

    sput v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapPixelIsAllocated(Z)V

    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v3, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRecycle(I)V

    iput-object v3, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    iput-boolean v4, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeSameAs(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBitmapBuffer([BI)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    if-nez v0, :cond_0

    const-string v0, "Bitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeBitmap Not Freed before setBitmapBuffer mBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/tracker/ObjectTracker;->track(Lcom/htc/tracker/ObjectTracker$Visitor;)V

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput-boolean v3, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    :cond_3
    :goto_0
    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    iget v2, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    sub-int/2addr v0, v2

    sput v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapPixelIsAllocated(Z)V

    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object p1, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    if-eqz v0, :cond_7

    const-string v0, "Bitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeBitmap Already Freed before setBitmapBuffer mBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput-boolean v4, p0, Landroid/graphics/Bitmap;->mNativeBitmapFreed:Z

    goto :goto_0

    :cond_8
    :try_start_3
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    sget v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    iget v2, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    add-int/2addr v0, v2

    sput v0, Landroid/graphics/Bitmap;->sBitmapSize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mPixelsIsAllocated:Z

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public setDensity(I)V
    .locals 0

    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    return-void
.end method

.method public setHasAlpha(Z)V
    .locals 1

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(IZ)V

    return-void
.end method

.method public setNinePatchChunk([B)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-void
.end method

.method public setPixel(III)V
    .locals 1

    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(IIII)V

    return-void
.end method

.method public setPixels([IIIIIII)V
    .locals 8

    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    if-eqz p6, :cond_1

    if-nez p7, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeSetPixels(I[IIIIIII)V

    goto :goto_0
.end method

.method public setPreloading(Z)V
    .locals 3

    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mIsPreloading:Z

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getCheckHeap()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v1, Landroid/graphics/Bitmap;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap;->sStackTraces:Ljava/util/Vector;

    iget-object v2, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$BitmapFinalizer;->setBitmapStackTrace(Landroid/graphics/Bitmap$BitmapStackTrace;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz p1, :cond_3

    sget v0, Landroid/graphics/Bitmap;->sZygoteBitmapSize:I

    iget v1, p0, Landroid/graphics/Bitmap;->mBitmapSize:I

    add-int/2addr v0, v1

    sput v0, Landroid/graphics/Bitmap;->sZygoteBitmapSize:I

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setRestorable(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mIsRestorable:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/tracker/ObjectTracker;->track(Lcom/htc/tracker/ObjectTracker$Visitor;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/tracker/ObjectTracker;->remove(Lcom/htc/tracker/ObjectTracker$Visitor;)V

    goto :goto_0
.end method

.method public setRestoreInfo(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Landroid/graphics/Bitmap;->mRestorePolicyInfo:Ljava/lang/String;

    iget-object v0, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/graphics/Bitmap;->mStackTrace:Landroid/graphics/Bitmap$BitmapStackTrace;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$BitmapStackTrace;->getStackTrace()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n File: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    :cond_0
    return-void
.end method

.method public visit()V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->freeNativeBitmap()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "Can\'t parcel a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(IZILandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

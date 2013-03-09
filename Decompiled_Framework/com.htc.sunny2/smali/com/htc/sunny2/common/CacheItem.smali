.class public Lcom/htc/sunny2/common/CacheItem;
.super Lcom/htc/sunny2/frameworks/cache/CacheTask;
.source "CacheItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/CacheItem$IOTYPE;
    }
.end annotation


# static fields
.field private static final DEFAULT_CACHESET:I = -0x1

.field public static final STATUS_DEFAULT:I = 0x0

.field public static final STATUS_NOT_DECODE:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x1


# instance fields
.field public enableCropCenter:Z

.field public isDecodeSuccess:Z

.field public mCacheHeight:I

.field public mCacheWidth:I

.field public mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

.field public mInputStream:Ljava/io/InputStream;

.field public mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public mSourceHeight:I

.field public mSourceType:I

.field public mSourceWidth:I

.field mStatusFlag:I

.field public mSubIndex:I

.field public mTargetHeight:I

.field public mTargetQuality:I

.field public mTargetWidth:I

.field public mUri:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JII)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V
    .locals 9

    int-to-long v6, p6

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJI)V

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->enableCropCenter:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->isDecodeSuccess:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V
    .locals 10

    move/from16 v0, p6

    int-to-long v6, v0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJIZ)V

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->enableCropCenter:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/common/CacheItem;->isDecodeSuccess:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;Ljava/lang/String;JII)V
    .locals 9

    const/4 v2, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheWidth:I

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mCacheHeight:I

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceWidth:I

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSourceHeight:I

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mTargetQuality:I

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    iput v1, p0, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    return-void
.end method


# virtual methods
.method public isStatus(I)Z
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/common/CacheItem;->mStatusFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V
    .locals 10

    invoke-direct {p0}, Lcom/htc/sunny2/common/CacheItem;->reset()V

    move/from16 v0, p6

    int-to-long v6, v0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v8, p7

    invoke-super/range {v1 .. v9}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJIZ)V

    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public updateContent(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;Z)V
    .locals 10

    invoke-direct {p0}, Lcom/htc/sunny2/common/CacheItem;->reset()V

    move/from16 v0, p6

    int-to-long v6, v0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-super/range {v1 .. v9}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJIZ)V

    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public updateIOType(Lcom/htc/sunny2/common/CacheItem$IOTYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/common/CacheItem;->mIOType:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    return-void
.end method

.class public Lcom/htc/music/util/AsyncImageDecoder;
.super Ljava/lang/Object;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;,
        Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;,
        Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;
    }
.end annotation


# static fields
.field private static final DECODE:I = 0x1

.field private static final DECODED:I = 0x2

.field private static final QUIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[AsyncImageDecoder]"

.field private static final THREAD_NAME:Ljava/lang/String; = "AsyncImageDecoderThread"

.field private static final sArtworkUri:Landroid/net/Uri;


# instance fields
.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mContext:Landroid/content/Context;

.field private mDecodeVisibleFirst:Z

.field private mEnd:I

.field private mFilter:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeight:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

.field private mMergeAfterDecoded:Z

.field private mMergeHeight:I

.field private mMergeImage:Landroid/graphics/Bitmap;

.field private mMergeImageId:I

.field private mMergeOffsetX:I

.field private mMergeOffsetY:I

.field private mMergeWidth:I

.field private mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

.field private mPause:Z

.field private mRecycleOnPause:Z

.field private mScale:Z

.field private mStart:I

.field private mSyncObject:Ljava/lang/Object;

.field private mTouchFile:Z

.field private final mUiHandler:Landroid/os/Handler;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iput-boolean p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    iput-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    iput v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    iput-boolean v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/AsyncImageDecoder$1;-><init>(Lcom/htc/music/util/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iput-boolean p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    iput-boolean p6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    :cond_1
    iput-object p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/util/AsyncImageDecoder;->removeFirstVisibleTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/util/AsyncImageDecoder;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/util/AsyncImageDecoder;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByAlbumId(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/util/AsyncImageDecoder;Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/util/AsyncImageDecoder;->decodeByFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mTouchFile:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/music/util/AsyncImageDecoder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/music/util/AsyncImageDecoder;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/music/util/AsyncImageDecoder;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/util/AsyncImageDecoder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/util/AsyncImageDecoder;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method private add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private decodeByAlbumId(I)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v10, Lcom/htc/music/util/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    int-to-long v11, p1

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_4

    const/4 v2, 0x0

    :try_start_0
    const-string v10, "r"

    invoke-virtual {v5, v8, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    const/4 v6, 0x1

    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x1

    iput v11, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v10, 0x1

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v10, 0x1

    :goto_0
    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v4, v10, :cond_0

    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v3, v10, :cond_0

    shl-int/lit8 v6, v6, 0x1

    shr-int/lit8 v4, v4, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v6, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v10, v11, :cond_2

    :cond_1
    iget v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v11, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v12, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object v0, v7

    :cond_2
    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v9, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
    const-string v10, "[AsyncImageDecoder]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decodeByAlbumId failed albumId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    move-object v0, v9

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_4
    const-string v10, "[AsyncImageDecoder]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decodeByAlbumId failed albumId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v9

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    :goto_3
    throw v9

    :catch_5
    move-exception v1

    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private decodeByFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v7, 0x0

    if-nez p1, :cond_1

    move-object v0, v7

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v5, 0x1

    :try_start_0
    iget-boolean v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v8, 0x1

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v8, 0x1

    :goto_1
    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v4, v8, :cond_2

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v3, v8, :cond_2

    shl-int/lit8 v5, v5, 0x1

    shr-int/lit8 v4, v4, 0x1

    shr-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v8, v9, :cond_4

    :cond_3
    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v10, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v6

    :cond_4
    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v7, "[AsyncImageDecoder]"

    const-string v8, "IO ex catched."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v7, "[AsyncImageDecoder]"

    const-string v8, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    :try_start_2
    const-string v8, "[AsyncImageDecoder]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decodeByFileDescriptor failed, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_5
    :goto_2
    move-object v0, v7

    goto/16 :goto_0

    :catch_3
    move-exception v1

    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "IO ex catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_4
    move-exception v1

    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v7

    if-eqz p1, :cond_6

    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_6
    :goto_3
    throw v7

    :catch_5
    move-exception v1

    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "IO ex catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_6
    move-exception v1

    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private decodeByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move-object v0, v6

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v4, 0x1

    :try_start_0
    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v3, v7, 0x1

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v2, v7, 0x1

    :goto_1
    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-le v3, v7, :cond_3

    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-le v2, v7, :cond_3

    shl-int/lit8 v4, v4, 0x1

    shr-int/lit8 v3, v3, 0x1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mScale:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    if-eq v7, v8, :cond_1

    :cond_4
    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mWidth:I

    iget v8, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHeight:I

    iget-boolean v9, p0, Lcom/htc/music/util/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v7, "[AsyncImageDecoder]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeBypath failed, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0
.end method

.method private getPathByAlbumId(I)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/htc/music/util/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    :cond_2
    if-eq v7, v10, :cond_4

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v7, :cond_0

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "_data"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v9

    goto :goto_0

    :cond_5
    move-object v9, v3

    goto :goto_1
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncImageDecoderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;-><init>(Lcom/htc/music/util/AsyncImageDecoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    return-void
.end method

.method private isTaskExists(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private removeFirstVisibleTask()Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const/4 v3, -0x1

    const/4 v0, -0x1

    iget-boolean v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    iget v7, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    if-lt v6, v7, :cond_0

    iget v3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    iget v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    if-eqz v4, :cond_3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I
    invoke-static {v4}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$800(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v6

    if-gt v3, v6, :cond_3

    #getter for: Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->mPosition:I
    invoke-static {v4}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;->access$800(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)I

    move-result v6

    if-gt v6, v0, :cond_3

    move v1, v2

    :cond_2
    const/4 v6, -0x1

    if-le v1, v6, :cond_0

    iget-object v5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public varargs add(III[Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;III[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILandroid/content/res/AssetFileDescriptor;I[Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILandroid/content/res/AssetFileDescriptor;I[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILjava/lang/String;II[Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x1

    if-nez p2, :cond_1

    if-gez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;II[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v7}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v7, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public varargs add(ILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/music/util/AsyncImageDecoder;ILjava/lang/String;I[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/htc/music/util/AsyncImageDecoder;->add(Lcom/htc/music/util/AsyncImageDecoder$DecodeTask;)V

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public pauseDecode()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "pauseDecode"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/music/util/AsyncImageDecoder$NonUiHandler;

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public resumeDecode()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "resumeDecode"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mPause:Z

    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mListener:Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;

    return-void
.end method

.method public setMergeImageResource(IIIII)V
    .locals 1

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-ltz p4, :cond_0

    if-gez p5, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeImageId:I

    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeWidth:I

    iput p3, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeHeight:I

    iput p4, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetX:I

    iput p5, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeOffsetY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mMergeAfterDecoded:Z

    goto :goto_0
.end method

.method public setRecycleOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mRecycleOnPause:Z

    return-void
.end method

.method public setVisibleRange(II)V
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    :cond_1
    iget-object v1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/htc/music/util/AsyncImageDecoder;->mStart:I

    iput p2, p0, Lcom/htc/music/util/AsyncImageDecoder;->mEnd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

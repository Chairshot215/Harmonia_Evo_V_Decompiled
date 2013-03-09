.class public Lcom/htc/dmc/utils/AsyncImageDecoder;
.super Ljava/lang/Object;
.source "AsyncImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;,
        Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;,
        Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;
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
            "Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

.field private mMergeAfterDecoded:Z

.field private mMergeHeight:I

.field private mMergeImage:Landroid/graphics/Bitmap;

.field private mMergeImageId:I

.field private mMergeOffsetX:I

.field private mMergeOffsetY:I

.field private mMergeWidth:I

.field private mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

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

    .prologue
    .line 69
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/dmc/utils/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 35
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    .line 41
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    .line 51
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 53
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mPause:Z

    .line 55
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    .line 57
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 61
    iput-boolean v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mScale:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mFilter:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mTouchFile:Z

    .line 67
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 71
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mStart:I

    .line 73
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mEnd:I

    .line 75
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeImageId:I

    .line 79
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 81
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 83
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeWidth:I

    .line 85
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeHeight:I

    .line 87
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeOffsetX:I

    .line 89
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeOffsetY:I

    .line 91
    iput-boolean v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 93
    new-instance v0, Lcom/htc/dmc/utils/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/dmc/utils/AsyncImageDecoder$1;-><init>(Lcom/htc/dmc/utils/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 142
    iput-object p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 143
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mFilter:Z

    .line 144
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mScale:Z

    .line 145
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mTouchFile:Z

    .line 146
    iput-object p2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    .line 147
    invoke-direct {p0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->init()V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;II)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 35
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    .line 41
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    .line 51
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 53
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mPause:Z

    .line 55
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    .line 57
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 61
    iput-boolean v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mScale:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mFilter:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mTouchFile:Z

    .line 67
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 71
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mStart:I

    .line 73
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mEnd:I

    .line 75
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeImageId:I

    .line 79
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 81
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 83
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeWidth:I

    .line 85
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeHeight:I

    .line 87
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeOffsetX:I

    .line 89
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeOffsetY:I

    .line 91
    iput-boolean v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 93
    new-instance v0, Lcom/htc/dmc/utils/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/dmc/utils/AsyncImageDecoder$1;-><init>(Lcom/htc/dmc/utils/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 158
    iput-object p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 159
    iput p3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    .line 160
    iput p4, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    .line 161
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mFilter:Z

    .line 162
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mTouchFile:Z

    .line 163
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mScale:Z

    .line 164
    :cond_1
    iput-object p2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    .line 165
    invoke-direct {p0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->init()V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;IIZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"
    .parameter "filter"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 35
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    .line 41
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    .line 51
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 53
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mPause:Z

    .line 55
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    .line 57
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 61
    iput-boolean v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mScale:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mFilter:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mTouchFile:Z

    .line 67
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 71
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mStart:I

    .line 73
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mEnd:I

    .line 75
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeImageId:I

    .line 79
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 81
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 83
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeWidth:I

    .line 85
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeHeight:I

    .line 87
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeOffsetX:I

    .line 89
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeOffsetY:I

    .line 91
    iput-boolean v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 93
    new-instance v0, Lcom/htc/dmc/utils/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/dmc/utils/AsyncImageDecoder$1;-><init>(Lcom/htc/dmc/utils/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 177
    iput-object p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 178
    iput p3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    .line 179
    iput p4, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    .line 180
    iput-boolean p5, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mFilter:Z

    .line 181
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mTouchFile:Z

    .line 182
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mScale:Z

    .line 183
    :cond_1
    iput-object p2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    .line 184
    invoke-direct {p0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->init()V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;IIZZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"
    .parameter "filter"
    .parameter "touchFile"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    .line 35
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    .line 41
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    .line 51
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 53
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mPause:Z

    .line 55
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    .line 57
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    .line 61
    iput-boolean v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mScale:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mFilter:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mTouchFile:Z

    .line 67
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 71
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mStart:I

    .line 73
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mEnd:I

    .line 75
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeImageId:I

    .line 79
    iput-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    .line 81
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 83
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeWidth:I

    .line 85
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeHeight:I

    .line 87
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeOffsetX:I

    .line 89
    iput v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeOffsetY:I

    .line 91
    iput-boolean v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 93
    new-instance v0, Lcom/htc/dmc/utils/AsyncImageDecoder$1;

    invoke-direct {v0, p0}, Lcom/htc/dmc/utils/AsyncImageDecoder$1;-><init>(Lcom/htc/dmc/utils/AsyncImageDecoder;)V

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    .line 198
    iput-object p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mContext:Landroid/content/Context;

    .line 199
    iput p3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    .line 200
    iput p4, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    .line 201
    iput-boolean p5, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mFilter:Z

    .line 202
    iput-boolean p6, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mTouchFile:Z

    .line 203
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mScale:Z

    .line 204
    :cond_1
    iput-object p2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    .line 205
    invoke-direct {p0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->init()V

    .line 206
    return-void
.end method

.method static synthetic access$100(Lcom/htc/dmc/utils/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mRecycleOnPause:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/dmc/utils/AsyncImageDecoder;)Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->removeFirstVisibleTask()Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/dmc/utils/AsyncImageDecoder;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/dmc/utils/AsyncImageDecoder;->decodeByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/dmc/utils/AsyncImageDecoder;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/dmc/utils/AsyncImageDecoder;->decodeByAlbumId(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/dmc/utils/AsyncImageDecoder;Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/dmc/utils/AsyncImageDecoder;->decodeByFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/dmc/utils/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mTouchFile:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/dmc/utils/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeAfterDecoded:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/dmc/utils/AsyncImageDecoder;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/dmc/utils/AsyncImageDecoder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/dmc/utils/AsyncImageDecoder;)Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/dmc/utils/AsyncImageDecoder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/dmc/utils/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeImageId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/dmc/utils/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeWidth:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/dmc/utils/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/dmc/utils/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeOffsetX:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/dmc/utils/AsyncImageDecoder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeOffsetY:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/dmc/utils/AsyncImageDecoder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dmc/utils/AsyncImageDecoder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mPause:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/dmc/utils/AsyncImageDecoder;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/dmc/utils/AsyncImageDecoder;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method private add(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 363
    iget-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 365
    .local v0, indexOfTask:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 370
    :goto_0
    monitor-exit v2

    .line 371
    return-void

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    .end local v0           #indexOfTask:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private decodeByAlbumId(I)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "albumId"

    .prologue
    const/4 v9, 0x0

    .line 507
    iget-object v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 508
    .local v5, res:Landroid/content/ContentResolver;
    sget-object v10, Lcom/htc/dmc/utils/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    int-to-long v11, p1

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 509
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_4

    .line 510
    const/4 v2, 0x0

    .line 512
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v10, "r"

    invoke-virtual {v5, v8, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 513
    const/4 v6, 0x1

    .line 515
    .local v6, sampleSize:I
    iget-boolean v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mScale:Z

    if-eqz v10, :cond_0

    .line 516
    iget-object v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x1

    iput v11, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 517
    iget-object v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 518
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 519
    iget-object v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v10, 0x1

    .line 520
    .local v4, nextWidth:I
    iget-object v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v10, 0x1

    .line 521
    .local v3, nextHeight:I
    :goto_0
    iget v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    if-le v4, v10, :cond_0

    iget v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    if-le v3, v10, :cond_0

    .line 522
    shl-int/lit8 v6, v6, 0x1

    .line 523
    shr-int/lit8 v4, v4, 0x1

    .line 524
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 528
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    :cond_0
    iget-object v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v6, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 529
    iget-object v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 530
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 533
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    iget-boolean v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mScale:Z

    if-eqz v10, :cond_2

    .line 534
    iget-object v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v10, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v11, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    if-eq v10, v11, :cond_2

    .line 535
    :cond_1
    iget v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    iget v11, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    iget-boolean v12, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 536
    .local v7, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 537
    move-object v0, v7

    .line 548
    .end local v7           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v2, :cond_3

    .line 549
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 555
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v6           #sampleSize:I
    :cond_3
    :goto_1
    return-object v0

    .line 550
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v6       #sampleSize:I
    :catch_0
    move-exception v1

    .line 551
    .local v1, e:Ljava/io/IOException;
    const-string v9, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 542
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #sampleSize:I
    :catch_1
    move-exception v1

    .line 543
    .local v1, e:Ljava/io/FileNotFoundException;
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

    invoke-static {v10, v11}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 548
    if-eqz v2, :cond_4

    .line 549
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_2
    move-object v0, v9

    .line 555
    goto :goto_1

    .line 550
    .restart local v1       #e:Ljava/io/FileNotFoundException;
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v1

    .line 551
    .local v1, e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 544
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 545
    .local v1, e:Ljava/lang/Exception;
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

    invoke-static {v10, v11}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 548
    if-eqz v2, :cond_4

    .line 549
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 550
    :catch_4
    move-exception v1

    .line 551
    .local v1, e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 547
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 548
    if-eqz v2, :cond_5

    .line 549
    :try_start_6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 552
    :cond_5
    :goto_3
    throw v9

    .line 550
    :catch_5
    move-exception v1

    .line 551
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "[AsyncImageDecoder]"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private decodeByFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "afd"

    .prologue
    const/4 v7, 0x0

    .line 559
    if-nez p1, :cond_1

    move-object v0, v7

    .line 605
    :cond_0
    :goto_0
    return-object v0

    .line 563
    :cond_1
    const/4 v5, 0x1

    .line 565
    .local v5, sampleSize:I
    :try_start_0
    iget-boolean v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mScale:Z

    if-eqz v8, :cond_2

    .line 566
    iget-object v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 567
    iget-object v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 568
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 570
    iget-object v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v8, 0x1

    .line 571
    .local v4, nextWidth:I
    iget-object v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v8, 0x1

    .line 572
    .local v3, nextHeight:I
    :goto_1
    iget v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    if-le v4, v8, :cond_2

    iget v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    if-le v3, v8, :cond_2

    .line 573
    shl-int/lit8 v5, v5, 0x1

    .line 574
    shr-int/lit8 v4, v4, 0x1

    .line 575
    shr-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 579
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    :cond_2
    iget-object v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 580
    iget-object v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 581
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 584
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    iget-boolean v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mScale:Z

    if-eqz v8, :cond_4

    .line 585
    iget-object v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v9, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    if-eq v8, v9, :cond_4

    .line 586
    :cond_3
    iget v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    iget v9, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    iget-boolean v10, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 587
    .local v6, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 588
    move-object v0, v6

    .line 597
    .end local v6           #tmp:Landroid/graphics/Bitmap;
    :cond_4
    if-eqz p1, :cond_0

    .line 598
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 599
    :catch_0
    move-exception v1

    .line 600
    .local v1, e:Ljava/io/IOException;
    const-string v7, "[AsyncImageDecoder]"

    const-string v8, "IO ex catched."

    invoke-static {v7, v8}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 602
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v7, "[AsyncImageDecoder]"

    const-string v8, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v7, v8}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 594
    .local v2, ex:Ljava/lang/Exception;
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

    invoke-static {v8, v9}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 597
    if-eqz p1, :cond_5

    .line 598
    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_5
    :goto_2
    move-object v0, v7

    .line 605
    goto/16 :goto_0

    .line 599
    :catch_3
    move-exception v1

    .line 600
    .local v1, e:Ljava/io/IOException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "IO ex catched."

    invoke-static {v8, v9}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 601
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 602
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v8, v9}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 596
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 597
    if-eqz p1, :cond_6

    .line 598
    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6

    .line 603
    :cond_6
    :goto_3
    throw v7

    .line 599
    :catch_5
    move-exception v1

    .line 600
    .local v1, e:Ljava/io/IOException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "IO ex catched."

    invoke-static {v8, v9}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 601
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 602
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v8, "[AsyncImageDecoder]"

    const-string v9, "NP ex inside AssetFileDescriptor catched."

    invoke-static {v8, v9}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private decodeByPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    .line 609
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move-object v0, v6

    .line 644
    :cond_1
    :goto_0
    return-object v0

    .line 613
    :cond_2
    const/4 v4, 0x1

    .line 615
    .local v4, sampleSize:I
    :try_start_0
    iget-boolean v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mScale:Z

    if-eqz v7, :cond_3

    .line 616
    iget-object v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 617
    iget-object v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 618
    iget-object v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 619
    iget-object v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v3, v7, 0x1

    .line 620
    .local v3, nextWidth:I
    iget-object v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v2, v7, 0x1

    .line 621
    .local v2, nextHeight:I
    :goto_1
    iget v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    if-le v3, v7, :cond_3

    iget v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    if-le v2, v7, :cond_3

    .line 622
    shl-int/lit8 v4, v4, 0x1

    .line 623
    shr-int/lit8 v3, v3, 0x1

    .line 624
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 628
    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    :cond_3
    iget-object v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 629
    iget-object v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 630
    iget-object v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 632
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    iget-boolean v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mScale:Z

    if-eqz v7, :cond_1

    .line 633
    iget-object v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    if-eq v7, v8, :cond_1

    .line 634
    :cond_4
    iget v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mWidth:I

    iget v8, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHeight:I

    iget-boolean v9, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mFilter:Z

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 635
    .local v5, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    move-object v0, v5

    goto :goto_0

    .line 641
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v5           #tmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 642
    .local v1, ex:Ljava/lang/Exception;
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

    invoke-static {v7, v8}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 644
    goto :goto_0
.end method

.method private getPathByAlbumId(I)Ljava/lang/String;
    .locals 11
    .parameter "albumId"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 441
    if-gez p1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-object v3

    .line 443
    :cond_1
    iget-object v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 444
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 446
    sget-object v2, Lcom/htc/dmc/utils/AsyncImageDecoder;->sArtworkUri:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 447
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 449
    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 452
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 453
    .local v7, count:I
    :cond_2
    if-eq v7, v10, :cond_4

    .line 454
    if-eqz v6, :cond_3

    .line 455
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_3
    if-nez v7, :cond_0

    goto :goto_0

    .line 463
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 464
    const-string v2, "_data"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 465
    .local v8, i:I
    if-ltz v8, :cond_5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 466
    .local v9, path:Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v9

    .line 468
    goto :goto_0

    .end local v9           #path:Ljava/lang/String;
    :cond_5
    move-object v9, v3

    .line 465
    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 210
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 211
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 213
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncImageDecoderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 214
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 215
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 216
    new-instance v0, Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;-><init>(Lcom/htc/dmc/utils/AsyncImageDecoder;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    .line 217
    return-void
.end method

.method private isTaskExists(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)Z
    .locals 4
    .parameter "task"

    .prologue
    const/4 v2, 0x0

    .line 374
    if-nez p1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v2

    .line 376
    :cond_1
    const/4 v1, 0x0

    .line 377
    .local v1, temp:Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 378
    iget-object v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    check-cast v1, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;

    .line 379
    .restart local v1       #temp:Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    const/4 v2, 0x1

    goto :goto_0

    .line 377
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private removeFirstVisibleTask()Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 472
    iget-object v6, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-object v5

    .line 474
    :cond_1
    const/4 v3, -0x1

    .line 475
    .local v3, start:I
    const/4 v0, -0x1

    .line 477
    .local v0, end:I
    iget-boolean v6, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mStart:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mEnd:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mEnd:I

    iget v7, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mStart:I

    if-lt v6, v7, :cond_0

    .line 478
    iget v3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mStart:I

    .line 479
    iget v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mEnd:I

    .line 482
    const/4 v1, -0x1

    .line 483
    .local v1, firstVisible:I
    const/4 v4, 0x0

    .line 484
    .local v4, task:Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 485
    iget-object v6, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #task:Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    check-cast v4, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;

    .line 486
    .restart local v4       #task:Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    if-eqz v4, :cond_3

    .line 487
    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPosition:I
    invoke-static {v4}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$800(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)I

    move-result v6

    if-gt v3, v6, :cond_3

    #getter for: Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->mPosition:I
    invoke-static {v4}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;->access$800(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)I

    move-result v6

    if-gt v6, v0, :cond_3

    .line 488
    move v1, v2

    .line 495
    :cond_2
    const/4 v6, -0x1

    if-le v1, v6, :cond_0

    .line 496
    iget-object v5, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;

    goto :goto_0

    .line 492
    :cond_3
    const/4 v4, 0x0

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(IIILjava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "albumId"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    .line 294
    if-gez p2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    new-instance v0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/dmc/utils/AsyncImageDecoder;IIILjava/lang/Object;)V

    .line 299
    .local v0, task:Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->add(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)V

    .line 301
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public add(ILandroid/content/res/AssetFileDescriptor;ILjava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "afd"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    .line 317
    if-nez p2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    new-instance v0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/dmc/utils/AsyncImageDecoder;ILandroid/content/res/AssetFileDescriptor;ILjava/lang/Object;)V

    .line 322
    .local v0, task:Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->add(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)V

    .line 324
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public add(ILjava/lang/String;IILjava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter "path"
    .parameter "albumId"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v7, 0x1

    .line 342
    if-nez p2, :cond_1

    if-gez p3, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    new-instance v0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/dmc/utils/AsyncImageDecoder;ILjava/lang/String;IILjava/lang/Object;)V

    .line 347
    .local v0, task:Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->add(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)V

    .line 349
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v7}, Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v7, v2, v3}, Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public add(ILjava/lang/String;ILjava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter "path"
    .parameter "position"
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    .line 271
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    new-instance v0, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;-><init>(Lcom/htc/dmc/utils/AsyncImageDecoder;ILjava/lang/String;ILjava/lang/Object;)V

    .line 276
    .local v0, task:Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;
    invoke-direct {p0, v0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->add(Lcom/htc/dmc/utils/AsyncImageDecoder$DecodeTask;)V

    .line 278
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v1, v6}, Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v6, v2, v3}, Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 433
    return-void
.end method

.method public pauseDecode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 411
    iget-boolean v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mPause:Z

    if-ne v0, v2, :cond_0

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "pauseDecode"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iput-boolean v2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mPause:Z

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    iput-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    .line 391
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 392
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    invoke-virtual {v0, v1}, Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 395
    invoke-virtual {p0}, Lcom/htc/dmc/utils/AsyncImageDecoder;->resumeDecode()V

    .line 396
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 398
    iput-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 399
    iput-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mNonUiHandler:Lcom/htc/dmc/utils/AsyncImageDecoder$NonUiHandler;

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 405
    :cond_1
    return-void
.end method

.method public resumeDecode()V
    .locals 2

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mPause:Z

    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 421
    :cond_0
    const-string v0, "[AsyncImageDecoder]"

    const-string v1, "resumeDecode"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mPause:Z

    .line 423
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 425
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mListener:Lcom/htc/dmc/utils/AsyncImageDecoder$IImageDecodeListener;

    .line 504
    return-void
.end method

.method public setMergeImageResource(IIIII)V
    .locals 1
    .parameter "resourceId"
    .parameter "width"
    .parameter "height"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 232
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-ltz p4, :cond_0

    if-gez p5, :cond_1

    .line 233
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeAfterDecoded:Z

    .line 242
    :goto_0
    return-void

    .line 236
    :cond_1
    iput p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeImageId:I

    .line 237
    iput p2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeWidth:I

    .line 238
    iput p3, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeHeight:I

    .line 239
    iput p4, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeOffsetX:I

    .line 240
    iput p5, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeOffsetY:I

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mMergeAfterDecoded:Z

    goto :goto_0
.end method

.method public setRecycleOnPause(Z)V
    .locals 0
    .parameter "recycleOnPause"

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mRecycleOnPause:Z

    .line 221
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 251
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p1, :cond_1

    .line 252
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    iput p1, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mStart:I

    .line 257
    iput p2, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mEnd:I

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dmc/utils/AsyncImageDecoder;->mDecodeVisibleFirst:Z

    .line 260
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

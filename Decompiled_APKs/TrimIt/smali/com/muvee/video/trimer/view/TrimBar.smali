.class public Lcom/muvee/video/trimer/view/TrimBar;
.super Landroid/view/View;
.source "TrimBar.java"

# interfaces
.implements Lcom/muvee/video/trimer/MmvtConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;,
        Lcom/muvee/video/trimer/view/TrimBar$State;
    }
.end annotation


# static fields
.field private static final MIN_LENGTH:I = 0x3

.field private static final MIN_TRIM_DURATION:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "com.muvee.video.trimer.view.TrimBar"


# instance fields
.field private mBarLength:I

.field private mBitmapDrawableTrimActiveRing:Landroid/graphics/Bitmap;

.field private mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

.field private mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

.field private mBitmapDrawableTrimRight:Landroid/graphics/Bitmap;

.field private mCurrentPlayPosition:I

.field private mCurrentPosition:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIntrinsicWidth:I

.field private mMargine:I

.field private mMargineGap:I

.field private mNinePatchDrawableMarked:Landroid/graphics/drawable/NinePatchDrawable;

.field private mNinePatchDrawablePlayed:Landroid/graphics/drawable/NinePatchDrawable;

.field private mNinePatchDrawableProgressEmpty:Landroid/graphics/drawable/NinePatchDrawable;

.field private mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

.field private mOutOfMemoryError:Ljava/lang/OutOfMemoryError;

.field private mPaint:Landroid/graphics/Paint;

.field private mPositionChanged:Z

.field private mRectFSelected:Landroid/graphics/RectF;

.field private mRectFTrimLeft:Landroid/graphics/RectF;

.field private mRectFTrimRight:Landroid/graphics/RectF;

.field private mState:Lcom/muvee/video/trimer/view/TrimBar$State;

.field private mTrimLeft:I

.field private mTrimLeftPressed:Z

.field private mTrimRight:I

.field private mTrimRightPressed:Z

.field private mVideoDuration:I

.field private ninePatchDrawableBG:Landroid/graphics/drawable/NinePatchDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 126
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object v1, Lcom/muvee/video/trimer/view/TrimBar$State;->PAUSE:Lcom/muvee/video/trimer/view/TrimBar$State;

    iput-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mState:Lcom/muvee/video/trimer/view/TrimBar$State;

    .line 55
    iput v2, p0, Lcom/muvee/video/trimer/view/TrimBar;->mVideoDuration:I

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I

    .line 98
    iput-boolean v2, p0, Lcom/muvee/video/trimer/view/TrimBar;->mPositionChanged:Z

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->setOutOfMemoryError(Ljava/lang/OutOfMemoryError;)V

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/muvee/video/trimer/view/TrimBar;->init()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, outOfMemoryError:Ljava/lang/OutOfMemoryError;
    const-string v1, "com.muvee.video.trimer.view.TrimBar"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "::TrimBar:outOfMemoryError:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/view/TrimBar;->setOutOfMemoryError(Ljava/lang/OutOfMemoryError;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    sget-object v1, Lcom/muvee/video/trimer/view/TrimBar$State;->PAUSE:Lcom/muvee/video/trimer/view/TrimBar$State;

    iput-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mState:Lcom/muvee/video/trimer/view/TrimBar$State;

    .line 55
    iput v2, p0, Lcom/muvee/video/trimer/view/TrimBar;->mVideoDuration:I

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I

    .line 98
    iput-boolean v2, p0, Lcom/muvee/video/trimer/view/TrimBar;->mPositionChanged:Z

    .line 115
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->setOutOfMemoryError(Ljava/lang/OutOfMemoryError;)V

    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/muvee/video/trimer/view/TrimBar;->init()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, outOfMemoryError:Ljava/lang/OutOfMemoryError;
    const-string v1, "com.muvee.video.trimer.view.TrimBar"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "::TrimBar:outOfMemoryError:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/view/TrimBar;->setOutOfMemoryError(Ljava/lang/OutOfMemoryError;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-object v1, Lcom/muvee/video/trimer/view/TrimBar$State;->PAUSE:Lcom/muvee/video/trimer/view/TrimBar$State;

    iput-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mState:Lcom/muvee/video/trimer/view/TrimBar$State;

    .line 55
    iput v2, p0, Lcom/muvee/video/trimer/view/TrimBar;->mVideoDuration:I

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I

    .line 98
    iput-boolean v2, p0, Lcom/muvee/video/trimer/view/TrimBar;->mPositionChanged:Z

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->setOutOfMemoryError(Ljava/lang/OutOfMemoryError;)V

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/muvee/video/trimer/view/TrimBar;->init()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, outOfMemoryError:Ljava/lang/OutOfMemoryError;
    const-string v1, "com.muvee.video.trimer.view.TrimBar"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "::TrimBar:outOfMemoryError:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/view/TrimBar;->setOutOfMemoryError(Ljava/lang/OutOfMemoryError;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1(Lcom/muvee/video/trimer/view/TrimBar;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z

    return-void
.end method

.method static synthetic access$10(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$11(Lcom/muvee/video/trimer/view/TrimBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mCurrentPlayPosition:I

    return-void
.end method

.method static synthetic access$12(Lcom/muvee/video/trimer/view/TrimBar;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mCurrentPlayPosition:I

    return v0
.end method

.method static synthetic access$13(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$14(Lcom/muvee/video/trimer/view/TrimBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I

    return-void
.end method

.method static synthetic access$15(Lcom/muvee/video/trimer/view/TrimBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I

    return-void
.end method

.method static synthetic access$16(Lcom/muvee/video/trimer/view/TrimBar;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mVideoDuration:I

    return v0
.end method

.method static synthetic access$17(Lcom/muvee/video/trimer/view/TrimBar;)I
    .locals 1
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBarLength:I

    return v0
.end method

.method static synthetic access$18(Lcom/muvee/video/trimer/view/TrimBar;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mIntrinsicWidth:I

    return v0
.end method

.method static synthetic access$2(Lcom/muvee/video/trimer/view/TrimBar;)Landroid/graphics/RectF;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$3(Lcom/muvee/video/trimer/view/TrimBar;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z

    return-void
.end method

.method static synthetic access$4(Lcom/muvee/video/trimer/view/TrimBar;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z

    return v0
.end method

.method static synthetic access$5(Lcom/muvee/video/trimer/view/TrimBar;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z

    return v0
.end method

.method static synthetic access$6(Lcom/muvee/video/trimer/view/TrimBar;Lcom/muvee/video/trimer/view/TrimBar$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mState:Lcom/muvee/video/trimer/view/TrimBar$State;

    return-void
.end method

.method static synthetic access$7(Lcom/muvee/video/trimer/view/TrimBar;)Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    return-object v0
.end method

.method static synthetic access$8(Lcom/muvee/video/trimer/view/TrimBar;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I

    return v0
.end method

.method static synthetic access$9(Lcom/muvee/video/trimer/view/TrimBar;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I

    return v0
.end method

.method private init()V
    .locals 5

    .prologue
    const v3, 0x7f02002f

    const/4 v4, 0x1

    .line 191
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "trimlt_mark_rest"

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

    .line 194
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "trimlt_mark_rest"

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimRight:Landroid/graphics/Bitmap;

    .line 196
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "trimlt_mark_in_focus"

    const v3, 0x7f02002c

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

    .line 197
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "trimlt_mark_pressed"

    const v3, 0x7f02002e

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimActiveRing:Landroid/graphics/Bitmap;

    .line 205
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    .line 206
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 209
    const-string v0, "mBitmapDrawableTrimPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4090

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_progress_empty"

    const v3, 0x20804c0

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawableProgressEmpty:Landroid/graphics/drawable/NinePatchDrawable;

    .line 227
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_progress_full"

    const v3, 0x20804c1

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawablePlayed:Landroid/graphics/drawable/NinePatchDrawable;

    .line 232
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_progress_buffer"

    const v3, 0x20807be

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawableMarked:Landroid/graphics/drawable/NinePatchDrawable;

    .line 236
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "trimlt_bg_progress_bar"

    const v3, 0x7f020026

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->ninePatchDrawableBG:Landroid/graphics/drawable/NinePatchDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/muvee/video/trimer/view/TrimBar$1;

    invoke-direct {v1, p0}, Lcom/muvee/video/trimer/view/TrimBar$1;-><init>(Lcom/muvee/video/trimer/view/TrimBar;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 397
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 400
    :cond_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private timeString(I)Ljava/lang/String;
    .locals 6
    .parameter "time"

    .prologue
    .line 642
    div-int/lit16 p1, p1, 0x3e8

    .line 643
    rem-int/lit8 v1, p1, 0x3c

    .line 644
    .local v1, sec:I
    div-int/lit8 p1, p1, 0x3c

    .line 645
    rem-int/lit8 v0, p1, 0x3c

    .line 646
    .local v0, min:I
    const-string v2, "%02d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-int/lit8 v5, p1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public IsPositionChanged()Z
    .locals 2

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mPositionChanged:Z

    .line 940
    .local v0, state:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mPositionChanged:Z

    .line 941
    return v0
.end method

.method public getBarLength()I
    .locals 1

    .prologue
    .line 925
    iget v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBarLength:I

    return v0
.end method

.method public getCurrentPlayPosition()I
    .locals 1

    .prologue
    .line 913
    iget v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mCurrentPlayPosition:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mCurrentPosition:I

    return v0
.end method

.method public getMargine()I
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mMargine:I

    return v0
.end method

.method public getMargineGap()I
    .locals 1

    .prologue
    .line 957
    iget v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mMargineGap:I

    return v0
.end method

.method public getOnTrimBarChangeListener()Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    return-object v0
.end method

.method public getOutOfMemoryError()Ljava/lang/OutOfMemoryError;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mOutOfMemoryError:Ljava/lang/OutOfMemoryError;

    return-object v0
.end method

.method public getState()Lcom/muvee/video/trimer/view/TrimBar$State;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mState:Lcom/muvee/video/trimer/view/TrimBar$State;

    return-object v0
.end method

.method public getTrimLeft()I
    .locals 1

    .prologue
    .line 867
    iget v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I

    return v0
.end method

.method public getTrimRight()I
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I

    return v0
.end method

.method public getVideoDurarionOverBarLength()F
    .locals 3

    .prologue
    .line 403
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mVideoDuration:I

    add-int/lit16 v1, v1, -0x3e8

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBarLength:I

    iget v2, p0, Lcom/muvee/video/trimer/view/TrimBar;->mIntrinsicWidth:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getVideoDuration()I
    .locals 1

    .prologue
    .line 892
    iget v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mVideoDuration:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 410
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 639
    :goto_0
    return-void

    .line 415
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mOutOfMemoryError:Ljava/lang/OutOfMemoryError;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 416
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 419
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/muvee/video/trimer/view/TrimBar;->mIntrinsicWidth:I

    .line 426
    move-object/from16 v0, p0

    iget v10, v0, Lcom/muvee/video/trimer/view/TrimBar;->mMargine:I

    .line 427
    .local v10, margin:I
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/video/trimer/view/TrimBar;->getWidth()I

    move-result v17

    mul-int/lit8 v18, v10, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/muvee/video/trimer/view/TrimBar;->mBarLength:I

    .line 429
    const/high16 v17, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBarLength:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mIntrinsicWidth:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int/lit8 v18, v18, -0x3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mVideoDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    add-int/lit16 v0, v0, -0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v5, v17, v18

    .line 432
    .local v5, barLenthOverVideoDuration:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBarLength:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mVideoDuration:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v5

    sub-float v15, v17, v18

    .line 436
    .local v15, right:F
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/video/trimer/view/TrimBar;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimActiveRing:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v6, v17, v18

    .line 451
    .local v6, baseLine:I
    new-instance v17, Landroid/graphics/RectF;

    .line 452
    int-to-float v0, v10

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v5

    add-float v18, v18, v19

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawableProgressEmpty:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v19, v6, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 454
    int-to-float v0, v10

    move/from16 v20, v0

    add-float v20, v20, v15

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawableProgressEmpty:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v6

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-direct/range {v17 .. v21}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 451
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    .line 459
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mState:Lcom/muvee/video/trimer/view/TrimBar$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/muvee/video/trimer/view/TrimBar$State;->PAUSE:Lcom/muvee/video/trimer/view/TrimBar$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimActiveRing:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v19, v6, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    .line 464
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 468
    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->timeString(I)Ljava/lang/String;

    move-result-object v16

    .line 469
    .local v16, strTime:Ljava/lang/String;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 470
    .local v11, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 476
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimActiveRing:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v19, v6, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    div-int/lit8 v20, v20, 0x3

    sub-int v19, v19, v20

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    .line 476
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 482
    .end local v11           #rect:Landroid/graphics/Rect;
    .end local v16           #strTime:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mState:Lcom/muvee/video/trimer/view/TrimBar$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/muvee/video/trimer/view/TrimBar$State;->PAUSE:Lcom/muvee/video/trimer/view/TrimBar$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimActiveRing:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v19, v6, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    .line 487
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 491
    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->timeString(I)Ljava/lang/String;

    move-result-object v16

    .line 492
    .restart local v16       #strTime:Ljava/lang/String;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 493
    .restart local v11       #rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 498
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimActiveRing:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v19, v6, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    div-int/lit8 v20, v20, 0x3

    sub-int v19, v19, v20

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    .line 498
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 506
    .end local v11           #rect:Landroid/graphics/Rect;
    .end local v16           #strTime:Ljava/lang/String;
    :cond_3
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mMargineGap:I

    move/from16 v17, v0

    sub-int v17, v10, v17

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->ninePatchDrawableBG:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v18, v6, v18

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/video/trimer/view/TrimBar;->getWidth()I

    move-result v19

    sub-int v19, v19, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mMargineGap:I

    move/from16 v20, v0

    add-int v19, v19, v20

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->ninePatchDrawableBG:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v6

    .line 506
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 515
    .restart local v11       #rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->ninePatchDrawableBG:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v17, v0

    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->ninePatchDrawableBG:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v22

    add-int v21, v21, v22

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->ninePatchDrawableBG:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 517
    const-string v17, "ninePatchDrawableBG.getMinimumHeight()"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, ":"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->ninePatchDrawableBG:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 526
    .local v14, rectFRest:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/RectF;->top:F

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/RectF;->bottom:F

    .line 532
    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/muvee/video/trimer/view/TrimBar;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBarLength:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/muvee/video/trimer/view/TrimBar;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBarLength:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 533
    .local v12, rect2:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawableProgressEmpty:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawableProgressEmpty:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawableMarked:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawableMarked:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    const/high16 v19, 0x41a0

    sub-float v18, v18, v19

    cmpg-float v17, v17, v18

    if-gez v17, :cond_4

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawableMarked:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 554
    :cond_4
    new-instance v13, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 557
    .local v13, rectF:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    const/high16 v18, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mCurrentPlayPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v13, Landroid/graphics/RectF;->right:F

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawablePlayed:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v17, v0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 564
    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawablePlayed:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v7, v0, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 565
    .local v7, clipDrawable:Landroid/graphics/drawable/ClipDrawable;
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v18

    div-float v17, v17, v18

    const v18, 0x461c4000

    mul-float v9, v17, v18

    .line 566
    .local v9, level:F
    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;->setBounds(IIII)V

    .line 568
    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    const/high16 v19, 0x41a0

    sub-float v18, v18, v19

    cmpg-float v17, v17, v18

    if-gez v17, :cond_5

    .line 570
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/ClipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 580
    :cond_5
    new-instance v17, Landroid/graphics/RectF;

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v19, v6, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-direct/range {v17 .. v21}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 580
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 595
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mState:Lcom/muvee/video/trimer/view/TrimBar$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/muvee/video/trimer/view/TrimBar$State;->PAUSE:Lcom/muvee/video/trimer/view/TrimBar$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimActiveRing:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v8, v17, 0x2

    .line 597
    .local v8, diff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimActiveRing:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 606
    .end local v8           #diff:I
    :cond_6
    new-instance v17, Landroid/graphics/RectF;

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimRight:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v19, v6, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFSelected:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimRight:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimRight:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-direct/range {v17 .. v21}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 606
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimRight:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 622
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mState:Lcom/muvee/video/trimer/view/TrimBar$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/muvee/video/trimer/view/TrimBar$State;->PAUSE:Lcom/muvee/video/trimer/view/TrimBar$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimActiveRing:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimRight:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v8, v17, 0x2

    .line 624
    .restart local v8       #diff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimActiveRing:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 629
    .end local v8           #diff:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    const/high16 v19, 0x4100

    sub-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    const/high16 v19, 0x4100

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    const/high16 v19, 0x4100

    sub-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimLeft:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    const/high16 v19, 0x4100

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    const/high16 v19, 0x4100

    sub-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    const/high16 v19, 0x4100

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    const/high16 v19, 0x4100

    sub-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/view/TrimBar;->mRectFTrimRight:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    const/high16 v19, 0x4100

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 801
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 803
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mState:Lcom/muvee/video/trimer/view/TrimBar$State;

    sget-object v1, Lcom/muvee/video/trimer/view/TrimBar$State;->PAUSE:Lcom/muvee/video/trimer/view/TrimBar$State;

    if-ne v0, v1, :cond_4

    .line 805
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 817
    iget-boolean v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mState:Lcom/muvee/video/trimer/view/TrimBar$State;

    invoke-interface {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;->onTrimBarReleased(Lcom/muvee/video/trimer/view/TrimBar$State;)V

    .line 821
    :cond_1
    iput-boolean v3, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z

    iput-boolean v3, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z

    .line 823
    :cond_2
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->invalidate()V

    .line 831
    :cond_3
    :goto_0
    return v2

    .line 826
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 827
    iput-boolean v3, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z

    iput-boolean v3, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z

    .line 828
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    iget-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mState:Lcom/muvee/video/trimer/view/TrimBar$State;

    invoke-interface {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;->onTrimBarReleased(Lcom/muvee/video/trimer/view/TrimBar$State;)V

    goto :goto_0
.end method

.method public recycleBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

    .line 139
    .local v0, temp:Landroid/graphics/Bitmap;
    iput-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimLeft:Landroid/graphics/Bitmap;

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimRight:Landroid/graphics/Bitmap;

    .line 146
    iput-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimRight:Landroid/graphics/Bitmap;

    .line 147
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

    .line 152
    iput-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimPopup:Landroid/graphics/Bitmap;

    .line 153
    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimActiveRing:Landroid/graphics/Bitmap;

    .line 158
    iput-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBitmapDrawableTrimActiveRing:Landroid/graphics/Bitmap;

    .line 159
    if-eqz v0, :cond_3

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    :cond_3
    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    :cond_4
    iput-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawablePlayed:Landroid/graphics/drawable/NinePatchDrawable;

    .line 177
    iput-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawableMarked:Landroid/graphics/drawable/NinePatchDrawable;

    .line 178
    iput-object v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mNinePatchDrawableProgressEmpty:Landroid/graphics/drawable/NinePatchDrawable;

    .line 179
    const/4 v0, 0x0

    .line 180
    return-void
.end method

.method public setBarLength(I)V
    .locals 0
    .parameter "barLength"

    .prologue
    .line 929
    iput p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mBarLength:I

    .line 930
    return-void
.end method

.method public setCurrentPlayPosition(I)V
    .locals 0
    .parameter "currentPlayPosition"

    .prologue
    .line 908
    iput p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mCurrentPlayPosition:I

    .line 909
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->invalidate()V

    .line 910
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 2
    .parameter "currentPosition"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRightPressed:Z

    if-eqz v0, :cond_1

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    iget-boolean v1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeftPressed:Z

    invoke-interface {v0, p1, v1}, Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;->onTrimBarCurrentPositionChanged(IZ)V

    .line 858
    :cond_1
    iput p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mCurrentPosition:I

    .line 859
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->invalidate()V

    .line 860
    return-void
.end method

.method public setMargine(I)V
    .locals 0
    .parameter "margine"

    .prologue
    .line 945
    iput p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mMargine:I

    .line 946
    return-void
.end method

.method public setMargineGap(I)V
    .locals 0
    .parameter "mmargineGap"

    .prologue
    .line 953
    iput p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mMargineGap:I

    .line 954
    return-void
.end method

.method public setOnTrimBarChangeListener(Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;)V
    .locals 0
    .parameter "onTrimBarChangeListener"

    .prologue
    .line 900
    iput-object p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mOnTrimBarChangeListener:Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;

    .line 901
    return-void
.end method

.method public setOutOfMemoryError(Ljava/lang/OutOfMemoryError;)V
    .locals 0
    .parameter "outOfMemoryError"

    .prologue
    .line 917
    iput-object p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mOutOfMemoryError:Ljava/lang/OutOfMemoryError;

    .line 918
    return-void
.end method

.method public setPositionChanged()V
    .locals 1

    .prologue
    .line 934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/video/trimer/view/TrimBar;->mPositionChanged:Z

    .line 935
    return-void
.end method

.method public setState(Lcom/muvee/video/trimer/view/TrimBar$State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 887
    iput-object p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mState:Lcom/muvee/video/trimer/view/TrimBar$State;

    .line 888
    invoke-virtual {p0}, Lcom/muvee/video/trimer/view/TrimBar;->invalidate()V

    .line 889
    return-void
.end method

.method public setTrimLeft(I)V
    .locals 0
    .parameter "trimLeft"

    .prologue
    .line 871
    iput p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimLeft:I

    .line 872
    return-void
.end method

.method public setTrimRight(I)V
    .locals 0
    .parameter "trimRight"

    .prologue
    .line 879
    iput p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mTrimRight:I

    .line 880
    return-void
.end method

.method public setVideoDuration(I)V
    .locals 0
    .parameter "videoDuration"

    .prologue
    .line 896
    iput p1, p0, Lcom/muvee/video/trimer/view/TrimBar;->mVideoDuration:I

    .line 897
    return-void
.end method

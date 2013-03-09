.class Lcom/android/facelock/Draw;
.super Landroid/view/View;
.source "Draw.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/facelock/Draw$DrawListener;,
        Lcom/android/facelock/Draw$State;
    }
.end annotation


# static fields
.field private static final MAX_PROGRESS_COUNT:F

.field private static final POINTS:[[F


# instance fields
.field private mCheckAlpha:I

.field private mCheckAlphaAnim:Landroid/animation/ValueAnimator;

.field private mCheckMark:Landroid/graphics/Bitmap;

.field mCount:I

.field volatile mEnrolling:Z

.field private mFinishAlpha:I

.field private mFinishGlow:Landroid/graphics/Bitmap;

.field private mGlowAlphaAnim:Landroid/animation/ValueAnimator;

.field private mGlowPaint:Landroid/graphics/Paint;

.field mLastElapsedTime:J

.field private mListener:Lcom/android/facelock/Draw$DrawListener;

.field private mLoadAlpha:I

.field mMaxCount:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPointAlpha:F

.field private mPointAlphaAnim:Landroid/animation/ValueAnimator;

.field private mProgress:F

.field private mProgressCount:I

.field volatile mStartTime:J

.field private mState:Lcom/android/facelock/Draw$State;

.field private mWhiteDot:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 52
    const/16 v0, 0x1f

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [F

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [F

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [F

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [F

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [F

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [F

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [F

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [F

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [F

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [F

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [F

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [F

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [F

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [F

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [F

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [F

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [F

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/facelock/Draw;->POINTS:[[F

    .line 61
    sget-object v0, Lcom/android/facelock/Draw;->POINTS:[[F

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    sput v0, Lcom/android/facelock/Draw;->MAX_PROGRESS_COUNT:F

    return-void

    .line 52
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
    .end array-data

    :array_1
    .array-data 0x4
        0xat 0xd7t 0x23t 0x3et
        0x48t 0xe1t 0x7at 0xbft
    .end array-data

    :array_2
    .array-data 0x4
        0x7bt 0x14t 0xaet 0x3et
        0x1ft 0x85t 0x6bt 0xbft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x85t 0xebt 0x51t 0xbft
    .end array-data

    :array_4
    .array-data 0x4
        0xat 0xd7t 0x23t 0x3ft
        0x33t 0x33t 0x33t 0xbft
    .end array-data

    :array_5
    .array-data 0x4
        0xa4t 0x70t 0x3dt 0x3ft
        0x71t 0x3dt 0xat 0xbft
    .end array-data

    :array_6
    .array-data 0x4
        0x14t 0xaet 0x47t 0x3ft
        0xect 0x51t 0xb8t 0xbet
    .end array-data

    :array_7
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0xect 0x51t 0x38t 0xbet
    .end array-data

    :array_8
    .array-data 0x4
        0x14t 0xaet 0x47t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x0t 0x0t 0x40t 0x3ft
        0xcdt 0xcct 0x4ct 0x3et
    .end array-data

    :array_a
    .array-data 0x4
        0x33t 0x33t 0x33t 0x3ft
        0xa4t 0x70t 0xbdt 0x3et
    .end array-data

    :array_b
    .array-data 0x4
        0x52t 0xb8t 0x1et 0x3ft
        0x71t 0x3dt 0xat 0x3ft
    .end array-data

    :array_c
    .array-data 0x4
        0xb8t 0x1et 0x5t 0x3ft
        0x8ft 0xc2t 0x35t 0x3ft
    .end array-data

    :array_d
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0xe1t 0x7at 0x54t 0x3ft
    .end array-data

    :array_e
    .array-data 0x4
        0xb8t 0x1et 0x85t 0x3et
        0xd7t 0xa3t 0x70t 0x3ft
    .end array-data

    :array_f
    .array-data 0x4
        0xat 0xd7t 0xa3t 0x3dt
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_10
    .array-data 0x4
        0xat 0xd7t 0xa3t 0xbdt
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_11
    .array-data 0x4
        0xb8t 0x1et 0x85t 0xbet
        0xd7t 0xa3t 0x70t 0x3ft
    .end array-data

    :array_12
    .array-data 0x4
        0xcdt 0xcct 0xcct 0xbet
        0xe1t 0x7at 0x54t 0x3ft
    .end array-data

    :array_13
    .array-data 0x4
        0xb8t 0x1et 0x5t 0xbft
        0x8ft 0xc2t 0x35t 0x3ft
    .end array-data

    :array_14
    .array-data 0x4
        0x52t 0xb8t 0x1et 0xbft
        0x71t 0x3dt 0xat 0x3ft
    .end array-data

    :array_15
    .array-data 0x4
        0x33t 0x33t 0x33t 0xbft
        0xa4t 0x70t 0xbdt 0x3et
    .end array-data

    :array_16
    .array-data 0x4
        0x0t 0x0t 0x40t 0xbft
        0xcdt 0xcct 0x4ct 0x3et
    .end array-data

    :array_17
    .array-data 0x4
        0x14t 0xaet 0x47t 0xbft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0xbft
        0xect 0x51t 0x38t 0xbet
    .end array-data

    :array_19
    .array-data 0x4
        0x14t 0xaet 0x47t 0xbft
        0xect 0x51t 0xb8t 0xbet
    .end array-data

    :array_1a
    .array-data 0x4
        0xa4t 0x70t 0x3dt 0xbft
        0x71t 0x3dt 0xat 0xbft
    .end array-data

    :array_1b
    .array-data 0x4
        0xat 0xd7t 0x23t 0xbft
        0x33t 0x33t 0x33t 0xbft
    .end array-data

    :array_1c
    .array-data 0x4
        0x0t 0x0t 0x0t 0xbft
        0x85t 0xebt 0x51t 0xbft
    .end array-data

    :array_1d
    .array-data 0x4
        0x7bt 0x14t 0xaet 0xbet
        0x1ft 0x85t 0x6bt 0xbft
    .end array-data

    :array_1e
    .array-data 0x4
        0xat 0xd7t 0x23t 0xbet
        0x48t 0xe1t 0x7at 0xbft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x1

    const-wide/16 v5, 0x320

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/facelock/Draw;->mPaint:Landroid/graphics/Paint;

    .line 100
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/facelock/Draw;->mGlowPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v1, p0, Lcom/android/facelock/Draw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v1, p0, Lcom/android/facelock/Draw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iput v3, p0, Lcom/android/facelock/Draw;->mCount:I

    .line 105
    iput v2, p0, Lcom/android/facelock/Draw;->mMaxCount:I

    .line 106
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/facelock/Draw;->setProgress(F)V

    .line 107
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/facelock/Draw;->mPointAlpha:F

    .line 108
    const/16 v1, 0x37

    iput v1, p0, Lcom/android/facelock/Draw;->mLoadAlpha:I

    .line 109
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/facelock/Draw;->mFinishAlpha:I

    .line 110
    iput v3, p0, Lcom/android/facelock/Draw;->mCheckAlpha:I

    .line 111
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/facelock/Draw;->mStartTime:J

    .line 112
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/android/facelock/Draw;->mLastElapsedTime:J

    .line 113
    iput-boolean v3, p0, Lcom/android/facelock/Draw;->mEnrolling:Z

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/facelock/Draw;->mListener:Lcom/android/facelock/Draw$DrawListener;

    .line 115
    sget-object v1, Lcom/android/facelock/Draw$State;->INITIAL:Lcom/android/facelock/Draw$State;

    iput-object v1, p0, Lcom/android/facelock/Draw;->mState:Lcom/android/facelock/Draw$State;

    .line 117
    invoke-virtual {p0}, Lcom/android/facelock/Draw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020007

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/facelock/Draw;->mFinishGlow:Landroid/graphics/Bitmap;

    .line 119
    const v1, 0x7f020005

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/facelock/Draw;->mWhiteDot:Landroid/graphics/Bitmap;

    .line 120
    const v1, 0x7f020001

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/facelock/Draw;->mCheckMark:Landroid/graphics/Bitmap;

    .line 123
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/facelock/Draw;->mPointAlphaAnim:Landroid/animation/ValueAnimator;

    .line 124
    iget-object v1, p0, Lcom/android/facelock/Draw;->mPointAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/facelock/Draw$1;

    invoke-direct {v2, p0}, Lcom/android/facelock/Draw$1;-><init>(Lcom/android/facelock/Draw;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 131
    iget-object v1, p0, Lcom/android/facelock/Draw;->mPointAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 132
    iget-object v1, p0, Lcom/android/facelock/Draw;->mPointAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 133
    iget-object v1, p0, Lcom/android/facelock/Draw;->mPointAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 135
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/facelock/Draw;->mGlowAlphaAnim:Landroid/animation/ValueAnimator;

    .line 136
    iget-object v1, p0, Lcom/android/facelock/Draw;->mGlowAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/facelock/Draw$2;

    invoke-direct {v2, p0}, Lcom/android/facelock/Draw$2;-><init>(Lcom/android/facelock/Draw;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 145
    iget-object v1, p0, Lcom/android/facelock/Draw;->mGlowAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/facelock/Draw$3;

    invoke-direct {v2, p0}, Lcom/android/facelock/Draw$3;-><init>(Lcom/android/facelock/Draw;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 152
    iget-object v1, p0, Lcom/android/facelock/Draw;->mGlowAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 154
    new-array v1, v4, [I

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/facelock/Draw;->mCheckAlphaAnim:Landroid/animation/ValueAnimator;

    .line 155
    iget-object v1, p0, Lcom/android/facelock/Draw;->mCheckAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/facelock/Draw$4;

    invoke-direct {v2, p0}, Lcom/android/facelock/Draw$4;-><init>(Lcom/android/facelock/Draw;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    iget-object v1, p0, Lcom/android/facelock/Draw;->mCheckAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 168
    iget-object v1, p0, Lcom/android/facelock/Draw;->mCheckAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 169
    return-void

    .line 123
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x19t 0x3et
    .end array-data

    .line 135
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 154
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/facelock/Draw;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/facelock/Draw;->mPointAlpha:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/facelock/Draw;Lcom/android/facelock/Draw$State;)Lcom/android/facelock/Draw$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/facelock/Draw;->mState:Lcom/android/facelock/Draw$State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/facelock/Draw;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/facelock/Draw;->mCheckAlphaAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/facelock/Draw;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/facelock/Draw;->mFinishAlpha:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/facelock/Draw;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/facelock/Draw;->mCheckAlpha:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/facelock/Draw;)Lcom/android/facelock/Draw$DrawListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/facelock/Draw;->mListener:Lcom/android/facelock/Draw$DrawListener;

    return-object v0
.end method


# virtual methods
.method beginGlow()V
    .locals 1

    .prologue
    .line 190
    sget v0, Lcom/android/facelock/Draw;->MAX_PROGRESS_COUNT:F

    invoke-virtual {p0, v0}, Lcom/android/facelock/Draw;->setProgress(F)V

    .line 191
    sget-object v0, Lcom/android/facelock/Draw$State;->GLOW:Lcom/android/facelock/Draw$State;

    iput-object v0, p0, Lcom/android/facelock/Draw;->mState:Lcom/android/facelock/Draw$State;

    .line 192
    iget-object v0, p0, Lcom/android/facelock/Draw;->mGlowAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 193
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/facelock/Draw;->mMaxCount:I

    iput v0, p0, Lcom/android/facelock/Draw;->mCount:I

    .line 186
    return-void
.end method

.method isDone()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/facelock/Draw;->mState:Lcom/android/facelock/Draw$State;

    sget-object v1, Lcom/android/facelock/Draw$State;->CHECK:Lcom/android/facelock/Draw$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/facelock/Draw;->mState:Lcom/android/facelock/Draw$State;

    sget-object v1, Lcom/android/facelock/Draw$State;->COMPLETE:Lcom/android/facelock/Draw$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method newFace()V
    .locals 4

    .prologue
    .line 199
    sget-object v2, Lcom/android/facelock/Draw$State;->PROGRESS:Lcom/android/facelock/Draw$State;

    iput-object v2, p0, Lcom/android/facelock/Draw;->mState:Lcom/android/facelock/Draw$State;

    .line 200
    iget-object v2, p0, Lcom/android/facelock/Draw;->mPointAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 202
    .local v0, currentTime:J
    iget-wide v2, p0, Lcom/android/facelock/Draw;->mStartTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/facelock/Draw;->mLastElapsedTime:J

    .line 203
    iput-wide v0, p0, Lcom/android/facelock/Draw;->mStartTime:J

    .line 204
    iget v2, p0, Lcom/android/facelock/Draw;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/facelock/Draw;->mCount:I

    .line 205
    invoke-virtual {p0}, Lcom/android/facelock/Draw;->invalidate()V

    .line 206
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/facelock/Draw;->mCheckAlpha:I

    .line 92
    invoke-virtual {p0}, Lcom/android/facelock/Draw;->invalidate()V

    .line 93
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/facelock/Draw;->mPointAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 175
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "c"

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/facelock/Draw;->isDone()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 220
    iget-object v10, p0, Lcom/android/facelock/Draw;->mPaint:Landroid/graphics/Paint;

    iget v11, p0, Lcom/android/facelock/Draw;->mCheckAlpha:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 221
    iget-object v10, p0, Lcom/android/facelock/Draw;->mCheckMark:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/facelock/Draw;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/android/facelock/Draw;->mCheckMark:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/android/facelock/Draw;->getHeight()I

    move-result v12

    iget-object v13, p0, Lcom/android/facelock/Draw;->mCheckMark:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/facelock/Draw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 226
    :cond_0
    iget-object v10, p0, Lcom/android/facelock/Draw;->mState:Lcom/android/facelock/Draw$State;

    sget-object v11, Lcom/android/facelock/Draw$State;->INITIAL:Lcom/android/facelock/Draw$State;

    if-ne v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/facelock/Draw;->mPaint:Landroid/graphics/Paint;

    iget v11, p0, Lcom/android/facelock/Draw;->mPointAlpha:F

    const/high16 v12, 0x437f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 247
    :cond_1
    :goto_0
    const/4 v6, 0x0

    .local v6, p:I
    :goto_1
    sget-object v10, Lcom/android/facelock/Draw;->POINTS:[[F

    array-length v10, v10

    if-ge v6, v10, :cond_a

    .line 248
    iget-object v10, p0, Lcom/android/facelock/Draw;->mState:Lcom/android/facelock/Draw$State;

    sget-object v11, Lcom/android/facelock/Draw$State;->PROGRESS:Lcom/android/facelock/Draw$State;

    if-ne v10, v11, :cond_2

    .line 249
    iget v10, p0, Lcom/android/facelock/Draw;->mProgressCount:I

    add-int/lit8 v10, v10, -0x2

    if-ge v6, v10, :cond_7

    iget-object v10, p0, Lcom/android/facelock/Draw;->mPaint:Landroid/graphics/Paint;

    const/16 v11, 0xff

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 254
    :cond_2
    :goto_2
    sget-object v10, Lcom/android/facelock/Draw;->POINTS:[[F

    aget-object v10, v10, v6

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {p0}, Lcom/android/facelock/Draw;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const v11, 0x3ebd70a4

    mul-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/facelock/Draw;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float v4, v10, v11

    .line 255
    .local v4, cx:F
    sget-object v10, Lcom/android/facelock/Draw;->POINTS:[[F

    aget-object v10, v10, v6

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {p0}, Lcom/android/facelock/Draw;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const v11, 0x3ebd70a4

    mul-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/facelock/Draw;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float v5, v10, v11

    .line 257
    .local v5, cy:F
    iget-object v10, p0, Lcom/android/facelock/Draw;->mFinishGlow:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float v0, v4, v10

    .line 258
    .local v0, bx:F
    iget-object v10, p0, Lcom/android/facelock/Draw;->mFinishGlow:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float v1, v5, v10

    .line 260
    .local v1, by:F
    iget-object v10, p0, Lcom/android/facelock/Draw;->mWhiteDot:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float v8, v4, v10

    .line 261
    .local v8, whitex:F
    iget-object v10, p0, Lcom/android/facelock/Draw;->mWhiteDot:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float v9, v5, v10

    .line 263
    .local v9, whitey:F
    iget-object v10, p0, Lcom/android/facelock/Draw;->mState:Lcom/android/facelock/Draw$State;

    sget-object v11, Lcom/android/facelock/Draw$State;->GLOW:Lcom/android/facelock/Draw$State;

    if-ne v10, v11, :cond_9

    .line 264
    iget-object v10, p0, Lcom/android/facelock/Draw;->mWhiteDot:Landroid/graphics/Bitmap;

    iget-object v11, p0, Lcom/android/facelock/Draw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v8, v9, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 265
    iget-object v10, p0, Lcom/android/facelock/Draw;->mGlowPaint:Landroid/graphics/Paint;

    iget v11, p0, Lcom/android/facelock/Draw;->mFinishAlpha:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 266
    iget-object v10, p0, Lcom/android/facelock/Draw;->mFinishGlow:Landroid/graphics/Bitmap;

    iget-object v11, p0, Lcom/android/facelock/Draw;->mGlowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 247
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 228
    .end local v0           #bx:F
    .end local v1           #by:F
    .end local v4           #cx:F
    .end local v5           #cy:F
    .end local v6           #p:I
    .end local v8           #whitex:F
    .end local v9           #whitey:F
    :cond_3
    iget-boolean v10, p0, Lcom/android/facelock/Draw;->mEnrolling:Z

    if-nez v10, :cond_4

    iget v10, p0, Lcom/android/facelock/Draw;->mCount:I

    iget v11, p0, Lcom/android/facelock/Draw;->mMaxCount:I

    if-lt v10, v11, :cond_1

    :cond_4
    iget-object v10, p0, Lcom/android/facelock/Draw;->mState:Lcom/android/facelock/Draw$State;

    sget-object v11, Lcom/android/facelock/Draw$State;->PROGRESS:Lcom/android/facelock/Draw$State;

    if-ne v10, v11, :cond_1

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/facelock/Draw;->mStartTime:J

    sub-long/2addr v10, v12

    long-to-float v3, v10

    .line 230
    .local v3, currElapsed:F
    iget-wide v10, p0, Lcom/android/facelock/Draw;->mLastElapsedTime:J

    long-to-float v10, v10

    div-float v2, v3, v10

    .line 231
    .local v2, completion:F
    const/high16 v10, 0x3f80

    cmpl-float v10, v2, v10

    if-lez v10, :cond_5

    .line 232
    const/high16 v2, 0x3f80

    .line 233
    :cond_5
    iget v10, p0, Lcom/android/facelock/Draw;->mCount:I

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    add-float/2addr v10, v2

    sget v11, Lcom/android/facelock/Draw;->MAX_PROGRESS_COUNT:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/android/facelock/Draw;->mMaxCount:I

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 235
    .local v7, progress:F
    iget v10, p0, Lcom/android/facelock/Draw;->mProgress:F

    const v11, 0x3e051eb8

    add-float/2addr v10, v11

    cmpl-float v10, v7, v10

    if-lez v10, :cond_6

    .line 236
    iget v10, p0, Lcom/android/facelock/Draw;->mProgress:F

    const v11, 0x3e051eb8

    add-float v7, v10, v11

    .line 238
    :cond_6
    iget v10, p0, Lcom/android/facelock/Draw;->mProgress:F

    cmpl-float v10, v7, v10

    if-lez v10, :cond_1

    .line 239
    invoke-virtual {p0, v7}, Lcom/android/facelock/Draw;->setProgress(F)V

    .line 240
    const/high16 v10, 0x4348

    iget v11, p0, Lcom/android/facelock/Draw;->mProgressCount:I

    int-to-float v11, v11

    sub-float v11, v7, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int/lit8 v10, v10, 0x37

    iput v10, p0, Lcom/android/facelock/Draw;->mLoadAlpha:I

    .line 242
    float-to-double v10, v7

    const-wide v12, 0x3f847ae147ae147bL

    add-double/2addr v10, v12

    sget v12, Lcom/android/facelock/Draw;->MAX_PROGRESS_COUNT:F

    float-to-double v12, v12

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/facelock/Draw;->beginGlow()V

    goto/16 :goto_0

    .line 250
    .end local v2           #completion:F
    .end local v3           #currElapsed:F
    .end local v7           #progress:F
    .restart local v6       #p:I
    :cond_7
    iget v10, p0, Lcom/android/facelock/Draw;->mProgressCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v6, v10, :cond_8

    iget-object v10, p0, Lcom/android/facelock/Draw;->mPaint:Landroid/graphics/Paint;

    iget v11, p0, Lcom/android/facelock/Draw;->mLoadAlpha:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_2

    .line 251
    :cond_8
    iget-object v10, p0, Lcom/android/facelock/Draw;->mPaint:Landroid/graphics/Paint;

    const/16 v11, 0x37

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_2

    .line 268
    .restart local v0       #bx:F
    .restart local v1       #by:F
    .restart local v4       #cx:F
    .restart local v5       #cy:F
    .restart local v8       #whitex:F
    .restart local v9       #whitey:F
    :cond_9
    iget-object v10, p0, Lcom/android/facelock/Draw;->mWhiteDot:Landroid/graphics/Bitmap;

    iget-object v11, p0, Lcom/android/facelock/Draw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v8, v9, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 274
    .end local v0           #bx:F
    .end local v1           #by:F
    .end local v4           #cx:F
    .end local v5           #cy:F
    .end local v8           #whitex:F
    .end local v9           #whitey:F
    :cond_a
    iget-object v10, p0, Lcom/android/facelock/Draw;->mState:Lcom/android/facelock/Draw$State;

    sget-object v11, Lcom/android/facelock/Draw$State;->PROGRESS:Lcom/android/facelock/Draw$State;

    if-ne v10, v11, :cond_b

    invoke-virtual {p0}, Lcom/android/facelock/Draw;->invalidate()V

    .line 275
    :cond_b
    return-void
.end method

.method setListener(Lcom/android/facelock/Draw$DrawListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/facelock/Draw;->mListener:Lcom/android/facelock/Draw$DrawListener;

    .line 87
    return-void
.end method

.method setProgress(F)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 178
    float-to-int v0, p1

    iput v0, p0, Lcom/android/facelock/Draw;->mProgressCount:I

    .line 179
    iput p1, p0, Lcom/android/facelock/Draw;->mProgress:F

    .line 180
    return-void
.end method

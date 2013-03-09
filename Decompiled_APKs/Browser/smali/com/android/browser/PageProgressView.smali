.class public Lcom/android/browser/PageProgressView;
.super Landroid/widget/ImageView;
.source "PageProgressView.java"


# static fields
.field private static final DELAY:I = 0x28

.field public static final MAX_PROGRESS:I = 0x2710

.field private static final MSG_UPDATE:I = 0x2a

.field private static final STEPS:I = 0xa


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mCurrentProgress:I

.field private mHandler:Landroid/os/Handler;

.field private mIncrement:I

.field private mTargetProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/android/browser/PageProgressView;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/browser/PageProgressView;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1}, Lcom/android/browser/PageProgressView;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/PageProgressView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/browser/PageProgressView;->mCurrentProgress:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/browser/PageProgressView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/browser/PageProgressView;->mCurrentProgress:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/browser/PageProgressView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/browser/PageProgressView;->mTargetProgress:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/browser/PageProgressView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/browser/PageProgressView;->mIncrement:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/browser/PageProgressView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/browser/PageProgressView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/PageProgressView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/browser/PageProgressView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/browser/PageProgressView;->mBounds:Landroid/graphics/Rect;

    .line 73
    iput v1, p0, Lcom/android/browser/PageProgressView;->mCurrentProgress:I

    .line 74
    iput v1, p0, Lcom/android/browser/PageProgressView;->mTargetProgress:I

    .line 75
    new-instance v0, Lcom/android/browser/PageProgressView$1;

    invoke-direct {v0, p0}, Lcom/android/browser/PageProgressView$1;-><init>(Lcom/android/browser/PageProgressView;)V

    iput-object v0, p0, Lcom/android/browser/PageProgressView;->mHandler:Landroid/os/Handler;

    .line 91
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/browser/PageProgressView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/browser/PageProgressView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 114
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4
    .parameter "f"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/browser/PageProgressView;->mBounds:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 96
    iget-object v0, p0, Lcom/android/browser/PageProgressView;->mBounds:Landroid/graphics/Rect;

    sub-int v1, p4, p2

    iget v2, p0, Lcom/android/browser/PageProgressView;->mCurrentProgress:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x2710

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 97
    iget-object v0, p0, Lcom/android/browser/PageProgressView;->mBounds:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 98
    iget-object v0, p0, Lcom/android/browser/PageProgressView;->mBounds:Landroid/graphics/Rect;

    sub-int v1, p5, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 99
    return-void
.end method

.method setProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    const/16 v2, 0x2a

    .line 102
    iget v0, p0, Lcom/android/browser/PageProgressView;->mTargetProgress:I

    iput v0, p0, Lcom/android/browser/PageProgressView;->mCurrentProgress:I

    .line 103
    iput p1, p0, Lcom/android/browser/PageProgressView;->mTargetProgress:I

    .line 104
    iget v0, p0, Lcom/android/browser/PageProgressView;->mTargetProgress:I

    iget v1, p0, Lcom/android/browser/PageProgressView;->mCurrentProgress:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/browser/PageProgressView;->mIncrement:I

    .line 105
    iget-object v0, p0, Lcom/android/browser/PageProgressView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/android/browser/PageProgressView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    return-void
.end method

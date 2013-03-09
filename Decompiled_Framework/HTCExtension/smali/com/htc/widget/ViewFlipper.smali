.class public Lcom/htc/widget/ViewFlipper;
.super Lcom/htc/widget/ViewAnimator;
.source "ViewFlipper.java"


# instance fields
.field private final FLIP_MSG:I

.field private mFlipInterval:I

.field private final mHandler:Landroid/os/Handler;

.field private mKeepFlipping:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/htc/widget/ViewFlipper;->mFlipInterval:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/ViewFlipper;->mKeepFlipping:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/ViewFlipper;->FLIP_MSG:I

    new-instance v0, Lcom/htc/widget/ViewFlipper$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/ViewFlipper$1;-><init>(Lcom/htc/widget/ViewFlipper;)V

    iput-object v0, p0, Lcom/htc/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/16 v3, 0xbb8

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/htc/widget/ViewFlipper;->mFlipInterval:I

    iput-boolean v2, p0, Lcom/htc/widget/ViewFlipper;->mKeepFlipping:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/widget/ViewFlipper;->FLIP_MSG:I

    new-instance v1, Lcom/htc/widget/ViewFlipper$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/ViewFlipper$1;-><init>(Lcom/htc/widget/ViewFlipper;)V

    iput-object v1, p0, Lcom/htc/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/internal/R$styleable;->ViewFlipper:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/ViewFlipper;->mFlipInterval:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/ViewFlipper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/ViewFlipper;->mKeepFlipping:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/ViewFlipper;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/ViewFlipper;->mFlipInterval:I

    return v0
.end method


# virtual methods
.method public isFlipping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/ViewFlipper;->mKeepFlipping:Z

    return v0
.end method

.method public manualForward()V
    .locals 4

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/htc/widget/ViewFlipper;->mKeepFlipping:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/ViewAnimator;->showNext()V

    iget-boolean v1, p0, Lcom/htc/widget/ViewFlipper;->mKeepFlipping:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/htc/widget/ViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public setFlipInterval(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/ViewFlipper;->mFlipInterval:I

    return-void
.end method

.method public startFlipping()V
    .locals 4

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/htc/widget/ViewFlipper;->mKeepFlipping:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/htc/widget/ViewFlipper;->mKeepFlipping:Z

    invoke-virtual {p0}, Lcom/htc/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/ViewFlipper;->showOnly(I)V

    iget-object v1, p0, Lcom/htc/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/htc/widget/ViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public stopFlipping()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/ViewFlipper;->mKeepFlipping:Z

    iput-boolean v1, p0, Lcom/htc/widget/ViewAnimator;->mFirstTime:Z

    iget-object v0, p0, Lcom/htc/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

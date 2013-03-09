.class public Lcom/google/android/gm/UndoBarView;
.super Landroid/widget/FrameLayout;
.source "UndoBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;
    }
.end annotation


# static fields
.field public static final EXCLUDE_UNDO_OPS:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHidden:Z

.field private mOnCancelListener:Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;

.field private mStartShowTime:J

.field private mUndoButtonView:Landroid/view/View;

.field private mUndoDescriptionView:Landroid/widget/TextView;

.field private mUndoHideAnimation:Landroid/animation/Animator;

.field private mUndoHideListener:Landroid/animation/Animator$AnimatorListener;

.field private mUndoShowAnimation:Landroid/animation/Animator;

.field private mUndoShowListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 28
    const v0, 0x7f0f0012

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0f00ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0f0042

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0f00f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0f00f1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/UndoBarView;->EXCLUDE_UNDO_OPS:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/UndoBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/UndoBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gm/UndoBarView;->mStartShowTime:J

    .line 37
    new-instance v0, Lcom/google/android/gm/UndoBarView$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/UndoBarView$1;-><init>(Lcom/google/android/gm/UndoBarView;)V

    iput-object v0, p0, Lcom/google/android/gm/UndoBarView;->mDelayedHide:Ljava/lang/Runnable;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/UndoBarView;->mHidden:Z

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/UndoBarView;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/UndoBarView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gm/UndoBarView;->internalHide(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/UndoBarView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoShowListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/UndoBarView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoHideListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method private getUndoHideAnimation()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoHideAnimation:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/google/android/gm/UndoBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060001

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoHideAnimation:Landroid/animation/Animator;

    .line 206
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoHideAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoHideAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/google/android/gm/UndoBarView$4;

    invoke-direct {v1, p0}, Lcom/google/android/gm/UndoBarView$4;-><init>(Lcom/google/android/gm/UndoBarView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoHideAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method private getUndoShowAnimation()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoShowAnimation:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gm/UndoBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoShowAnimation:Landroid/animation/Animator;

    .line 165
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoShowAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoShowAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/google/android/gm/UndoBarView$3;

    invoke-direct {v1, p0}, Lcom/google/android/gm/UndoBarView$3;-><init>(Lcom/google/android/gm/UndoBarView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoShowAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method private internalHide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/android/gm/UndoBarView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoDescriptionView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    if-eqz p1, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/google/android/gm/UndoBarView;->getUndoHideAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gm/UndoBarView;->setVisibility(I)V

    .line 137
    invoke-direct {p0}, Lcom/google/android/gm/UndoBarView;->onCancel()V

    goto :goto_0
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mOnCancelListener:Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mOnCancelListener:Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;

    invoke-interface {v0}, Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;->onUndoCancel()V

    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method public doHide()V
    .locals 9

    .prologue
    const-wide/16 v6, 0x5dc

    const/4 v8, 0x1

    .line 106
    iget-boolean v4, p0, Lcom/google/android/gm/UndoBarView;->mHidden:Z

    if-nez v4, :cond_0

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 108
    .local v2, now:J
    iget-wide v4, p0, Lcom/google/android/gm/UndoBarView;->mStartShowTime:J

    sub-long v0, v2, v4

    .line 109
    .local v0, diff:J
    cmp-long v4, v0, v6

    if-ltz v4, :cond_1

    .line 110
    invoke-direct {p0, v8}, Lcom/google/android/gm/UndoBarView;->internalHide(Z)V

    .line 114
    :goto_0
    iput-boolean v8, p0, Lcom/google/android/gm/UndoBarView;->mHidden:Z

    .line 116
    .end local v0           #diff:J
    .end local v2           #now:J
    :cond_0
    return-void

    .line 112
    .restart local v0       #diff:J
    .restart local v2       #now:J
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/UndoBarView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/gm/UndoBarView;->mDelayedHide:Ljava/lang/Runnable;

    sub-long/2addr v6, v0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public hide(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/android/gm/UndoBarView;->mHidden:Z

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/UndoBarView;->mHidden:Z

    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/gm/UndoBarView;->internalHide(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method public isEventInUndo(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/google/android/gm/UndoBarView;->isShown()Z

    move-result v5

    if-nez v5, :cond_0

    .line 260
    :goto_0
    return v4

    .line 256
    :cond_0
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 257
    .local v1, xy:[I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 258
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 259
    .local v2, y:F
    invoke-virtual {p0, v1}, Lcom/google/android/gm/UndoBarView;->getLocationOnScreen([I)V

    .line 260
    aget v5, v1, v4

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_1

    aget v5, v1, v4

    invoke-virtual {p0}, Lcom/google/android/gm/UndoBarView;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    aget v5, v1, v3

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    aget v5, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gm/UndoBarView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 72
    const v0, 0x7f0f00c8

    invoke-virtual {p0, v0}, Lcom/google/android/gm/UndoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoButtonView:Landroid/view/View;

    .line 73
    const v0, 0x7f0f00c7

    invoke-virtual {p0, v0}, Lcom/google/android/gm/UndoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoDescriptionView:Landroid/widget/TextView;

    .line 74
    return-void
.end method

.method public setOnCancelListener(Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/gm/UndoBarView;->mOnCancelListener:Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;

    .line 66
    return-void
.end method

.method public setUndoHideListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/gm/UndoBarView;->mUndoHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 159
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 145
    return-void
.end method

.method public show(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/UndoOperation;Z)V
    .locals 3
    .parameter "menuHandler"
    .parameter "undoOperation"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 83
    if-nez p2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoButtonView:Landroid/view/View;

    new-instance v1, Lcom/google/android/gm/UndoBarView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gm/UndoBarView$2;-><init>(Lcom/google/android/gm/UndoBarView;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/UndoOperation;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/UndoBarView;->mStartShowTime:J

    .line 93
    iput-boolean v2, p0, Lcom/google/android/gm/UndoBarView;->mHidden:Z

    .line 94
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoDescriptionView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/android/gm/UndoOperation;->mDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    if-eqz p3, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/google/android/gm/UndoBarView;->getUndoShowAnimation()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/gm/UndoBarView;->setVisibility(I)V

    goto :goto_0
.end method

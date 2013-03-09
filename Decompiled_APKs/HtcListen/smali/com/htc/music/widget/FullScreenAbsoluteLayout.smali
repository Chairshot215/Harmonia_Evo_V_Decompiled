.class public Lcom/htc/music/widget/FullScreenAbsoluteLayout;
.super Landroid/widget/AbsoluteLayout;
.source "FullScreenAbsoluteLayout.java"


# instance fields
.field protected mTitleBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->mTitleBarHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->mTitleBarHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->mTitleBarHeight:I

    return-void
.end method

.method private isFullScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->isFullScreen()Z

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v4, p0, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->mTitleBarHeight:I

    neg-int v4, v4

    iput v4, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsoluteLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/music/widget/FullScreenAbsoluteLayout;->mTitleBarHeight:I

    return-void
.end method

.class public Lcom/htc/widget/HtcFrameLayout;
.super Landroid/widget/FrameLayout;
.source "HtcFrameLayout.java"


# instance fields
.field private mCanvasClipper:Lcom/htc/widget/CanvasClipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcFrameLayout;->init()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/widget/HtcFrameLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CanvasClipper;->restoreCanvas(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/widget/HtcFrameLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CanvasClipper;->antialiasCorners(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcFrameLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    invoke-virtual {v0, p1, p0}, Lcom/htc/widget/CanvasClipper;->clipCanvas(Landroid/graphics/Canvas;Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method init()V
    .locals 2

    new-instance v0, Lcom/htc/widget/CanvasClipper;

    invoke-direct {v0}, Lcom/htc/widget/CanvasClipper;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcFrameLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    iget-object v0, p0, Lcom/htc/widget/HtcFrameLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CanvasClipper;->setRoundedCornerEnabled(Z)V

    return-void
.end method

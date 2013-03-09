.class public Lcom/htc/widget/HtcRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "HtcRelativeLayout.java"


# instance fields
.field private mCanvasClipper:Lcom/htc/widget/CanvasClipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lcom/htc/widget/HtcRelativeLayout;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0}, Lcom/htc/widget/HtcRelativeLayout;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    invoke-virtual {p0}, Lcom/htc/widget/HtcRelativeLayout;->init()V

    .line 14
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 41
    iget-object v0, p0, Lcom/htc/widget/HtcRelativeLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CanvasClipper;->restoreCanvas(Landroid/graphics/Canvas;)V

    .line 42
    iget-object v0, p0, Lcom/htc/widget/HtcRelativeLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CanvasClipper;->antialiasCorners(Landroid/graphics/Canvas;)V

    .line 43
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/widget/HtcRelativeLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    invoke-virtual {v0, p1, p0}, Lcom/htc/widget/CanvasClipper;->clipCanvas(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 34
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 35
    return-void
.end method

.method init()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/htc/widget/CanvasClipper;

    invoke-direct {v0}, Lcom/htc/widget/CanvasClipper;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcRelativeLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    .line 28
    iget-object v0, p0, Lcom/htc/widget/HtcRelativeLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CanvasClipper;->setRoundedCornerEnabled(Z)V

    .line 29
    return-void
.end method

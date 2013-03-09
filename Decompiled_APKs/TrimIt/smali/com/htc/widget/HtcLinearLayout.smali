.class public Lcom/htc/widget/HtcLinearLayout;
.super Landroid/widget/LinearLayout;
.source "HtcLinearLayout.java"


# instance fields
.field private mCanvasClipper:Lcom/htc/widget/CanvasClipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0}, Lcom/htc/widget/HtcLinearLayout;->init()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-virtual {p0}, Lcom/htc/widget/HtcLinearLayout;->init()V

    .line 20
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 37
    iget-object v0, p0, Lcom/htc/widget/HtcLinearLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CanvasClipper;->restoreCanvas(Landroid/graphics/Canvas;)V

    .line 38
    iget-object v0, p0, Lcom/htc/widget/HtcLinearLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CanvasClipper;->antialiasCorners(Landroid/graphics/Canvas;)V

    .line 39
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/widget/HtcLinearLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    invoke-virtual {v0, p1, p0}, Lcom/htc/widget/CanvasClipper;->clipCanvas(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 30
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 31
    return-void
.end method

.method init()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/htc/widget/CanvasClipper;

    invoke-direct {v0}, Lcom/htc/widget/CanvasClipper;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcLinearLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    .line 24
    iget-object v0, p0, Lcom/htc/widget/HtcLinearLayout;->mCanvasClipper:Lcom/htc/widget/CanvasClipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CanvasClipper;->setRoundedCornerEnabled(Z)V

    .line 25
    return-void
.end method

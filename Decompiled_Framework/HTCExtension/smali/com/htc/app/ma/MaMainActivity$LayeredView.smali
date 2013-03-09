.class Lcom/htc/app/ma/MaMainActivity$LayeredView;
.super Landroid/view/View;
.source "MaMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/ma/MaMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayeredView"
.end annotation


# instance fields
.field private displayW:I

.field final synthetic this$0:Lcom/htc/app/ma/MaMainActivity;

.field private transparentPosition:I


# direct methods
.method public constructor <init>(Lcom/htc/app/ma/MaMainActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/ma/MaMainActivity$LayeredView;->this$0:Lcom/htc/app/ma/MaMainActivity;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/htc/app/ma/MaMainActivity$LayeredView;->this$0:Lcom/htc/app/ma/MaMainActivity;

    #getter for: Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/htc/app/ma/MaMainActivity;->access$400(Lcom/htc/app/ma/MaMainActivity;)Landroid/view/ViewGroup;

    move-result-object v7

    iget v8, p0, Lcom/htc/app/ma/MaMainActivity$LayeredView;->transparentPosition:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v8

    sub-int v1, v7, v8

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_0

    int-to-float v7, v0

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v4

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_0

    int-to-float v7, v1

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v11, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity$LayeredView;->this$0:Lcom/htc/app/ma/MaMainActivity;

    #getter for: Lcom/htc/app/ma/MaMainActivity;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/htc/app/ma/MaMainActivity;->access$400(Lcom/htc/app/ma/MaMainActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    iget v6, p0, Lcom/htc/app/ma/MaMainActivity$LayeredView;->transparentPosition:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/htc/app/ma/MaMainActivity$LayeredView;->this$0:Lcom/htc/app/ma/MaMainActivity;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Lcom/htc/app/ma/MaMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/htc/app/ma/MaMainActivity$LayeredView;->displayW:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/high16 v5, -0x100

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v5, 0xaa

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/htc/app/ma/MaMainActivity$LayeredView;->displayW:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    invoke-direct {v5, v11, v11, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected setTransparentPosition(I)V
    .locals 0

    iput p1, p0, Lcom/htc/app/ma/MaMainActivity$LayeredView;->transparentPosition:I

    return-void
.end method

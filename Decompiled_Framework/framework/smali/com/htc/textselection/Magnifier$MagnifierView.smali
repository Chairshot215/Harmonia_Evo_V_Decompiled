.class Lcom/htc/textselection/Magnifier$MagnifierView;
.super Landroid/view/View;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/textselection/Magnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/textselection/Magnifier;


# direct methods
.method public constructor <init>(Lcom/htc/textselection/Magnifier;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$000(Lcom/htc/textselection/Magnifier;)Landroid/widget/TextView;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->CONTENT_WIDTH:I
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$100(Lcom/htc/textselection/Magnifier;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3fc0

    div-float v3, v7, v8

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->CONTENT_HEIGHT:I
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$200(Lcom/htc/textselection/Magnifier;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3fc0

    div-float v2, v7, v8

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mx:I
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$300(Lcom/htc/textselection/Magnifier;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/htc/textselection/Magnifier;->access$000(Lcom/htc/textselection/Magnifier;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollX()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float v8, v3, v8

    sub-float v0, v7, v8

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->my:I
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$400(Lcom/htc/textselection/Magnifier;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/htc/textselection/Magnifier;->access$000(Lcom/htc/textselection/Magnifier;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float v8, v2, v8

    sub-float v6, v7, v8

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$000(Lcom/htc/textselection/Magnifier;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$000(Lcom/htc/textselection/Magnifier;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v7

    const/high16 v8, -0x100

    invoke-virtual {v5, v7, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$500(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v4}, Landroid/graphics/Color;->brightness(I)F

    move-result v7

    float-to-double v9, v7

    const-wide/high16 v11, 0x3fe0

    cmpl-double v7, v9, v11

    if-lez v7, :cond_2

    const/high16 v7, -0x100

    :goto_1
    invoke-virtual {v8, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$600(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Canvas;

    move-result-object v7

    const/high16 v8, -0x4080

    mul-float/2addr v8, v0

    const/high16 v9, -0x4080

    mul-float/2addr v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$000(Lcom/htc/textselection/Magnifier;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v8}, Lcom/htc/textselection/Magnifier;->access$600(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Canvas;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$600(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Canvas;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mContentRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$700(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mDestinationRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$800(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mContentRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/htc/textselection/Magnifier;->access$700(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iput v8, v7, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mDestinationRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$800(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mContentRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/htc/textselection/Magnifier;->access$700(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iput v8, v7, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mDestinationRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$800(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mContentRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/htc/textselection/Magnifier;->access$700(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mDestinationRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$800(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mContentRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/htc/textselection/Magnifier;->access$700(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Landroid/graphics/Color;->brightness(I)F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x3fe0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_3

    const/high16 v7, -0x100

    :goto_2
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$500(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mBitmapRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/htc/textselection/Magnifier;->access$900(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mDestinationRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/htc/textselection/Magnifier;->access$800(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mPaint:Landroid/graphics/Paint;
    invoke-static {v10}, Lcom/htc/textselection/Magnifier;->access$1000(Lcom/htc/textselection/Magnifier;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v7, p0, Lcom/htc/textselection/Magnifier$MagnifierView;->this$0:Lcom/htc/textselection/Magnifier;

    #getter for: Lcom/htc/textselection/Magnifier;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/htc/textselection/Magnifier;->access$1100(Lcom/htc/textselection/Magnifier;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_2
    const/4 v7, -0x1

    goto/16 :goto_1

    :cond_3
    const/4 v7, -0x1

    goto :goto_2
.end method

.class Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "StrokeEditView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/edit/StrokeEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/engine/edit/StrokeEditView;


# direct methods
.method private constructor <init>(Lcom/htc/painting/engine/edit/StrokeEditView;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/painting/engine/edit/StrokeEditView;Lcom/htc/painting/engine/edit/StrokeEditView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;-><init>(Lcom/htc/painting/engine/edit/StrokeEditView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    const/high16 v6, 0x4000

    .line 171
    iget-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    #setter for: Lcom/htc/painting/engine/edit/StrokeEditView;->mScaleFactor:F
    invoke-static {v3, v4}, Lcom/htc/painting/engine/edit/StrokeEditView;->access$102(Lcom/htc/painting/engine/edit/StrokeEditView;F)F

    .line 173
    iget-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    const/high16 v4, 0x3f00

    iget-object v5, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    #getter for: Lcom/htc/painting/engine/edit/StrokeEditView;->mScaleFactor:F
    invoke-static {v5}, Lcom/htc/painting/engine/edit/StrokeEditView;->access$100(Lcom/htc/painting/engine/edit/StrokeEditView;)F

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    #setter for: Lcom/htc/painting/engine/edit/StrokeEditView;->mScaleFactor:F
    invoke-static {v3, v4}, Lcom/htc/painting/engine/edit/StrokeEditView;->access$102(Lcom/htc/painting/engine/edit/StrokeEditView;F)F

    .line 175
    iget-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    #getter for: Lcom/htc/painting/engine/edit/StrokeEditView;->mScaleFactor:F
    invoke-static {v3}, Lcom/htc/painting/engine/edit/StrokeEditView;->access$100(Lcom/htc/painting/engine/edit/StrokeEditView;)F

    move-result v3

    iget-object v4, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v4, v4, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v1, v3, v4

    .line 176
    .local v1, newWidth:F
    iget-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    #getter for: Lcom/htc/painting/engine/edit/StrokeEditView;->mScaleFactor:F
    invoke-static {v3}, Lcom/htc/painting/engine/edit/StrokeEditView;->access$100(Lcom/htc/painting/engine/edit/StrokeEditView;)F

    move-result v3

    iget-object v4, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v4, v4, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v0, v3, v4

    .line 178
    .local v0, newHeight:F
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v3, v3, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 179
    .local v2, r:Landroid/graphics/RectF;
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v4, v4, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v4, v1, v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 180
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v4, v4, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v4, v1, v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 181
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v4, v4, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, v0, v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 182
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v4, v4, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, v0, v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 184
    iget-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    #calls: Lcom/htc/painting/engine/edit/StrokeEditView;->updateSelectionRegion(Landroid/graphics/RectF;)V
    invoke-static {v3, v2}, Lcom/htc/painting/engine/edit/StrokeEditView;->access$200(Lcom/htc/painting/engine/edit/StrokeEditView;Landroid/graphics/RectF;)V

    .line 185
    iget-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView$ScaleListener;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    invoke-virtual {v3}, Lcom/htc/painting/engine/edit/StrokeEditView;->invalidate()V

    .line 186
    const/4 v3, 0x1

    return v3
.end method

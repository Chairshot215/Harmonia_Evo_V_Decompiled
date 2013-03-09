.class Lcom/htc/painting/engine/edit/StrokeEditView$2;
.super Ljava/lang/Object;
.source "StrokeEditView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/engine/edit/StrokeEditView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/engine/edit/StrokeEditView;


# direct methods
.method constructor <init>(Lcom/htc/painting/engine/edit/StrokeEditView;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-boolean v0, v0, Lcom/htc/painting/engine/edit/StrokeEditView;->mIsMoving:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/htc/painting/engine/edit/StrokeEditView;->mIsMoving:Z

    .line 62
    iget-object v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-boolean v0, v0, Lcom/htc/painting/engine/edit/StrokeEditView;->mIsMoving:Z

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v0, v0, Lcom/htc/painting/engine/edit/StrokeEditView;->mMoveButton:Landroid/widget/Button;

    const-string v1, "Done"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v2, v2, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Lcom/htc/painting/engine/edit/StrokeEditView;->mStartRect:Landroid/graphics/RectF;

    .line 73
    :cond_0
    :goto_1
    return-void

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v0, v0, Lcom/htc/painting/engine/edit/StrokeEditView;->mMoveButton:Landroid/widget/Button;

    const-string v1, "Move"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v0, v0, Lcom/htc/painting/engine/edit/StrokeEditView;->mListener:Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v0, v0, Lcom/htc/painting/engine/edit/StrokeEditView;->mListener:Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;

    iget-object v1, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v1, v1, Lcom/htc/painting/engine/edit/StrokeEditView;->mStartRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v2, v2, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v3, v3, Lcom/htc/painting/engine/edit/StrokeEditView;->mStartRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v3, v3, Lcom/htc/painting/engine/edit/StrokeEditView;->mSelectRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/htc/painting/engine/edit/StrokeEditView$2;->this$0:Lcom/htc/painting/engine/edit/StrokeEditView;

    iget-object v4, v4, Lcom/htc/painting/engine/edit/StrokeEditView;->mStartRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/painting/engine/edit/StrokeEditView$OnStrokeEditListener;->onMove(Landroid/graphics/RectF;FF)V

    goto :goto_1
.end method

.class Lcom/htc/launcher/DragView$1;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DragView;-><init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/ApplicationInfo;IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DragView;

.field final synthetic val$nOffsetX:I

.field final synthetic val$nOffsetY:I


# direct methods
.method constructor <init>(Lcom/htc/launcher/DragView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/launcher/DragView$1;->this$0:Lcom/htc/launcher/DragView;

    iput p2, p0, Lcom/htc/launcher/DragView$1;->val$nOffsetX:I

    iput p3, p0, Lcom/htc/launcher/DragView$1;->val$nOffsetY:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 92
    .local v0, fValue:F
    iget v4, p0, Lcom/htc/launcher/DragView$1;->val$nOffsetX:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/htc/launcher/DragView$1;->this$0:Lcom/htc/launcher/DragView;

    #getter for: Lcom/htc/launcher/DragView;->m_fOffsetX:F
    invoke-static {v5}, Lcom/htc/launcher/DragView;->access$000(Lcom/htc/launcher/DragView;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 93
    .local v2, nDeltaX:I
    iget v4, p0, Lcom/htc/launcher/DragView$1;->val$nOffsetY:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/htc/launcher/DragView$1;->this$0:Lcom/htc/launcher/DragView;

    #getter for: Lcom/htc/launcher/DragView;->m_fOffsetY:F
    invoke-static {v5}, Lcom/htc/launcher/DragView;->access$100(Lcom/htc/launcher/DragView;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 95
    .local v3, nDeltaY:I
    iget-object v4, p0, Lcom/htc/launcher/DragView$1;->this$0:Lcom/htc/launcher/DragView;

    int-to-float v5, v2

    invoke-static {v4, v5}, Lcom/htc/launcher/DragView;->access$016(Lcom/htc/launcher/DragView;F)F

    .line 96
    iget-object v4, p0, Lcom/htc/launcher/DragView$1;->this$0:Lcom/htc/launcher/DragView;

    int-to-float v5, v3

    invoke-static {v4, v5}, Lcom/htc/launcher/DragView;->access$116(Lcom/htc/launcher/DragView;F)F

    .line 98
    iget-object v4, p0, Lcom/htc/launcher/DragView$1;->this$0:Lcom/htc/launcher/DragView;

    invoke-virtual {v4}, Lcom/htc/launcher/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v4, p0, Lcom/htc/launcher/DragView$1;->this$0:Lcom/htc/launcher/DragView;

    #getter for: Lcom/htc/launcher/DragView;->m_layoutParams:Lcom/htc/launcher/DragLayer$LayoutParams;
    invoke-static {v4}, Lcom/htc/launcher/DragView;->access$200(Lcom/htc/launcher/DragView;)Lcom/htc/launcher/DragLayer$LayoutParams;

    move-result-object v1

    .line 102
    .local v1, lp:Lcom/htc/launcher/DragLayer$LayoutParams;
    iget v4, v1, Lcom/htc/launcher/DragLayer$LayoutParams;->x:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/htc/launcher/DragLayer$LayoutParams;->x:I

    .line 103
    iget v4, v1, Lcom/htc/launcher/DragLayer$LayoutParams;->y:I

    add-int/2addr v4, v3

    iput v4, v1, Lcom/htc/launcher/DragLayer$LayoutParams;->y:I

    .line 104
    iget-object v4, p0, Lcom/htc/launcher/DragView$1;->this$0:Lcom/htc/launcher/DragView;

    #getter for: Lcom/htc/launcher/DragView;->m_dragLayer:Lcom/htc/launcher/DragLayer;
    invoke-static {v4}, Lcom/htc/launcher/DragView;->access$300(Lcom/htc/launcher/DragView;)Lcom/htc/launcher/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/launcher/DragLayer;->requestLayout()V

    goto :goto_0
.end method

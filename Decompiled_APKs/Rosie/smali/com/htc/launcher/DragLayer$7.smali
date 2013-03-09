.class Lcom/htc/launcher/DragLayer$7;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DragLayer;->fadeOutDragView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DragLayer;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DragLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 2083
    iput-object p1, p0, Lcom/htc/launcher/DragLayer$7;->this$0:Lcom/htc/launcher/DragLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .parameter "animation"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2086
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2087
    .local v2, percent:F
    iget-object v3, p0, Lcom/htc/launcher/DragLayer$7;->this$0:Lcom/htc/launcher/DragLayer;

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v2

    #setter for: Lcom/htc/launcher/DragLayer;->m_dropViewAlpha:F
    invoke-static {v3, v4}, Lcom/htc/launcher/DragLayer;->access$602(Lcom/htc/launcher/DragLayer;F)F

    .line 2088
    iget-object v3, p0, Lcom/htc/launcher/DragLayer$7;->this$0:Lcom/htc/launcher/DragLayer;

    #getter for: Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;
    invoke-static {v3}, Lcom/htc/launcher/DragLayer;->access$800(Lcom/htc/launcher/DragLayer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 2089
    .local v1, nWidth:I
    iget-object v3, p0, Lcom/htc/launcher/DragLayer$7;->this$0:Lcom/htc/launcher/DragLayer;

    #getter for: Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;
    invoke-static {v3}, Lcom/htc/launcher/DragLayer;->access$800(Lcom/htc/launcher/DragLayer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2090
    .local v0, nHeight:I
    iget-object v3, p0, Lcom/htc/launcher/DragLayer$7;->this$0:Lcom/htc/launcher/DragLayer;

    iget-object v4, p0, Lcom/htc/launcher/DragLayer$7;->this$0:Lcom/htc/launcher/DragLayer;

    #getter for: Lcom/htc/launcher/DragLayer;->m_dropViewPos:[I
    invoke-static {v4}, Lcom/htc/launcher/DragLayer;->access$400(Lcom/htc/launcher/DragLayer;)[I

    move-result-object v4

    aget v4, v4, v7

    iget-object v5, p0, Lcom/htc/launcher/DragLayer$7;->this$0:Lcom/htc/launcher/DragLayer;

    #getter for: Lcom/htc/launcher/DragLayer;->m_dropViewPos:[I
    invoke-static {v5}, Lcom/htc/launcher/DragLayer;->access$400(Lcom/htc/launcher/DragLayer;)[I

    move-result-object v5

    aget v5, v5, v8

    iget-object v6, p0, Lcom/htc/launcher/DragLayer$7;->this$0:Lcom/htc/launcher/DragLayer;

    #getter for: Lcom/htc/launcher/DragLayer;->m_dropViewPos:[I
    invoke-static {v6}, Lcom/htc/launcher/DragLayer;->access$400(Lcom/htc/launcher/DragLayer;)[I

    move-result-object v6

    aget v6, v6, v7

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/htc/launcher/DragLayer$7;->this$0:Lcom/htc/launcher/DragLayer;

    #getter for: Lcom/htc/launcher/DragLayer;->m_dropViewPos:[I
    invoke-static {v7}, Lcom/htc/launcher/DragLayer;->access$400(Lcom/htc/launcher/DragLayer;)[I

    move-result-object v7

    aget v7, v7, v8

    add-int/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/launcher/DragLayer;->invalidate(IIII)V

    .line 2092
    return-void
.end method

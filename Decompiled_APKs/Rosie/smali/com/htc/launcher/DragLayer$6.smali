.class Lcom/htc/launcher/DragLayer$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DragLayer;

.field final synthetic val$bFadeOut:Z

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DragLayer;Ljava/lang/Runnable;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2062
    iput-object p1, p0, Lcom/htc/launcher/DragLayer$6;->this$0:Lcom/htc/launcher/DragLayer;

    iput-object p2, p0, Lcom/htc/launcher/DragLayer$6;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/htc/launcher/DragLayer$6;->val$bFadeOut:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$6;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$6;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2068
    :cond_0
    iget-boolean v0, p0, Lcom/htc/launcher/DragLayer$6;->val$bFadeOut:Z

    if-eqz v0, :cond_1

    .line 2069
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$6;->this$0:Lcom/htc/launcher/DragLayer;

    #calls: Lcom/htc/launcher/DragLayer;->fadeOutDragView()V
    invoke-static {v0}, Lcom/htc/launcher/DragLayer;->access$700(Lcom/htc/launcher/DragLayer;)V

    .line 2073
    :goto_0
    return-void

    .line 2071
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$6;->this$0:Lcom/htc/launcher/DragLayer;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/DragLayer;->m_dropView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/htc/launcher/DragLayer;->access$802(Lcom/htc/launcher/DragLayer;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method

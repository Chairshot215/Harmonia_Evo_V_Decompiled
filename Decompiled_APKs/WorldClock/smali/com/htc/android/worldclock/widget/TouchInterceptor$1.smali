.class Lcom/htc/android/worldclock/widget/TouchInterceptor$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/widget/TouchInterceptor;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/widget/TouchInterceptor;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/widget/TouchInterceptor;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor$1;->this$0:Lcom/htc/android/worldclock/widget/TouchInterceptor;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 85
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor$1;->this$0:Lcom/htc/android/worldclock/widget/TouchInterceptor;

    #getter for: Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->access$000(Lcom/htc/android/worldclock/widget/TouchInterceptor;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 86
    const/high16 v2, 0x447a

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor$1;->this$0:Lcom/htc/android/worldclock/widget/TouchInterceptor;

    #getter for: Lcom/htc/android/worldclock/widget/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->access$100(Lcom/htc/android/worldclock/widget/TouchInterceptor;)Landroid/graphics/Rect;

    move-result-object v0

    .line 88
    .local v0, r:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor$1;->this$0:Lcom/htc/android/worldclock/widget/TouchInterceptor;

    #getter for: Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->access$000(Lcom/htc/android/worldclock/widget/TouchInterceptor;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor$1;->this$0:Lcom/htc/android/worldclock/widget/TouchInterceptor;

    #calls: Lcom/htc/android/worldclock/widget/TouchInterceptor;->stopDragging()V
    invoke-static {v2}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->access$200(Lcom/htc/android/worldclock/widget/TouchInterceptor;)V

    .line 93
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor$1;->this$0:Lcom/htc/android/worldclock/widget/TouchInterceptor;

    #getter for: Lcom/htc/android/worldclock/widget/TouchInterceptor;->mRemoveListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$RemoveListener;
    invoke-static {v2}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->access$400(Lcom/htc/android/worldclock/widget/TouchInterceptor;)Lcom/htc/android/worldclock/widget/TouchInterceptor$RemoveListener;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor$1;->this$0:Lcom/htc/android/worldclock/widget/TouchInterceptor;

    #getter for: Lcom/htc/android/worldclock/widget/TouchInterceptor;->mFirstDragPos:I
    invoke-static {v3}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->access$300(Lcom/htc/android/worldclock/widget/TouchInterceptor;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/android/worldclock/widget/TouchInterceptor$RemoveListener;->remove(I)V

    .line 94
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor$1;->this$0:Lcom/htc/android/worldclock/widget/TouchInterceptor;

    #calls: Lcom/htc/android/worldclock/widget/TouchInterceptor;->unExpandViews(Z)V
    invoke-static {v2, v1}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->access$500(Lcom/htc/android/worldclock/widget/TouchInterceptor;Z)V

    .line 100
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

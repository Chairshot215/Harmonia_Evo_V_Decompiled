.class Lcom/htc/sunny2/GLView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/GLView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/GLView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onDoubleTap"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onDoubleTapEvent"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onDown"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v7

    const-string v1, "onFling"

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->mZoomGesture:Z
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$500(Lcom/htc/sunny2/GLView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/sunny2/GLView$TouchListener;->onLongPressIHT(Landroid/view/MotionEvent;)V

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onLongPress"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v7

    const-string v1, "onScroll"

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onShowPress"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/sunny2/GLView$TouchListener;->onSingleTapConfirmedIHT(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v4, v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onSingleTapConfirmed"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/sunny2/GLView$TouchListener;->onSingleTapUpIHT(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v4, v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onSingleTapUp"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$GestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/MotionEvent;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    goto :goto_0
.end method

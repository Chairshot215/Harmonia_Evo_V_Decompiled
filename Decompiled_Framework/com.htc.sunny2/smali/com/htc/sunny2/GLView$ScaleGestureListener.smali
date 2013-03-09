.class Lcom/htc/sunny2/GLView$ScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/GLView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/GLView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunny2/GLView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onScale"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p0, v1, v2, p1}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #setter for: Lcom/htc/sunny2/GLView;->mZoomGesture:Z
    invoke-static {v0, v3}, Lcom/htc/sunny2/GLView;->access$502(Lcom/htc/sunny2/GLView;Z)Z

    iget-object v0, p0, Lcom/htc/sunny2/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onScaleBegin"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p0, v1, v2, p1}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    :cond_0
    return v3
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    const-string v1, "onScaleEnd"

    iget-object v2, p0, Lcom/htc/sunny2/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->touchListener:Lcom/htc/sunny2/GLView$TouchListener;
    invoke-static {v2}, Lcom/htc/sunny2/GLView;->access$400(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$TouchListener;

    move-result-object v2

    invoke-static {p0, v1, v2, p1}, Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;->Obtain(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/GLView$TouchListener;Landroid/view/ScaleGestureDetector;)Lcom/htc/sunny2/RenderThreadEvent_TouchEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/GLView$ScaleGestureListener;->this$0:Lcom/htc/sunny2/GLView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/sunny2/GLView;->mZoomGesture:Z
    invoke-static {v0, v1}, Lcom/htc/sunny2/GLView;->access$502(Lcom/htc/sunny2/GLView;Z)Z

    return-void
.end method

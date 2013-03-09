.class Lcom/htc/sunny2/GLView$1;
.super Lcom/htc/sunny2/RenderThreadInterruption;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/GLView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/GLView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/GLView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/GLView$1;->this$0:Lcom/htc/sunny2/GLView;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadInterruption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onProcessInterruptionIRT()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/GLView$1;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->surfaceListener:Lcom/htc/sunny2/GLView$SurfaceListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$000(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$SurfaceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/GLView$1;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->surfaceListener:Lcom/htc/sunny2/GLView$SurfaceListener;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$000(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/GLView$SurfaceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/GLView$SurfaceListener;->onSurfaceDestroyedIRT()V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/GLView$1;->this$0:Lcom/htc/sunny2/GLView;

    #getter for: Lcom/htc/sunny2/GLView;->renderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/GLView;->access$100(Lcom/htc/sunny2/GLView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/GLView$1;->this$0:Lcom/htc/sunny2/GLView;

    iget v1, v1, Lcom/htc/sunny2/GLView;->sunnyWindow:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->unregisterRenderWindowIRT(I)Z

    iget-object v0, p0, Lcom/htc/sunny2/GLView$1;->this$0:Lcom/htc/sunny2/GLView;

    iget v0, v0, Lcom/htc/sunny2/GLView;->sunnyWindow:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->Window_UnbindSurface(I)V

    return-void
.end method

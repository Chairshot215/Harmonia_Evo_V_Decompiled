.class Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;
.super Lcom/htc/sunny2/RenderThreadInterruption;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderThreadInterruption_BindWindow"
.end annotation


# static fields
.field static final INTERRUPTION_NAME:Ljava/lang/String; = "BindWindow"


# instance fields
.field private height:I

.field private isBinded:Z

.field private newHeight:I

.field private newSurface:Landroid/view/Surface;

.field private newWidth:I

.field private surface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/htc/sunny2/view/SSurfaceView;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/view/SSurfaceView;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    const-string v0, "BindWindow"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThreadInterruption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onProcessInterruptionIRT()V
    .locals 4

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->width:I

    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->height:I

    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v1}, Lcom/htc/sunny2/view/SSurfaceView;->access$400(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->unregisterRenderWindowIRT(I)Z

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView;->access$400(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v0

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->Window_UnbindSurface(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newWidth:I

    iput v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->width:I

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newHeight:I

    iput v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->height:I

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView;->access$400(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->surface:Landroid/view/Surface;

    iget v2, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->width:I

    iget v3, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->height:I

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunny2/Sunny2;->Window_BindSurface(ILandroid/view/Surface;II)Z

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v1}, Lcom/htc/sunny2/view/SSurfaceView;->access$400(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->registerRenderWindowIRT(I)Z

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #calls: Lcom/htc/sunny2/view/SSurfaceView;->onSurfaceChangedIRT()V
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView;->access$2100(Lcom/htc/sunny2/view/SSurfaceView;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->isBinded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setup(Landroid/view/Surface;II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newSurface:Landroid/view/Surface;

    iput p2, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newWidth:I

    iput p3, p0, Lcom/htc/sunny2/view/SSurfaceView$RenderThreadInterruption_BindWindow;->newHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

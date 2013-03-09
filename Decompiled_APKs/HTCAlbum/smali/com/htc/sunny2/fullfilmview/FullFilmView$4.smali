.class Lcom/htc/sunny2/fullfilmview/FullFilmView$4;
.super Lcom/htc/sunny2/RenderThreadEvent;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;->playAnimationIHT(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

.field final synthetic val$fAnimSelf:Landroid/os/Bundle;

.field final synthetic val$fListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

.field final synthetic val$fSView:Lcom/htc/sunny2/view/SView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunny2/view/SView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2143
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iput-object p4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->val$fAnimSelf:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->val$fListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    iput-object p6, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->val$fSView:Lcom/htc/sunny2/view/SView;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 2153
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 5

    .prologue
    .line 2146
    const-string v1, "FullFilmView"

    const-string v2, "[HTCAlbum][FullFilmView][playAnimationIHT][AnimationIRT]+"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$400(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->val$fAnimSelf:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->val$fListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->val$fSView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->getInOutAnimation(Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;Lcom/htc/sunny2/view/SView;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    .line 2149
    .local v0, animation:Lcom/htc/sunny2/RenderThreadAction;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$4;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mRenderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$1500(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 2150
    :cond_0
    return-void
.end method

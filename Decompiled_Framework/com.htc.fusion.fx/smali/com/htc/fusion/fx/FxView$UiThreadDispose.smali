.class Lcom/htc/fusion/fx/FxView$UiThreadDispose;
.super Ljava/lang/Object;
.source "FxView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/FxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiThreadDispose"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/FxView;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/FxView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/FxView$UiThreadDispose;->this$0:Lcom/htc/fusion/fx/FxView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView$UiThreadDispose;->this$0:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxView;->pause()V

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView$UiThreadDispose;->this$0:Lcom/htc/fusion/fx/FxView;

    iget-object v0, v0, Lcom/htc/fusion/fx/FxView;->mView:Lcom/htc/fusion/fx/FxView$FxSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView$UiThreadDispose;->this$0:Lcom/htc/fusion/fx/FxView;

    iget-object v0, v0, Lcom/htc/fusion/fx/FxView;->mView:Lcom/htc/fusion/fx/FxView$FxSurfaceView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->dispose()V

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView$UiThreadDispose;->this$0:Lcom/htc/fusion/fx/FxView;

    iget-object v1, p0, Lcom/htc/fusion/fx/FxView$UiThreadDispose;->this$0:Lcom/htc/fusion/fx/FxView;

    iget-object v1, v1, Lcom/htc/fusion/fx/FxView;->mView:Lcom/htc/fusion/fx/FxView$FxSurfaceView;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView$UiThreadDispose;->this$0:Lcom/htc/fusion/fx/FxView;

    iput-object v2, v0, Lcom/htc/fusion/fx/FxView;->mView:Lcom/htc/fusion/fx/FxView$FxSurfaceView;

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/FxView$UiThreadDispose;->this$0:Lcom/htc/fusion/fx/FxView;

    #getter for: Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;
    invoke-static {v0}, Lcom/htc/fusion/fx/FxView;->access$100(Lcom/htc/fusion/fx/FxView;)Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView$UiThreadDispose;->this$0:Lcom/htc/fusion/fx/FxView;

    #getter for: Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;
    invoke-static {v0}, Lcom/htc/fusion/fx/FxView;->access$100(Lcom/htc/fusion/fx/FxView;)Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->dispose()V

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView$UiThreadDispose;->this$0:Lcom/htc/fusion/fx/FxView;

    #setter for: Lcom/htc/fusion/fx/FxView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;
    invoke-static {v0, v2}, Lcom/htc/fusion/fx/FxView;->access$102(Lcom/htc/fusion/fx/FxView;Lcom/htc/fusion/fx/FxViewObject;)Lcom/htc/fusion/fx/FxViewObject;

    :cond_1
    return-void
.end method

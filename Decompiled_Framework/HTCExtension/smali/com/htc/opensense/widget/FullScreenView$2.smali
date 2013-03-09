.class Lcom/htc/opensense/widget/FullScreenView$2;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/FullScreenView;->initFullScreenView(Landroid/app/Activity;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/FullScreenView;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$2;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "FullScreen"

    const-string v1, "Finish Animation"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;->SCORLL:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->EnableUsingFastDrawble(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;Z)V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$2;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #calls: Lcom/htc/opensense/widget/FullScreenView;->updateViews()V
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$300(Lcom/htc/opensense/widget/FullScreenView;)V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$2;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$2;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;->onScrollAnimationEnd()V

    :cond_0
    return-void
.end method

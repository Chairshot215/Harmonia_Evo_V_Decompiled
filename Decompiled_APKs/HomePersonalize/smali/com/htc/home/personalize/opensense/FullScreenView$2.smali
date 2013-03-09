.class Lcom/htc/home/personalize/opensense/FullScreenView$2;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/opensense/FullScreenView;->initFullScreenView(Landroid/app/Activity;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/opensense/FullScreenView;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$2;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    const-string v0, "FullScreen"

    const-string v1, "Finish Animation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object v0, Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble$ScaleFastType;->SCORLL:Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble$ScaleFastType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble;->EnableUsingFastDrawble(Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble$ScaleFastType;Z)V

    .line 323
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$2;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->updateViews()V
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$300(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    .line 325
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$2;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$2;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;->onScrollAnimationEnd()V

    .line 328
    :cond_0
    return-void
.end method

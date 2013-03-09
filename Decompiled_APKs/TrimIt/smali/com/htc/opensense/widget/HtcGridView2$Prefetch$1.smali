.class Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;
.super Ljava/lang/Object;
.source "HtcGridView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/HtcGridView2$Prefetch;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;)V
    .locals 0
    .parameter

    .prologue
    .line 4000
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4002
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 4003
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    new-instance v1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;

    invoke-direct {v1, p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;-><init>(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;)V

    #setter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4002(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;Landroid/os/Handler;)Landroid/os/Handler;

    .line 4105
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 4106
    return-void
.end method

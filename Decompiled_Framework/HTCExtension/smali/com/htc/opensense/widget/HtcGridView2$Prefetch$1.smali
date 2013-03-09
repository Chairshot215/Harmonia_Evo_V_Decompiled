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

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;->this$0:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    new-instance v1, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;

    invoke-direct {v1, p0}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1$1;-><init>(Lcom/htc/opensense/widget/HtcGridView2$Prefetch$1;)V

    #setter for: Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->mWorkingHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->access$4002(Lcom/htc/opensense/widget/HtcGridView2$Prefetch;Landroid/os/Handler;)Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

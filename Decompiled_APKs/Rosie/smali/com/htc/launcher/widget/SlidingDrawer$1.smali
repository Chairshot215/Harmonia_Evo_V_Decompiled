.class Lcom/htc/launcher/widget/SlidingDrawer$1;
.super Ljava/lang/Object;
.source "SlidingDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/widget/SlidingDrawer;


# direct methods
.method constructor <init>(Lcom/htc/launcher/widget/SlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/htc/launcher/widget/SlidingDrawer$1;->this$0:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 512
    const-string v0, "SlidingDrawer"

    const-string v1, "RequestLayout"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v0, "SlidingDrawer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAnimating:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/widget/SlidingDrawer$1;->this$0:Lcom/htc/launcher/widget/SlidingDrawer;

    #getter for: Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z
    invoke-static {v2}, Lcom/htc/launcher/widget/SlidingDrawer;->access$200(Lcom/htc/launcher/widget/SlidingDrawer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer$1;->this$0:Lcom/htc/launcher/widget/SlidingDrawer;

    #getter for: Lcom/htc/launcher/widget/SlidingDrawer;->mAnimating:Z
    invoke-static {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->access$200(Lcom/htc/launcher/widget/SlidingDrawer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer$1;->this$0:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->requestLayout()V

    .line 516
    :cond_0
    return-void
.end method

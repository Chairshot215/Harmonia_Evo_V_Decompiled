.class Lcom/htc/laputa/engine/util/RenderCmd$1$1;
.super Ljava/lang/Object;
.source "RenderCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/laputa/engine/util/RenderCmd$1;->onRetReceive(IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/laputa/engine/util/RenderCmd$1;

.field final synthetic val$retBndl:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/htc/laputa/engine/util/RenderCmd$1;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/htc/laputa/engine/util/RenderCmd$1$1;->this$1:Lcom/htc/laputa/engine/util/RenderCmd$1;

    iput-object p2, p0, Lcom/htc/laputa/engine/util/RenderCmd$1$1;->val$retBndl:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/htc/laputa/engine/util/RenderCmd$1$1;->this$1:Lcom/htc/laputa/engine/util/RenderCmd$1;

    iget-object v1, v0, Lcom/htc/laputa/engine/util/RenderCmd$1;->val$renderCallback:Lcom/htc/laputa/engine/util/RenderCmd$IRenderCallback;

    iget-object v0, p0, Lcom/htc/laputa/engine/util/RenderCmd$1$1;->val$retBndl:Landroid/os/Bundle;

    const-string v2, "bitmap"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Lcom/htc/laputa/engine/util/RenderCmd$IRenderCallback;->onFrameReady(Landroid/graphics/Bitmap;)V

    .line 1348
    return-void
.end method

.class Lcom/htc/laputa/engine/util/RenderStillImageCmd$1$1;
.super Ljava/lang/Object;
.source "RenderStillImageCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/laputa/engine/util/RenderStillImageCmd$1;->onRetReceive(IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/laputa/engine/util/RenderStillImageCmd$1;

.field final synthetic val$errCode:I

.field final synthetic val$retBndl:Landroid/os/Bundle;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/htc/laputa/engine/util/RenderStillImageCmd$1;Landroid/os/Bundle;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1$1;->this$1:Lcom/htc/laputa/engine/util/RenderStillImageCmd$1;

    iput-object p2, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1$1;->val$retBndl:Landroid/os/Bundle;

    iput p3, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1$1;->val$errCode:I

    iput p4, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1$1;->val$taskId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 73
    iget-object v1, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1$1;->val$retBndl:Landroid/os/Bundle;

    const-string v2, "bitmap"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 74
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1$1;->this$1:Lcom/htc/laputa/engine/util/RenderStillImageCmd$1;

    iget-object v1, v1, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1;->val$listener:Lcom/htc/laputa/engine/util/RenderStillImageCmd$IRenderCallback;

    iget v2, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1$1;->val$errCode:I

    iget v3, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1$1;->val$taskId:I

    invoke-interface {v1, v2, v3, v0}, Lcom/htc/laputa/engine/util/RenderStillImageCmd$IRenderCallback;->onFrameReady(IILandroid/graphics/Bitmap;)V

    .line 75
    return-void
.end method

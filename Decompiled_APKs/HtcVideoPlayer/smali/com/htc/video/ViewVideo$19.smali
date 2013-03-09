.class Lcom/htc/video/ViewVideo$19;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Lcom/htc/video/HtcMediaController$LayoutParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/ViewVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/ViewVideo;


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 2659
    iput-object p1, p0, Lcom/htc/video/ViewVideo$19;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWidth()I
    .locals 4

    .prologue
    .line 2661
    iget-object v1, p0, Lcom/htc/video/ViewVideo$19;->this$0:Lcom/htc/video/ViewVideo;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/htc/video/ViewVideo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2662
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 2663
    const-string v1, "ViewVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 2666
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.class Lcom/htc/video/ViewVideo$1;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 213
    iput-object p1, p0, Lcom/htc/video/ViewVideo$1;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 216
    :try_start_0
    const-string v1, "ViewVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dismiss sound enhancer and set original effect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/video/ViewVideo$1;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$000(Lcom/htc/video/ViewVideo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/htc/video/ViewVideo$1;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v2, p0, Lcom/htc/video/ViewVideo$1;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$000(Lcom/htc/video/ViewVideo;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    #calls: Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/video/ViewVideo;->access$100(Lcom/htc/video/ViewVideo;IZZ)V

    .line 218
    iget-object v1, p0, Lcom/htc/video/ViewVideo$1;->this$0:Lcom/htc/video/ViewVideo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/video/ViewVideo;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ViewVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dispatchKeyEvent] sound dialog can not be removed at dispatchKeyEvent(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

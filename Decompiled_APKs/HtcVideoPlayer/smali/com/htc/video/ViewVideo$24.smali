.class Lcom/htc/video/ViewVideo$24;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo;->changeVisionMode(I)V
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
    .line 3223
    iput-object p1, p0, Lcom/htc/video/ViewVideo$24;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 3227
    iget-object v0, p0, Lcom/htc/video/ViewVideo$24;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3229
    iget-object v0, p0, Lcom/htc/video/ViewVideo$24;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/video/ViewVideo$VideoMediaController;->doPauseResume()V

    .line 3231
    :cond_0
    return-void
.end method

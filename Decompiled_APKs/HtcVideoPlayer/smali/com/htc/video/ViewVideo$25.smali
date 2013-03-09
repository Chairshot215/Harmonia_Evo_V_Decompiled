.class Lcom/htc/video/ViewVideo$25;
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

.field final synthetic val$choice:I


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3205
    iput-object p1, p0, Lcom/htc/video/ViewVideo$25;->this$0:Lcom/htc/video/ViewVideo;

    iput p2, p0, Lcom/htc/video/ViewVideo$25;->val$choice:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3208
    iget-object v0, p0, Lcom/htc/video/ViewVideo$25;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3210
    iget-object v0, p0, Lcom/htc/video/ViewVideo$25;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/video/HtcMediaController;->mIsResetByResume:Z

    if-nez v0, :cond_0

    .line 3212
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/htc/video/VideoUtility/DisplayService;->setStereoDisplayMode(I)V

    .line 3214
    :cond_0
    iget-object v0, p0, Lcom/htc/video/ViewVideo$25;->this$0:Lcom/htc/video/ViewVideo;

    const/4 v1, 0x2

    #setter for: Lcom/htc/video/ViewVideo;->mStereoModeStatus:I
    invoke-static {v0, v1}, Lcom/htc/video/ViewVideo;->access$5002(Lcom/htc/video/ViewVideo;I)I

    .line 3215
    iget-object v0, p0, Lcom/htc/video/ViewVideo$25;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/video/ViewVideo$25;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mStereoModeStatus:I
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$5000(Lcom/htc/video/ViewVideo;)I

    move-result v1

    iput v1, v0, Lcom/htc/video/HtcMediaController;->mStereoStatus:I

    .line 3216
    iget-object v0, p0, Lcom/htc/video/ViewVideo$25;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/video/ViewVideo$VideoMediaController;->updatePlaybackMode()V

    .line 3217
    iget-object v0, p0, Lcom/htc/video/ViewVideo$25;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mMediaController:Lcom/htc/video/ViewVideo$VideoMediaController;
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$2500(Lcom/htc/video/ViewVideo;)Lcom/htc/video/ViewVideo$VideoMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/video/ViewVideo$VideoMediaController;->doPauseResume()V

    .line 3218
    iget-object v0, p0, Lcom/htc/video/ViewVideo$25;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v0, v0, Lcom/htc/video/ViewVideo;->mMenuAdapter:Lcom/htc/video/ChooseMoreDialogAdapter;

    iget-object v1, p0, Lcom/htc/video/ViewVideo$25;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mStereoModeStatus:I
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$5000(Lcom/htc/video/ViewVideo;)I

    move-result v1

    iget v2, p0, Lcom/htc/video/ViewVideo$25;->val$choice:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/video/ChooseMoreDialogAdapter;->changeVision(II)V

    .line 3220
    :cond_1
    return-void
.end method

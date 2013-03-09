.class Lcom/htc/video/ViewVideo$22;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo;->createSoundEffectDialog()Landroid/app/Dialog;
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
    .line 2984
    iput-object p1, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2987
    const-string v3, "SoundEffectDialog"

    const-string v4, "PositiveButton onClick +++"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    const/4 v1, 0x0

    .line 2990
    .local v1, item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$4400(Lcom/htc/video/ViewVideo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2992
    iget-object v3, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mSoundEffectList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$4400(Lcom/htc/video/ViewVideo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    check-cast v1, Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 2993
    .restart local v1       #item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    iget-boolean v3, v1, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsSelected:Z

    if-eqz v3, :cond_2

    .line 2995
    iget-object v3, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v4, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    sget-object v4, Lcom/htc/video/VideoSoundEffectHelper;->SoundEffectStyle:[I

    aget v4, v4, v0

    #setter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v3, v4}, Lcom/htc/video/ViewVideo;->access$002(Lcom/htc/video/ViewVideo;I)I

    .line 3000
    :cond_0
    iget-object v3, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v3}, Lcom/htc/video/ViewVideo;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3032
    :cond_1
    :goto_1
    return-void

    .line 2990
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3005
    :cond_3
    iget-object v3, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHTC51FailToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$1200(Lcom/htc/video/ViewVideo;)Landroid/widget/Toast;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3007
    iget-object v3, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHTC51FailToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$1200(Lcom/htc/video/ViewVideo;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 3010
    :cond_4
    iget-object v3, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mEffectToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$1300(Lcom/htc/video/ViewVideo;)Landroid/widget/Toast;

    move-result-object v3

    if-nez v3, :cond_5

    .line 3012
    iget-object v3, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v4, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v5, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v5}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v6}, Lcom/htc/video/ViewVideo;->access$000(Lcom/htc/video/ViewVideo;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/video/VideoSoundEffectHelper;->getSettingStringResource(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    #setter for: Lcom/htc/video/ViewVideo;->mEffectToast:Landroid/widget/Toast;
    invoke-static {v3, v4}, Lcom/htc/video/ViewVideo;->access$1302(Lcom/htc/video/ViewVideo;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 3019
    :goto_2
    iget-object v3, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mEffectToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$1300(Lcom/htc/video/ViewVideo;)Landroid/widget/Toast;

    move-result-object v2

    .line 3021
    .local v2, t:Landroid/widget/Toast;
    iget-object v3, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$700(Lcom/htc/video/ViewVideo;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/htc/video/ViewVideo$22$1;

    invoke-direct {v4, p0, v2}, Lcom/htc/video/ViewVideo$22$1;-><init>(Lcom/htc/video/ViewVideo$22;Landroid/widget/Toast;)V

    const-wide/16 v5, 0x320

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3031
    const-string v3, "SoundEffectDialog"

    const-string v4, "PositiveButton onClick ---"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3016
    .end local v2           #t:Landroid/widget/Toast;
    :cond_5
    iget-object v3, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mEffectToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$1300(Lcom/htc/video/ViewVideo;)Landroid/widget/Toast;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mVideoSoundEffectHelper:Lcom/htc/video/VideoSoundEffectHelper;
    invoke-static {v4}, Lcom/htc/video/ViewVideo;->access$800(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoSoundEffectHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/video/ViewVideo$22;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v5}, Lcom/htc/video/ViewVideo;->access$000(Lcom/htc/video/ViewVideo;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/video/VideoSoundEffectHelper;->getSettingStringResource(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2
.end method

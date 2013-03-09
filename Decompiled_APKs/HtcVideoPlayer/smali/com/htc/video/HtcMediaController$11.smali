.class Lcom/htc/video/HtcMediaController$11;
.super Ljava/lang/Object;
.source "HtcMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/HtcMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/HtcMediaController;


# direct methods
.method constructor <init>(Lcom/htc/video/HtcMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 1206
    invoke-static {}, Lcom/htc/video/HtcMediaController;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mFastRewindListener][onClick] Fast Rewind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    iget v3, v3, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    iget v0, v1, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    .line 1210
    .local v0, currentStatus:I
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    iget v1, v1, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    if-ltz v1, :cond_2

    .line 1215
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    iput v5, v1, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    .line 1230
    :goto_1
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v1, v0}, Lcom/htc/video/HtcMediaController;->doChangeHighSpeedMode(I)Z

    .line 1231
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v1}, Lcom/htc/video/HtcMediaController;->show()V

    .line 1233
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1235
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v1}, Lcom/htc/video/HtcMediaController;->doPauseResume()V

    goto :goto_0

    .line 1217
    :cond_2
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    iget v1, v1, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    if-ne v1, v5, :cond_3

    .line 1219
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    iput v4, v1, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    goto :goto_1

    .line 1221
    :cond_3
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    iget v1, v1, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    if-ne v1, v4, :cond_4

    .line 1223
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    iput v4, v1, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    goto :goto_1

    .line 1227
    :cond_4
    iget-object v1, p0, Lcom/htc/video/HtcMediaController$11;->this$0:Lcom/htc/video/HtcMediaController;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/video/HtcMediaController;->mHighSpeedStatus:I

    goto :goto_1
.end method

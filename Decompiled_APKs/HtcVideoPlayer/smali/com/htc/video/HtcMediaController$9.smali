.class Lcom/htc/video/HtcMediaController$9;
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
    .line 1153
    iput-object p1, p0, Lcom/htc/video/HtcMediaController$9;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1156
    invoke-static {}, Lcom/htc/video/HtcMediaController;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[mStopListener][onClick]:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$9;->this$0:Lcom/htc/video/HtcMediaController;

    #getter for: Lcom/htc/video/HtcMediaController;->mPlayer:Lcom/htc/video/HtcMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$500(Lcom/htc/video/HtcMediaController;)Lcom/htc/video/HtcMediaController$MediaPlayerControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/video/HtcMediaController$MediaPlayerControl;->seekTo(I)V

    .line 1158
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$9;->this$0:Lcom/htc/video/HtcMediaController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/video/HtcMediaController;->mIsStopFullView:Z

    .line 1159
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$9;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v1, p0, Lcom/htc/video/HtcMediaController$9;->this$0:Lcom/htc/video/HtcMediaController;

    iget-boolean v1, v1, Lcom/htc/video/HtcMediaController;->mIsStopFullView:Z

    invoke-virtual {v0, v1}, Lcom/htc/video/HtcMediaController;->setStopViewStatus(Z)V

    .line 1161
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$9;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->doStopResume()V

    .line 1162
    return-void
.end method

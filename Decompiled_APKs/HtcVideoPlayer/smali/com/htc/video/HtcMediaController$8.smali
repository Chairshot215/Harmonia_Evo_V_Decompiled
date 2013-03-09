.class Lcom/htc/video/HtcMediaController$8;
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
    .line 1135
    iput-object p1, p0, Lcom/htc/video/HtcMediaController$8;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1139
    invoke-static {}, Lcom/htc/video/HtcMediaController;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[mStopViewListener][onClick]:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$8;->this$0:Lcom/htc/video/HtcMediaController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/video/HtcMediaController;->mIsStopFullView:Z

    .line 1141
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$8;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->hide()V

    .line 1142
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$8;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v1, p0, Lcom/htc/video/HtcMediaController$8;->this$0:Lcom/htc/video/HtcMediaController;

    iget-boolean v1, v1, Lcom/htc/video/HtcMediaController;->mIsStopFullView:Z

    invoke-virtual {v0, v1}, Lcom/htc/video/HtcMediaController;->setStopViewStatus(Z)V

    .line 1144
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$8;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v0, v0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$8;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v0, v0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onCloseStopView(Z)V

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$8;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->doStopResume()V

    .line 1149
    return-void
.end method

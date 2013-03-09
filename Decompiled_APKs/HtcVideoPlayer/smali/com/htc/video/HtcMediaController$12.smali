.class Lcom/htc/video/HtcMediaController$12;
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
    .line 1241
    iput-object p1, p0, Lcom/htc/video/HtcMediaController$12;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$12;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->show()V

    .line 1245
    invoke-static {}, Lcom/htc/video/HtcMediaController;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[mPauseListener][onClick]: PauseListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$12;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v0, v0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/video/HtcMediaController$12;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v0, v0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->onDLNASupportRange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$12;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->doPauseResume()V

    .line 1248
    :cond_1
    return-void
.end method

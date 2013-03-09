.class Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;
.super Landroid/os/Handler;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/MusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/reminderview/MusicView;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    .line 225
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 226
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x3ea

    const/16 v4, 0x3e9

    .line 229
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mScene:Lcom/htc/fusion/fx/FxScene;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$400(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v3

    if-nez v3, :cond_1

    .line 230
    const-string v3, "MusicView"

    const-string v4, "handleUIMessage scene is null"

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_2

    .line 234
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$500(Lcom/htc/idlescreen/base/reminderview/MusicView;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 235
    const-string v3, "MusicView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WHAT_UI_HIDE_PANEL mInFront:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z
    invoke-static {v5}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$600(Lcom/htc/idlescreen/base/reminderview/MusicView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v5}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$700(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$600(Lcom/htc/idlescreen/base/reminderview/MusicView;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$700(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    move-result-object v3

    sget-object v4, Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;->STOP:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    if-ne v3, v4, :cond_0

    .line 238
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    .line 239
    .local v2, scene:Lcom/htc/fusion/fx/FxScene;
    if-eqz v2, :cond_0

    .line 240
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mDefaultMarker:Lcom/htc/fusion/fx/Marker;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$800(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/fusion/fx/Marker;

    move-result-object v3

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 241
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mRightFlipCtrl:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$900(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mDefaultMarker:Lcom/htc/fusion/fx/Marker;
    invoke-static {v4}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$800(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/fusion/fx/Marker;

    move-result-object v4

    iget v4, v4, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->onStartFlip(F)V

    .line 242
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    const/4 v4, 0x1

    #setter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z
    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$602(Lcom/htc/idlescreen/base/reminderview/MusicView;Z)Z

    goto :goto_0

    .line 246
    .end local v2           #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_0

    .line 247
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$500(Lcom/htc/idlescreen/base/reminderview/MusicView;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 248
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 249
    .local v0, index:I
    const-string v3, "MusicView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WHAT_UI_BOUNCE mInFront:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z
    invoke-static {v5}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$600(Lcom/htc/idlescreen/base/reminderview/MusicView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v5}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$700(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    if-nez v0, :cond_4

    .line 255
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$600(Lcom/htc/idlescreen/base/reminderview/MusicView;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    const-string v1, "touch_bounce"

    .line 270
    .local v1, marker:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$700(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    move-result-object v3

    sget-object v4, Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;->FLIP:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    if-eq v3, v4, :cond_0

    .line 271
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    .line 272
    .restart local v2       #scene:Lcom/htc/fusion/fx/FxScene;
    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    .end local v1           #marker:Ljava/lang/String;
    .end local v2           #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_3
    const-string v1, "touch_bounce2"

    .restart local v1       #marker:Ljava/lang/String;
    goto :goto_1

    .line 263
    .end local v1           #marker:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mInFront:Z
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$600(Lcom/htc/idlescreen/base/reminderview/MusicView;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 264
    const-string v1, "touch_bounce_right"

    .restart local v1       #marker:Ljava/lang/String;
    goto :goto_1

    .line 267
    .end local v1           #marker:Ljava/lang/String;
    :cond_5
    const-string v1, "touch_bounce2_right"

    .restart local v1       #marker:Ljava/lang/String;
    goto :goto_1
.end method

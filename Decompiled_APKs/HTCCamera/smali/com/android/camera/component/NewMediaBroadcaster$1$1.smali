.class Lcom/android/camera/component/NewMediaBroadcaster$1$1;
.super Ljava/lang/Object;
.source "NewMediaBroadcaster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/NewMediaBroadcaster$1;->onEvent(Lcom/android/camera/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/NewMediaBroadcaster$1;

.field final synthetic val$event:Lcom/android/camera/Event;


# direct methods
.method constructor <init>(Lcom/android/camera/component/NewMediaBroadcaster$1;Lcom/android/camera/Event;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$1;

    iput-object p2, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->val$event:Lcom/android/camera/Event;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$1;

    iget-object v1, v0, Lcom/android/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->val$event:Lcom/android/camera/Event;

    check-cast v0, Lcom/android/camera/MediaEvent;

    #calls: Lcom/android/camera/component/NewMediaBroadcaster;->saveEventArgsinBuffer(Lcom/android/camera/MediaEvent;)V
    invoke-static {v1, v0}, Lcom/android/camera/component/NewMediaBroadcaster;->access$000(Lcom/android/camera/component/NewMediaBroadcaster;Lcom/android/camera/MediaEvent;)V

    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->val$event:Lcom/android/camera/Event;

    instance-of v0, v0, Lcom/android/camera/PictureSavedEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->val$event:Lcom/android/camera/Event;

    check-cast v0, Lcom/android/camera/PictureSavedEvent;

    invoke-virtual {v0}, Lcom/android/camera/PictureSavedEvent;->isLastPicture()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->val$event:Lcom/android/camera/Event;

    instance-of v0, v0, Lcom/android/camera/PictureSavedEvent;

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$1;

    iget-object v0, v0, Lcom/android/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    invoke-virtual {v0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$1;

    iget-object v0, v0, Lcom/android/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    invoke-virtual {v0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster$1$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$1;

    iget-object v0, v0, Lcom/android/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    #calls: Lcom/android/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V
    invoke-static {v0}, Lcom/android/camera/component/NewMediaBroadcaster;->access$100(Lcom/android/camera/component/NewMediaBroadcaster;)V

    :cond_3
    return-void
.end method

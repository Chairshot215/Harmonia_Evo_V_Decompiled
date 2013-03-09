.class Lcom/android/camera/component/NewMediaBroadcaster$2$1;
.super Ljava/lang/Object;
.source "NewMediaBroadcaster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/NewMediaBroadcaster$2;->onEvent(Lcom/android/camera/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/NewMediaBroadcaster$2;

.field final synthetic val$event:Lcom/android/camera/Event;


# direct methods
.method constructor <init>(Lcom/android/camera/component/NewMediaBroadcaster$2;Lcom/android/camera/Event;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$2;

    iput-object p2, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->val$event:Lcom/android/camera/Event;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->val$event:Lcom/android/camera/Event;

    instance-of v1, v1, Lcom/android/camera/MediaDeletionCompletedEvent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->val$event:Lcom/android/camera/Event;

    check-cast v1, Lcom/android/camera/MediaDeletionCompletedEvent;

    invoke-virtual {v1}, Lcom/android/camera/MediaDeletionCompletedEvent;->isSucceeded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$2;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$2;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/camera/MediaEvent;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->val$event:Lcom/android/camera/Event;

    check-cast v1, Lcom/android/camera/MediaDeletionCompletedEvent;

    invoke-virtual {v1}, Lcom/android/camera/MediaDeletionCompletedEvent;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$2;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEvent;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->val$event:Lcom/android/camera/Event;

    check-cast v1, Lcom/android/camera/MediaDeletionCompletedEvent;

    invoke-virtual {v1}, Lcom/android/camera/MediaDeletionCompletedEvent;->isLastMedia()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/android/camera/component/NewMediaBroadcaster$2;

    iget-object v1, v1, Lcom/android/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    #calls: Lcom/android/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V
    invoke-static {v1}, Lcom/android/camera/component/NewMediaBroadcaster;->access$100(Lcom/android/camera/component/NewMediaBroadcaster;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.class Lcom/android/camera/component/ReviewAnimation$2;
.super Ljava/lang/Object;
.source "ReviewAnimation.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ReviewAnimation;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ReviewAnimation;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ReviewAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ReviewAnimation$2;->this$0:Lcom/android/camera/component/ReviewAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$2;->this$0:Lcom/android/camera/component/ReviewAnimation;

    #getter for: Lcom/android/camera/component/ReviewAnimation;->m_HTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimation;->access$000(Lcom/android/camera/component/ReviewAnimation;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$2;->this$0:Lcom/android/camera/component/ReviewAnimation;

    #getter for: Lcom/android/camera/component/ReviewAnimation;->m_HTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimation;->access$000(Lcom/android/camera/component/ReviewAnimation;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$2;->this$0:Lcom/android/camera/component/ReviewAnimation;

    iget-object v0, v0, Lcom/android/camera/component/ReviewAnimation;->cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/android/camera/actionscreen/ActionScreenEvent;

    invoke-virtual {p1}, Lcom/android/camera/actionscreen/ActionScreenEvent;->getCloseReason()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$2;->this$0:Lcom/android/camera/component/ReviewAnimation;

    #getter for: Lcom/android/camera/component/ReviewAnimation;->m_HTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimation;->access$000(Lcom/android/camera/component/ReviewAnimation;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$2;->this$0:Lcom/android/camera/component/ReviewAnimation;

    #getter for: Lcom/android/camera/component/ReviewAnimation;->m_HTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimation;->access$000(Lcom/android/camera/component/ReviewAnimation;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$2;->this$0:Lcom/android/camera/component/ReviewAnimation;

    #calls: Lcom/android/camera/component/ReviewAnimation;->showReviewSceen(Z)V
    invoke-static {v0, v2}, Lcom/android/camera/component/ReviewAnimation;->access$200(Lcom/android/camera/component/ReviewAnimation;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimation$2;->this$0:Lcom/android/camera/component/ReviewAnimation;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/component/ReviewAnimation;->showReviewSceen(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ReviewAnimation;->access$200(Lcom/android/camera/component/ReviewAnimation;Z)V

    goto :goto_0
.end method

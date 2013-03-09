.class Lcom/android/camera/widget/CameraFocusWidget$2;
.super Ljava/lang/Object;
.source "CameraFocusWidget.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/CameraFocusWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/CameraFocusWidget;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/CameraFocusWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/CameraFocusWidget$2;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    sget-boolean v0, Lcom/android/camera/widget/CameraFocusWidget;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/widget/CameraFocusWidget;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CameraFocusWidget][onAnimationEnd]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/widget/CameraFocusWidget$2;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    #getter for: Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I
    invoke-static {v2}, Lcom/android/camera/widget/CameraFocusWidget;->access$400(Lcom/android/camera/widget/CameraFocusWidget;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget$2;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    #getter for: Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I
    invoke-static {v0}, Lcom/android/camera/widget/CameraFocusWidget;->access$400(Lcom/android/camera/widget/CameraFocusWidget;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget$2;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    #getter for: Lcom/android/camera/widget/CameraFocusWidget;->mResetAnimation:Z
    invoke-static {v0}, Lcom/android/camera/widget/CameraFocusWidget;->access$500(Lcom/android/camera/widget/CameraFocusWidget;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget$2;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    #getter for: Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I
    invoke-static {v0}, Lcom/android/camera/widget/CameraFocusWidget;->access$400(Lcom/android/camera/widget/CameraFocusWidget;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget$2;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    #getter for: Lcom/android/camera/widget/CameraFocusWidget;->mCurrentAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v0}, Lcom/android/camera/widget/CameraFocusWidget;->access$600(Lcom/android/camera/widget/CameraFocusWidget;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/CameraFocusWidget$2;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    #getter for: Lcom/android/camera/widget/CameraFocusWidget;->mPrepareAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/android/camera/widget/CameraFocusWidget;->access$700(Lcom/android/camera/widget/CameraFocusWidget;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget$2;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I
    invoke-static {v0, v1}, Lcom/android/camera/widget/CameraFocusWidget;->access$402(Lcom/android/camera/widget/CameraFocusWidget;I)I

    :cond_3
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget$2;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    #calls: Lcom/android/camera/widget/CameraFocusWidget;->showFocus()V
    invoke-static {v0}, Lcom/android/camera/widget/CameraFocusWidget;->access$800(Lcom/android/camera/widget/CameraFocusWidget;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    sget-boolean v0, Lcom/android/camera/widget/CameraFocusWidget;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/widget/CameraFocusWidget;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CameraFocusWidget][onAnimationStart]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/widget/CameraFocusWidget$2;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    #getter for: Lcom/android/camera/widget/CameraFocusWidget;->mNextFocusStatus:I
    invoke-static {v2}, Lcom/android/camera/widget/CameraFocusWidget;->access$400(Lcom/android/camera/widget/CameraFocusWidget;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/CameraFocusWidget$2;->this$0:Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/widget/CameraFocusWidget;->mResetAnimation:Z
    invoke-static {v0, v1}, Lcom/android/camera/widget/CameraFocusWidget;->access$502(Lcom/android/camera/widget/CameraFocusWidget;Z)Z

    return-void
.end method

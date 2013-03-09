.class Lcom/android/camera/component/PanoramaUI$10;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$000(Lcom/android/camera/component/PanoramaUI;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_ShutterBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$800(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaUI;->stopCapture()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/component/PanoramaUI;->showProcessingDialog(Z)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    #calls: Lcom/android/camera/component/PanoramaUI;->hideThumbnailBar()V
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$700(Lcom/android/camera/component/PanoramaUI;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    #calls: Lcom/android/camera/component/PanoramaUI;->hideReviewScreen()V
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$1400(Lcom/android/camera/component/PanoramaUI;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$1100(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_SweepIndicatorContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$1100(Lcom/android/camera/component/PanoramaUI;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    #calls: Lcom/android/camera/component/PanoramaUI;->deactivateSpinner()V
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$1500(Lcom/android/camera/component/PanoramaUI;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/camera/component/PanoramaUI;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$1600(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$1600(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/rotate/RotateImageView;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/component/PanoramaUI;->showUI(Landroid/view/View;ZZ)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$10;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaUI;->collapseContentLayout()V

    goto :goto_0
.end method

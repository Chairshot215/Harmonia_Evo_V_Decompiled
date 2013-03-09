.class Lcom/android/camera/component/HdrUI$2;
.super Ljava/lang/Object;
.source "HdrUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/HdrUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HdrUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HdrUI$2;->this$0:Lcom/android/camera/component/HdrUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 4

    check-cast p1, Lcom/android/camera/OrientationEvent;

    invoke-virtual {p1}, Lcom/android/camera/OrientationEvent;->getNewUIOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/HdrUI$2;->this$0:Lcom/android/camera/component/HdrUI;

    #getter for: Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;
    invoke-static {v1}, Lcom/android/camera/component/HdrUI;->access$200(Lcom/android/camera/component/HdrUI;)Lcom/android/camera/rotate/RotateImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/HdrUI$2;->this$0:Lcom/android/camera/component/HdrUI;

    #getter for: Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;
    invoke-static {v1}, Lcom/android/camera/component/HdrUI;->access$200(Lcom/android/camera/component/HdrUI;)Lcom/android/camera/rotate/RotateImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/HdrUI$2;->this$0:Lcom/android/camera/component/HdrUI;

    #getter for: Lcom/android/camera/component/HdrUI;->m_Indicator:Lcom/android/camera/rotate/RotateImageView;
    invoke-static {v1}, Lcom/android/camera/component/HdrUI;->access$200(Lcom/android/camera/component/HdrUI;)Lcom/android/camera/rotate/RotateImageView;

    move-result-object v1

    const/16 v2, 0x190

    new-instance v3, Lcom/android/camera/component/HdrUI$2$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/HdrUI$2$1;-><init>(Lcom/android/camera/component/HdrUI$2;)V

    invoke-static {v1, v0, v2, v3}, Lcom/android/camera/AnimationManager;->showAlphaRotateAnimation(Landroid/view/View;IILcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/HdrUI$2;->this$0:Lcom/android/camera/component/HdrUI;

    #calls: Lcom/android/camera/component/HdrUI;->updateIndicatorOrientation(I)V
    invoke-static {v1, v0}, Lcom/android/camera/component/HdrUI;->access$300(Lcom/android/camera/component/HdrUI;I)V

    goto :goto_0
.end method

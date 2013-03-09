.class Lcom/android/camera/component/ThumbnailUI$15;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 3

    check-cast p1, Lcom/android/camera/OrientationEvent;

    invoke-virtual {p1}, Lcom/android/camera/OrientationEvent;->getNewUIOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContentPanel:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$1200(Lcom/android/camera/component/ThumbnailUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContentPanel:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$1200(Lcom/android/camera/component/ThumbnailUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$400(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$400(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    const/16 v2, 0x190

    invoke-static {v1, v0, v2}, Lcom/android/camera/AnimationManager;->showAlphaRotateAnimation(Lcom/android/camera/rotate/RotateRelativeLayout;II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$15;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$400(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    goto :goto_0
.end method

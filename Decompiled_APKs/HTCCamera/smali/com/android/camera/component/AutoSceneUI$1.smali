.class Lcom/android/camera/component/AutoSceneUI$1;
.super Ljava/lang/Object;
.source "AutoSceneUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoSceneUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoSceneUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoSceneUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoSceneUI$1;->this$0:Lcom/android/camera/component/AutoSceneUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 7

    check-cast p1, Lcom/android/camera/OrientationEvent;

    invoke-virtual {p1}, Lcom/android/camera/OrientationEvent;->getNewUIOrientation()I

    move-result v6

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$1;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneUI;->access$000(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$1;->this$0:Lcom/android/camera/component/AutoSceneUI;

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$1;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneUI;->access$000(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x190

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/AutoSceneUI;->showAlphaAnimation(Landroid/view/View;FFIII)Landroid/view/animation/AlphaAnimation;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$1;->this$0:Lcom/android/camera/component/AutoSceneUI;

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$1;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->m_AutoSceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneUI;->access$000(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/android/camera/component/AutoSceneUI;->updateOrientation(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$1;->this$0:Lcom/android/camera/component/AutoSceneUI;

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$1;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->m_IsTimer:Z
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneUI;->access$100(Lcom/android/camera/component/AutoSceneUI;)Z

    move-result v1

    #calls: Lcom/android/camera/component/AutoSceneUI;->setLayoutForTimer(ZI)V
    invoke-static {v0, v1, v6}, Lcom/android/camera/component/AutoSceneUI;->access$200(Lcom/android/camera/component/AutoSceneUI;ZI)V

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$1;->this$0:Lcom/android/camera/component/AutoSceneUI;

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$1;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->m_HasRecordIcon:Z
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneUI;->access$300(Lcom/android/camera/component/AutoSceneUI;)Z

    move-result v1

    #calls: Lcom/android/camera/component/AutoSceneUI;->setLayoutForRecordIcon(ZI)V
    invoke-static {v0, v1, v6}, Lcom/android/camera/component/AutoSceneUI;->access$400(Lcom/android/camera/component/AutoSceneUI;ZI)V

    goto :goto_0
.end method

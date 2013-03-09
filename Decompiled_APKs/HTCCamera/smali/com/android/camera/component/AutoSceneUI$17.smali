.class Lcom/android/camera/component/AutoSceneUI$17;
.super Ljava/lang/Object;
.source "AutoSceneUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoSceneUI;->showAlphaAnimation(Landroid/view/View;FFIII)Landroid/view/animation/AlphaAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoSceneUI;

.field final synthetic val$orientation:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoSceneUI;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoSceneUI$17;->this$0:Lcom/android/camera/component/AutoSceneUI;

    iput-object p2, p0, Lcom/android/camera/component/AutoSceneUI$17;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/camera/component/AutoSceneUI$17;->val$orientation:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$17;->this$0:Lcom/android/camera/component/AutoSceneUI;

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$17;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/component/AutoSceneUI$17;->val$orientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/AutoSceneUI;->updateOrientation(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$17;->this$0:Lcom/android/camera/component/AutoSceneUI;

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$17;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->m_IsTimer:Z
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneUI;->access$100(Lcom/android/camera/component/AutoSceneUI;)Z

    move-result v1

    iget v2, p0, Lcom/android/camera/component/AutoSceneUI$17;->val$orientation:I

    #calls: Lcom/android/camera/component/AutoSceneUI;->setLayoutForTimer(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/component/AutoSceneUI;->access$200(Lcom/android/camera/component/AutoSceneUI;ZI)V

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$17;->this$0:Lcom/android/camera/component/AutoSceneUI;

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$17;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->m_HasRecordIcon:Z
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneUI;->access$300(Lcom/android/camera/component/AutoSceneUI;)Z

    move-result v1

    iget v2, p0, Lcom/android/camera/component/AutoSceneUI$17;->val$orientation:I

    #calls: Lcom/android/camera/component/AutoSceneUI;->setLayoutForRecordIcon(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/component/AutoSceneUI;->access$400(Lcom/android/camera/component/AutoSceneUI;ZI)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.class Lcom/android/browser/PhoneUi$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PhoneUi;->hideNavScreen(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PhoneUi;


# direct methods
.method constructor <init>(Lcom/android/browser/PhoneUi;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/browser/PhoneUi$2;->this$0:Lcom/android/browser/PhoneUi;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/browser/PhoneUi$2;->this$0:Lcom/android/browser/PhoneUi;

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/PhoneUi$2;->this$0:Lcom/android/browser/PhoneUi;

    #getter for: Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;
    invoke-static {v1}, Lcom/android/browser/PhoneUi;->access$400(Lcom/android/browser/PhoneUi;)Lcom/android/browser/PhoneUi$AnimScreen;

    move-result-object v1

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static {v1}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 472
    iget-object v0, p0, Lcom/android/browser/PhoneUi$2;->this$0:Lcom/android/browser/PhoneUi;

    #calls: Lcom/android/browser/PhoneUi;->finishAnimateOut()V
    invoke-static {v0}, Lcom/android/browser/PhoneUi;->access$600(Lcom/android/browser/PhoneUi;)V

    .line 473
    iget-object v0, p0, Lcom/android/browser/PhoneUi$2;->this$0:Lcom/android/browser/PhoneUi;

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 474
    return-void
.end method

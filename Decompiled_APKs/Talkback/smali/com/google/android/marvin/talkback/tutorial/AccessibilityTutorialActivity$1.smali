.class Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$1;
.super Ljava/lang/Object;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 71
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;
    invoke-static {v2}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->access$0(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    .line 72
    .local v0, index:I
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;
    invoke-static {v2}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->access$0(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;

    .line 74
    .local v1, module:Lcom/google/android/marvin/talkback/tutorial/TutorialModule;
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    #calls: Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->activateModule(Lcom/google/android/marvin/talkback/tutorial/TutorialModule;)V
    invoke-static {v2, v1}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->access$1(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;Lcom/google/android/marvin/talkback/tutorial/TutorialModule;)V

    .line 75
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 80
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 85
    return-void
.end method

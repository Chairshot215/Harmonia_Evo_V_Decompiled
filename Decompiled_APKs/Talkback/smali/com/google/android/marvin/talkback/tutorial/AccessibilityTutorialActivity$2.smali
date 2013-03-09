.class Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$2;
.super Ljava/lang/Object;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;


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
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 247
    return-void
.end method

.method public onDoneSpeaking()V
    .locals 8

    .prologue
    const/high16 v2, 0x3f80

    .line 236
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->access$0(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 238
    .local v7, touchGuard:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 239
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->access$2(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSoundReady:I
    invoke-static {v1}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->access$3(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 242
    :cond_0
    return-void
.end method

.method public onStartSpeaking()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 221
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;
    invoke-static {v2}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->access$0(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 223
    .local v9, touchGuard:Landroid/view/View;
    if-eqz v9, :cond_0

    .line 224
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 229
    .local v0, downTime:J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    .line 228
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 231
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    invoke-virtual {v2, v8}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 232
    return-void
.end method

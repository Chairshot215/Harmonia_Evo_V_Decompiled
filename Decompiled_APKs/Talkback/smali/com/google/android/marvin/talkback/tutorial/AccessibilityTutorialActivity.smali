.class public Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;
.super Landroid/app/Activity;
.source "AccessibilityTutorialActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final DEFAULT_MODULE:I = 0x0

.field private static final DIALOG_EXPLORE_BY_TOUCH:I = 0x1

.field private static final KEY_ACTIVE_MODULE:Ljava/lang/String; = "active_module"

.field public static final MIN_API_LEVEL:I = 0x10


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundReady:I

.field private mSpeechController:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

.field private final mSpeechListener:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;

.field private mViewAnimator:Landroid/widget/ViewAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$1;-><init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 218
    new-instance v0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$2;-><init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSpeechListener:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)Landroid/widget/ViewAnimator;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    return-object v0
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;Lcom/google/android/marvin/talkback/tutorial/TutorialModule;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->activateModule(Lcom/google/android/marvin/talkback/tutorial/TutorialModule;)V

    return-void
.end method

.method static synthetic access$2(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)Landroid/media/SoundPool;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$3(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSoundReady:I

    return v0
.end method

.method private activateModule(Lcom/google/android/marvin/talkback/tutorial/TutorialModule;)V
    .locals 0
    .parameter "module"

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->activate()V

    .line 181
    return-void
.end method

.method private deactivateModule(Lcom/google/android/marvin/talkback/tutorial/TutorialModule;)V
    .locals 2
    .parameter "module"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 185
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSpeechController:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->interrupt()V

    .line 186
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 187
    invoke-virtual {p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->deactivate()V

    .line 188
    return-void
.end method

.method private show(I)V
    .locals 3
    .parameter "which"

    .prologue
    .line 199
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 204
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSpeechController:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    invoke-virtual {v2}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->interrupt()V

    .line 206
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    .line 207
    .local v0, displayedIndex:I
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;

    .line 209
    .local v1, displayedView:Lcom/google/android/marvin/talkback/tutorial/TutorialModule;
    invoke-direct {p0, v1}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->deactivateModule(Lcom/google/android/marvin/talkback/tutorial/TutorialModule;)V

    .line 211
    iget-object v2, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0
.end method


# virtual methods
.method public getSpeechController()Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSpeechController:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    return-object v0
.end method

.method next()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->show(I)V

    .line 192
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x10a0002

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 95
    .local v0, inAnimation:Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 97
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 100
    .local v1, outAnimation:Landroid/view/animation/Animation;
    new-instance v4, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    invoke-direct {v4, p0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSpeechController:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    .line 101
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSpeechController:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    iget-object v5, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSpeechListener:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;

    invoke-virtual {v4, v5}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->addListener(Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController$SpeechListener;)V

    .line 103
    new-instance v4, Landroid/media/SoundPool;

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSoundPool:Landroid/media/SoundPool;

    .line 104
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f050004

    invoke-virtual {v4, p0, v5, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSoundReady:I

    .line 106
    new-instance v4, Landroid/widget/ViewAnimator;

    invoke-direct {v4, p0}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    .line 107
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v4, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v4, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 109
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    new-instance v5, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;

    invoke-direct {v5, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;-><init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    .line 110
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    new-instance v5, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    invoke-direct {v5, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;-><init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    .line 111
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    new-instance v5, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;

    invoke-direct {v5, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;-><init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 115
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 116
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 117
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 118
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 120
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {p0, v4}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->setContentView(Landroid/view/View;)V

    .line 122
    const-string v4, "accessibility"

    invoke-virtual {p0, v4}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 124
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    invoke-virtual {p0, v8}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->showDialog(I)V

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_0
    if-eqz p1, :cond_1

    .line 130
    const-string v4, "active_module"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->show(I)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0, v7}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->show(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 153
    packed-switch p1, :pswitch_data_0

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 155
    :pswitch_0
    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$3;-><init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)V

    .line 162
    .local v1, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity$4;-><init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)V

    .line 169
    .local v0, onCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090089

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 170
    const v3, 0x7f09008a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 171
    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 172
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 140
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mSpeechController:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->shutdown()V

    .line 141
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 147
    const-string v0, "active_module"

    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    return-void
.end method

.method previous()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->mViewAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->show(I)V

    .line 196
    return-void
.end method

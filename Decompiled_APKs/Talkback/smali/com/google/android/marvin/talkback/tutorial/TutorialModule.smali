.class abstract Lcom/google/android/marvin/talkback/tutorial/TutorialModule;
.super Landroid/widget/FrameLayout;
.source "TutorialModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TRIGGER_DELAY:I = 0x5dc


# instance fields
.field private final mBack:Landroid/widget/Button;

.field private final mFinish:Landroid/widget/Button;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstructions:Landroid/widget/TextView;

.field private mIsVisible:Z

.field private final mNext:Landroid/widget/Button;

.field private final mParentTutorial:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

.field private final mSkip:Landroid/widget/Button;

.field private final mSpeechController:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

.field private final mTitleResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;II)V
    .locals 6
    .parameter "parentTutorial"
    .parameter "layoutResId"
    .parameter "titleResId"

    .prologue
    const/4 v5, 0x1

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 171
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mParentTutorial:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    .line 68
    invoke-virtual {p1}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->getSpeechController()Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mSpeechController:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    .line 69
    iput p3, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mTitleResId:I

    .line 71
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mParentTutorial:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    invoke-virtual {v4}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 73
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030006

    .line 72
    invoke-virtual {v2, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, container:Landroid/view/View;
    const v4, 0x7f0a001d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mInstructions:Landroid/widget/TextView;

    .line 76
    const v4, 0x7f0a0011

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mSkip:Landroid/widget/Button;

    .line 77
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mSkip:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v4, 0x7f0a0012

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mBack:Landroid/widget/Button;

    .line 79
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mBack:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v4, 0x7f0a0013

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mNext:Landroid/widget/Button;

    .line 81
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mNext:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v4, 0x7f0a0014

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mFinish:Landroid/widget/Button;

    .line 83
    iget-object v4, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mFinish:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v4, 0x7f0a001a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 87
    .local v3, title:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(I)V

    .line 91
    :cond_0
    const v4, 0x7f0a001c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 92
    .local v1, contentHolder:Landroid/view/ViewGroup;
    invoke-virtual {v2, p2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    return-void
.end method


# virtual methods
.method public final activate()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mIsVisible:Z

    .line 101
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mInstructions:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mParentTutorial:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    iget v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mTitleResId:I

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->setTitle(I)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->onShown()V

    .line 105
    return-void
.end method

.method protected varargs addInstruction(IZ[Ljava/lang/Object;)V
    .locals 3
    .parameter "resId"
    .parameter "repeat"
    .parameter "formatArgs"

    .prologue
    .line 116
    iget-boolean v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mIsVisible:Z

    if-nez v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mParentTutorial:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mInstructions:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mInstructions:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mSpeechController:Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/marvin/talkback/tutorial/TutorialSpeechController;->speak(Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mIsVisible:Z

    .line 138
    return-void
.end method

.method protected installTriggerDelayed(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "trigger"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0011

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mParentTutorial:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->finish()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0012

    if-ne v0, v1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mParentTutorial:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->previous()V

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0013

    if-ne v0, v1, :cond_3

    .line 147
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mParentTutorial:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->next()V

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0014

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mParentTutorial:Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;->finish()V

    goto :goto_0
.end method

.method public abstract onShown()V
.end method

.method protected setBackVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mBack:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    return-void

    .line 160
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setFinishVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mFinish:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    return-void

    .line 168
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setNextVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mNext:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    return-void

    .line 164
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setSkipVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;->mSkip:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    return-void

    .line 156
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

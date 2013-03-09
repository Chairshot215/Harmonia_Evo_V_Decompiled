.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;
.super Lcom/google/android/marvin/talkback/tutorial/TutorialModule;
.source "TouchTutorialModule3.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final MIN_REQUIRED_TRAVERSALS:I = 0x3


# instance fields
.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->mTextView:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)V
    .locals 4
    .parameter "parentTutorial"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    const v0, 0x7f030004

    .line 46
    const v1, 0x7f0900d8

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;-><init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;II)V

    .line 48
    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->mTextView:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p0, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->setSkipVisible(Z)V

    .line 51
    invoke-virtual {p0, v3}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->setBackVisible(Z)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->setNextVisible(Z)V

    .line 53
    invoke-virtual {p0, v3}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->setFinishVisible(Z)V

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->onTrigger1()V

    return-void
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->onTrigger2()V

    return-void
.end method

.method private onTrigger0()V
    .locals 3

    .prologue
    .line 62
    const v0, 0x7f0900d9

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 81
    return-void
.end method

.method private onTrigger1()V
    .locals 3

    .prologue
    .line 84
    const v0, 0x7f0900da

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$2;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$2;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 109
    return-void
.end method

.method private onTrigger2()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 113
    const v0, 0x7f0900db

    .line 114
    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900c5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 113
    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 115
    return-void
.end method


# virtual methods
.method public onShown()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->onTrigger0()V

    .line 59
    return-void
.end method

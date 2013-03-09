.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;
.super Lcom/google/android/marvin/talkback/tutorial/TutorialModule;
.source "TouchTutorialModule2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final MIN_SCROLLED_ITEMS:I = 0x3


# instance fields
.field private final mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

.field private final mAppsAdapter:Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAppsAdapter:Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;

    .line 46
    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)V
    .locals 6
    .parameter "parentTutorial"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    const v0, 0x7f030003

    .line 51
    const v1, 0x7f0900d0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;-><init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;II)V

    .line 53
    new-instance v0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$1;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090003

    .line 55
    const v3, 0x1020014

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$1;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;Landroid/content/Context;II)V

    .line 53
    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAppsAdapter:Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;

    .line 63
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    .line 64
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAppsAdapter:Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    invoke-virtual {p0, v4}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->setSkipVisible(Z)V

    .line 67
    invoke-virtual {p0, v5}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->setBackVisible(Z)V

    .line 68
    invoke-virtual {p0, v5}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->setNextVisible(Z)V

    .line 69
    invoke-virtual {p0, v4}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->setFinishVisible(Z)V

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->onTrigger1()V

    return-void
.end method

.method static synthetic access$2(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->onTrigger2()V

    return-void
.end method

.method static synthetic access$3(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->onTrigger3()V

    return-void
.end method

.method static synthetic access$4(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->onTrigger4()V

    return-void
.end method

.method static synthetic access$5(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->onTrigger5()V

    return-void
.end method

.method static synthetic access$6(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->onTrigger6()V

    return-void
.end method

.method private onTrigger0()V
    .locals 3

    .prologue
    .line 78
    const v0, 0x7f0900d1

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 97
    return-void
.end method

.method private onTrigger1()V
    .locals 3

    .prologue
    .line 100
    const v0, 0x7f0900d2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$3;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$3;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 119
    return-void
.end method

.method private onTrigger2()V
    .locals 3

    .prologue
    .line 122
    const v0, 0x7f0900d3

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$4;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$4;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 141
    return-void
.end method

.method private onTrigger3()V
    .locals 3

    .prologue
    .line 144
    const v0, 0x7f0900d4

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->setInstrumentation(Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;)V

    .line 161
    return-void
.end method

.method private onTrigger4()V
    .locals 3

    .prologue
    .line 164
    const v0, 0x7f0900d5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$6;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$6;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 183
    return-void
.end method

.method private onTrigger5()V
    .locals 3

    .prologue
    .line 186
    const v0, 0x7f0900d6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$7;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$7;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->setInstrumentation(Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;)V

    .line 203
    return-void
.end method

.method private onTrigger6()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 207
    const v0, 0x7f0900d7

    .line 208
    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900c3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 207
    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 209
    return-void
.end method


# virtual methods
.method public onShown()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->onTrigger0()V

    .line 75
    return-void
.end method

.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;
.super Lcom/google/android/marvin/talkback/tutorial/TutorialModule;
.source "TouchTutorialModule1.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final TARGET_POSITION:I


# instance fields
.field private final mAllApps:Landroid/widget/GridView;

.field private final mAppsAdapter:Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAppsAdapter:Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;

    .line 44
    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;)V
    .locals 6
    .parameter "parentTutorial"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    const v0, 0x7f030002

    .line 49
    const v1, 0x7f0900c8

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/marvin/talkback/tutorial/TutorialModule;-><init>(Lcom/google/android/marvin/talkback/tutorial/AccessibilityTutorialActivity;II)V

    .line 51
    new-instance v0, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;

    .line 52
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030005

    .line 53
    const v3, 0x7f0a0019

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;-><init>(Landroid/content/Context;II)V

    .line 51
    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAppsAdapter:Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;

    .line 55
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    .line 56
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAppsAdapter:Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    invoke-virtual {p0, v5}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->setSkipVisible(Z)V

    .line 59
    invoke-virtual {p0, v4}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->setBackVisible(Z)V

    .line 60
    invoke-virtual {p0, v5}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->setNextVisible(Z)V

    .line 61
    invoke-virtual {p0, v4}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->setFinishVisible(Z)V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->onTrigger1()V

    return-void
.end method

.method static synthetic access$2(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->onTrigger2()V

    return-void
.end method

.method static synthetic access$3(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->onTrigger3()V

    return-void
.end method

.method static synthetic access$4(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->onTrigger4()V

    return-void
.end method

.method static synthetic access$5(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->onTrigger5()V

    return-void
.end method

.method private onTrigger1()V
    .locals 3

    .prologue
    .line 93
    const v0, 0x7f0900ca

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$2;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$2;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 114
    return-void
.end method

.method private onTrigger2()V
    .locals 3

    .prologue
    .line 117
    const v0, 0x7f0900cb

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$3;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$3;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 137
    return-void
.end method

.method private onTrigger3()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAppsAdapter:Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;

    invoke-virtual {v1, v3}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->getLabel(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 142
    .local v0, targetName:Ljava/lang/CharSequence;
    const v1, 0x7f0900cc

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v4, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    new-instance v2, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$4;

    invoke-direct {v2, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$4;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 162
    return-void
.end method

.method private onTrigger4()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAppsAdapter:Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;

    invoke-virtual {v1, v3}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->getLabel(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 167
    .local v0, targetName:Ljava/lang/CharSequence;
    const v1, 0x7f0900cd

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v4, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    new-instance v2, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$5;

    invoke-direct {v2, p0, v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$5;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 185
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    new-instance v2, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$6;

    invoke-direct {v2, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$6;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    return-void
.end method

.method private onTrigger5()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 204
    const v0, 0x7f0900cf

    .line 205
    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900c3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 204
    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 206
    return-void
.end method


# virtual methods
.method public onShown()V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->onTrigger0()V

    .line 67
    return-void
.end method

.method public onTrigger0()V
    .locals 3

    .prologue
    .line 70
    const v0, 0x7f0900c9

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$1;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$1;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 90
    return-void
.end method

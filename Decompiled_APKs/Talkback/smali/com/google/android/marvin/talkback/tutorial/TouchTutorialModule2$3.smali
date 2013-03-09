.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "TouchTutorialModule2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->onTrigger1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$3;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    .line 103
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$3;)Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$3;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    return-object v0
.end method


# virtual methods
.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "host"
    .parameter "event"

    .prologue
    .line 106
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$3;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$3;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$3;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$3$1;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$3$1;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$3;)V

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->installTriggerDelayed(Ljava/lang/Runnable;)V

    .line 116
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 117
    return-void
.end method

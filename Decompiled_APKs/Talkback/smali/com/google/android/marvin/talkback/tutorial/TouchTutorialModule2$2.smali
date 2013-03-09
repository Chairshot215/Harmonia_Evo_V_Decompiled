.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "TouchTutorialModule2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->onTrigger0()V
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
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    .line 81
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;)Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    return-object v0
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "host"
    .parameter "child"
    .parameter "event"

    .prologue
    .line 85
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2$1;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->installTriggerDelayed(Ljava/lang/Runnable;)V

    .line 94
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

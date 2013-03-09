.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "TouchTutorialModule1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->onTrigger2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$3;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;

    .line 121
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$3;)Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$3;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;

    return-object v0
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "host"
    .parameter "child"
    .parameter "event"

    .prologue
    .line 125
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$3;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$3;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$3$1;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$3$1;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$3;)V

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->installTriggerDelayed(Ljava/lang/Runnable;)V

    .line 134
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

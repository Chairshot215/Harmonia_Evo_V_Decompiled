.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "TouchTutorialModule3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->onTrigger0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;

    .line 65
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;)Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;

    return-object v0
.end method


# virtual methods
.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 2
    .parameter "host"
    .parameter "eventType"

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 70
    const v0, 0x8000

    if-ne p2, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1$1;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->installTriggerDelayed(Ljava/lang/Runnable;)V

    .line 79
    :cond_0
    return-void
.end method

.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$5;
.super Landroid/view/View$AccessibilityDelegate;
.source "TouchTutorialModule1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->onTrigger4()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;

.field private final synthetic val$targetName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$5;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;

    iput-object p2, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$5;->val$targetName:Ljava/lang/CharSequence;

    .line 170
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .parameter "host"
    .parameter "child"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 174
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$5;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$5;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;

    const v1, 0x7f0900ce

    .line 177
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$5;->val$targetName:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    .line 176
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->addInstruction(IZ[Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1$5;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;->access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule1;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 180
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

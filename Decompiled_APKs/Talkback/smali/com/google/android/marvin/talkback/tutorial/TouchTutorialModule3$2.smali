.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "TouchTutorialModule3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->onTrigger1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTraversalCount:I

.field final synthetic this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;

    .line 87
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$2;->mTraversalCount:I

    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$2;)Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;

    return-object v0
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "host"
    .parameter "action"
    .parameter "arguments"

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 94
    .local v0, result:Z
    const/16 v1, 0x100

    if-ne p2, v1, :cond_0

    .line 95
    iget v1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$2;->mTraversalCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$2;->mTraversalCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 96
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->access$1(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 97
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;

    new-instance v2, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$2$1;

    invoke-direct {v2, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$2$1;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$2;)V

    invoke-virtual {v1, v2}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->installTriggerDelayed(Ljava/lang/Runnable;)V

    .line 106
    :cond_0
    return v0
.end method

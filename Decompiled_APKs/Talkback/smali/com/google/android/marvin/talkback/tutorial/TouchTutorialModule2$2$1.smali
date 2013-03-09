.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2$1;
.super Ljava/lang/Object;
.source "TouchTutorialModule2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2$1;->this$1:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2$1;->this$1:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;->access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$2;)Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    move-result-object v0

    #calls: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->onTrigger1()V
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->access$1(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V

    .line 91
    return-void
.end method

.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$4$1;
.super Ljava/lang/Object;
.source "TouchTutorialModule2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$4;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$4;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$4$1;->this$1:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$4;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$4$1;->this$1:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$4;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$4;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$4;->access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$4;)Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    move-result-object v0

    #calls: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->onTrigger3()V
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->access$3(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V

    .line 135
    return-void
.end method

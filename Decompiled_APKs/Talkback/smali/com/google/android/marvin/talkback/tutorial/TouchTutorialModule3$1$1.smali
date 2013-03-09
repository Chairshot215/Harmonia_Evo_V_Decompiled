.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1$1;
.super Ljava/lang/Object;
.source "TouchTutorialModule3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;->sendAccessibilityEvent(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1$1;->this$1:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1$1;->this$1:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;->access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3$1;)Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;

    move-result-object v0

    #calls: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->onTrigger1()V
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;->access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule3;)V

    .line 76
    return-void
.end method

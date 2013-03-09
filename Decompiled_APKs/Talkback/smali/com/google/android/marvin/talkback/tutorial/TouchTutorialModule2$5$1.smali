.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5$1;
.super Ljava/lang/Object;
.source "TouchTutorialModule2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;->onPerformAccessibilityAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5$1;->this$1:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5$1;->this$1:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;->access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;)Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    move-result-object v0

    #calls: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->onTrigger4()V
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->access$4(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)V

    .line 156
    return-void
.end method

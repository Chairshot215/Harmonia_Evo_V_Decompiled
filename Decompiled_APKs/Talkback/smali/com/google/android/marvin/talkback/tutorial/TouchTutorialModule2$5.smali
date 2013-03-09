.class Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;
.super Ljava/lang/Object;
.source "TouchTutorialModule2.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->onTrigger3()V
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
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;)Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    return-object v0
.end method


# virtual methods
.method public onPerformAccessibilityAction(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 150
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->mAllApps:Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->access$0(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;)Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView;->setInstrumentation(Lcom/google/android/marvin/talkback/tutorial/InstrumentedListView$ListViewListener;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;->this$0:Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;

    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5$1;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5$1;-><init>(Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2$5;)V

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/tutorial/TouchTutorialModule2;->installTriggerDelayed(Ljava/lang/Runnable;)V

    .line 159
    :cond_0
    return-void
.end method

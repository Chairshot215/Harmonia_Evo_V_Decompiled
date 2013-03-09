.class Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader$1;
.super Landroid/os/FileObserver;
.source "EventSpeechRuleLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;-><init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader$1;->this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    .line 68
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1
    .parameter "event"
    .parameter "speechStrategyRelativePath"

    .prologue
    .line 71
    sparse-switch p1, :sswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 73
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader$1;->this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->unloadExternalSpeechStrategy(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->access$0(Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader$1;->this$0:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->loadExternalSpeechStrategy(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->access$1(Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x200 -> :sswitch_0
    .end sparse-switch
.end method

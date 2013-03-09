.class public Lcom/google/android/voicesearch/ime/SuggestionSpanBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuggestionSpanBroadcastReceiver.java"


# static fields
.field private static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/voicesearch/ime/SuggestionSpanBroadcastReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    sget-boolean v4, Lcom/google/android/voicesearch/ime/SuggestionSpanBroadcastReceiver;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 40
    const-string v4, "SuggestionSpanBroadcastReceiver"

    const-string v5, "#onReceive"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    const-string v4, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 43
    const-string v4, "before"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, before:Ljava/lang/String;
    const-string v4, "after"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, after:Ljava/lang/String;
    const-string v4, "hashcode"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 51
    .local v3, suggestionId:I
    sget-boolean v4, Lcom/google/android/voicesearch/ime/SuggestionSpanBroadcastReceiver;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 52
    const-string v4, "SuggestionSpanBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#onReceive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v2

    .line 56
    .local v2, container:Lcom/google/android/voicesearch/VoiceSearchContainer;
    invoke-interface {v2}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getClientReportLogger()Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->notifySuggestionSelection(ILjava/lang/String;)V

    .line 58
    invoke-interface {v2}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->imeSuggestionSelected()V

    .line 60
    .end local v0           #after:Ljava/lang/String;
    .end local v1           #before:Ljava/lang/String;
    .end local v2           #container:Lcom/google/android/voicesearch/VoiceSearchContainer;
    .end local v3           #suggestionId:I
    :cond_2
    return-void
.end method

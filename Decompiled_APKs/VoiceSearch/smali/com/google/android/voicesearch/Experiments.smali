.class public Lcom/google/android/voicesearch/Experiments;
.super Ljava/lang/Object;
.source "Experiments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/Experiments$HelpBubble;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static getExperimentHash(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 39
    const-string v1, "VoiceSearchPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "experimentHash"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static setExperimentParameters(Landroid/content/Context;Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)V
    .locals 2
    .parameter "context"
    .parameter "clientParameters"

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, inHelpExperiment:Z
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->hasShowHintOnHelp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getShowHintOnHelp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 61
    :cond_0
    invoke-static {p0, v0}, Lcom/google/android/voicesearch/Experiments$HelpBubble;->setParticipation(Landroid/content/Context;Z)V

    .line 62
    return-void
.end method

.method public static updateExperimentHash(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "newHash"

    .prologue
    .line 49
    const-string v1, "VoiceSearchPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "experimentHash"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 53
    return-void
.end method

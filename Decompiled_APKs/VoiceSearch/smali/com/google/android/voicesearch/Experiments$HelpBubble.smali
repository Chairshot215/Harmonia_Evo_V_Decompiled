.class public Lcom/google/android/voicesearch/Experiments$HelpBubble;
.super Ljava/lang/Object;
.source "Experiments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/Experiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HelpBubble"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static incrementAppStartCount(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 121
    const-string v3, "VoiceSearchPreferences"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 124
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 126
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "experimentHelpBubbleAppStarted"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 127
    .local v0, count:I
    const-string v3, "experimentHelpBubbleAppStarted"

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-static {v1}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 129
    return-void
.end method

.method public static incrementHelpCount(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 138
    const-string v3, "VoiceSearchPreferences"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 141
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 143
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "experimentHelpBubbleHelpViewed"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 144
    .local v0, count:I
    const-string v3, "experimentHelpBubbleHelpViewed"

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-static {v1}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 146
    return-void
.end method

.method public static setParticipation(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "participate"

    .prologue
    const/4 v2, 0x0

    .line 80
    const-string v1, "VoiceSearchPreferences"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "experimentHelpBubble"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    if-eqz p1, :cond_0

    .line 87
    const-string v1, "experimentHelpBubbleAppStarted"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string v1, "experimentHelpBubbleHelpViewed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 91
    :cond_0
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 92
    return-void
.end method

.method public static shouldShowHelpBubble(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;)Z
    .locals 8
    .parameter "context"
    .parameter "helper"

    .prologue
    const/4 v6, 0x0

    .line 101
    invoke-virtual {p1}, Lcom/google/android/voicesearch/GservicesHelper;->getHelpHintBubbleMaxHelpCount()I

    move-result v4

    .line 102
    .local v4, maxHelpCount:I
    invoke-virtual {p1}, Lcom/google/android/voicesearch/GservicesHelper;->getHelpHintBubbleMaxAppStartCount()I

    move-result v3

    .line 104
    .local v3, maxAppStartCount:I
    const-string v7, "VoiceSearchPreferences"

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 107
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v7, "experimentHelpBubbleHelpViewed"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 108
    .local v1, helpCount:I
    const-string v7, "experimentHelpBubbleAppStarted"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, bubbleCount:I
    const-string v7, "experimentHelpBubble"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 111
    .local v2, inExperiment:Z
    if-eqz v2, :cond_0

    if-ge v1, v4, :cond_0

    if-ge v0, v3, :cond_0

    const/4 v6, 0x1

    :cond_0
    return v6
.end method

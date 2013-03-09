.class public Lcom/google/android/voicesearch/TestPlatformLog;
.super Ljava/lang/Object;
.source "TestPlatformLog.java"


# static fields
.field private static sEnableTestPlatformLogging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/voicesearch/TestPlatformLog;->sEnableTestPlatformLogging:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 78
    sget-boolean v0, Lcom/google/android/voicesearch/TestPlatformLog;->sEnableTestPlatformLogging:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "TestPlatformLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TEST_PLATFORM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method public static logAudioPath(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOGGING_AUDIO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/TestPlatformLog;->log(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/TestPlatformLog;->log(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static logResults(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    sget-boolean v3, Lcom/google/android/voicesearch/TestPlatformLog;->sEnableTestPlatformLogging:Z

    if-eqz v3, :cond_2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "RESULTS: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 114
    .local v2, result:Lcom/google/android/voicesearch/actions/VoiceAction;
    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 115
    const-string v3, "result:\"%s\","

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 117
    :cond_0
    const-string v3, "result:NON_WEB_SEARCH_RESULT,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    .end local v2           #result:Lcom/google/android/voicesearch/actions/VoiceAction;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/voicesearch/TestPlatformLog;->log(Ljava/lang/String;)V

    .line 122
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 69
    sput-boolean p0, Lcom/google/android/voicesearch/TestPlatformLog;->sEnableTestPlatformLogging:Z

    .line 70
    return-void
.end method

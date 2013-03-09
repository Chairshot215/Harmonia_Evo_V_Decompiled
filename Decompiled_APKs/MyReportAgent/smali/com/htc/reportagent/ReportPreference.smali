.class Lcom/htc/reportagent/ReportPreference;
.super Ljava/lang/Object;
.source "ReportPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final _DEBUG:Z = false

.field private static final preferenceName:Ljava/lang/String; = "Report"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/htc/reportagent/ReportPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/ReportPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentPowerConnectedState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 51
    const-string v2, "Report"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "CurrentPowerConnected"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 53
    .local v1, value:I
    return v1
.end method

.method public static getLastUPUpload(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 36
    const-string v3, "Report"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "LastUPUpload"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 38
    .local v1, value:J
    return-wide v1
.end method

.method public static declared-synchronized getNewSN(Landroid/content/Context;)J
    .locals 8
    .parameter "context"

    .prologue
    .line 24
    const-class v5, Lcom/htc/reportagent/ReportPreference;

    monitor-enter v5

    :try_start_0
    const-string v4, "Report"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 25
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v4, "LatestSerialNumber"

    const-wide/16 v6, -0x1

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 26
    .local v2, value:J
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 28
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "LatestSerialNumber"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v5

    return-wide v2

    .line 24
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    .end local v2           #value:J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static removeAll(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 16
    const-string v2, "Report"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 17
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 18
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    return-void
.end method

.method public static setCurrentPowerConnectedState(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 58
    const-string v2, "Report"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 59
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "CurrentPowerConnected"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method

.method public static setLastUPUpload(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 42
    const-string v4, "Report"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 43
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 44
    .local v2, value:J
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "LastUPUpload"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    return-void
.end method

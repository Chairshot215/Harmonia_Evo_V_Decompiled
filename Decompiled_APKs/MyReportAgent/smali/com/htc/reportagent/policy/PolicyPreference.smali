.class public Lcom/htc/reportagent/policy/PolicyPreference;
.super Ljava/lang/Object;
.source "PolicyPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final _DEBUG:Z = false

.field private static final preferenceName:Ljava/lang/String; = "Policy"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/htc/reportagent/policy/PolicyPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/policy/PolicyPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlarmBaseline(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 43
    const-string v3, "Policy"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "AlarmBaseline"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 45
    .local v1, value:J
    return-wide v1
.end method

.method public static getPolicyLastUpdate(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 28
    const-string v3, "Policy"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 29
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "PolicyLastUpdate"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 30
    .local v1, value:J
    return-wide v1
.end method

.method public static getPolicyManagerStatus(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 58
    const-string v2, "Policy"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "PolicyManagerStatus"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 60
    .local v1, value:I
    return v1
.end method

.method public static getPolicyUpdateFrequency(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 81
    const-string v3, "Policy"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "PolicyUpdateFrequency"

    const-wide v4, 0x496cebb800L

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 83
    .local v1, value:J
    return-wide v1
.end method

.method static removeAll(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 20
    const-string v2, "Policy"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 21
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 22
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 24
    return-void
.end method

.method static setAlarmBaseline(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 50
    const-string v2, "Policy"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AlarmBaseline"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method static setPolicyLastUpdate(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 35
    const-string v2, "Policy"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 37
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "PolicyLastUpdate"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method static setPolicyManagerStatus(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 67
    const-string v2, "Policy"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "PolicyManagerStatus"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method

.method static setPolicyUpdateFrequency(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 96
    const-string v2, "Policy"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 97
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "PolicyUpdateFrequency"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    return-void
.end method

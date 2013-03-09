.class public Lcom/htc/reportagent/update/UpdatePreference;
.super Ljava/lang/Object;
.source "UpdatePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final _DEBUG:Z = false

.field private static final preferenceName:Ljava/lang/String; = "Update"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/htc/reportagent/update/UpdatePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/update/UpdatePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAlarmBaseline(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 43
    const-string v3, "Update"

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

.method public static getInterval(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 28
    const-string v3, "Update"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 29
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "Interval"

    const-wide/32 v4, 0x240c8400

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 30
    .local v1, value:J
    return-wide v1
.end method

.method public static getUpdateManagerStatus(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 58
    const-string v2, "Update"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "UpdateManagerStatus"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 60
    .local v1, value:I
    return v1
.end method

.method static removeAll(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 20
    const-string v2, "Update"

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
    const-string v2, "Update"

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

.method static setInterval(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 35
    const-string v2, "Update"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 37
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Interval"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method static setUpdateManagerStatus(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 65
    const-string v2, "Update"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "UpdateManagerStatus"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

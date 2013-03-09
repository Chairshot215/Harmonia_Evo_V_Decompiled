.class public Lcom/htc/csengine/util/CSEnginePreference;
.super Ljava/lang/Object;
.source "CSEnginePreference.java"


# static fields
.field public static final preferenceName:Ljava/lang/String; = "CSEngine"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceProfileFlag(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 20
    const-string v2, "CSEngine"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "deviceProfile"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 22
    .local v1, value:Z
    return v1
.end method

.method public static setDeviceProfileFlag(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "set"

    .prologue
    .line 13
    const-string v2, "CSEngine"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 14
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 15
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "deviceProfile"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    return-void
.end method

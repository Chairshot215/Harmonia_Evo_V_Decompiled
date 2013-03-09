.class public Lcom/htc/dockmode/utils/Preference;
.super Ljava/lang/Object;
.source "Preference.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSettingBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 2
    .parameter "settings"
    .parameter "key"

    .prologue
    .line 10
    const/4 v0, 0x0

    .line 11
    .local v0, value:Z
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 13
    :cond_0
    return v0
.end method

.method public static getSettingInt(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 2
    .parameter "settings"
    .parameter "key"

    .prologue
    .line 23
    const/4 v0, -0x1

    .line 24
    .local v0, value:I
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const/4 v1, -0x1

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 26
    :cond_0
    return v0
.end method

.method public static getSettingLong(Landroid/content/SharedPreferences;Ljava/lang/String;)J
    .locals 4
    .parameter "settings"
    .parameter "key"

    .prologue
    .line 36
    const-wide/16 v0, -0x1

    .line 37
    .local v0, value:J
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const-wide/16 v2, -0x1

    invoke-interface {p0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 39
    :cond_0
    return-wide v0
.end method

.method public static getSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "settings"
    .parameter "key"

    .prologue
    .line 50
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, value:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 53
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public static setSettingBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "settings"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 18
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 19
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static setSettingInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z
    .locals 2
    .parameter "settings"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 32
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static setSettingLong(Landroid/content/SharedPreferences;Ljava/lang/String;J)Z
    .locals 2
    .parameter "settings"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 44
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public static setSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "settings"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 59
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

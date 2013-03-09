.class public Lcom/htc/csengine/util/CSRegionSharedPref;
.super Ljava/lang/Object;
.source "CSRegionSharedPref.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CSRegionSharedPref "

.field public static final preferenceName:Ljava/lang/String; = "CSRegions"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readRegions(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 27
    const-string v2, "CSRegions"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    .local v0, preferencesforRest:Landroid/content/SharedPreferences;
    const-string v2, "region"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, region:Ljava/lang/String;
    return-object v1
.end method

.method public static writeRegions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "input"

    .prologue
    .line 17
    const-string v2, "CSRegions"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 18
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 19
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "region"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    return-void
.end method

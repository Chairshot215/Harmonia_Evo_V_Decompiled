.class public Lcom/htc/cs/util/CSRegionSharedPref;
.super Ljava/lang/Object;
.source "CSRegionSharedPref.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CSRegionSharedPref "

.field public static final preferenceName:Ljava/lang/String; = "CSRegions"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readRegions(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 19
    const/4 v1, 0x0

    .line 22
    .local v1, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v4, "com.htc.csengine"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 28
    const-string v4, "CSRegions"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 29
    .local v2, preferencesforRest:Landroid/content/SharedPreferences;
    const-string v4, "region"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    .end local v2           #preferencesforRest:Landroid/content/SharedPreferences;
    :goto_0
    return-object v3

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CSRegionSharedPref "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v3, 0x0

    goto :goto_0
.end method

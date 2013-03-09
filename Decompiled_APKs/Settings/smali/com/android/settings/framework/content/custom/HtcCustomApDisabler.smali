.class public Lcom/android/settings/framework/content/custom/HtcCustomApDisabler;
.super Ljava/lang/Object;
.source "HtcCustomApDisabler.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "Settings"

.field private static final FUNCTION_NAME:Ljava/lang/String; = "disable_custom_applications"

.field private static final MODULE_NAME:Ljava/lang/String; = "list"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/settings/framework/content/custom/HtcCustomApDisabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomApDisabler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static disableCustomAp(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 30
    const-string v11, "Settings"

    const-string v12, "list"

    invoke-static {p0, v11, v12}, Lcom/htc/customize/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/customize/storage/customize/HtcCustomizedData;

    move-result-object v0

    .line 32
    .local v0, data:Lcom/htc/customize/storage/customize/HtcCustomizedData;
    const-string v11, "disable_custom_applications"

    invoke-virtual {v0, v11}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 36
    .local v10, subData:Landroid/os/Bundle;
    if-eqz v10, :cond_1

    .line 37
    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 38
    .local v5, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 41
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 44
    .local v8, pkgSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/HtcCustomApDisabler;->restoreCustomAp(Landroid/content/Context;)V

    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, index:I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 50
    .local v6, order:Ljava/lang/String;
    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, pkg:Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v11, v7, v12, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Ljava/lang/Exception;
    sget-object v11, Lcom/android/settings/framework/content/custom/HtcCustomApDisabler;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 69
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #order:Ljava/lang/String;
    .end local v7           #pkg:Ljava/lang/String;
    :cond_0
    sget-object v11, Lcom/android/settings/framework/content/custom/HtcCustomApDisabler;->TAG:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 70
    .local v9, sp:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 71
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "disable_custom_applications"

    invoke-interface {v2, v11, v8}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #index:I
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #pkgSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #sp:Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method static restoreCustomAp(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 81
    sget-object v5, Lcom/android/settings/framework/content/custom/HtcCustomApDisabler;->TAG:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 82
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v5, "disable_custom_applications"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 84
    .local v3, pkgSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 89
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, pkg:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/settings/framework/content/custom/HtcCustomApDisabler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #pkg:Ljava/lang/String;
    :cond_0
    return-void
.end method

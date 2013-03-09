.class public Lcom/android/settings/framework/content/custom/HtcCustomLog;
.super Ljava/lang/Object;
.source "HtcCustomLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dumpBlockedApplicationLog(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 122
    const-string v0, "Settings"

    .line 123
    .local v0, CATGORY_NAME:Ljava/lang/String;
    const-string v2, "list"

    .line 125
    .local v2, MODULE_NAME:Ljava/lang/String;
    const-string v1, "blocked_applications"

    .line 127
    .local v1, FUNCTION_NAME:Ljava/lang/String;
    const-string v10, "Settings"

    const-string v11, "list"

    invoke-static {p0, v10, v11}, Lcom/htc/customize/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/customize/storage/customize/HtcCustomizedData;

    move-result-object v4

    .line 129
    .local v4, data:Lcom/htc/customize/storage/customize/HtcCustomizedData;
    const-string v10, "blocked_applications"

    invoke-virtual {v4, v10}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 132
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 134
    .local v7, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 135
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 136
    .local v5, index:I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 137
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 138
    .local v8, order:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 145
    .local v9, pkg:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 146
    goto :goto_0

    .line 148
    .end local v5           #index:I
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #order:Ljava/lang/String;
    .end local v9           #pkg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static dumpDisableCustomApplicationLog(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 32
    const-string v0, "Settings"

    .line 33
    .local v0, CATGORY_NAME:Ljava/lang/String;
    const-string v2, "list"

    .line 35
    .local v2, MODULE_NAME:Ljava/lang/String;
    const-string v1, "disable_custom_applications"

    .line 37
    .local v1, FUNCTION_NAME:Ljava/lang/String;
    const-string v10, "Settings"

    const-string v11, "list"

    invoke-static {p0, v10, v11}, Lcom/htc/customize/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/customize/storage/customize/HtcCustomizedData;

    move-result-object v4

    .line 39
    .local v4, data:Lcom/htc/customize/storage/customize/HtcCustomizedData;
    const-string v10, "disable_custom_applications"

    invoke-virtual {v4, v10}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 42
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 44
    .local v7, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 45
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 46
    .local v5, index:I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 47
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 48
    .local v8, order:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 55
    .local v9, pkg:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 56
    goto :goto_0

    .line 58
    .end local v5           #index:I
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #order:Ljava/lang/String;
    .end local v9           #pkg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static dumpHideApplicationLog(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 62
    const-string v0, "Settings"

    .line 63
    .local v0, CATGORY_NAME:Ljava/lang/String;
    const-string v2, "list"

    .line 65
    .local v2, MODULE_NAME:Ljava/lang/String;
    const-string v1, "hide_application_list"

    .line 67
    .local v1, FUNCTION_NAME:Ljava/lang/String;
    const-string v10, "Settings"

    const-string v11, "list"

    invoke-static {p0, v10, v11}, Lcom/htc/customize/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/customize/storage/customize/HtcCustomizedData;

    move-result-object v4

    .line 69
    .local v4, data:Lcom/htc/customize/storage/customize/HtcCustomizedData;
    const-string v10, "hide_application_list"

    invoke-virtual {v4, v10}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 72
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 74
    .local v7, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 75
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 76
    .local v5, index:I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 77
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 78
    .local v8, order:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, pkg:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 86
    goto :goto_0

    .line 88
    .end local v5           #index:I
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #order:Ljava/lang/String;
    .end local v9           #pkg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static dumpHideServiceLog(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 92
    const-string v0, "Settings"

    .line 93
    .local v0, CATGORY_NAME:Ljava/lang/String;
    const-string v2, "list"

    .line 95
    .local v2, MODULE_NAME:Ljava/lang/String;
    const-string v1, "hide_service_list"

    .line 97
    .local v1, FUNCTION_NAME:Ljava/lang/String;
    const-string v10, "Settings"

    const-string v11, "list"

    invoke-static {p0, v10, v11}, Lcom/htc/customize/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/customize/storage/customize/HtcCustomizedData;

    move-result-object v4

    .line 99
    .local v4, data:Lcom/htc/customize/storage/customize/HtcCustomizedData;
    const-string v10, "hide_service_list"

    invoke-virtual {v4, v10}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 102
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 104
    .local v7, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 105
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 106
    .local v5, index:I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 107
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 108
    .local v8, order:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, pkg:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 116
    goto :goto_0

    .line 118
    .end local v5           #index:I
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #order:Ljava/lang/String;
    .end local v9           #pkg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static dumpLog(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/HtcCustomLog;->dumpDisableCustomApplicationLog(Landroid/content/Context;)V

    .line 25
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/HtcCustomLog;->dumpHideApplicationLog(Landroid/content/Context;)V

    .line 26
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/HtcCustomLog;->dumpHideServiceLog(Landroid/content/Context;)V

    .line 27
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/HtcCustomLog;->dumpBlockedApplicationLog(Landroid/content/Context;)V

    .line 28
    return-void
.end method

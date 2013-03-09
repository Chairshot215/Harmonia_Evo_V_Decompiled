.class public Lcom/android/settings/framework/preference/HtcPreferencePluginManager;
.super Ljava/lang/Object;
.source "HtcPreferencePluginManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pluginPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;II)Lcom/htc/preference/HtcPreference;
    .locals 4
    .parameter "context"
    .parameter "container"
    .parameter "titleResId"
    .parameter "summaryResID"

    .prologue
    const/4 v1, 0x0

    .line 325
    if-nez p0, :cond_0

    .line 337
    :goto_0
    return-object v1

    .line 330
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v2, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreference;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static pluginPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "context"
    .parameter "container"
    .parameter "title"
    .parameter "summary"

    .prologue
    .line 354
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 355
    :cond_0
    const/4 v0, 0x0

    .line 363
    :goto_0
    return-object v0

    .line 358
    :cond_1
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 360
    .local v0, p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {v0, p3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method public static pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;IILjava/lang/Class;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 5
    .parameter "proxy"
    .parameter "container"
    .parameter "titleResId"
    .parameter "summaryResID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            "II",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/htc/preference/HtcPreferenceScreen;"
        }
    .end annotation

    .prologue
    .line 46
    .local p4, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/htc/preference/HtcPreferenceScreen;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 54
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;IILjava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 3
    .parameter "activity"
    .parameter "container"
    .parameter "titleResId"
    .parameter "summaryResID"
    .parameter "action"

    .prologue
    .line 206
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v1, v2, p4}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 214
    :goto_0
    return-object v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 214
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;IILjava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 4
    .parameter "activity"
    .parameter "container"
    .parameter "titleResId"
    .parameter "summaryResID"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 83
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, v2, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/htc/preference/HtcPreferenceScreen;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 4
    .parameter "proxy"
    .parameter "container"
    .parameter "title"
    .parameter "summary"
    .parameter "component"

    .prologue
    .line 167
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 168
    :cond_0
    const/4 v1, 0x0

    .line 182
    :goto_0
    return-object v1

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 175
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 181
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 2
    .parameter "proxy"
    .parameter "container"
    .parameter "title"
    .parameter "summary"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/htc/preference/HtcPreferenceScreen;"
        }
    .end annotation

    .prologue
    .line 112
    .local p4, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public static pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 4
    .parameter "proxy"
    .parameter "container"
    .parameter "title"
    .parameter "summary"
    .parameter "action"

    .prologue
    .line 237
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 238
    :cond_0
    const/4 v1, 0x0

    .line 248
    :goto_0
    return-object v1

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 242
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1
    .parameter "activity"
    .parameter "container"
    .parameter "title"
    .parameter "summary"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 142
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public static pluginPreferenceScreenIfAvailable(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;IILjava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1
    .parameter "proxy"
    .parameter "container"
    .parameter "titleResId"
    .parameter "summaryResID"
    .parameter "action"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/android/settings/framework/flag/HtcFeatureFlags;->supportActivities(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;IILjava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    goto :goto_0
.end method

.method public static pluginPreferenceScreenIfAvailable(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;
    .locals 1
    .parameter "proxy"
    .parameter "container"
    .parameter "title"
    .parameter "summary"
    .parameter "action"

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/android/settings/framework/flag/HtcFeatureFlags;->supportActivities(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginPreferenceScreen(Lcom/android/settings/framework/app/HtcInternalPreferenceProxy;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    goto :goto_0
.end method

.method public static pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;II)Lcom/android/settings/framework/preference/HtcStatusPreference;
    .locals 4
    .parameter "context"
    .parameter "container"
    .parameter "titleResId"
    .parameter "summaryResID"

    .prologue
    const/4 v1, 0x0

    .line 390
    if-nez p0, :cond_0

    .line 402
    :goto_0
    return-object v1

    .line 395
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v2, v3}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcStatusPreference;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcStatusPreference;
    .locals 1
    .parameter "context"
    .parameter "container"
    .parameter "title"
    .parameter "summary"

    .prologue
    .line 422
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 423
    :cond_0
    const/4 v0, 0x0

    .line 431
    :goto_0
    return-object v0

    .line 426
    :cond_1
    new-instance v0, Lcom/android/settings/framework/preference/HtcStatusPreference;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/HtcStatusPreference;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, sp:Lcom/android/settings/framework/preference/HtcStatusPreference;
    invoke-virtual {v0, p2}, Lcom/android/settings/framework/preference/HtcStatusPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {v0, p3}, Lcom/android/settings/framework/preference/HtcStatusPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

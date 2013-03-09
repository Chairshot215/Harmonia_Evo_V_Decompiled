.class public Lcom/android/settings/framework/activity/system/buildflags/HtcDeviceFlagSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "HtcDeviceFlagSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/buildflags/HtcDeviceFlagSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 45
    .local v3, root:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v7, "Htc device flags"

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/system/buildflags/HtcDeviceFlagSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 49
    invoke-static {}, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->getDeviceFlagList()Ljava/util/ArrayList;

    move-result-object v1

    .line 50
    .local v1, fieldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 54
    .local v0, field:Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, title:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v6

    .line 58
    .local v6, value:S
    const-string v7, "%d (0x%02X)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, summary:Ljava/lang/String;
    invoke-static {p0, v3, v5, v4}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcStatusPreference;

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v0           #field:Ljava/lang/reflect/Field;
    .end local v4           #summary:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #value:S
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/system/buildflags/HtcDeviceFlagSettings;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 29
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

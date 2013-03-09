.class public Lcom/android/settings/framework/activity/system/buildflags/HtcOtherFlagSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "HtcOtherFlagSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/buildflags/HtcOtherFlagSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 45
    .local v3, root:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v7, "Htc other flags"

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/system/buildflags/HtcOtherFlagSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 49
    invoke-static {}, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->getOtherFlagList()Ljava/util/ArrayList;

    move-result-object v1

    .line 50
    .local v1, fieldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

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
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_0

    .line 58
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 59
    .local v6, value:Ljava/lang/Byte;
    const-string v7, "%d (0x%02X) (byte)"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v6, v8, v10

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .end local v6           #value:Ljava/lang/Byte;
    .local v4, summary:Ljava/lang/String;
    :goto_1
    invoke-static {p0, v3, v5, v4}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcStatusPreference;

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v4           #summary:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_1

    .line 62
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    .line 63
    .local v6, value:Ljava/lang/Short;
    const-string v7, "%d (0x%02X) (short)"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v6, v8, v10

    aput-object v6, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_1

    .line 66
    .end local v4           #summary:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/Short;
    :cond_1
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 68
    .local v6, value:Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 69
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .restart local v4       #summary:Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_3

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (String)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 71
    .end local v4           #summary:Ljava/lang/String;
    :cond_2
    const-string v4, ""

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_2

    .line 77
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 84
    .end local v0           #field:Ljava/lang/reflect/Field;
    .end local v4           #summary:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/Object;
    :cond_4
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
    invoke-direct {p0}, Lcom/android/settings/framework/activity/system/buildflags/HtcOtherFlagSettings;->doPlugin()V
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

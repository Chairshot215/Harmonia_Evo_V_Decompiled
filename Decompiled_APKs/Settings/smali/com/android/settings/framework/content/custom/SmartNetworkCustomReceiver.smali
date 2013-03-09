.class public Lcom/android/settings/framework/content/custom/SmartNetworkCustomReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartNetworkCustomReceiver.java"


# static fields
.field private static final CASE_FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

.field private static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/settings/framework/content/custom/SmartNetworkCustomReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/custom/SmartNetworkCustomReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getBooleanValue(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 142
    if-nez p0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 150
    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "yes"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "enabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "checked"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "allowed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "on"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 134
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/SmartNetworkCustomReceiver;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "1"

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private smartNetworkCustomize(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 77
    const-string v0, "SettingsProvider"

    .line 78
    .local v0, CATEGORY_NAME:Ljava/lang/String;
    const-string v2, "res"

    .line 79
    .local v2, MODEL_NAME:Ljava/lang/String;
    const-string v1, "values"

    .line 83
    .local v1, FUNCTION_NAME:Ljava/lang/String;
    invoke-static {p1, v0, v2}, Lcom/android/settings/framework/content/custom/HtcCustomDataReader;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/content/custom/HtcCustomData;

    move-result-object v5

    .line 87
    .local v5, data:Lcom/android/settings/framework/content/custom/HtcCustomData;
    if-nez v5, :cond_1

    .line 88
    sget-object v10, Lcom/android/settings/framework/content/custom/SmartNetworkCustomReceiver;->TAG:Ljava/lang/String;

    const-string v11, "not get data"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {v5, v1}, Lcom/android/settings/framework/content/custom/HtcCustomData;->getBundleByFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 94
    .local v3, bundle:Landroid/os/Bundle;
    if-nez v3, :cond_2

    .line 95
    sget-object v10, Lcom/android/settings/framework/content/custom/SmartNetworkCustomReceiver;->TAG:Ljava/lang/String;

    const-string v11, "not get bundle"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 101
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 102
    .local v7, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 105
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 106
    .local v8, name:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 111
    .local v9, value:Ljava/lang/String;
    const-string v10, "def_2g_on"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 113
    :try_start_0
    const-string v10, "powersaver_switch_2G_call"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 119
    :catch_0
    move-exception v6

    .line 120
    .local v6, e:Ljava/lang/NumberFormatException;
    sget-object v10, Lcom/android/settings/framework/content/custom/SmartNetworkCustomReceiver;->TAG:Ljava/lang/String;

    const-string v11, "not get int in def_2g_on"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 122
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_4
    const-string v10, "def_night_turn_off_wifi"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 123
    const-string v10, "smartsync_turn_off_wifi"

    invoke-static {v9}, Lcom/android/settings/framework/content/custom/SmartNetworkCustomReceiver;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    .line 42
    const-string v3, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, reason:Ljava/lang/String;
    :try_start_0
    const-string v3, "com.htc.FOTA_UPGRADE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powersaver_switch_2G_call"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 57
    .local v0, a:I
    if-ne v0, v6, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/framework/content/custom/SmartNetworkCustomReceiver;->smartNetworkCustomize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0           #a:I
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.class public Lcom/android/settings/framework/content/custom/HtcCustomAgent;
.super Ljava/lang/Object;
.source "HtcCustomAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/content/custom/HtcCustomAgent$1;,
        Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    }
.end annotation


# static fields
.field private static final CATEGORY_NAME:Ljava/lang/String; = "SettingsProvider"

.field private static final FUNCTION_NAME:Ljava/lang/String; = "values"

.field private static final MODEL_NAME:Ljava/lang/String; = "res"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private MobileDataEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 737
    :try_start_0
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 739
    .local v0, cm:Landroid/net/IConnectivityManager;
    if-eqz v0, :cond_0

    .line 740
    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    .end local v0           #cm:Landroid/net/IConnectivityManager;
    :cond_0
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private check24HourFormat(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 692
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 695
    .local v4, value:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 696
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 697
    .local v0, locale:Ljava/util/Locale;
    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 699
    .local v1, natural:Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_2

    move-object v3, v1

    .line 700
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 701
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, pattern:Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 704
    const-string v4, "24"

    .line 712
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 714
    .end local v0           #locale:Ljava/util/Locale;
    .end local v1           #natural:Ljava/text/DateFormat;
    :cond_0
    return-void

    .line 706
    .restart local v0       #locale:Ljava/util/Locale;
    .restart local v1       #natural:Ljava/text/DateFormat;
    .restart local v2       #pattern:Ljava/lang/String;
    .restart local v3       #sdf:Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v4, "12"

    goto :goto_0

    .line 709
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    :cond_2
    const-string v4, "12"

    goto :goto_0
.end method

.method private static getBooleanValue(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 586
    if-nez p0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v0

    .line 591
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 594
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

    .line 598
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 617
    invoke-static {p0}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    const-string v0, "1"

    .line 620
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private static getFractionValueInString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 632
    if-nez p0, :cond_0

    .line 633
    const-string p0, "0"

    .line 658
    .local v0, decimal:F
    .local v2, withPercentageSign:Z
    :goto_0
    return-object p0

    .line 636
    .end local v0           #decimal:F
    .end local v2           #withPercentageSign:Z
    :cond_0
    const/4 v2, 0x0

    .line 637
    .restart local v2       #withPercentageSign:Z
    const/4 v0, 0x0

    .line 640
    .restart local v0       #decimal:F
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 643
    const-string v3, "%"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 644
    const/4 v2, 0x1

    .line 645
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 649
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 650
    if-eqz v2, :cond_2

    .line 651
    const/high16 v3, 0x42c8

    div-float/2addr v0, v3

    .line 653
    :cond_2
    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 654
    :catch_0
    move-exception v1

    .line 655
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 656
    const-string p0, "0.0"

    goto :goto_0
.end method

.method private static getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 676
    if-nez p0, :cond_1

    .line 677
    const-string p0, ""

    .line 688
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 681
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 685
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\"\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    :cond_2
    const-string p0, ""

    goto :goto_0
.end method

.method private setNameAndValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 183
    :try_start_0
    invoke-static {p2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->valueOf(Ljava/lang/String;)Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 189
    .local v2, key:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent$1;->$SwitchMap$com$android$settings$framework$content$custom$HtcCustomAgent$Keys:[I

    invoke-virtual {v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 535
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not recognize the key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .end local v2           #key:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, e:Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Does not support the key name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 194
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #key:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;
    :pswitch_0
    const-string v3, "auto_time"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 199
    :pswitch_1
    const-string v3, "accelerometer_rotation"

    invoke-static {p1, v3, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 203
    :pswitch_2
    sget-object v3, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v4, "INACTIVITY_TIME"

    const-string v5, "inactivity_time"

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 212
    :pswitch_3
    const-string v3, "screen_off_timeout"

    invoke-static {p1, v3, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 216
    :pswitch_4
    invoke-direct {p0, p1, p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->updateAnimationScales(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_5
    sget-object v3, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v4, "HTC_APPLICATION_AUTOMATIC_STARTUP"

    const-string v5, "htc_application_automatic_startup"

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 228
    :pswitch_6
    sget-object v3, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v4, "HTC_APPLICATION_NOTIFICATION"

    const-string v5, "htc_application_notification"

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 237
    :pswitch_7
    sget-object v3, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v4, "HTC_3D_HOME_SCREEN"

    const-string v5, "htc_3d_home_screen"

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 246
    :pswitch_8
    sget-object v3, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v4, "HTC_WIRELESS_SLEEP_MODE_ENABLED"

    const-string v5, "htc_wireless_sleep_mode_enabled"

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 255
    :pswitch_9
    sget-object v3, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v4, "HTC_WIRELESS_SLEEP_START_TIME"

    const-string v5, "htc_wireless_sleep_start_time"

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 264
    :pswitch_a
    sget-object v3, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v4, "HTC_WIRELESS_SLEEP_END_TIME"

    const-string v5, "htc_wireless_sleep_end_time"

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 273
    :pswitch_b
    const-string v3, "time_12_24"

    invoke-static {p1, v3, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 277
    :pswitch_c
    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {p1, v3, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 282
    :pswitch_d
    const-string v3, "wifi_sleep_policy"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 288
    :pswitch_e
    sget-object v3, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v4, "HTCSPEAK_DEFALUT_LANG"

    const-string v5, "htcspeak_default_lang"

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 301
    :pswitch_f
    const-string v3, "3g_power_save"

    invoke-static {p1, v3, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 313
    :pswitch_10
    const-string v3, "dtmf_tone"

    invoke-static {p1, v3, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 318
    :pswitch_11
    const-string v3, "screen_brightness_mode"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 323
    :pswitch_12
    const-string v3, "screen_brightness"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 328
    :pswitch_13
    const-string v3, "volume_music"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    iget-object v3, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 332
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 339
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :pswitch_14
    const-string v3, "install_non_market_apps"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 346
    :pswitch_15
    const-string v3, "location_providers_allowed"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 355
    :pswitch_16
    const-string v3, "gps"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 364
    :pswitch_17
    const-string v3, "network"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 373
    :pswitch_18
    const-string v3, "vzw_lbs"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 384
    :pswitch_19
    sget-object v3, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v4, "ENABLE_HTC_FASTBOOT"

    const-string v5, "enable_fastboot"

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 393
    :pswitch_1a
    sget-object v3, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v4, "HTC_LOCATE_ALLOWED"

    const-string v5, "htc_locate_allowed"

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 405
    :pswitch_1b
    const-string v3, "data_roaming"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 414
    :pswitch_1c
    sget-object v3, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v4, "ROAMING_SOUND_ON"

    const-string v5, "roaming_sound_on"

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 427
    :pswitch_1d
    sget-object v3, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v4, "NATIONAL_ROAMING_ON"

    const-string v5, "national_roaming_on"

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 441
    :pswitch_1e
    sget-object v3, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    const-string v4, "WIMAX_ON"

    const-string v5, "wimax_on"

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/settings/framework/database/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 454
    :pswitch_1f
    const-string v3, "htc_message_notification_preview"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 463
    :pswitch_20
    const-string v3, "htc_phone_notification_preview"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 475
    :pswitch_21
    const-string v3, "true"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->MobileDataEnabled(Z)V

    goto/16 :goto_0

    .line 478
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->MobileDataEnabled(Z)V

    goto/16 :goto_0

    .line 488
    :pswitch_22
    const-string v3, "haptic_feedback_enabled"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 495
    :pswitch_23
    const-string v3, "sound_effects_enabled"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 501
    :pswitch_24
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 507
    :pswitch_25
    const-string v3, "show_2g_ui"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 516
    :pswitch_26
    :try_start_1
    const-string v3, "powersaver_switch_2G_call"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 522
    :catch_1
    move-exception v1

    .line 523
    .local v1, e:Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->TAG:Ljava/lang/String;

    const-string v4, "not get int in def_2g_on"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 527
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :pswitch_27
    const-string v3, "smartsync_turn_off_wifi"

    invoke-static {p3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method

.method private updateAnimationScales(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 8
    .parameter "resolver"
    .parameter "value"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 552
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, scales:[Ljava/lang/String;
    array-length v3, v2

    if-eq v3, v7, :cond_0

    .line 555
    const-string v1, "The format of the value is invalid."

    .line 556
    .local v1, e:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 560
    .end local v1           #e:Ljava/lang/String;
    :cond_0
    aget-object v3, v2, v5

    invoke-static {v3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getFractionValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 561
    aget-object v3, v2, v6

    invoke-static {v3}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getFractionValueInString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 564
    const-string v3, "window_animation_scale"

    aget-object v4, v2, v5

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 566
    const-string v3, "transition_animation_scale"

    aget-object v4, v2, v6

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 570
    new-array v0, v7, [F

    .line 571
    .local v0, animationScales:[F
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v0, v5

    .line 572
    aget-object v3, v2, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v0, v6

    .line 573
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->syncAnimationScales([F)Z

    .line 574
    return-void
.end method

.method private updateBackupEnabled(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 723
    sget-object v2, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->def_backup_enabled:Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;

    invoke-virtual {v2}, Lcom/android/settings/framework/content/custom/HtcCustomAgent$Keys;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, backupEnabled:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 725
    new-instance v1, Landroid/app/backup/BackupManager;

    invoke-direct {v1, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 726
    .local v1, bm:Landroid/app/backup/BackupManager;
    invoke-static {v0}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->getBooleanValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/backup/BackupManager;->setBackupEnabled(Z)V

    .line 728
    .end local v1           #bm:Landroid/app/backup/BackupManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCustomize(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->mContext:Landroid/content/Context;

    .line 131
    const-string v6, "SettingsProvider"

    const-string v7, "res"

    invoke-static {p1, v6, v7}, Lcom/android/settings/framework/content/custom/HtcCustomDataReader;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/content/custom/HtcCustomData;

    move-result-object v2

    .line 135
    .local v2, data:Lcom/android/settings/framework/content/custom/HtcCustomData;
    if-nez v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const-string v6, "values"

    invoke-virtual {v2, v6}, Lcom/android/settings/framework/content/custom/HtcCustomData;->getBundleByFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 147
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 148
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 152
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 153
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 156
    .local v5, value:Ljava/lang/String;
    invoke-direct {p0, v1, v4, v5}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->setNameAndValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 160
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->check24HourFormat(Landroid/content/Context;)V

    .line 163
    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/content/custom/HtcCustomAgent;->updateBackupEnabled(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

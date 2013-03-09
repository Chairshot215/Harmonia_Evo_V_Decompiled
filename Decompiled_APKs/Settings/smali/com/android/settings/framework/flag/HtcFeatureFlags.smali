.class public Lcom/android/settings/framework/flag/HtcFeatureFlags;
.super Ljava/lang/Object;
.source "HtcFeatureFlags.java"


# static fields
.field public static final isWorldPhone:Z

.field public static final supportCarDock:Z

.field public static final supportFlipToSpeakerMode:Z

.field public static final supportPocketMode:Z

.field public static final supportSystemUpdate:Z

.field public static final supportUnknownSrcUI:Z

.field public static final supportUserAssignedKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x28

    const/high16 v4, 0x4000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 70
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcFeatureFlags;->isWorldPhone:Z

    .line 94
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v0

    cmpl-float v0, v0, v4

    if-gez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_4

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcFeatureFlags;->supportPocketMode:Z

    .line 114
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_5

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcFeatureFlags;->supportFlipToSpeakerMode:Z

    .line 136
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isL0003:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0001:Z

    if-eqz v0, :cond_6

    :cond_1
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcFeatureFlags;->supportUserAssignedKey:Z

    .line 158
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0002:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0002:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isM0002:Z

    if-eqz v0, :cond_7

    :cond_2
    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/settings/framework/flag/HtcFeatureFlags;->supportCarDock:Z

    .line 336
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0003:Z

    if-nez v0, :cond_8

    :goto_5
    sput-boolean v1, Lcom/android/settings/framework/flag/HtcFeatureFlags;->supportUnknownSrcUI:Z

    return-void

    :cond_3
    move v0, v2

    .line 70
    goto :goto_0

    :cond_4
    move v0, v2

    .line 94
    goto :goto_1

    :cond_5
    move v0, v2

    .line 114
    goto :goto_2

    :cond_6
    move v0, v2

    .line 136
    goto :goto_3

    :cond_7
    move v0, v2

    .line 158
    goto :goto_4

    :cond_8
    move v1, v2

    .line 336
    goto :goto_5
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static isCarkitSupport()Z
    .locals 2

    .prologue
    .line 185
    const-string v0, "usb_car_kit_enable"

    invoke-static {v0}, Lcom/android/settings/framework/flag/HtcFeatureFlags;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "fn"

    .prologue
    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 192
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sys/devices/platform/msm_hsusb/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v2           #fr:Ljava/io/FileReader;
    .local v3, fr:Ljava/io/FileReader;
    if-eqz v3, :cond_0

    .line 194
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 196
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 203
    if-eqz v0, :cond_1

    .line 204
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 205
    :cond_1
    if-eqz v3, :cond_2

    .line 206
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_0
    move-object v2, v3

    .line 210
    .end local v3           #fr:Ljava/io/FileReader;
    .end local v4           #line:Ljava/lang/String;
    .restart local v2       #fr:Ljava/io/FileReader;
    :goto_1
    return-object v4

    .line 203
    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    :cond_3
    if-eqz v0, :cond_4

    .line 204
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 205
    :cond_4
    if-eqz v3, :cond_5

    .line 206
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_2
    move-object v2, v3

    .line 210
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    :cond_6
    :goto_3
    const-string v4, ""

    goto :goto_1

    .line 202
    :catchall_0
    move-exception v5

    .line 203
    :goto_4
    if-eqz v0, :cond_7

    .line 204
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 205
    :cond_7
    if-eqz v2, :cond_8

    .line 206
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 202
    :cond_8
    :goto_5
    throw v5

    .line 199
    :catch_0
    move-exception v5

    .line 203
    :goto_6
    if-eqz v0, :cond_9

    .line 204
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 205
    :cond_9
    if-eqz v2, :cond_6

    .line 206
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 207
    :catch_1
    move-exception v5

    goto :goto_3

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    :catch_2
    move-exception v5

    goto :goto_2

    .restart local v4       #line:Ljava/lang/String;
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v3           #fr:Ljava/io/FileReader;
    .end local v4           #line:Ljava/lang/String;
    .restart local v2       #fr:Ljava/io/FileReader;
    :catch_4
    move-exception v6

    goto :goto_5

    .line 202
    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto :goto_4

    .line 199
    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v5

    move-object v2, v3

    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    goto :goto_6
.end method

.method public static final supportActivities(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 34
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final supportActivities(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "action"

    .prologue
    const/4 v1, 0x0

    .line 46
    if-nez p0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final supportAttSoftwareUpdate(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 305
    if-nez p0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v1

    .line 309
    :cond_1
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0003:Z

    if-eqz v2, :cond_0

    .line 314
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc.android.omadm.service"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    const/4 v1, 0x1

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static final supportFUMO(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 243
    if-nez p0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isI0001:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0004:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isL0003:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isM0002:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0003:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcProjectFlags;->isV0001:Z

    if-eqz v2, :cond_0

    .line 256
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc.android.omadm.service"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    const/4 v1, 0x1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static supportLaputa(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 178
    const-string v0, "com.htc.laputa.navi.action.SHOW_NAVI"

    invoke-static {p0, v0}, Lcom/android/settings/framework/flag/HtcFeatureFlags;->supportActivities(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/HtcFeatureFlags;->isCarkitSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportVzwSoftwareUpdate(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 276
    if-nez p0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v1

    .line 280
    :cond_1
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcProjectFlags;->isV0001:Z

    if-eqz v2, :cond_0

    .line 285
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.redbend.vdmc"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    const/4 v1, 0x1

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

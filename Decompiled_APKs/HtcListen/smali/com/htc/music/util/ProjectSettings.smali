.class public Lcom/htc/music/util/ProjectSettings;
.super Ljava/lang/Object;
.source "ProjectSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[ProjectSettings]"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnableDLNA(Landroid/content/Context;)Z
    .locals 3

    const v1, 0x7f07021d

    invoke-static {p0, v1}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x62

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0x42

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0x5b

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableDrmWarning(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f07021b

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getEnableEnhancer(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    const v2, 0x7f07021e

    invoke-static {p0, v2}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEnableExpList(Landroid/content/Context;)Z
    .locals 3

    const v1, 0x7f070219

    invoke-static {p0, v1}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0xa8

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0x9b

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0x94

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableFfRw(Landroid/content/Context;)Z
    .locals 1

    const v0, 0x7f07021a

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableLandscapeHorizontalSDError(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    const v2, 0x7f07021f

    invoke-static {p0, v2}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEnablePlugin(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableUseAsNotificationRingtone(Landroid/content/Context;)Z
    .locals 1

    const v0, 0x7f070218

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnalbeShow3PratyTabsInFirst(Landroid/content/Context;)Z
    .locals 1

    const v0, 0x7f07021c

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIntValue(Landroid/content/Context;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getMaxRingtoneSize(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f070217

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getProjectName(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f070216

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static isSrsAsDefaultSoundEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

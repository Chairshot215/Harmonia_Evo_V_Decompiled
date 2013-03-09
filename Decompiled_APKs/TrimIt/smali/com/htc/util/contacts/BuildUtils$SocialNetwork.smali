.class public final Lcom/htc/util/contacts/BuildUtils$SocialNetwork;
.super Ljava/lang/Object;
.source "BuildUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/BuildUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SocialNetwork"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFacebookEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 591
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 593
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v0

    .line 598
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFlickrEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 604
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 606
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x71

    if-ne v1, v2, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v0

    .line 611
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSocialNetworkEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 578
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x70

    if-ne v2, v3, :cond_1

    .line 587
    :cond_0
    :goto_0
    return v0

    .line 582
    :cond_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v2, v1, :cond_2

    .line 583
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 587
    goto :goto_0
.end method

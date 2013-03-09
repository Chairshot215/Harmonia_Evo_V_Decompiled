.class public final Lcom/android/providers/contacts/HtcUtils/BuildUtils;
.super Ljava/lang/Object;
.source "BuildUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HtcUtils/BuildUtils$DefaultContact;,
        Lcom/android/providers/contacts/HtcUtils/BuildUtils$SocialNetwork;,
        Lcom/android/providers/contacts/HtcUtils/BuildUtils$OpenSense;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static final isDebug()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public static isSIMSDNEnabled()Z
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v0

    return v0
.end method

.method public static isSKTOrKorea()Z
    .locals 2

    .prologue
    .line 49
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public final Lcom/android/providers/contacts/HtcUtils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HtcUtils/Constants$DefaultContact;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME_SIM_SDN:Ljava/lang/String; = "SIM_SDN"

.field public static final EXT_ACCOUNT_NAME:Ljava/lang/String; = "ext_account_name"

.field public static final IsMessagePickerGroupPriorOrder:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IsSIMSDNEnabled:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IsSKTOrKorea:Z = false

.field public static final PERFORMANCE_TAG:Ljava/lang/String; = "ContactsPerf"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    .line 40
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSKTOrKorea:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

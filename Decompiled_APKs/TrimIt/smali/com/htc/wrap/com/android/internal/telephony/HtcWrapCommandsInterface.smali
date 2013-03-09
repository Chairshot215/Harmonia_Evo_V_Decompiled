.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface;
.super Ljava/lang/Object;
.source "HtcWrapCommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;,
        Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;
    }
.end annotation


# static fields
.field public static final APP_INIT:I = 0x3

.field public static final CF_ACTION_DISABLE:I = 0x0

.field public static final CF_ACTION_ENABLE:I = 0x1

.field public static final CF_ACTION_ERASURE:I = 0x4

.field public static final CF_ACTION_REGISTRATION:I = 0x3

.field public static final CF_REASON_ALL:I = 0x4

.field public static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field public static final CF_REASON_BUSY:I = 0x1

.field public static final CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final CF_REASON_NO_REPLY:I = 0x2

.field public static final CF_REASON_UNCONDITIONAL:I = 0x0

.field public static final CLIR_DEFAULT:I = 0x0

.field public static final CLIR_INVOCATION:I = 0x1

.field public static final CLIR_SUPPRESSION:I = 0x2

.field public static final FACILITY_BAIC:I = 0x3

.field public static final FACILITY_BAICr:I = 0x4

.field public static final FACILITY_BAOC:I = 0x0

.field public static final FACILITY_BAOIC:I = 0x1

.field public static final FACILITY_BAOICxH:I = 0x2

.field public static final FACILITY_BA_ALL:I = 0x5

.field public static final FACILITY_BA_FD:I = 0x9

.field public static final FACILITY_BA_MO:I = 0x6

.field public static final FACILITY_BA_MT:I = 0x7

.field public static final FACILITY_BA_SIM:I = 0x8

.field public static final SERVICE_CLASS_DATA:I = 0x2

.field public static final SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field public static final SERVICE_CLASS_DATA_SYNC:I = 0x10

.field public static final SERVICE_CLASS_FAX:I = 0x4

.field public static final SERVICE_CLASS_MAX:I = 0x80

.field public static final SERVICE_CLASS_NONE:I = 0x0

.field public static final SERVICE_CLASS_PACKET:I = 0x40

.field public static final SERVICE_CLASS_PAD:I = 0x80

.field public static final SERVICE_CLASS_SMS:I = 0x8

.field public static final SERVICE_CLASS_VOICE:I = 0x1

.field public static final SIM_REFRESH_FILE_UPDATED:I = 0x0

.field public static final SIM_REFRESH_INIT:I = 0x1

.field public static final SIM_REFRESH_RESET:I = 0x2

.field public static final USSD_MODE_TERMINATED_BY_NETWORK:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static isSimTypes(Lcom/android/internal/telephony/CommandsInterface$SimTypes;Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;)Z
    .locals 4
    .parameter "simTypes"
    .parameter "htcWrapSimtypes"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandsInterface$SimTypes:[I

    invoke-virtual {p1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 38
    :pswitch_0
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_NO_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 41
    goto :goto_0

    .line 43
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 46
    goto :goto_0

    .line 48
    :pswitch_2
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 51
    goto :goto_0

    .line 53
    :pswitch_3
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_TITAN_LITE_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 56
    goto :goto_0

    .line 58
    :pswitch_4
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_DBDM_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 61
    goto :goto_0

    .line 63
    :pswitch_5
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_WIBRO_ONLY_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :pswitch_6
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_SIM_FAIL:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 71
    goto :goto_0

    .line 73
    :pswitch_7
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_RUIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 76
    goto :goto_0

    .line 78
    :pswitch_8
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_DUAL_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 81
    goto :goto_0

    .line 83
    :pswitch_9
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_TESTSIM_2G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 86
    goto :goto_0

    .line 88
    :pswitch_a
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_TESTSIM_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 91
    goto :goto_0

    .line 36
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
    .end packed-switch
.end method

.method public static isSimTypesObj(Ljava/lang/Object;Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;)Z
    .locals 2
    .parameter "result"
    .parameter "htcWrapSimtypes"

    .prologue
    .line 27
    instance-of v1, p0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 28
    check-cast v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 29
    .local v0, simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    invoke-static {v0, p1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface;->isSimTypes(Lcom/android/internal/telephony/CommandsInterface$SimTypes;Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;)Z

    move-result v1

    .line 31
    .end local v0           #simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestGetSectorID(Lcom/android/internal/telephony/CommandsInterface;ILandroid/os/Message;)V
    .locals 0
    .parameter "instance"
    .parameter "status"
    .parameter "response"

    .prologue
    .line 161
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestGetSectorID(ILandroid/os/Message;)V

    .line 162
    return-void
.end method

.method public static requestHtcDmCommandEx(Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "instance"
    .parameter "DmString"
    .parameter "modem_id"
    .parameter "response"

    .prologue
    .line 170
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    .line 171
    return-void
.end method

.method public static requestQueryQmiUimAuth(Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "instance"
    .parameter "aid"
    .parameter "path"
    .parameter "context"
    .parameter "data"
    .parameter "response"

    .prologue
    .line 156
    invoke-interface/range {p0 .. p5}, Lcom/android/internal/telephony/CommandsInterface;->requestQueryQmiUimAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 157
    return-void
.end method

.method public static requestSetFastDormancy(Lcom/android/internal/telephony/CommandsInterface;IILandroid/os/Message;)V
    .locals 0
    .parameter "instance"
    .parameter "module"
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 175
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->requestSetFastDormancy(IILandroid/os/Message;)V

    .line 176
    return-void
.end method

.method public static requestSetMultiRABTrafficThrottling(Lcom/android/internal/telephony/CommandsInterface;IILandroid/os/Message;)V
    .locals 0
    .parameter "instance"
    .parameter "module"
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 166
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->requestSetMultiRABTrafficThrottling(IILandroid/os/Message;)V

    .line 167
    return-void
.end method

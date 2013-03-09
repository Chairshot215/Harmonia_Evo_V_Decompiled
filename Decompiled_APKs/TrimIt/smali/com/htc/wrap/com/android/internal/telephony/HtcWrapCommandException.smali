.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException;
.super Ljava/lang/Object;
.source "HtcWrapCommandException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$1;,
        Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static isCommandExceptionError(Lcom/android/internal/telephony/CommandException$Error;Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;)Z
    .locals 4
    .parameter "cee"
    .parameter "htcWrapError"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandException$Error:[I

    invoke-virtual {p1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 40
    :pswitch_0
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 43
    goto :goto_0

    .line 45
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 48
    goto :goto_0

    .line 50
    :pswitch_2
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 53
    goto :goto_0

    .line 55
    :pswitch_3
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 58
    goto :goto_0

    .line 60
    :pswitch_4
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 63
    goto :goto_0

    .line 65
    :pswitch_5
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 68
    goto :goto_0

    .line 70
    :pswitch_6
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 73
    goto :goto_0

    .line 75
    :pswitch_7
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 78
    goto :goto_0

    .line 80
    :pswitch_8
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :pswitch_9
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 88
    goto :goto_0

    .line 90
    :pswitch_a
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :pswitch_b
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 98
    goto :goto_0

    .line 100
    :pswitch_c
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->MODE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 103
    goto :goto_0

    .line 105
    :pswitch_d
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :pswitch_e
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :pswitch_f
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 118
    goto :goto_0

    .line 120
    :pswitch_10
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 123
    goto :goto_0

    .line 125
    :pswitch_11
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_FAIL:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 128
    goto :goto_0

    .line 130
    :pswitch_12
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_FDN:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 133
    goto :goto_0

    .line 135
    :pswitch_13
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 138
    goto :goto_0

    .line 140
    :pswitch_14
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PW_REGISTRATION_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 143
    goto :goto_0

    .line 145
    :pswitch_15
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->NEGATIVE_PW_CHECK:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 148
    goto/16 :goto_0

    .line 150
    :pswitch_16
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->NUM_OF_PW_ATTEMPTS_VIOLATION:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 153
    goto/16 :goto_0

    .line 155
    :pswitch_17
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_CB:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 158
    goto/16 :goto_0

    .line 160
    :pswitch_18
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->FDN_NOT_SUPPORT:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 163
    goto/16 :goto_0

    .line 165
    :pswitch_19
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->NW_SCAN_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 168
    goto/16 :goto_0

    .line 170
    :pswitch_1a
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SETUP_DATA_CALL_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 173
    goto/16 :goto_0

    .line 38
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
    .end packed-switch
.end method

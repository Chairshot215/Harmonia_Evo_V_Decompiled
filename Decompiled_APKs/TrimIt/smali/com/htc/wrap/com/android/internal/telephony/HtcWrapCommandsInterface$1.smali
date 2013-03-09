.class synthetic Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;
.super Ljava/lang/Object;
.source "HtcWrapCommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandsInterface$SimTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->values()[Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandsInterface$SimTypes:[I

    :try_start_0
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandsInterface$SimTypes:[I

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->RIL_NO_SIM_CARD:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;

    invoke-virtual {v1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandsInterface$SimTypes:[I

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->RIL_2G_SIM_CARD:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;

    invoke-virtual {v1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandsInterface$SimTypes:[I

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;

    invoke-virtual {v1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandsInterface$SimTypes:[I

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->RIL_TITAN_LITE_SIM_CARD:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;

    invoke-virtual {v1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandsInterface$SimTypes:[I

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->RIL_DBDM_SIM_CARD:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;

    invoke-virtual {v1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandsInterface$SimTypes:[I

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->RIL_WIBRO_ONLY_SIM_CARD:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;

    invoke-virtual {v1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandsInterface$SimTypes:[I

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->RIL_SIM_FAIL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;

    invoke-virtual {v1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandsInterface$SimTypes:[I

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->RIL_RUIM_CARD:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;

    invoke-virtual {v1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandsInterface$SimTypes:[I

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->RIL_DUAL_CARD:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;

    invoke-virtual {v1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandsInterface$SimTypes:[I

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->RIL_TESTSIM_2G_SIM_CARD:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;

    invoke-virtual {v1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandsInterface$SimTypes:[I

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->RIL_TESTSIM_3G_SIM_CARD:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;

    invoke-virtual {v1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandsInterface$SimTypes;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method

.class synthetic Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;
.super Ljava/lang/Object;
.source "AddCarrierBillingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$AddCarrierBillingFragment$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 129
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->values()[Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$AddCarrierBillingFragment$Type:[I

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$AddCarrierBillingFragment$Type:[I

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$AddCarrierBillingFragment$Type:[I

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ADDRESS_SNIPPET_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$AddCarrierBillingFragment$Type:[I

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$AddCarrierBillingFragment$Type:[I

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->FULL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$AddCarrierBillingFragment$Type:[I

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->MINIMAL_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$AddCarrierBillingFragment$Type:[I

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->MINIMAL_ADDRESS_AND_TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$AddCarrierBillingFragment$Type:[I

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->TOS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method

.class final enum Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;
.super Ljava/lang/Enum;
.source "CreateCarrierBillingFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

.field public static final enum DONE:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

.field public static final enum INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

.field public static final enum SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

.field public static final enum SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

.field public static final enum SHOWING_TOS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

.field public static final enum SHOWING_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 98
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    const-string v1, "SHOWING_TOS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_TOS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 99
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    const-string v1, "SHOWING_TOS_AND_USERINFO"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 100
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    const-string v1, "SHOWING_EDIT_USERINFO"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 101
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    const-string v1, "SENDING_REQUEST"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 102
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    const-string v1, "DONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->DONE:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_TOS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->DONE:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;
    .locals 1
    .parameter

    .prologue
    .line 96
    const-class v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$State;

    return-object v0
.end method

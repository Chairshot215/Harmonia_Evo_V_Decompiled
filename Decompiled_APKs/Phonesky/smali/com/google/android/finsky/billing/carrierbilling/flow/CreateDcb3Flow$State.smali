.class final enum Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;
.super Ljava/lang/Enum;
.source "CreateDcb3Flow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

.field public static final enum ASSOCIATING_PIN:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

.field public static final enum DONE:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

.field public static final enum INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

.field public static final enum SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

.field public static final enum SHOWING_DCB_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

.field public static final enum SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

.field public static final enum SHOWING_PII_TOS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 94
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    const-string v1, "SHOWING_PII_TOS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_PII_TOS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 95
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    const-string v1, "ASSOCIATING_PIN"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->ASSOCIATING_PIN:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 96
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    const-string v1, "SHOWING_EDIT_USERINFO"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 97
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    const-string v1, "SHOWING_DCB_TOS_AND_USERINFO"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_DCB_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 98
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    const-string v1, "SENDING_REQUEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 99
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    const-string v1, "DONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->DONE:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    .line 92
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->INIT:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_PII_TOS:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->ASSOCIATING_PIN:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_EDIT_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SHOWING_DCB_TOS_AND_USERINFO:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->DONE:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;
    .locals 1
    .parameter

    .prologue
    .line 92
    const-class v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow$State;

    return-object v0
.end method

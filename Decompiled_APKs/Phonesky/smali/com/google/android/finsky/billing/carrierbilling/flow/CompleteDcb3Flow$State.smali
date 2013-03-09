.class public final enum Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;
.super Ljava/lang/Enum;
.source "CompleteDcb3Flow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

.field public static final enum CHECK_DCB_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

.field public static final enum CHECK_INSTRUMENT_STATUS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

.field public static final enum PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

.field public static final enum SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    const-string v1, "CHECK_INSTRUMENT_STATUS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_INSTRUMENT_STATUS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 65
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    const-string v1, "CHECK_DCB_TOS_VERSION"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_DCB_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 67
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    const-string v1, "PASSWORD_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 69
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    const-string v1, "SENDING_REQUEST"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_INSTRUMENT_STATUS:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->CHECK_DCB_TOS_VERSION:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->PASSWORD_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->SENDING_REQUEST:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;
    .locals 1
    .parameter

    .prologue
    .line 60
    const-class v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->$VALUES:[Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$State;

    return-object v0
.end method

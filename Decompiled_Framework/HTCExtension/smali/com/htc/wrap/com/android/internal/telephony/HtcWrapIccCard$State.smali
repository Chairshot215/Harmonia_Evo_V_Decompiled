.class public final enum Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;
.super Ljava/lang/Enum;
.source "HtcWrapIccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

.field public static final enum ABSENT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

.field public static final enum ICC_EXPIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

.field public static final enum ICC_FAIL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

.field public static final enum IMEI_LOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

.field public static final enum NETWORK_LOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

.field public static final enum NOT_READY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

.field public static final enum PIN_REQUIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

.field public static final enum PUK_PERM_BLOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

.field public static final enum PUK_REQUIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

.field public static final enum READY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

.field public static final enum UNKNOWN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->UNKNOWN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    const-string v1, "ABSENT"

    invoke-direct {v0, v1, v4}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ABSENT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    const-string v1, "PIN_REQUIRED"

    invoke-direct {v0, v1, v5}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PIN_REQUIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    const-string v1, "PUK_REQUIRED"

    invoke-direct {v0, v1, v6}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PUK_REQUIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    const-string v1, "NETWORK_LOCKED"

    invoke-direct {v0, v1, v7}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->NETWORK_LOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    const-string v1, "READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->READY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    const-string v1, "NOT_READY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->NOT_READY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    const-string v1, "ICC_FAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ICC_FAIL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    const-string v1, "IMEI_LOCKED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->IMEI_LOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    const-string v1, "ICC_EXPIRED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ICC_EXPIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    const-string v1, "PUK_PERM_BLOCKED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PUK_PERM_BLOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->UNKNOWN:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ABSENT:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PIN_REQUIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PUK_REQUIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->NETWORK_LOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->READY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->NOT_READY:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ICC_FAIL:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->IMEI_LOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->ICC_EXPIRED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->PUK_PERM_BLOCKED:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->$VALUES:[Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;
    .locals 1

    const-class v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    return-object v0
.end method

.method public static values()[Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;
    .locals 1

    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->$VALUES:[Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    invoke-virtual {v0}, [Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccCard$State;

    return-object v0
.end method

.class public final enum Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
.super Ljava/lang/Enum;
.source "HtcSimCardAuthenticationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

.field public static final enum INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

.field public static final enum INVALID_SIM_TYPE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

.field public static final enum NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

.field public static final enum SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

.field public static final enum SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

.field public static final enum USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    const-string v1, "INVALID_SIM_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_SIM_TYPE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    const-string v1, "INVALID_RAND"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    const-string v1, "SERVICE_FAILURE"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    const-string v1, "USER_AUTHENTICATION_REJECTED"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    const-string v1, "NO_SUCH_AUTHENTICATION"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    const-string v1, "SYNC_FAILURE_EXCEPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    sget-object v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_SIM_TYPE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->$VALUES:[Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->$VALUES:[Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    return-object v0
.end method

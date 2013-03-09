.class public final enum Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;
.super Ljava/lang/Enum;
.source "FourGInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/FourGInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LINK_STATE_REASON"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field public static final enum LINK_ST_REASON_FAILURE_3WAY_HANDSHAKE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field public static final enum LINK_ST_REASON_FAILURE_DEREGISTRATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field public static final enum LINK_ST_REASON_FAILURE_DISCONNECT_CALLED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field public static final enum LINK_ST_REASON_FAILURE_EAP_AUTHENTICATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field public static final enum LINK_ST_REASON_FAILURE_NO_COVERAGE_AVAILABLE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field public static final enum LINK_ST_REASON_FAILURE_NW_CONNECTION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field public static final enum LINK_ST_REASON_FAILURE_PROVISIONING_DATA_ERROR:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field public static final enum LINK_ST_REASON_FAILURE_RADIO_OFF:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field public static final enum LINK_ST_REASON_FAILURE_RADIO_POLICY_VIOLATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field public static final enum LINK_ST_REASON_FAILURE_RANGING:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field public static final enum LINK_ST_REASON_FAILURE_REGISTRATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field public static final enum LINK_ST_REASON_FAILURE_ROAMING_NOT_ALLOWED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field public static final enum LINK_ST_REASON_FAILURE_SIGNAL_LOSS:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field public static final enum LINK_ST_REASON_FAILURE_UNKNOWN_CAUSE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const-string v1, "LINK_ST_REASON_FAILURE_NW_CONNECTION"

    invoke-direct {v0, v1, v3}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_NW_CONNECTION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const-string v1, "LINK_ST_REASON_FAILURE_RANGING"

    invoke-direct {v0, v1, v4}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_RANGING:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const-string v1, "LINK_ST_REASON_FAILURE_EAP_AUTHENTICATION"

    invoke-direct {v0, v1, v5}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_EAP_AUTHENTICATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const-string v1, "LINK_ST_REASON_FAILURE_3WAY_HANDSHAKE"

    invoke-direct {v0, v1, v6}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_3WAY_HANDSHAKE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const-string v1, "LINK_ST_REASON_FAILURE_REGISTRATION"

    invoke-direct {v0, v1, v7}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_REGISTRATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const-string v1, "LINK_ST_REASON_FAILURE_DEREGISTRATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_DEREGISTRATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const-string v1, "LINK_ST_REASON_FAILURE_NO_COVERAGE_AVAILABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_NO_COVERAGE_AVAILABLE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const-string v1, "LINK_ST_REASON_FAILURE_ROAMING_NOT_ALLOWED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_ROAMING_NOT_ALLOWED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const-string v1, "LINK_ST_REASON_FAILURE_PROVISIONING_DATA_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_PROVISIONING_DATA_ERROR:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const-string v1, "LINK_ST_REASON_FAILURE_RADIO_POLICY_VIOLATION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_RADIO_POLICY_VIOLATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const-string v1, "LINK_ST_REASON_FAILURE_RADIO_OFF"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_RADIO_OFF:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const-string v1, "LINK_ST_REASON_FAILURE_SIGNAL_LOSS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_SIGNAL_LOSS:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const-string v1, "LINK_ST_REASON_FAILURE_DISCONNECT_CALLED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_DISCONNECT_CALLED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    new-instance v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const-string v1, "LINK_ST_REASON_FAILURE_UNKNOWN_CAUSE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_UNKNOWN_CAUSE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    sget-object v1, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_NW_CONNECTION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_RANGING:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_EAP_AUTHENTICATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_3WAY_HANDSHAKE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_REGISTRATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_DEREGISTRATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_NO_COVERAGE_AVAILABLE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_ROAMING_NOT_ALLOWED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_PROVISIONING_DATA_ERROR:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_RADIO_POLICY_VIOLATION:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_RADIO_OFF:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_SIGNAL_LOSS:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_DISCONNECT_CALLED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_UNKNOWN_CAUSE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->$VALUES:[Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;
    .locals 1

    const-class v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    return-object v0
.end method

.method public static values()[Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;
    .locals 1

    sget-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->$VALUES:[Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    invoke-virtual {v0}, [Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    return-object v0
.end method

.class public final enum Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;
.super Ljava/lang/Enum;
.source "WimaxQosServiceFlowDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eWIMAX_SF_QOS_PARAM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

.field public static final enum SF_QOS_PARAM_MAX_RSVD_TRAFFIC_RATE:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

.field public static final enum SF_QOS_PARAM_MIN_RSVD_TRAFFIC_RATE:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

.field public static final enum SF_QOS_PARAM_REQ_XMT_POLICY:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

.field public static final enum SF_QOS_PARAM_TOLERATED_JITTER:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

.field public static final enum SF_QOS_PARAM_TRAFFIC_PRIORITY:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

.field public static final enum SF_QOS_PARAM_UNSOLICIT_GRANT_INTERVAL:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

.field public static final enum SF_QOS_PARAM_UNSOLICIT_POLL_INTERVAL:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    const-string v1, "SF_QOS_PARAM_TOLERATED_JITTER"

    invoke-direct {v0, v1, v3}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->SF_QOS_PARAM_TOLERATED_JITTER:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    new-instance v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    const-string v1, "SF_QOS_PARAM_MIN_RSVD_TRAFFIC_RATE"

    invoke-direct {v0, v1, v4}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->SF_QOS_PARAM_MIN_RSVD_TRAFFIC_RATE:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    new-instance v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    const-string v1, "SF_QOS_PARAM_MAX_RSVD_TRAFFIC_RATE"

    invoke-direct {v0, v1, v5}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->SF_QOS_PARAM_MAX_RSVD_TRAFFIC_RATE:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    new-instance v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    const-string v1, "SF_QOS_PARAM_TRAFFIC_PRIORITY"

    invoke-direct {v0, v1, v6}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->SF_QOS_PARAM_TRAFFIC_PRIORITY:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    new-instance v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    const-string v1, "SF_QOS_PARAM_REQ_XMT_POLICY"

    invoke-direct {v0, v1, v7}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->SF_QOS_PARAM_REQ_XMT_POLICY:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    new-instance v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    const-string v1, "SF_QOS_PARAM_UNSOLICIT_POLL_INTERVAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->SF_QOS_PARAM_UNSOLICIT_POLL_INTERVAL:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    new-instance v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    const-string v1, "SF_QOS_PARAM_UNSOLICIT_GRANT_INTERVAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->SF_QOS_PARAM_UNSOLICIT_GRANT_INTERVAL:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    sget-object v1, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->SF_QOS_PARAM_TOLERATED_JITTER:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->SF_QOS_PARAM_MIN_RSVD_TRAFFIC_RATE:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->SF_QOS_PARAM_MAX_RSVD_TRAFFIC_RATE:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->SF_QOS_PARAM_TRAFFIC_PRIORITY:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->SF_QOS_PARAM_REQ_XMT_POLICY:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->SF_QOS_PARAM_UNSOLICIT_POLL_INTERVAL:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->SF_QOS_PARAM_UNSOLICIT_GRANT_INTERVAL:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->$VALUES:[Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;
    .locals 1

    const-class v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    return-object v0
.end method

.method public static values()[Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;
    .locals 1

    sget-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->$VALUES:[Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    invoke-virtual {v0}, [Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_QOS_PARAM;

    return-object v0
.end method

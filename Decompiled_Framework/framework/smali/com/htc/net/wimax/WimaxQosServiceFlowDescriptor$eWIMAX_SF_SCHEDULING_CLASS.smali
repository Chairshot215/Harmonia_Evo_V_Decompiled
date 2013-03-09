.class public final enum Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;
.super Ljava/lang/Enum;
.source "WimaxQosServiceFlowDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eWIMAX_SF_SCHEDULING_CLASS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

.field public static final enum WIMAX_SF_SCHEDULING_CLASS_BE:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

.field public static final enum WIMAX_SF_SCHEDULING_CLASS_UGS:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

.field public static final enum WIMAX_SF_SCHEDULING_CLASS_ertPS:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

.field public static final enum WIMAX_SF_SCHEDULING_CLASS_nrtPS:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

.field public static final enum WIMAX_SF_SCHEDULING_CLASS_rtPS:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    const-string v1, "WIMAX_SF_SCHEDULING_CLASS_UGS"

    invoke-direct {v0, v1, v2}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->WIMAX_SF_SCHEDULING_CLASS_UGS:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    new-instance v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    const-string v1, "WIMAX_SF_SCHEDULING_CLASS_rtPS"

    invoke-direct {v0, v1, v3}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->WIMAX_SF_SCHEDULING_CLASS_rtPS:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    new-instance v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    const-string v1, "WIMAX_SF_SCHEDULING_CLASS_nrtPS"

    invoke-direct {v0, v1, v4}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->WIMAX_SF_SCHEDULING_CLASS_nrtPS:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    new-instance v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    const-string v1, "WIMAX_SF_SCHEDULING_CLASS_BE"

    invoke-direct {v0, v1, v5}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->WIMAX_SF_SCHEDULING_CLASS_BE:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    new-instance v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    const-string v1, "WIMAX_SF_SCHEDULING_CLASS_ertPS"

    invoke-direct {v0, v1, v6}, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->WIMAX_SF_SCHEDULING_CLASS_ertPS:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    sget-object v1, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->WIMAX_SF_SCHEDULING_CLASS_UGS:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->WIMAX_SF_SCHEDULING_CLASS_rtPS:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->WIMAX_SF_SCHEDULING_CLASS_nrtPS:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->WIMAX_SF_SCHEDULING_CLASS_BE:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->WIMAX_SF_SCHEDULING_CLASS_ertPS:Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->$VALUES:[Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;
    .locals 1

    const-class v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    return-object v0
.end method

.method public static values()[Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;
    .locals 1

    sget-object v0, Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->$VALUES:[Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    invoke-virtual {v0}, [Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/net/wimax/WimaxQosServiceFlowDescriptor$eWIMAX_SF_SCHEDULING_CLASS;

    return-object v0
.end method

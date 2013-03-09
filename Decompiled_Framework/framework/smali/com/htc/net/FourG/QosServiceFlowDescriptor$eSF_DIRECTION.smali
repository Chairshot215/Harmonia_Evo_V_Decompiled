.class public final enum Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;
.super Ljava/lang/Enum;
.source "QosServiceFlowDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/QosServiceFlowDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eSF_DIRECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

.field public static final enum SF_DIRECTION_DOWNLINK:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

.field public static final enum SF_DIRECTION_UPLINK:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    const-string v1, "SF_DIRECTION_UPLINK"

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->SF_DIRECTION_UPLINK:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    const-string v1, "SF_DIRECTION_DOWNLINK"

    invoke-direct {v0, v1, v3}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->SF_DIRECTION_DOWNLINK:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    sget-object v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->SF_DIRECTION_UPLINK:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->SF_DIRECTION_DOWNLINK:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->$VALUES:[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;
    .locals 1

    const-class v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    return-object v0
.end method

.method public static values()[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;
    .locals 1

    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->$VALUES:[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    invoke-virtual {v0}, [Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    return-object v0
.end method

.class public final enum Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;
.super Ljava/lang/Enum;
.source "QosServiceFlowDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/QosServiceFlowDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eSF_ORIGIN"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

.field public static final enum SF_ORIGIN_BS_PREALLOCATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

.field public static final enum SF_ORIGIN_MS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    const-string v1, "SF_ORIGIN_BS_PREALLOCATED"

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->SF_ORIGIN_BS_PREALLOCATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    const-string v1, "SF_ORIGIN_MS_INITIATED"

    invoke-direct {v0, v1, v3}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->SF_ORIGIN_MS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    sget-object v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->SF_ORIGIN_BS_PREALLOCATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->SF_ORIGIN_MS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->$VALUES:[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;
    .locals 1

    const-class v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    return-object v0
.end method

.method public static values()[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;
    .locals 1

    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->$VALUES:[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    invoke-virtual {v0}, [Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    return-object v0
.end method

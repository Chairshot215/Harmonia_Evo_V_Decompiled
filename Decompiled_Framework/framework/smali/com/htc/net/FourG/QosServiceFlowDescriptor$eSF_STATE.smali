.class public final enum Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;
.super Ljava/lang/Enum;
.source "QosServiceFlowDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/QosServiceFlowDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eSF_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

.field public static final enum SF_STATE_BS_ADMITTED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

.field public static final enum SF_STATE_CREATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

.field public static final enum SF_STATE_INITATION_FAILURE:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

.field public static final enum SF_STATE_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

.field public static final enum SF_STATE_LOCAL_NEW_DESC:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

.field public static final enum SF_STATE_NOT_AVAILABLE:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

.field public static final enum SF_STATE_NOT_SUBSCRIBED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

.field public static final enum SF_STATE_PAUSED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

.field public static final enum SF_STATE_RELEASED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

.field public static final enum SF_STATE_TERMINATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    const-string v1, "SF_STATE_LOCAL_NEW_DESC"

    invoke-direct {v0, v1, v3}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_LOCAL_NEW_DESC:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    const-string v1, "SF_STATE_CREATED"

    invoke-direct {v0, v1, v4}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_CREATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    const-string v1, "SF_STATE_BS_ADMITTED"

    invoke-direct {v0, v1, v5}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_BS_ADMITTED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    const-string v1, "SF_STATE_NOT_AVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_NOT_AVAILABLE:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    const-string v1, "SF_STATE_NOT_SUBSCRIBED"

    invoke-direct {v0, v1, v7}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_NOT_SUBSCRIBED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    const-string v1, "SF_STATE_INITIATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    const-string v1, "SF_STATE_INITATION_FAILURE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_INITATION_FAILURE:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    const-string v1, "SF_STATE_PAUSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_PAUSED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    const-string v1, "SF_STATE_TERMINATED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_TERMINATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    const-string v1, "SF_STATE_RELEASED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_RELEASED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    sget-object v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_LOCAL_NEW_DESC:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_CREATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_BS_ADMITTED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_NOT_AVAILABLE:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_NOT_SUBSCRIBED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_INITATION_FAILURE:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_PAUSED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_TERMINATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_RELEASED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->$VALUES:[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;
    .locals 1

    const-class v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    return-object v0
.end method

.method public static values()[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;
    .locals 1

    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->$VALUES:[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    invoke-virtual {v0}, [Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    return-object v0
.end method

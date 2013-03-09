.class public final enum Lcom/htc/net/FourG/FourGSupplicantState;
.super Ljava/lang/Enum;
.source "FourGSupplicantState.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/net/FourG/FourGSupplicantState;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/net/FourG/FourGSupplicantState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/net/FourG/FourGSupplicantState;

.field public static final enum ASSOCIATED:Lcom/htc/net/FourG/FourGSupplicantState;

.field public static final enum ASSOCIATING:Lcom/htc/net/FourG/FourGSupplicantState;

.field public static final enum COMPLETED:Lcom/htc/net/FourG/FourGSupplicantState;

.field public static final enum DISCONNECTED:Lcom/htc/net/FourG/FourGSupplicantState;

.field public static final enum DORMANT:Lcom/htc/net/FourG/FourGSupplicantState;

.field public static final enum HANDSHAKE:Lcom/htc/net/FourG/FourGSupplicantState;

.field public static final enum INACTIVE:Lcom/htc/net/FourG/FourGSupplicantState;

.field public static final enum INVALID:Lcom/htc/net/FourG/FourGSupplicantState;

.field public static final enum SCANNING:Lcom/htc/net/FourG/FourGSupplicantState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/net/FourG/FourGSupplicantState;

    const-string v1, "ASSOCIATED"

    invoke-direct {v0, v1, v3}, Lcom/htc/net/FourG/FourGSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATED:Lcom/htc/net/FourG/FourGSupplicantState;

    new-instance v0, Lcom/htc/net/FourG/FourGSupplicantState;

    const-string v1, "ASSOCIATING"

    invoke-direct {v0, v1, v4}, Lcom/htc/net/FourG/FourGSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATING:Lcom/htc/net/FourG/FourGSupplicantState;

    new-instance v0, Lcom/htc/net/FourG/FourGSupplicantState;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v5}, Lcom/htc/net/FourG/FourGSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->COMPLETED:Lcom/htc/net/FourG/FourGSupplicantState;

    new-instance v0, Lcom/htc/net/FourG/FourGSupplicantState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/htc/net/FourG/FourGSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->DISCONNECTED:Lcom/htc/net/FourG/FourGSupplicantState;

    new-instance v0, Lcom/htc/net/FourG/FourGSupplicantState;

    const-string v1, "DORMANT"

    invoke-direct {v0, v1, v7}, Lcom/htc/net/FourG/FourGSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->DORMANT:Lcom/htc/net/FourG/FourGSupplicantState;

    new-instance v0, Lcom/htc/net/FourG/FourGSupplicantState;

    const-string v1, "HANDSHAKE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->HANDSHAKE:Lcom/htc/net/FourG/FourGSupplicantState;

    new-instance v0, Lcom/htc/net/FourG/FourGSupplicantState;

    const-string v1, "INACTIVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->INACTIVE:Lcom/htc/net/FourG/FourGSupplicantState;

    new-instance v0, Lcom/htc/net/FourG/FourGSupplicantState;

    const-string v1, "INVALID"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->INVALID:Lcom/htc/net/FourG/FourGSupplicantState;

    new-instance v0, Lcom/htc/net/FourG/FourGSupplicantState;

    const-string v1, "SCANNING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGSupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->SCANNING:Lcom/htc/net/FourG/FourGSupplicantState;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATED:Lcom/htc/net/FourG/FourGSupplicantState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATING:Lcom/htc/net/FourG/FourGSupplicantState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->COMPLETED:Lcom/htc/net/FourG/FourGSupplicantState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->DISCONNECTED:Lcom/htc/net/FourG/FourGSupplicantState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->DORMANT:Lcom/htc/net/FourG/FourGSupplicantState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->HANDSHAKE:Lcom/htc/net/FourG/FourGSupplicantState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->INACTIVE:Lcom/htc/net/FourG/FourGSupplicantState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->INVALID:Lcom/htc/net/FourG/FourGSupplicantState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/net/FourG/FourGSupplicantState;->SCANNING:Lcom/htc/net/FourG/FourGSupplicantState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->$VALUES:[Lcom/htc/net/FourG/FourGSupplicantState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGSupplicantState;
    .locals 1

    const-class v0, Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/net/FourG/FourGSupplicantState;

    return-object v0
.end method

.method public static values()[Lcom/htc/net/FourG/FourGSupplicantState;
    .locals 1

    sget-object v0, Lcom/htc/net/FourG/FourGSupplicantState;->$VALUES:[Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-virtual {v0}, [Lcom/htc/net/FourG/FourGSupplicantState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/net/FourG/FourGSupplicantState;

    return-object v0
.end method

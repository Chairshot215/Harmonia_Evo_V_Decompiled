.class public final enum Lcom/sprint/dsa/StateManager$dsaBackgroundState;
.super Ljava/lang/Enum;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "dsaBackgroundState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/dsa/StateManager$dsaBackgroundState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DSA_IDEAL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

.field public static final enum DSA_LOADING_RESOURCE:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

.field public static final enum DSA_LOADING_URL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

.field public static final enum DSA_NETWORK_NOT_AVAILABLE:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

.field public static final enum DSA_READING_SYSPROPS:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

.field public static final enum DSA_WRITING_SYSPROPS:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

.field private static final synthetic ENUM$VALUES:[Lcom/sprint/dsa/StateManager$dsaBackgroundState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    const-string v1, "DSA_IDEAL"

    invoke-direct {v0, v1, v3}, Lcom/sprint/dsa/StateManager$dsaBackgroundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_IDEAL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    const-string v1, "DSA_LOADING_URL"

    invoke-direct {v0, v1, v4}, Lcom/sprint/dsa/StateManager$dsaBackgroundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_LOADING_URL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    const-string v1, "DSA_LOADING_RESOURCE"

    invoke-direct {v0, v1, v5}, Lcom/sprint/dsa/StateManager$dsaBackgroundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_LOADING_RESOURCE:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    const-string v1, "DSA_READING_SYSPROPS"

    invoke-direct {v0, v1, v6}, Lcom/sprint/dsa/StateManager$dsaBackgroundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_READING_SYSPROPS:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    const-string v1, "DSA_WRITING_SYSPROPS"

    invoke-direct {v0, v1, v7}, Lcom/sprint/dsa/StateManager$dsaBackgroundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_WRITING_SYSPROPS:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    const-string v1, "DSA_NETWORK_NOT_AVAILABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sprint/dsa/StateManager$dsaBackgroundState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_NETWORK_NOT_AVAILABLE:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_IDEAL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_LOADING_URL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_LOADING_RESOURCE:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_READING_SYSPROPS:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_WRITING_SYSPROPS:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_NETWORK_NOT_AVAILABLE:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->ENUM$VALUES:[Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/dsa/StateManager$dsaBackgroundState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    return-object v0
.end method

.method public static values()[Lcom/sprint/dsa/StateManager$dsaBackgroundState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->ENUM$VALUES:[Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    array-length v1, v0

    new-array v2, v1, [Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

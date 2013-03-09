.class public final enum Lcom/sprint/dsa/StateManager$dsaUIState;
.super Ljava/lang/Enum;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "dsaUIState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/dsa/StateManager$dsaUIState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DSA_CONFIG_CHANGED:Lcom/sprint/dsa/StateManager$dsaUIState;

.field public static final enum DSA_CREATE:Lcom/sprint/dsa/StateManager$dsaUIState;

.field public static final enum DSA_DONE:Lcom/sprint/dsa/StateManager$dsaUIState;

.field public static final enum DSA_GOT_USER_ACTION:Lcom/sprint/dsa/StateManager$dsaUIState;

.field public static final enum DSA_INIT:Lcom/sprint/dsa/StateManager$dsaUIState;

.field public static final enum DSA_PAUSSED:Lcom/sprint/dsa/StateManager$dsaUIState;

.field public static final enum DSA_PROCESS_WEB_RESPONSE:Lcom/sprint/dsa/StateManager$dsaUIState;

.field public static final enum DSA_RESTART:Lcom/sprint/dsa/StateManager$dsaUIState;

.field public static final enum DSA_RESUMED:Lcom/sprint/dsa/StateManager$dsaUIState;

.field public static final enum DSA_START:Lcom/sprint/dsa/StateManager$dsaUIState;

.field public static final enum DSA_WAIT_USER_ACTION:Lcom/sprint/dsa/StateManager$dsaUIState;

.field public static final enum DSA_WAIT_WEB_RESPONSE:Lcom/sprint/dsa/StateManager$dsaUIState;

.field public static final enum DSA_WRITE_COMPLETE:Lcom/sprint/dsa/StateManager$dsaUIState;

.field public static final enum DSA_WRITE_PAYLOAD:Lcom/sprint/dsa/StateManager$dsaUIState;

.field private static final synthetic ENUM$VALUES:[Lcom/sprint/dsa/StateManager$dsaUIState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    const-string v1, "DSA_CREATE"

    invoke-direct {v0, v1, v3}, Lcom/sprint/dsa/StateManager$dsaUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_CREATE:Lcom/sprint/dsa/StateManager$dsaUIState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    const-string v1, "DSA_RESTART"

    invoke-direct {v0, v1, v4}, Lcom/sprint/dsa/StateManager$dsaUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_RESTART:Lcom/sprint/dsa/StateManager$dsaUIState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    const-string v1, "DSA_START"

    invoke-direct {v0, v1, v5}, Lcom/sprint/dsa/StateManager$dsaUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_START:Lcom/sprint/dsa/StateManager$dsaUIState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    const-string v1, "DSA_INIT"

    invoke-direct {v0, v1, v6}, Lcom/sprint/dsa/StateManager$dsaUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_INIT:Lcom/sprint/dsa/StateManager$dsaUIState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    const-string v1, "DSA_WAIT_WEB_RESPONSE"

    invoke-direct {v0, v1, v7}, Lcom/sprint/dsa/StateManager$dsaUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_WAIT_WEB_RESPONSE:Lcom/sprint/dsa/StateManager$dsaUIState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    const-string v1, "DSA_GOT_USER_ACTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sprint/dsa/StateManager$dsaUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_GOT_USER_ACTION:Lcom/sprint/dsa/StateManager$dsaUIState;

    .line 35
    new-instance v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    const-string v1, "DSA_PROCESS_WEB_RESPONSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sprint/dsa/StateManager$dsaUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_PROCESS_WEB_RESPONSE:Lcom/sprint/dsa/StateManager$dsaUIState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    const-string v1, "DSA_WAIT_USER_ACTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sprint/dsa/StateManager$dsaUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_WAIT_USER_ACTION:Lcom/sprint/dsa/StateManager$dsaUIState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    const-string v1, "DSA_WRITE_PAYLOAD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sprint/dsa/StateManager$dsaUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_WRITE_PAYLOAD:Lcom/sprint/dsa/StateManager$dsaUIState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    const-string v1, "DSA_WRITE_COMPLETE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sprint/dsa/StateManager$dsaUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_WRITE_COMPLETE:Lcom/sprint/dsa/StateManager$dsaUIState;

    .line 36
    new-instance v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    const-string v1, "DSA_DONE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sprint/dsa/StateManager$dsaUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/StateManager$dsaUIState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    const-string v1, "DSA_PAUSSED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sprint/dsa/StateManager$dsaUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_PAUSSED:Lcom/sprint/dsa/StateManager$dsaUIState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    const-string v1, "DSA_RESUMED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sprint/dsa/StateManager$dsaUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_RESUMED:Lcom/sprint/dsa/StateManager$dsaUIState;

    new-instance v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    const-string v1, "DSA_CONFIG_CHANGED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sprint/dsa/StateManager$dsaUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_CONFIG_CHANGED:Lcom/sprint/dsa/StateManager$dsaUIState;

    .line 33
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/sprint/dsa/StateManager$dsaUIState;

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_CREATE:Lcom/sprint/dsa/StateManager$dsaUIState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_RESTART:Lcom/sprint/dsa/StateManager$dsaUIState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_START:Lcom/sprint/dsa/StateManager$dsaUIState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_INIT:Lcom/sprint/dsa/StateManager$dsaUIState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_WAIT_WEB_RESPONSE:Lcom/sprint/dsa/StateManager$dsaUIState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_GOT_USER_ACTION:Lcom/sprint/dsa/StateManager$dsaUIState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_PROCESS_WEB_RESPONSE:Lcom/sprint/dsa/StateManager$dsaUIState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_WAIT_USER_ACTION:Lcom/sprint/dsa/StateManager$dsaUIState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_WRITE_PAYLOAD:Lcom/sprint/dsa/StateManager$dsaUIState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_WRITE_COMPLETE:Lcom/sprint/dsa/StateManager$dsaUIState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/StateManager$dsaUIState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_PAUSSED:Lcom/sprint/dsa/StateManager$dsaUIState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_RESUMED:Lcom/sprint/dsa/StateManager$dsaUIState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_CONFIG_CHANGED:Lcom/sprint/dsa/StateManager$dsaUIState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->ENUM$VALUES:[Lcom/sprint/dsa/StateManager$dsaUIState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/dsa/StateManager$dsaUIState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/StateManager$dsaUIState;

    return-object v0
.end method

.method public static values()[Lcom/sprint/dsa/StateManager$dsaUIState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sprint/dsa/StateManager$dsaUIState;->ENUM$VALUES:[Lcom/sprint/dsa/StateManager$dsaUIState;

    array-length v1, v0

    new-array v2, v1, [Lcom/sprint/dsa/StateManager$dsaUIState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

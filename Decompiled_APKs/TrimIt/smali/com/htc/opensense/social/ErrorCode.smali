.class public final enum Lcom/htc/opensense/social/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/opensense/social/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/opensense/social/ErrorCode;

.field public static final enum ACCESS_TOKEN_EXPIRED:Lcom/htc/opensense/social/ErrorCode;

.field public static final enum API_NOTSUPPORTED:Lcom/htc/opensense/social/ErrorCode;

.field public static final enum GENERAL:Lcom/htc/opensense/social/ErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/htc/opensense/social/ErrorCode;

.field public static final enum NOT_LOGIN:Lcom/htc/opensense/social/ErrorCode;

.field public static final enum SERVER_ERROR:Lcom/htc/opensense/social/ErrorCode;

.field public static final enum SERVICE_NOT_AVAILABLE:Lcom/htc/opensense/social/ErrorCode;

.field public static final enum SESSION_ESPIRED:Lcom/htc/opensense/social/ErrorCode;

.field public static final enum UNKNOWN:Lcom/htc/opensense/social/ErrorCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/htc/opensense/social/ErrorCode;

    const-string v1, "GENERAL"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/opensense/social/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense/social/ErrorCode;->GENERAL:Lcom/htc/opensense/social/ErrorCode;

    .line 7
    new-instance v0, Lcom/htc/opensense/social/ErrorCode;

    const-string v1, "API_NOTSUPPORTED"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v5, v2}, Lcom/htc/opensense/social/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense/social/ErrorCode;->API_NOTSUPPORTED:Lcom/htc/opensense/social/ErrorCode;

    .line 9
    new-instance v0, Lcom/htc/opensense/social/ErrorCode;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x3ea

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/opensense/social/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense/social/ErrorCode;->NETWORK_ERROR:Lcom/htc/opensense/social/ErrorCode;

    .line 11
    new-instance v0, Lcom/htc/opensense/social/ErrorCode;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/opensense/social/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense/social/ErrorCode;->SERVICE_NOT_AVAILABLE:Lcom/htc/opensense/social/ErrorCode;

    .line 13
    new-instance v0, Lcom/htc/opensense/social/ErrorCode;

    const-string v1, "SERVER_ERROR"

    const/16 v2, 0x3ed

    invoke-direct {v0, v1, v8, v2}, Lcom/htc/opensense/social/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense/social/ErrorCode;->SERVER_ERROR:Lcom/htc/opensense/social/ErrorCode;

    .line 15
    new-instance v0, Lcom/htc/opensense/social/ErrorCode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    const/16 v3, 0x270f

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/opensense/social/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    .line 17
    new-instance v0, Lcom/htc/opensense/social/ErrorCode;

    const-string v1, "NOT_LOGIN"

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/opensense/social/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense/social/ErrorCode;->NOT_LOGIN:Lcom/htc/opensense/social/ErrorCode;

    .line 19
    new-instance v0, Lcom/htc/opensense/social/ErrorCode;

    const-string v1, "SESSION_ESPIRED"

    const/4 v2, 0x7

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/opensense/social/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense/social/ErrorCode;->SESSION_ESPIRED:Lcom/htc/opensense/social/ErrorCode;

    .line 21
    new-instance v0, Lcom/htc/opensense/social/ErrorCode;

    const-string v1, "ACCESS_TOKEN_EXPIRED"

    const/16 v2, 0x8

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/opensense/social/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/opensense/social/ErrorCode;->ACCESS_TOKEN_EXPIRED:Lcom/htc/opensense/social/ErrorCode;

    .line 3
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/htc/opensense/social/ErrorCode;

    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->GENERAL:Lcom/htc/opensense/social/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->API_NOTSUPPORTED:Lcom/htc/opensense/social/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->NETWORK_ERROR:Lcom/htc/opensense/social/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->SERVICE_NOT_AVAILABLE:Lcom/htc/opensense/social/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->SERVER_ERROR:Lcom/htc/opensense/social/ErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/opensense/social/ErrorCode;->NOT_LOGIN:Lcom/htc/opensense/social/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/opensense/social/ErrorCode;->SESSION_ESPIRED:Lcom/htc/opensense/social/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/opensense/social/ErrorCode;->ACCESS_TOKEN_EXPIRED:Lcom/htc/opensense/social/ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense/social/ErrorCode;->$VALUES:[Lcom/htc/opensense/social/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/htc/opensense/social/ErrorCode;->code:I

    .line 26
    return-void
.end method

.method public static valueOf(I)Lcom/htc/opensense/social/ErrorCode;
    .locals 6
    .parameter "code"

    .prologue
    .line 33
    invoke-static {}, Lcom/htc/opensense/social/ErrorCode;->values()[Lcom/htc/opensense/social/ErrorCode;

    move-result-object v2

    .line 34
    .local v2, codes:[Lcom/htc/opensense/social/ErrorCode;
    move-object v0, v2

    .local v0, arr$:[Lcom/htc/opensense/social/ErrorCode;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 35
    .local v1, c:Lcom/htc/opensense/social/ErrorCode;
    invoke-virtual {v1}, Lcom/htc/opensense/social/ErrorCode;->value()I

    move-result v5

    if-ne v5, p0, :cond_0

    .line 38
    .end local v1           #c:Lcom/htc/opensense/social/ErrorCode;
    :goto_1
    return-object v1

    .line 34
    .restart local v1       #c:Lcom/htc/opensense/social/ErrorCode;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    .end local v1           #c:Lcom/htc/opensense/social/ErrorCode;
    :cond_1
    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/opensense/social/ErrorCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/htc/opensense/social/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/htc/opensense/social/ErrorCode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->$VALUES:[Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v0}, [Lcom/htc/opensense/social/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/opensense/social/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/opensense/social/ErrorCode;->code:I

    return v0
.end method

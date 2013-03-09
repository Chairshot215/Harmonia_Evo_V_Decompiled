.class final enum Llibcore/net/http/ResponseSource;
.super Ljava/lang/Enum;
.source "ResponseSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llibcore/net/http/ResponseSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llibcore/net/http/ResponseSource;

.field public static final enum CACHE:Llibcore/net/http/ResponseSource;

.field public static final enum CONDITIONAL_CACHE:Llibcore/net/http/ResponseSource;

.field public static final enum NETWORK:Llibcore/net/http/ResponseSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Llibcore/net/http/ResponseSource;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v2}, Llibcore/net/http/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/net/http/ResponseSource;->CACHE:Llibcore/net/http/ResponseSource;

    new-instance v0, Llibcore/net/http/ResponseSource;

    const-string v1, "CONDITIONAL_CACHE"

    invoke-direct {v0, v1, v3}, Llibcore/net/http/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/net/http/ResponseSource;->CONDITIONAL_CACHE:Llibcore/net/http/ResponseSource;

    new-instance v0, Llibcore/net/http/ResponseSource;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v4}, Llibcore/net/http/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/net/http/ResponseSource;->NETWORK:Llibcore/net/http/ResponseSource;

    const/4 v0, 0x3

    new-array v0, v0, [Llibcore/net/http/ResponseSource;

    sget-object v1, Llibcore/net/http/ResponseSource;->CACHE:Llibcore/net/http/ResponseSource;

    aput-object v1, v0, v2

    sget-object v1, Llibcore/net/http/ResponseSource;->CONDITIONAL_CACHE:Llibcore/net/http/ResponseSource;

    aput-object v1, v0, v3

    sget-object v1, Llibcore/net/http/ResponseSource;->NETWORK:Llibcore/net/http/ResponseSource;

    aput-object v1, v0, v4

    sput-object v0, Llibcore/net/http/ResponseSource;->$VALUES:[Llibcore/net/http/ResponseSource;

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

.method public static valueOf(Ljava/lang/String;)Llibcore/net/http/ResponseSource;
    .locals 1

    const-class v0, Llibcore/net/http/ResponseSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llibcore/net/http/ResponseSource;

    return-object v0
.end method

.method public static values()[Llibcore/net/http/ResponseSource;
    .locals 1

    sget-object v0, Llibcore/net/http/ResponseSource;->$VALUES:[Llibcore/net/http/ResponseSource;

    invoke-virtual {v0}, [Llibcore/net/http/ResponseSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llibcore/net/http/ResponseSource;

    return-object v0
.end method


# virtual methods
.method public requiresConnection()Z
    .locals 1

    sget-object v0, Llibcore/net/http/ResponseSource;->CONDITIONAL_CACHE:Llibcore/net/http/ResponseSource;

    if-eq p0, v0, :cond_0

    sget-object v0, Llibcore/net/http/ResponseSource;->NETWORK:Llibcore/net/http/ResponseSource;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

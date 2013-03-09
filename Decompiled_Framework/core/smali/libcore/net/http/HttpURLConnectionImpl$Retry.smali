.class final enum Llibcore/net/http/HttpURLConnectionImpl$Retry;
.super Ljava/lang/Enum;
.source "HttpURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Retry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llibcore/net/http/HttpURLConnectionImpl$Retry;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llibcore/net/http/HttpURLConnectionImpl$Retry;

.field public static final enum DIFFERENT_CONNECTION:Llibcore/net/http/HttpURLConnectionImpl$Retry;

.field public static final enum NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

.field public static final enum SAME_CONNECTION:Llibcore/net/http/HttpURLConnectionImpl$Retry;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Llibcore/net/http/HttpURLConnectionImpl$Retry;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Llibcore/net/http/HttpURLConnectionImpl$Retry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    new-instance v0, Llibcore/net/http/HttpURLConnectionImpl$Retry;

    const-string v1, "SAME_CONNECTION"

    invoke-direct {v0, v1, v3}, Llibcore/net/http/HttpURLConnectionImpl$Retry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/net/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    new-instance v0, Llibcore/net/http/HttpURLConnectionImpl$Retry;

    const-string v1, "DIFFERENT_CONNECTION"

    invoke-direct {v0, v1, v4}, Llibcore/net/http/HttpURLConnectionImpl$Retry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/net/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    const/4 v0, 0x3

    new-array v0, v0, [Llibcore/net/http/HttpURLConnectionImpl$Retry;

    sget-object v1, Llibcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    aput-object v1, v0, v2

    sget-object v1, Llibcore/net/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    aput-object v1, v0, v3

    sget-object v1, Llibcore/net/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Llibcore/net/http/HttpURLConnectionImpl$Retry;

    aput-object v1, v0, v4

    sput-object v0, Llibcore/net/http/HttpURLConnectionImpl$Retry;->$VALUES:[Llibcore/net/http/HttpURLConnectionImpl$Retry;

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

.method public static valueOf(Ljava/lang/String;)Llibcore/net/http/HttpURLConnectionImpl$Retry;
    .locals 1

    const-class v0, Llibcore/net/http/HttpURLConnectionImpl$Retry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llibcore/net/http/HttpURLConnectionImpl$Retry;

    return-object v0
.end method

.method public static values()[Llibcore/net/http/HttpURLConnectionImpl$Retry;
    .locals 1

    sget-object v0, Llibcore/net/http/HttpURLConnectionImpl$Retry;->$VALUES:[Llibcore/net/http/HttpURLConnectionImpl$Retry;

    invoke-virtual {v0}, [Llibcore/net/http/HttpURLConnectionImpl$Retry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llibcore/net/http/HttpURLConnectionImpl$Retry;

    return-object v0
.end method

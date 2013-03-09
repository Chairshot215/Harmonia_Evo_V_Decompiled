.class public final enum Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;
.super Ljava/lang/Enum;
.source "GbaServiceConnectorState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

.field public static final enum CONNECTED:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

.field public static final enum RELEASED:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;->CONNECTED:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    new-instance v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    const-string v1, "RELEASED"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;->RELEASED:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    sget-object v1, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;->CONNECTED:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;->RELEASED:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;->$VALUES:[Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;
    .locals 1

    const-class v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    return-object v0
.end method

.method public static values()[Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;->$VALUES:[Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    invoke-virtual {v0}, [Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    return-object v0
.end method

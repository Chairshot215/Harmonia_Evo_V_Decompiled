.class public final enum Lcom/htc/gson/LongSerializationPolicy;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/gson/LongSerializationPolicy$1;,
        Lcom/htc/gson/LongSerializationPolicy$StringStrategy;,
        Lcom/htc/gson/LongSerializationPolicy$DefaultStrategy;,
        Lcom/htc/gson/LongSerializationPolicy$Strategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/gson/LongSerializationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/gson/LongSerializationPolicy;

.field public static final enum DEFAULT:Lcom/htc/gson/LongSerializationPolicy;

.field public static final enum STRING:Lcom/htc/gson/LongSerializationPolicy;


# instance fields
.field private final strategy:Lcom/htc/gson/LongSerializationPolicy$Strategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/htc/gson/LongSerializationPolicy;

    const-string v1, "DEFAULT"

    new-instance v2, Lcom/htc/gson/LongSerializationPolicy$DefaultStrategy;

    invoke-direct {v2, v5}, Lcom/htc/gson/LongSerializationPolicy$DefaultStrategy;-><init>(Lcom/htc/gson/LongSerializationPolicy$1;)V

    invoke-direct {v0, v1, v3, v2}, Lcom/htc/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcom/htc/gson/LongSerializationPolicy$Strategy;)V

    sput-object v0, Lcom/htc/gson/LongSerializationPolicy;->DEFAULT:Lcom/htc/gson/LongSerializationPolicy;

    .line 43
    new-instance v0, Lcom/htc/gson/LongSerializationPolicy;

    const-string v1, "STRING"

    new-instance v2, Lcom/htc/gson/LongSerializationPolicy$StringStrategy;

    invoke-direct {v2, v5}, Lcom/htc/gson/LongSerializationPolicy$StringStrategy;-><init>(Lcom/htc/gson/LongSerializationPolicy$1;)V

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcom/htc/gson/LongSerializationPolicy$Strategy;)V

    sput-object v0, Lcom/htc/gson/LongSerializationPolicy;->STRING:Lcom/htc/gson/LongSerializationPolicy;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/gson/LongSerializationPolicy;

    sget-object v1, Lcom/htc/gson/LongSerializationPolicy;->DEFAULT:Lcom/htc/gson/LongSerializationPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/gson/LongSerializationPolicy;->STRING:Lcom/htc/gson/LongSerializationPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/gson/LongSerializationPolicy;->$VALUES:[Lcom/htc/gson/LongSerializationPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/htc/gson/LongSerializationPolicy$Strategy;)V
    .locals 0
    .parameter
    .parameter
    .parameter "strategy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/LongSerializationPolicy$Strategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/htc/gson/LongSerializationPolicy;->strategy:Lcom/htc/gson/LongSerializationPolicy$Strategy;

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/gson/LongSerializationPolicy;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/htc/gson/LongSerializationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/LongSerializationPolicy;

    return-object v0
.end method

.method public static values()[Lcom/htc/gson/LongSerializationPolicy;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/htc/gson/LongSerializationPolicy;->$VALUES:[Lcom/htc/gson/LongSerializationPolicy;

    invoke-virtual {v0}, [Lcom/htc/gson/LongSerializationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/gson/LongSerializationPolicy;

    return-object v0
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "value"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/gson/LongSerializationPolicy;->strategy:Lcom/htc/gson/LongSerializationPolicy$Strategy;

    invoke-interface {v0, p1}, Lcom/htc/gson/LongSerializationPolicy$Strategy;->serialize(Ljava/lang/Long;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

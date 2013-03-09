.class Lcom/htc/gson/LongSerializationPolicy$StringStrategy;
.super Ljava/lang/Object;
.source "LongSerializationPolicy.java"

# interfaces
.implements Lcom/htc/gson/LongSerializationPolicy$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/gson/LongSerializationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/gson/LongSerializationPolicy$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/gson/LongSerializationPolicy$StringStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lcom/htc/gson/JsonElement;
    .locals 2
    .parameter "value"

    .prologue
    .line 73
    new-instance v0, Lcom/htc/gson/JsonPrimitive;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

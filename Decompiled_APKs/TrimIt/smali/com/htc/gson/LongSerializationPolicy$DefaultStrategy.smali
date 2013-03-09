.class Lcom/htc/gson/LongSerializationPolicy$DefaultStrategy;
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
    name = "DefaultStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/gson/LongSerializationPolicy$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/gson/LongSerializationPolicy$DefaultStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "value"

    .prologue
    .line 67
    new-instance v0, Lcom/htc/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method

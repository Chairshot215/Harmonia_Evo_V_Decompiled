.class Lcom/htc/gson/DefaultTypeAdapters$LongSerializer;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/htc/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/gson/DefaultTypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/gson/JsonSerializer",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final longSerializationPolicy:Lcom/htc/gson/LongSerializationPolicy;


# direct methods
.method private constructor <init>(Lcom/htc/gson/LongSerializationPolicy;)V
    .locals 0
    .parameter "longSerializationPolicy"

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput-object p1, p0, Lcom/htc/gson/DefaultTypeAdapters$LongSerializer;->longSerializationPolicy:Lcom/htc/gson/LongSerializationPolicy;

    .line 613
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/gson/LongSerializationPolicy;Lcom/htc/gson/DefaultTypeAdapters$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/htc/gson/DefaultTypeAdapters$LongSerializer;-><init>(Lcom/htc/gson/LongSerializationPolicy;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/htc/gson/DefaultTypeAdapters$LongSerializer;->longSerializationPolicy:Lcom/htc/gson/LongSerializationPolicy;

    invoke-virtual {v0, p1}, Lcom/htc/gson/LongSerializationPolicy;->serialize(Ljava/lang/Long;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 608
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$LongSerializer;->serialize(Ljava/lang/Long;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    const-class v0, Lcom/htc/gson/DefaultTypeAdapters$LongSerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

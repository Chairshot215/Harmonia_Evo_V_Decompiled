.class Lcom/google/gson/DefaultTypeAdapters$LongSerializer;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/DefaultTypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;


# direct methods
.method private constructor <init>(Lcom/google/gson/LongSerializationPolicy;)V
    .locals 0
    .parameter "longSerializationPolicy"

    .prologue
    .line 609
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-object p1, p0, Lcom/google/gson/DefaultTypeAdapters$LongSerializer;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 611
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/LongSerializationPolicy;Lcom/google/gson/DefaultTypeAdapters$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lcom/google/gson/DefaultTypeAdapters$LongSerializer;-><init>(Lcom/google/gson/LongSerializationPolicy;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/gson/DefaultTypeAdapters$LongSerializer;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    invoke-virtual {v0, p1}, Lcom/google/gson/LongSerializationPolicy;->serialize(Ljava/lang/Long;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 606
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gson/DefaultTypeAdapters$LongSerializer;->serialize(Ljava/lang/Long;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    const-class v0, Lcom/google/gson/DefaultTypeAdapters$LongSerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

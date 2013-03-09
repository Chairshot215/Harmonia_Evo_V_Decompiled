.class Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/htc/gson/JsonSerializer;
.implements Lcom/htc/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/gson/DefaultTypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/htc/gson/JsonSerializer",
        "<TT;>;",
        "Lcom/htc/gson/JsonDeserializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 327
    .local p0, this:Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;,"Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 327
    .local p0, this:Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;,"Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Enum;
    .locals 1
    .parameter "json"
    .parameter "classOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/htc/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 336
    .local p0, this:Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;,"Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter<TT;>;"
    check-cast p2, Ljava/lang/Class;

    .end local p2
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 326
    .local p0, this:Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;,"Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Enum;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 2
    .parameter
    .parameter "typeOfSrc"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Type;",
            "Lcom/htc/gson/JsonSerializationContext;",
            ")",
            "Lcom/htc/gson/JsonElement;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, this:Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;,"Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter<TT;>;"
    .local p1, src:Ljava/lang/Enum;,"TT;"
    new-instance v0, Lcom/htc/gson/JsonPrimitive;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 326
    .local p0, this:Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;,"Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter<TT;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;->serialize(Ljava/lang/Enum;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    .local p0, this:Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;,"Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter<TT;>;"
    const-class v0, Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

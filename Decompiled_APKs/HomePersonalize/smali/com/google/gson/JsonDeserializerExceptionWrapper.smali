.class Lcom/google/gson/JsonDeserializerExceptionWrapper;
.super Ljava/lang/Object;
.source "JsonDeserializerExceptionWrapper.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/JsonDeserializer;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonDeserializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/gson/JsonDeserializerExceptionWrapper;,"Lcom/google/gson/JsonDeserializerExceptionWrapper<TT;>;"
    .local p1, delegate:Lcom/google/gson/JsonDeserializer;,"Lcom/google/gson/JsonDeserializer<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/google/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/google/gson/JsonDeserializerExceptionWrapper;->delegate:Lcom/google/gson/JsonDeserializer;

    .line 45
    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 4
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/gson/JsonDeserializerExceptionWrapper;,"Lcom/google/gson/JsonDeserializerExceptionWrapper<TT;>;"
    :try_start_0
    iget-object v2, p0, Lcom/google/gson/JsonDeserializerExceptionWrapper;->delegate:Lcom/google/gson/JsonDeserializer;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/gson/JsonDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Lcom/google/gson/JsonParseException;
    throw v0

    .line 54
    .end local v0           #e:Lcom/google/gson/JsonParseException;
    :catch_1
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The JsonDeserializer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/JsonDeserializerExceptionWrapper;->delegate:Lcom/google/gson/JsonDeserializer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed to deserialized json object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " given the type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    .local v1, errorMsg:Ljava/lang/StringBuilder;
    new-instance v2, Lcom/google/gson/JsonParseException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/google/gson/JsonDeserializerExceptionWrapper;,"Lcom/google/gson/JsonDeserializerExceptionWrapper<TT;>;"
    iget-object v0, p0, Lcom/google/gson/JsonDeserializerExceptionWrapper;->delegate:Lcom/google/gson/JsonDeserializer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

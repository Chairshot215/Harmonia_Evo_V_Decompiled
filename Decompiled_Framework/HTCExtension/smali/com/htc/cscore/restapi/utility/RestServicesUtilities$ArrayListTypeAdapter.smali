.class Lcom/htc/cscore/restapi/utility/RestServicesUtilities$ArrayListTypeAdapter;
.super Ljava/lang/Object;
.source "RestServicesUtilities.java"

# interfaces
.implements Lcom/htc/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/utility/RestServicesUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayListTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/gson/JsonDeserializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/restapi/utility/RestServicesUtilities$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$ArrayListTypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 5
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

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/gson/JsonArray;->size()I

    move-result v4

    if-gtz v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    invoke-virtual {v0}, Lcom/htc/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gson/JsonElement;

    invoke-virtual {v1}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/htc/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

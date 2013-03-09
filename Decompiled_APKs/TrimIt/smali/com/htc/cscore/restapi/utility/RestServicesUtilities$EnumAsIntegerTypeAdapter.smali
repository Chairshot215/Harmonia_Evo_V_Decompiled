.class Lcom/htc/cscore/restapi/utility/RestServicesUtilities$EnumAsIntegerTypeAdapter;
.super Ljava/lang/Object;
.source "RestServicesUtilities.java"

# interfaces
.implements Lcom/htc/gson/JsonSerializer;
.implements Lcom/htc/gson/JsonDeserializer;
.implements Lcom/htc/gson/InstanceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/utility/RestServicesUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumAsIntegerTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/gson/JsonSerializer",
        "<",
        "Ljava/lang/Enum;",
        ">;",
        "Lcom/htc/gson/JsonDeserializer",
        "<",
        "Ljava/lang/Enum;",
        ">;",
        "Lcom/htc/gson/InstanceCreator",
        "<",
        "Ljava/lang/Enum;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/restapi/utility/RestServicesUtilities$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$EnumAsIntegerTypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Enum;
    .locals 7
    .parameter "type"

    .prologue
    .line 593
    move-object v2, p1

    check-cast v2, Ljava/lang/Class;

    .line 595
    .local v2, enumClass:Ljava/lang/Class;,"Ljava/lang/Class<Ljava/lang/Enum;>;"
    :try_start_0
    const-string v5, "values"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 596
    .local v4, valuesMethod:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Enum;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Enum;

    move-object v3, v0

    .line 597
    .local v3, enums:[Ljava/lang/Enum;
    const/4 v5, 0x0

    aget-object v5, v3, v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v5

    .line 598
    .end local v3           #enums:[Ljava/lang/Enum;
    .end local v4           #valuesMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 599
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 600
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 601
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 602
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 603
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public bridge synthetic createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$EnumAsIntegerTypeAdapter;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Enum;
    .locals 7
    .parameter "json"
    .parameter "classOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 578
    move-object v2, p2

    check-cast v2, Ljava/lang/Class;

    .line 580
    .local v2, enumClass:Ljava/lang/Class;,"Ljava/lang/Class<Ljava/lang/Enum;>;"
    :try_start_0
    const-string v5, "values"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 581
    .local v4, valuesMethod:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Enum;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Enum;

    move-object v3, v0

    .line 582
    .local v3, enums:[Ljava/lang/Enum;
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsInt()I

    move-result v5

    aget-object v5, v3, v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v5

    .line 583
    .end local v3           #enums:[Ljava/lang/Enum;
    .end local v4           #valuesMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 584
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 585
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 586
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 587
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 588
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
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
    .line 567
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$EnumAsIntegerTypeAdapter;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Enum;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 2
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 572
    new-instance v0, Lcom/htc/gson/JsonPrimitive;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 567
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$EnumAsIntegerTypeAdapter;->serialize(Ljava/lang/Enum;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    const-class v0, Lcom/htc/cscore/restapi/utility/RestServicesUtilities$EnumAsIntegerTypeAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

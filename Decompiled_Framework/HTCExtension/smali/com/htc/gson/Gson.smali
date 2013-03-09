.class public final Lcom/htc/gson/Gson;
.super Ljava/lang/Object;
.source "Gson.java"


# static fields
.field static final DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/htc/gson/AnonymousAndLocalClassExclusionStrategy; = null

.field private static final DEFAULT_EXCLUSION_STRATEGY:Lcom/htc/gson/ExclusionStrategy; = null

.field static final DEFAULT_JSON_FORMATTER:Lcom/htc/gson/JsonFormatter; = null

.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field static final DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/htc/gson/ModifierBasedExclusionStrategy; = null

.field static final DEFAULT_NAMING_POLICY:Lcom/htc/gson/FieldNamingStrategy; = null

.field static final DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/htc/gson/SyntheticFieldExclusionStrategy; = null

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"

.field private static final NULL_STRING:Ljava/lang/String; = "null"


# instance fields
.field private final deserializationStrategy:Lcom/htc/gson/ExclusionStrategy;

.field private final deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

.field private final formatter:Lcom/htc/gson/JsonFormatter;

.field private final generateNonExecutableJson:Z

.field private final objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

.field private final serializationStrategy:Lcom/htc/gson/ExclusionStrategy;

.field private final serializeNulls:Z

.field private final serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/htc/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-direct {v0}, Lcom/htc/gson/AnonymousAndLocalClassExclusionStrategy;-><init>()V

    sput-object v0, Lcom/htc/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/htc/gson/AnonymousAndLocalClassExclusionStrategy;

    new-instance v0, Lcom/htc/gson/SyntheticFieldExclusionStrategy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/gson/SyntheticFieldExclusionStrategy;-><init>(Z)V

    sput-object v0, Lcom/htc/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/htc/gson/SyntheticFieldExclusionStrategy;

    new-instance v0, Lcom/htc/gson/ModifierBasedExclusionStrategy;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/htc/gson/ModifierBasedExclusionStrategy;-><init>([I)V

    sput-object v0, Lcom/htc/gson/Gson;->DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/htc/gson/ModifierBasedExclusionStrategy;

    new-instance v0, Lcom/htc/gson/JsonCompactFormatter;

    invoke-direct {v0}, Lcom/htc/gson/JsonCompactFormatter;-><init>()V

    sput-object v0, Lcom/htc/gson/Gson;->DEFAULT_JSON_FORMATTER:Lcom/htc/gson/JsonFormatter;

    new-instance v0, Lcom/htc/gson/SerializedNameAnnotationInterceptingNamingPolicy;

    new-instance v1, Lcom/htc/gson/JavaFieldNamingPolicy;

    invoke-direct {v1}, Lcom/htc/gson/JavaFieldNamingPolicy;-><init>()V

    invoke-direct {v0, v1}, Lcom/htc/gson/SerializedNameAnnotationInterceptingNamingPolicy;-><init>(Lcom/htc/gson/FieldNamingStrategy;)V

    sput-object v0, Lcom/htc/gson/Gson;->DEFAULT_NAMING_POLICY:Lcom/htc/gson/FieldNamingStrategy;

    const-wide/high16 v0, -0x4010

    invoke-static {v0, v1}, Lcom/htc/gson/Gson;->createExclusionStrategy(D)Lcom/htc/gson/ExclusionStrategy;

    move-result-object v0

    sput-object v0, Lcom/htc/gson/Gson;->DEFAULT_EXCLUSION_STRATEGY:Lcom/htc/gson/ExclusionStrategy;

    return-void

    :array_0
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 10

    const/4 v6, 0x0

    sget-object v1, Lcom/htc/gson/Gson;->DEFAULT_EXCLUSION_STRATEGY:Lcom/htc/gson/ExclusionStrategy;

    sget-object v2, Lcom/htc/gson/Gson;->DEFAULT_EXCLUSION_STRATEGY:Lcom/htc/gson/ExclusionStrategy;

    sget-object v3, Lcom/htc/gson/Gson;->DEFAULT_NAMING_POLICY:Lcom/htc/gson/FieldNamingStrategy;

    new-instance v4, Lcom/htc/gson/MappedObjectConstructor;

    invoke-static {}, Lcom/htc/gson/DefaultTypeAdapters;->getDefaultInstanceCreators()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/htc/gson/MappedObjectConstructor;-><init>(Lcom/htc/gson/ParameterizedTypeHandlerMap;)V

    sget-object v5, Lcom/htc/gson/Gson;->DEFAULT_JSON_FORMATTER:Lcom/htc/gson/JsonFormatter;

    invoke-static {}, Lcom/htc/gson/DefaultTypeAdapters;->getDefaultSerializers()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v7

    invoke-static {}, Lcom/htc/gson/DefaultTypeAdapters;->getDefaultDeserializers()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v8

    move-object v0, p0

    move v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/htc/gson/Gson;-><init>(Lcom/htc/gson/ExclusionStrategy;Lcom/htc/gson/ExclusionStrategy;Lcom/htc/gson/FieldNamingStrategy;Lcom/htc/gson/MappedObjectConstructor;Lcom/htc/gson/JsonFormatter;ZLcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/ParameterizedTypeHandlerMap;Z)V

    return-void
.end method

.method constructor <init>(Lcom/htc/gson/ExclusionStrategy;Lcom/htc/gson/ExclusionStrategy;Lcom/htc/gson/FieldNamingStrategy;Lcom/htc/gson/MappedObjectConstructor;Lcom/htc/gson/JsonFormatter;ZLcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/ParameterizedTypeHandlerMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/ExclusionStrategy;",
            "Lcom/htc/gson/ExclusionStrategy;",
            "Lcom/htc/gson/FieldNamingStrategy;",
            "Lcom/htc/gson/MappedObjectConstructor;",
            "Lcom/htc/gson/JsonFormatter;",
            "Z",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonSerializer",
            "<*>;>;",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;>;Z)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/gson/Gson;->serializationStrategy:Lcom/htc/gson/ExclusionStrategy;

    iput-object p2, p0, Lcom/htc/gson/Gson;->deserializationStrategy:Lcom/htc/gson/ExclusionStrategy;

    iput-object p3, p0, Lcom/htc/gson/Gson;->fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

    iput-object p4, p0, Lcom/htc/gson/Gson;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    iput-object p5, p0, Lcom/htc/gson/Gson;->formatter:Lcom/htc/gson/JsonFormatter;

    iput-boolean p6, p0, Lcom/htc/gson/Gson;->serializeNulls:Z

    iput-object p7, p0, Lcom/htc/gson/Gson;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    iput-object p8, p0, Lcom/htc/gson/Gson;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    iput-boolean p9, p0, Lcom/htc/gson/Gson;->generateNonExecutableJson:Z

    return-void
.end method

.method private createDefaultObjectNavigatorFactory(Lcom/htc/gson/ExclusionStrategy;)Lcom/htc/gson/ObjectNavigatorFactory;
    .locals 2

    new-instance v0, Lcom/htc/gson/ObjectNavigatorFactory;

    iget-object v1, p0, Lcom/htc/gson/Gson;->fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

    invoke-direct {v0, p1, v1}, Lcom/htc/gson/ObjectNavigatorFactory;-><init>(Lcom/htc/gson/ExclusionStrategy;Lcom/htc/gson/FieldNamingStrategy;)V

    return-object v0
.end method

.method private static createExclusionStrategy(D)Lcom/htc/gson/ExclusionStrategy;
    .locals 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/htc/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/htc/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/htc/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/htc/gson/SyntheticFieldExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/htc/gson/Gson;->DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/htc/gson/ModifierBasedExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/high16 v1, -0x4010

    cmpl-double v1, p0, v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/htc/gson/VersionExclusionStrategy;

    invoke-direct {v1, p0, p1}, Lcom/htc/gson/VersionExclusionStrategy;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/htc/gson/DisjunctionExclusionStrategy;

    invoke-direct {v1, v0}, Lcom/htc/gson/DisjunctionExclusionStrategy;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private writeOutNullString(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "null"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/htc/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/gson/JsonElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/gson/Gson;->fromJson(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcom/htc/gson/JsonDeserializationContextDefault;

    iget-object v2, p0, Lcom/htc/gson/Gson;->deserializationStrategy:Lcom/htc/gson/ExclusionStrategy;

    invoke-direct {p0, v2}, Lcom/htc/gson/Gson;->createDefaultObjectNavigatorFactory(Lcom/htc/gson/ExclusionStrategy;)Lcom/htc/gson/ObjectNavigatorFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/gson/Gson;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    iget-object v4, p0, Lcom/htc/gson/Gson;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/gson/JsonDeserializationContextDefault;-><init>(Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/MappedObjectConstructor;)V

    invoke-interface {v0, p1, p2}, Lcom/htc/gson/JsonDeserializationContext;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    new-instance v2, Lcom/htc/gson/JsonParser;

    invoke-direct {v2}, Lcom/htc/gson/JsonParser;-><init>()V

    invoke-virtual {v2, p1}, Lcom/htc/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/htc/gson/Gson;->fromJson(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/htc/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Lcom/htc/gson/JsonElement;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/htc/gson/Gson;->toJson(Lcom/htc/gson/JsonElement;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/htc/gson/Gson;->serializeNulls:Z

    if-eqz v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Lcom/htc/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 3

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v1, :cond_0

    const-string v1, ")]}\'\n"

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/htc/gson/Gson;->serializeNulls:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/htc/gson/Gson;->writeOutNullString(Ljava/lang/Appendable;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/gson/Gson;->formatter:Lcom/htc/gson/JsonFormatter;

    iget-boolean v2, p0, Lcom/htc/gson/Gson;->serializeNulls:Z

    invoke-interface {v1, p1, p2, v2}, Lcom/htc/gson/JsonFormatter;->format(Lcom/htc/gson/JsonElement;Ljava/lang/Appendable;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/htc/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/htc/gson/Gson;->serializeNulls:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/htc/gson/Gson;->writeOutNullString(Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/htc/gson/Gson;->toJson(Lcom/htc/gson/JsonElement;Ljava/lang/Appendable;)V

    return-void
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcom/htc/gson/JsonElement;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/htc/gson/JsonElement;
    .locals 4

    if-nez p1, :cond_0

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcom/htc/gson/JsonSerializationContextDefault;

    iget-object v1, p0, Lcom/htc/gson/Gson;->serializationStrategy:Lcom/htc/gson/ExclusionStrategy;

    invoke-direct {p0, v1}, Lcom/htc/gson/Gson;->createDefaultObjectNavigatorFactory(Lcom/htc/gson/ExclusionStrategy;)Lcom/htc/gson/ObjectNavigatorFactory;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/gson/Gson;->serializeNulls:Z

    iget-object v3, p0, Lcom/htc/gson/Gson;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/gson/JsonSerializationContextDefault;-><init>(Lcom/htc/gson/ObjectNavigatorFactory;ZLcom/htc/gson/ParameterizedTypeHandlerMap;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/gson/JsonSerializationContextDefault;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/htc/gson/JsonElement;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "serializeNulls:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/gson/Gson;->serializeNulls:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",serializers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/gson/Gson;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",deserializers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/gson/Gson;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",instanceCreators:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/gson/Gson;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

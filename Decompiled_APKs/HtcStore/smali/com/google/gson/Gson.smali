.class public final Lcom/google/gson/Gson;
.super Ljava/lang/Object;
.source "Gson.java"


# static fields
.field static final DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy; = null

.field private static final DEFAULT_EXCLUSION_STRATEGY:Lcom/google/gson/ExclusionStrategy; = null

.field static final DEFAULT_JSON_FORMATTER:Lcom/google/gson/JsonFormatter; = null

.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field static final DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/google/gson/ModifierBasedExclusionStrategy; = null

.field static final DEFAULT_NAMING_POLICY:Lcom/google/gson/FieldNamingStrategy; = null

.field static final DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/google/gson/SyntheticFieldExclusionStrategy; = null

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"

.field private static final NULL_STRING:Ljava/lang/String; = "null"


# instance fields
.field private final deserializationStrategy:Lcom/google/gson/ExclusionStrategy;

.field private final deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field private final formatter:Lcom/google/gson/JsonFormatter;

.field private final generateNonExecutableJson:Z

.field private final objectConstructor:Lcom/google/gson/MappedObjectConstructor;

.field private final serializationStrategy:Lcom/google/gson/ExclusionStrategy;

.field private final serializeNulls:Z

.field private final serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-direct {v0}, Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy;-><init>()V

    sput-object v0, Lcom/google/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy;

    .line 84
    new-instance v0, Lcom/google/gson/SyntheticFieldExclusionStrategy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/gson/SyntheticFieldExclusionStrategy;-><init>(Z)V

    sput-object v0, Lcom/google/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/google/gson/SyntheticFieldExclusionStrategy;

    .line 86
    new-instance v0, Lcom/google/gson/ModifierBasedExclusionStrategy;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/google/gson/ModifierBasedExclusionStrategy;-><init>([I)V

    sput-object v0, Lcom/google/gson/Gson;->DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/google/gson/ModifierBasedExclusionStrategy;

    .line 88
    new-instance v0, Lcom/google/gson/JsonCompactFormatter;

    invoke-direct {v0}, Lcom/google/gson/JsonCompactFormatter;-><init>()V

    sput-object v0, Lcom/google/gson/Gson;->DEFAULT_JSON_FORMATTER:Lcom/google/gson/JsonFormatter;

    .line 89
    new-instance v0, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;

    new-instance v1, Lcom/google/gson/JavaFieldNamingPolicy;

    invoke-direct {v1}, Lcom/google/gson/JavaFieldNamingPolicy;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;-><init>(Lcom/google/gson/FieldNamingStrategy;)V

    sput-object v0, Lcom/google/gson/Gson;->DEFAULT_NAMING_POLICY:Lcom/google/gson/FieldNamingStrategy;

    .line 92
    const-wide/high16 v0, -0x4010

    invoke-static {v0, v1}, Lcom/google/gson/Gson;->createExclusionStrategy(D)Lcom/google/gson/ExclusionStrategy;

    move-result-object v0

    sput-object v0, Lcom/google/gson/Gson;->DEFAULT_EXCLUSION_STRATEGY:Lcom/google/gson/ExclusionStrategy;

    return-void

    .line 86
    :array_0
    .array-data 0x4
        0x80t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 150
    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_EXCLUSION_STRATEGY:Lcom/google/gson/ExclusionStrategy;

    sget-object v2, Lcom/google/gson/Gson;->DEFAULT_EXCLUSION_STRATEGY:Lcom/google/gson/ExclusionStrategy;

    sget-object v3, Lcom/google/gson/Gson;->DEFAULT_NAMING_POLICY:Lcom/google/gson/FieldNamingStrategy;

    new-instance v4, Lcom/google/gson/MappedObjectConstructor;

    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->getDefaultInstanceCreators()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/gson/MappedObjectConstructor;-><init>(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    sget-object v5, Lcom/google/gson/Gson;->DEFAULT_JSON_FORMATTER:Lcom/google/gson/JsonFormatter;

    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->getDefaultSerializers()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v7

    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->getDefaultDeserializers()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v8

    move-object v0, p0

    move v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/MappedObjectConstructor;Lcom/google/gson/JsonFormatter;ZLcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/ParameterizedTypeHandlerMap;Z)V

    .line 154
    return-void
.end method

.method constructor <init>(Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/MappedObjectConstructor;Lcom/google/gson/JsonFormatter;ZLcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/ParameterizedTypeHandlerMap;Z)V
    .locals 0
    .parameter "serializationStrategy"
    .parameter "deserializationStrategy"
    .parameter "fieldNamingPolicy"
    .parameter "objectConstructor"
    .parameter "formatter"
    .parameter "serializeNulls"
    .parameter
    .parameter
    .parameter "generateNonExecutableGson"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/ExclusionStrategy;",
            "Lcom/google/gson/ExclusionStrategy;",
            "Lcom/google/gson/FieldNamingStrategy;",
            "Lcom/google/gson/MappedObjectConstructor;",
            "Lcom/google/gson/JsonFormatter;",
            "Z",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p7, serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonSerializer<*>;>;"
    .local p8, deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonDeserializer<*>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/google/gson/Gson;->serializationStrategy:Lcom/google/gson/ExclusionStrategy;

    .line 163
    iput-object p2, p0, Lcom/google/gson/Gson;->deserializationStrategy:Lcom/google/gson/ExclusionStrategy;

    .line 164
    iput-object p3, p0, Lcom/google/gson/Gson;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 165
    iput-object p4, p0, Lcom/google/gson/Gson;->objectConstructor:Lcom/google/gson/MappedObjectConstructor;

    .line 166
    iput-object p5, p0, Lcom/google/gson/Gson;->formatter:Lcom/google/gson/JsonFormatter;

    .line 167
    iput-boolean p6, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    .line 168
    iput-object p7, p0, Lcom/google/gson/Gson;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 169
    iput-object p8, p0, Lcom/google/gson/Gson;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 170
    iput-boolean p9, p0, Lcom/google/gson/Gson;->generateNonExecutableJson:Z

    .line 171
    return-void
.end method

.method private createDefaultObjectNavigatorFactory(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/ObjectNavigatorFactory;
    .locals 2
    .parameter "strategy"

    .prologue
    .line 174
    new-instance v0, Lcom/google/gson/ObjectNavigatorFactory;

    iget-object v1, p0, Lcom/google/gson/Gson;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    invoke-direct {v0, p1, v1}, Lcom/google/gson/ObjectNavigatorFactory;-><init>(Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/FieldNamingStrategy;)V

    return-object v0
.end method

.method private static createExclusionStrategy(D)Lcom/google/gson/ExclusionStrategy;
    .locals 3
    .parameter "version"

    .prologue
    .line 178
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 179
    .local v0, strategies:Ljava/util/List;,"Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/google/gson/SyntheticFieldExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/google/gson/ModifierBasedExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const-wide/high16 v1, -0x4010

    cmpl-double v1, p0, v1

    if-eqz v1, :cond_0

    .line 183
    new-instance v1, Lcom/google/gson/VersionExclusionStrategy;

    invoke-direct {v1, p0, p1}, Lcom/google/gson/VersionExclusionStrategy;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    new-instance v1, Lcom/google/gson/DisjunctionExclusionStrategy;

    invoke-direct {v1, v0}, Lcom/google/gson/DisjunctionExclusionStrategy;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private writeOutNullString(Ljava/lang/Appendable;)V
    .locals 1
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    const-string v0, "null"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 506
    return-void
.end method


# virtual methods
.method public fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 465
    .local p2, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 466
    .local v0, target:Ljava/lang/Object;,"TT;"
    return-object v0
.end method

.method public fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .parameter "json"
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 489
    if-nez p1, :cond_0

    .line 490
    const/4 v1, 0x0

    .line 496
    :goto_0
    return-object v1

    .line 492
    :cond_0
    new-instance v0, Lcom/google/gson/JsonDeserializationContextDefault;

    iget-object v2, p0, Lcom/google/gson/Gson;->deserializationStrategy:Lcom/google/gson/ExclusionStrategy;

    invoke-direct {p0, v2}, Lcom/google/gson/Gson;->createDefaultObjectNavigatorFactory(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/ObjectNavigatorFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/Gson;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    iget-object v4, p0, Lcom/google/gson/Gson;->objectConstructor:Lcom/google/gson/MappedObjectConstructor;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/gson/JsonDeserializationContextDefault;-><init>(Lcom/google/gson/ObjectNavigatorFactory;Lcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/MappedObjectConstructor;)V

    .line 495
    .local v0, context:Lcom/google/gson/JsonDeserializationContext;
    invoke-interface {v0, p1, p2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 496
    .local v1, target:Ljava/lang/Object;,"TT;"
    goto :goto_0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "json"
    .parameter
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
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 419
    .local p2, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 420
    .local v0, target:Ljava/lang/Object;,"TT;"
    return-object v0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .parameter "json"
    .parameter "typeOfT"
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
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 443
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 444
    .local v0, root:Lcom/google/gson/JsonElement;
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 445
    .local v1, target:Ljava/lang/Object;,"TT;"
    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "json"
    .parameter
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
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 372
    .local p2, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 373
    .local v0, target:Ljava/lang/Object;,"TT;"
    return-object v0
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter "json"
    .parameter "typeOfT"
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
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, reader:Ljava/io/StringReader;
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 397
    .local v1, target:Ljava/lang/Object;,"TT;"
    return-object v1
.end method

.method public toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .locals 2
    .parameter "jsonElement"

    .prologue
    .line 327
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 328
    .local v0, writer:Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 329
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 247
    if-nez p1, :cond_1

    .line 248
    iget-boolean v0, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    if-eqz v0, :cond_0

    const-string v0, "null"

    .line 250
    :goto_0
    return-object v0

    .line 248
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2
    .parameter "src"
    .parameter "typeOfSrc"

    .prologue
    .line 269
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 270
    .local v0, writer:Ljava/io/StringWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 271
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 3
    .parameter "jsonElement"
    .parameter "writer"

    .prologue
    .line 341
    :try_start_0
    iget-boolean v1, p0, Lcom/google/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v1, :cond_0

    .line 342
    const-string v1, ")]}\'\n"

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 344
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    if-eqz v1, :cond_1

    .line 345
    invoke-direct {p0, p2}, Lcom/google/gson/Gson;->writeOutNullString(Ljava/lang/Appendable;)V

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/google/gson/Gson;->formatter:Lcom/google/gson/JsonFormatter;

    iget-boolean v2, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    invoke-interface {v1, p1, p2, v2}, Lcom/google/gson/JsonFormatter;->format(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .parameter "src"
    .parameter "writer"

    .prologue
    .line 289
    if-eqz p1, :cond_1

    .line 290
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-boolean v1, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    if-eqz v1, :cond_0

    .line 292
    invoke-direct {p0, p2}, Lcom/google/gson/Gson;->writeOutNullString(Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, ioe:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 1
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "writer"

    .prologue
    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 316
    .local v0, jsonElement:Lcom/google/gson/JsonElement;
    invoke-virtual {p0, v0, p3}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 317
    return-void
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .locals 1
    .parameter "src"

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;
    .locals 4
    .parameter "src"
    .parameter "typeOfSrc"

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v1

    .line 230
    :goto_0
    return-object v1

    .line 228
    :cond_0
    new-instance v0, Lcom/google/gson/JsonSerializationContextDefault;

    iget-object v1, p0, Lcom/google/gson/Gson;->serializationStrategy:Lcom/google/gson/ExclusionStrategy;

    invoke-direct {p0, v1}, Lcom/google/gson/Gson;->createDefaultObjectNavigatorFactory(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/ObjectNavigatorFactory;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    iget-object v3, p0, Lcom/google/gson/Gson;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gson/JsonSerializationContextDefault;-><init>(Lcom/google/gson/ObjectNavigatorFactory;ZLcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 230
    .local v0, context:Lcom/google/gson/JsonSerializationContextDefault;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/gson/JsonSerializationContextDefault;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/google/gson/JsonElement;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "serializeNulls:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",serializers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/Gson;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",deserializers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/Gson;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",instanceCreators:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/Gson;->objectConstructor:Lcom/google/gson/MappedObjectConstructor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 520
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

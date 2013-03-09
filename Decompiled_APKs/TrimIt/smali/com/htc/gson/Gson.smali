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

    .prologue
    .line 84
    new-instance v0, Lcom/htc/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-direct {v0}, Lcom/htc/gson/AnonymousAndLocalClassExclusionStrategy;-><init>()V

    sput-object v0, Lcom/htc/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/htc/gson/AnonymousAndLocalClassExclusionStrategy;

    .line 86
    new-instance v0, Lcom/htc/gson/SyntheticFieldExclusionStrategy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/gson/SyntheticFieldExclusionStrategy;-><init>(Z)V

    sput-object v0, Lcom/htc/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/htc/gson/SyntheticFieldExclusionStrategy;

    .line 88
    new-instance v0, Lcom/htc/gson/ModifierBasedExclusionStrategy;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/htc/gson/ModifierBasedExclusionStrategy;-><init>([I)V

    sput-object v0, Lcom/htc/gson/Gson;->DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/htc/gson/ModifierBasedExclusionStrategy;

    .line 90
    new-instance v0, Lcom/htc/gson/JsonCompactFormatter;

    invoke-direct {v0}, Lcom/htc/gson/JsonCompactFormatter;-><init>()V

    sput-object v0, Lcom/htc/gson/Gson;->DEFAULT_JSON_FORMATTER:Lcom/htc/gson/JsonFormatter;

    .line 91
    new-instance v0, Lcom/htc/gson/SerializedNameAnnotationInterceptingNamingPolicy;

    new-instance v1, Lcom/htc/gson/JavaFieldNamingPolicy;

    invoke-direct {v1}, Lcom/htc/gson/JavaFieldNamingPolicy;-><init>()V

    invoke-direct {v0, v1}, Lcom/htc/gson/SerializedNameAnnotationInterceptingNamingPolicy;-><init>(Lcom/htc/gson/FieldNamingStrategy;)V

    sput-object v0, Lcom/htc/gson/Gson;->DEFAULT_NAMING_POLICY:Lcom/htc/gson/FieldNamingStrategy;

    .line 94
    const-wide/high16 v0, -0x4010

    invoke-static {v0, v1}, Lcom/htc/gson/Gson;->createExclusionStrategy(D)Lcom/htc/gson/ExclusionStrategy;

    move-result-object v0

    sput-object v0, Lcom/htc/gson/Gson;->DEFAULT_EXCLUSION_STRATEGY:Lcom/htc/gson/ExclusionStrategy;

    return-void

    .line 88
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

    .line 152
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

    .line 156
    return-void
.end method

.method constructor <init>(Lcom/htc/gson/ExclusionStrategy;Lcom/htc/gson/ExclusionStrategy;Lcom/htc/gson/FieldNamingStrategy;Lcom/htc/gson/MappedObjectConstructor;Lcom/htc/gson/JsonFormatter;ZLcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/ParameterizedTypeHandlerMap;Z)V
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

    .prologue
    .line 163
    .local p7, serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/JsonSerializer<*>;>;"
    .local p8, deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/JsonDeserializer<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/htc/gson/Gson;->serializationStrategy:Lcom/htc/gson/ExclusionStrategy;

    .line 165
    iput-object p2, p0, Lcom/htc/gson/Gson;->deserializationStrategy:Lcom/htc/gson/ExclusionStrategy;

    .line 166
    iput-object p3, p0, Lcom/htc/gson/Gson;->fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

    .line 167
    iput-object p4, p0, Lcom/htc/gson/Gson;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    .line 168
    iput-object p5, p0, Lcom/htc/gson/Gson;->formatter:Lcom/htc/gson/JsonFormatter;

    .line 169
    iput-boolean p6, p0, Lcom/htc/gson/Gson;->serializeNulls:Z

    .line 170
    iput-object p7, p0, Lcom/htc/gson/Gson;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    .line 171
    iput-object p8, p0, Lcom/htc/gson/Gson;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    .line 172
    iput-boolean p9, p0, Lcom/htc/gson/Gson;->generateNonExecutableJson:Z

    .line 173
    return-void
.end method

.method private createDefaultObjectNavigatorFactory(Lcom/htc/gson/ExclusionStrategy;)Lcom/htc/gson/ObjectNavigatorFactory;
    .locals 2
    .parameter "strategy"

    .prologue
    .line 176
    new-instance v0, Lcom/htc/gson/ObjectNavigatorFactory;

    iget-object v1, p0, Lcom/htc/gson/Gson;->fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

    invoke-direct {v0, p1, v1}, Lcom/htc/gson/ObjectNavigatorFactory;-><init>(Lcom/htc/gson/ExclusionStrategy;Lcom/htc/gson/FieldNamingStrategy;)V

    return-object v0
.end method

.method private static createExclusionStrategy(D)Lcom/htc/gson/ExclusionStrategy;
    .locals 3
    .parameter "version"

    .prologue
    .line 180
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 181
    .local v0, strategies:Ljava/util/List;,"Ljava/util/List<Lcom/htc/gson/ExclusionStrategy;>;"
    sget-object v1, Lcom/htc/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/htc/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v1, Lcom/htc/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/htc/gson/SyntheticFieldExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v1, Lcom/htc/gson/Gson;->DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/htc/gson/ModifierBasedExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    const-wide/high16 v1, -0x4010

    cmpl-double v1, p0, v1

    if-eqz v1, :cond_0

    .line 185
    new-instance v1, Lcom/htc/gson/VersionExclusionStrategy;

    invoke-direct {v1, p0, p1}, Lcom/htc/gson/VersionExclusionStrategy;-><init>(D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    new-instance v1, Lcom/htc/gson/DisjunctionExclusionStrategy;

    invoke-direct {v1, v0}, Lcom/htc/gson/DisjunctionExclusionStrategy;-><init>(Ljava/util/Collection;)V

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
    .line 507
    const-string v0, "null"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 508
    return-void
.end method


# virtual methods
.method public fromJson(Lcom/htc/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "json"
    .parameter
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

    .prologue
    .line 467
    .local p2, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/gson/Gson;->fromJson(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 468
    .local v0, target:Ljava/lang/Object;,"TT;"
    return-object v0
.end method

.method public fromJson(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .parameter "json"
    .parameter "typeOfT"
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

    .prologue
    .line 491
    if-nez p1, :cond_0

    .line 492
    const/4 v1, 0x0

    .line 498
    :goto_0
    return-object v1

    .line 494
    :cond_0
    new-instance v0, Lcom/htc/gson/JsonDeserializationContextDefault;

    iget-object v2, p0, Lcom/htc/gson/Gson;->deserializationStrategy:Lcom/htc/gson/ExclusionStrategy;

    invoke-direct {p0, v2}, Lcom/htc/gson/Gson;->createDefaultObjectNavigatorFactory(Lcom/htc/gson/ExclusionStrategy;)Lcom/htc/gson/ObjectNavigatorFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/gson/Gson;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    iget-object v4, p0, Lcom/htc/gson/Gson;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/gson/JsonDeserializationContextDefault;-><init>(Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/MappedObjectConstructor;)V

    .line 497
    .local v0, context:Lcom/htc/gson/JsonDeserializationContext;
    invoke-interface {v0, p1, p2}, Lcom/htc/gson/JsonDeserializationContext;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 498
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
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 421
    .local p2, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 422
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
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v2, Lcom/htc/gson/JsonParser;

    invoke-direct {v2}, Lcom/htc/gson/JsonParser;-><init>()V

    invoke-virtual {v2, p1}, Lcom/htc/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 446
    .local v0, root:Lcom/htc/gson/JsonElement;
    invoke-virtual {p0, v0, p2}, Lcom/htc/gson/Gson;->fromJson(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 447
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
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 374
    .local p2, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 375
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
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 397
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, reader:Ljava/io/StringReader;
    invoke-virtual {p0, v0, p2}, Lcom/htc/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 399
    .local v1, target:Ljava/lang/Object;,"TT;"
    return-object v1
.end method

.method public toJson(Lcom/htc/gson/JsonElement;)Ljava/lang/String;
    .locals 2
    .parameter "jsonElement"

    .prologue
    .line 329
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 330
    .local v0, writer:Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lcom/htc/gson/Gson;->toJson(Lcom/htc/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 331
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 249
    if-nez p1, :cond_1

    .line 250
    iget-boolean v0, p0, Lcom/htc/gson/Gson;->serializeNulls:Z

    if-eqz v0, :cond_0

    const-string v0, "null"

    .line 252
    :goto_0
    return-object v0

    .line 250
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2
    .parameter "src"
    .parameter "typeOfSrc"

    .prologue
    .line 271
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 272
    .local v0, writer:Ljava/io/StringWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 273
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Lcom/htc/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 3
    .parameter "jsonElement"
    .parameter "writer"

    .prologue
    .line 343
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v1, :cond_0

    .line 344
    const-string v1, ")]}\'\n"

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 346
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/htc/gson/Gson;->serializeNulls:Z

    if-eqz v1, :cond_1

    .line 347
    invoke-direct {p0, p2}, Lcom/htc/gson/Gson;->writeOutNullString(Ljava/lang/Appendable;)V

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/htc/gson/Gson;->formatter:Lcom/htc/gson/JsonFormatter;

    iget-boolean v2, p0, Lcom/htc/gson/Gson;->serializeNulls:Z

    invoke-interface {v1, p1, p2, v2}, Lcom/htc/gson/JsonFormatter;->format(Lcom/htc/gson/JsonElement;Ljava/lang/Appendable;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
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
    .line 291
    if-eqz p1, :cond_1

    .line 292
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/htc/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-boolean v1, p0, Lcom/htc/gson/Gson;->serializeNulls:Z

    if-eqz v1, :cond_0

    .line 294
    invoke-direct {p0, p2}, Lcom/htc/gson/Gson;->writeOutNullString(Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
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
    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/htc/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 318
    .local v0, jsonElement:Lcom/htc/gson/JsonElement;
    invoke-virtual {p0, v0, p3}, Lcom/htc/gson/Gson;->toJson(Lcom/htc/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 319
    return-void
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "src"

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 205
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v0

    .line 207
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
    .parameter "src"
    .parameter "typeOfSrc"

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v1

    .line 232
    :goto_0
    return-object v1

    .line 230
    :cond_0
    new-instance v0, Lcom/htc/gson/JsonSerializationContextDefault;

    iget-object v1, p0, Lcom/htc/gson/Gson;->serializationStrategy:Lcom/htc/gson/ExclusionStrategy;

    invoke-direct {p0, v1}, Lcom/htc/gson/Gson;->createDefaultObjectNavigatorFactory(Lcom/htc/gson/ExclusionStrategy;)Lcom/htc/gson/ObjectNavigatorFactory;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/gson/Gson;->serializeNulls:Z

    iget-object v3, p0, Lcom/htc/gson/Gson;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/gson/JsonSerializationContextDefault;-><init>(Lcom/htc/gson/ObjectNavigatorFactory;ZLcom/htc/gson/ParameterizedTypeHandlerMap;)V

    .line 232
    .local v0, context:Lcom/htc/gson/JsonSerializationContextDefault;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/gson/JsonSerializationContextDefault;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/htc/gson/JsonElement;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 512
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

    .line 522
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public final Lcom/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# static fields
.field private static final exposeAnnotationDeserializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;

.field private static final exposeAnnotationSerializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;

.field private static final innerClassExclusionStrategy:Lcom/google/gson/InnerClassExclusionStrategy;


# instance fields
.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

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

.field private escapeHtmlChars:Z

.field private excludeFieldsWithoutExposeAnnotation:Z

.field private final exclusionStrategies:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private ignoreVersionsAfter:D

.field private final instanceCreators:Lcom/google/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

.field private modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

.field private prettyPrinting:Z

.field private serializeInnerClasses:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

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

.field private timeStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/google/gson/InnerClassExclusionStrategy;

    invoke-direct {v0}, Lcom/google/gson/InnerClassExclusionStrategy;-><init>()V

    sput-object v0, Lcom/google/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/google/gson/InnerClassExclusionStrategy;

    .line 58
    new-instance v0, Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;

    invoke-direct {v0}, Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;-><init>()V

    sput-object v0, Lcom/google/gson/GsonBuilder;->exposeAnnotationSerializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;

    .line 61
    new-instance v0, Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;

    invoke-direct {v0}, Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;-><init>()V

    sput-object v0, Lcom/google/gson/GsonBuilder;->exposeAnnotationDeserializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    .line 93
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/google/gson/SyntheticFieldExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/gson/GsonBuilder;->ignoreVersionsAfter:D

    .line 98
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->serializeInnerClasses:Z

    .line 99
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 100
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 101
    sget-object v0, Lcom/google/gson/Gson;->DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/google/gson/ModifierBasedExclusionStrategy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

    .line 102
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    .line 103
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 104
    sget-object v0, Lcom/google/gson/Gson;->DEFAULT_NAMING_POLICY:Lcom/google/gson/FieldNamingStrategy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 105
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 106
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 107
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 108
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 109
    iput v4, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 110
    iput v4, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    .line 111
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 112
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 113
    return-void
.end method

.method private static addTypeAdaptersForDate(Ljava/lang/String;IILcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/ParameterizedTypeHandlerMap;)V
    .locals 4
    .parameter "datePattern"
    .parameter "dateStyle"
    .parameter "timeStyle"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p3, serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonSerializer<*>;>;"
    .local p4, deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonDeserializer<*>;>;"
    const/4 v3, 0x2

    .line 494
    const-class v1, Ljava/util/Date;

    invoke-virtual {p3, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->hasSpecificHandlerFor(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ljava/util/Date;

    invoke-virtual {p4, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->hasSpecificHandlerFor(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, dateTypeAdapter:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 499
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    .end local v0           #dateTypeAdapter:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    invoke-direct {v0, p0}, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    .line 504
    .restart local v0       #dateTypeAdapter:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 505
    const-class v1, Ljava/util/Date;

    invoke-virtual {p3, v1, v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 506
    const-class v1, Ljava/util/Date;

    invoke-virtual {p4, v1, v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 509
    .end local v0           #dateTypeAdapter:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    :cond_1
    return-void

    .line 500
    .restart local v0       #dateTypeAdapter:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    :cond_2
    if-eq p1, v3, :cond_0

    if-eq p2, v3, :cond_0

    .line 501
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    .end local v0           #dateTypeAdapter:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    invoke-direct {v0, p1, p2}, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;-><init>(II)V

    .restart local v0       #dateTypeAdapter:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    goto :goto_0
.end method

.method private registerDeserializer(Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/GsonBuilder;
    .locals 2
    .parameter "typeOfT"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonDeserializer",
            "<TT;>;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 402
    .local p2, deserializer:Lcom/google/gson/JsonDeserializer;,"Lcom/google/gson/JsonDeserializer<TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    new-instance v1, Lcom/google/gson/JsonDeserializerExceptionWrapper;

    invoke-direct {v1, p2}, Lcom/google/gson/JsonDeserializerExceptionWrapper;-><init>(Lcom/google/gson/JsonDeserializer;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 403
    return-object p0
.end method

.method private registerInstanceCreator(Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "typeOfT"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator",
            "<+TT;>;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 372
    .local p2, instanceCreator:Lcom/google/gson/InstanceCreator;,"Lcom/google/gson/InstanceCreator<+TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 373
    return-object p0
.end method

.method private registerSerializer(Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializer;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "typeOfT"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonSerializer",
            "<TT;>;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 387
    .local p2, serializer:Lcom/google/gson/JsonSerializer;,"Lcom/google/gson/JsonSerializer<TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 388
    return-object p0
.end method


# virtual methods
.method public create()Lcom/google/gson/Gson;
    .locals 18

    .prologue
    .line 438
    new-instance v13, Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    invoke-direct {v13, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 440
    .local v13, serializationStrategies:Ljava/util/List;,"Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    new-instance v12, Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    invoke-direct {v12, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 443
    .local v12, deserializationStrategies:Ljava/util/List;,"Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/gson/GsonBuilder;->serializeInnerClasses:Z

    if-nez v4, :cond_0

    .line 447
    sget-object v4, Lcom/google/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/google/gson/InnerClassExclusionStrategy;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    sget-object v4, Lcom/google/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/google/gson/InnerClassExclusionStrategy;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/gson/GsonBuilder;->ignoreVersionsAfter:D

    const-wide/high16 v16, -0x4010

    cmpl-double v4, v14, v16

    if-eqz v4, :cond_1

    .line 451
    new-instance v4, Lcom/google/gson/VersionExclusionStrategy;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/gson/GsonBuilder;->ignoreVersionsAfter:D

    invoke-direct {v4, v14, v15}, Lcom/google/gson/VersionExclusionStrategy;-><init>(D)V

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v4, Lcom/google/gson/VersionExclusionStrategy;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/gson/GsonBuilder;->ignoreVersionsAfter:D

    invoke-direct {v4, v14, v15}, Lcom/google/gson/VersionExclusionStrategy;-><init>(D)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    if-eqz v4, :cond_2

    .line 455
    sget-object v4, Lcom/google/gson/GsonBuilder;->exposeAnnotationSerializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    sget-object v4, Lcom/google/gson/GsonBuilder;->exposeAnnotationDeserializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_2
    new-instance v2, Lcom/google/gson/DisjunctionExclusionStrategy;

    invoke-direct {v2, v13}, Lcom/google/gson/DisjunctionExclusionStrategy;-><init>(Ljava/util/Collection;)V

    .line 460
    .local v2, serializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;
    new-instance v3, Lcom/google/gson/DisjunctionExclusionStrategy;

    invoke-direct {v3, v12}, Lcom/google/gson/DisjunctionExclusionStrategy;-><init>(Ljava/util/Collection;)V

    .line 463
    .local v3, deserializationExclusionStrategy:Lcom/google/gson/ExclusionStrategy;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gson/GsonBuilder;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v4}, Lcom/google/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v8

    .line 464
    .local v8, customSerializers:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonSerializer<*>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gson/GsonBuilder;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v4}, Lcom/google/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v9

    .line 465
    .local v9, customDeserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonDeserializer<*>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    invoke-static {v4, v7, v10, v8, v9}, Lcom/google/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 468
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    invoke-static {v4, v7}, Lcom/google/gson/DefaultTypeAdapters;->getDefaultSerializers(ZLcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 471
    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->getDefaultDeserializers()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gson/GsonBuilder;->instanceCreators:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v4}, Lcom/google/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v11

    .line 475
    .local v11, customInstanceCreators:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/InstanceCreator<*>;>;"
    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->getDefaultInstanceCreators()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 477
    invoke-virtual {v8}, Lcom/google/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 478
    invoke-virtual {v9}, Lcom/google/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gson/GsonBuilder;->instanceCreators:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v4}, Lcom/google/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 481
    new-instance v5, Lcom/google/gson/MappedObjectConstructor;

    invoke-direct {v5, v11}, Lcom/google/gson/MappedObjectConstructor;-><init>(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 483
    .local v5, objConstructor:Lcom/google/gson/MappedObjectConstructor;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    if-eqz v4, :cond_3

    new-instance v6, Lcom/google/gson/JsonPrintFormatter;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    invoke-direct {v6, v4}, Lcom/google/gson/JsonPrintFormatter;-><init>(Z)V

    .line 485
    .local v6, formatter:Lcom/google/gson/JsonFormatter;
    :goto_0
    new-instance v1, Lcom/google/gson/Gson;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    invoke-direct/range {v1 .. v10}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/MappedObjectConstructor;Lcom/google/gson/JsonFormatter;ZLcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/ParameterizedTypeHandlerMap;Z)V

    .line 488
    .local v1, gson:Lcom/google/gson/Gson;
    return-object v1

    .line 483
    .end local v1           #gson:Lcom/google/gson/Gson;
    .end local v6           #formatter:Lcom/google/gson/JsonFormatter;
    :cond_3
    new-instance v6, Lcom/google/gson/JsonCompactFormatter;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    invoke-direct {v6, v4}, Lcom/google/gson/JsonCompactFormatter;-><init>(Z)V

    goto :goto_0
.end method

.method public disableHtmlEscaping()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 267
    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeInnerClasses:Z

    .line 188
    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "modifiers"

    .prologue
    .line 139
    new-instance v0, Lcom/google/gson/ModifierBasedExclusionStrategy;

    invoke-direct {v0, p1}, Lcom/google/gson/ModifierBasedExclusionStrategy;-><init>([I)V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

    .line 140
    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    .line 165
    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 154
    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "type"
    .parameter "typeAdapter"

    .prologue
    .line 345
    instance-of v0, p2, Lcom/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/gson/InstanceCreator;

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/gson/Preconditions;->checkArgument(Z)V

    .line 347
    instance-of v0, p2, Lcom/google/gson/InstanceCreator;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 348
    check-cast v0, Lcom/google/gson/InstanceCreator;

    invoke-direct {p0, p1, v0}, Lcom/google/gson/GsonBuilder;->registerInstanceCreator(Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator;)Lcom/google/gson/GsonBuilder;

    .line 350
    :cond_1
    instance-of v0, p2, Lcom/google/gson/JsonSerializer;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 351
    check-cast v0, Lcom/google/gson/JsonSerializer;

    invoke-direct {p0, p1, v0}, Lcom/google/gson/GsonBuilder;->registerSerializer(Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializer;)Lcom/google/gson/GsonBuilder;

    .line 353
    :cond_2
    instance-of v0, p2, Lcom/google/gson/JsonDeserializer;

    if-eqz v0, :cond_3

    .line 354
    check-cast p2, Lcom/google/gson/JsonDeserializer;

    .end local p2
    invoke-direct {p0, p1, p2}, Lcom/google/gson/GsonBuilder;->registerDeserializer(Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/GsonBuilder;

    .line 356
    :cond_3
    return-object p0

    .line 345
    .restart local p2
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeNulls()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 177
    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 428
    return-object p0
.end method

.method public setDateFormat(I)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "style"

    .prologue
    .line 304
    iput p1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 306
    return-object p0
.end method

.method public setDateFormat(II)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    .line 325
    iput p1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 326
    iput p2, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 328
    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;
    .locals 0
    .parameter "pattern"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 286
    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
    .locals 5
    .parameter "strategies"

    .prologue
    .line 241
    move-object v0, p1

    .local v0, arr$:[Lcom/google/gson/ExclusionStrategy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 242
    .local v3, strategy:Lcom/google/gson/ExclusionStrategy;
    iget-object v4, p0, Lcom/google/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v3           #strategy:Lcom/google/gson/ExclusionStrategy;
    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "namingConvention"

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/google/gson/FieldNamingPolicy;->getFieldNamingPolicy()Lcom/google/gson/FieldNamingStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/GsonBuilder;->setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .parameter "fieldNamingStrategy"

    .prologue
    .line 225
    new-instance v0, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;

    invoke-direct {v0, p1}, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;-><init>(Lcom/google/gson/FieldNamingStrategy;)V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 227
    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/GsonBuilder;
    .locals 0
    .parameter "serializationPolicy"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 201
    return-object p0
.end method

.method public setPrettyPrinting()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 255
    return-object p0
.end method

.method public setVersion(D)Lcom/google/gson/GsonBuilder;
    .locals 0
    .parameter "ignoreVersionsAfter"

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/google/gson/GsonBuilder;->ignoreVersionsAfter:D

    .line 124
    return-object p0
.end method

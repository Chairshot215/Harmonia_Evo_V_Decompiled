.class public final Lcom/htc/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# static fields
.field private static final exposeAnnotationDeserializationExclusionStrategy:Lcom/htc/gson/ExposeAnnotationDeserializationExclusionStrategy;

.field private static final exposeAnnotationSerializationExclusionStrategy:Lcom/htc/gson/ExposeAnnotationSerializationExclusionStrategy;

.field private static final innerClassExclusionStrategy:Lcom/htc/gson/InnerClassExclusionStrategy;


# instance fields
.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

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

.field private escapeHtmlChars:Z

.field private excludeFieldsWithoutExposeAnnotation:Z

.field private final exclusionStrategies:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private ignoreVersionsAfter:D

.field private final instanceCreators:Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private longSerializationPolicy:Lcom/htc/gson/LongSerializationPolicy;

.field private modifierBasedExclusionStrategy:Lcom/htc/gson/ModifierBasedExclusionStrategy;

.field private prettyPrinting:Z

.field private serializeInnerClasses:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

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

.field private timeStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/htc/gson/InnerClassExclusionStrategy;

    invoke-direct {v0}, Lcom/htc/gson/InnerClassExclusionStrategy;-><init>()V

    sput-object v0, Lcom/htc/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/htc/gson/InnerClassExclusionStrategy;

    .line 60
    new-instance v0, Lcom/htc/gson/ExposeAnnotationSerializationExclusionStrategy;

    invoke-direct {v0}, Lcom/htc/gson/ExposeAnnotationSerializationExclusionStrategy;-><init>()V

    sput-object v0, Lcom/htc/gson/GsonBuilder;->exposeAnnotationSerializationExclusionStrategy:Lcom/htc/gson/ExposeAnnotationSerializationExclusionStrategy;

    .line 63
    new-instance v0, Lcom/htc/gson/ExposeAnnotationDeserializationExclusionStrategy;

    invoke-direct {v0}, Lcom/htc/gson/ExposeAnnotationDeserializationExclusionStrategy;-><init>()V

    sput-object v0, Lcom/htc/gson/GsonBuilder;->exposeAnnotationDeserializationExclusionStrategy:Lcom/htc/gson/ExposeAnnotationDeserializationExclusionStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    .line 95
    iget-object v0, p0, Lcom/htc/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    sget-object v1, Lcom/htc/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/htc/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/htc/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    sget-object v1, Lcom/htc/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/htc/gson/SyntheticFieldExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/htc/gson/GsonBuilder;->ignoreVersionsAfter:D

    .line 100
    iput-boolean v3, p0, Lcom/htc/gson/GsonBuilder;->serializeInnerClasses:Z

    .line 101
    iput-boolean v2, p0, Lcom/htc/gson/GsonBuilder;->prettyPrinting:Z

    .line 102
    iput-boolean v3, p0, Lcom/htc/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 103
    sget-object v0, Lcom/htc/gson/Gson;->DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/htc/gson/ModifierBasedExclusionStrategy;

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/htc/gson/ModifierBasedExclusionStrategy;

    .line 104
    iput-boolean v2, p0, Lcom/htc/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    .line 105
    sget-object v0, Lcom/htc/gson/LongSerializationPolicy;->DEFAULT:Lcom/htc/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->longSerializationPolicy:Lcom/htc/gson/LongSerializationPolicy;

    .line 106
    sget-object v0, Lcom/htc/gson/Gson;->DEFAULT_NAMING_POLICY:Lcom/htc/gson/FieldNamingStrategy;

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

    .line 107
    new-instance v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->instanceCreators:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    .line 108
    new-instance v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    .line 109
    new-instance v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    .line 110
    iput-boolean v2, p0, Lcom/htc/gson/GsonBuilder;->serializeNulls:Z

    .line 111
    iput v4, p0, Lcom/htc/gson/GsonBuilder;->dateStyle:I

    .line 112
    iput v4, p0, Lcom/htc/gson/GsonBuilder;->timeStyle:I

    .line 113
    iput-boolean v2, p0, Lcom/htc/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 114
    iput-boolean v2, p0, Lcom/htc/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 115
    return-void
.end method

.method private static addTypeAdaptersForDate(Ljava/lang/String;IILcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/ParameterizedTypeHandlerMap;)V
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
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonSerializer",
            "<*>;>;",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p3, serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/JsonSerializer<*>;>;"
    .local p4, deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/JsonDeserializer<*>;>;"
    const/4 v3, 0x2

    .line 496
    const-class v1, Ljava/util/Date;

    invoke-virtual {p3, v1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->hasSpecificHandlerFor(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ljava/util/Date;

    invoke-virtual {p4, v1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->hasSpecificHandlerFor(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, dateTypeAdapter:Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 501
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    .end local v0           #dateTypeAdapter:Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    invoke-direct {v0, p0}, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    .line 506
    .restart local v0       #dateTypeAdapter:Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 507
    const-class v1, Ljava/util/Date;

    invoke-virtual {p3, v1, v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 508
    const-class v1, Ljava/util/Date;

    invoke-virtual {p4, v1, v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 511
    .end local v0           #dateTypeAdapter:Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    :cond_1
    return-void

    .line 502
    .restart local v0       #dateTypeAdapter:Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    :cond_2
    if-eq p1, v3, :cond_0

    if-eq p2, v3, :cond_0

    .line 503
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    .end local v0           #dateTypeAdapter:Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    invoke-direct {v0, p1, p2}, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;-><init>(II)V

    .restart local v0       #dateTypeAdapter:Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    goto :goto_0
.end method

.method private registerDeserializer(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/GsonBuilder;
    .locals 2
    .parameter "typeOfT"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/htc/gson/JsonDeserializer",
            "<TT;>;)",
            "Lcom/htc/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 404
    .local p2, deserializer:Lcom/htc/gson/JsonDeserializer;,"Lcom/htc/gson/JsonDeserializer<TT;>;"
    iget-object v0, p0, Lcom/htc/gson/GsonBuilder;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    new-instance v1, Lcom/htc/gson/JsonDeserializerExceptionWrapper;

    invoke-direct {v1, p2}, Lcom/htc/gson/JsonDeserializerExceptionWrapper;-><init>(Lcom/htc/gson/JsonDeserializer;)V

    invoke-virtual {v0, p1, v1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 405
    return-object p0
.end method

.method private registerInstanceCreator(Ljava/lang/reflect/Type;Lcom/htc/gson/InstanceCreator;)Lcom/htc/gson/GsonBuilder;
    .locals 1
    .parameter "typeOfT"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/htc/gson/InstanceCreator",
            "<+TT;>;)",
            "Lcom/htc/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 374
    .local p2, instanceCreator:Lcom/htc/gson/InstanceCreator;,"Lcom/htc/gson/InstanceCreator<+TT;>;"
    iget-object v0, p0, Lcom/htc/gson/GsonBuilder;->instanceCreators:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 375
    return-object p0
.end method

.method private registerSerializer(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializer;)Lcom/htc/gson/GsonBuilder;
    .locals 1
    .parameter "typeOfT"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/htc/gson/JsonSerializer",
            "<TT;>;)",
            "Lcom/htc/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 389
    .local p2, serializer:Lcom/htc/gson/JsonSerializer;,"Lcom/htc/gson/JsonSerializer<TT;>;"
    iget-object v0, p0, Lcom/htc/gson/GsonBuilder;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 390
    return-object p0
.end method


# virtual methods
.method public create()Lcom/htc/gson/Gson;
    .locals 18

    .prologue
    .line 440
    new-instance v13, Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    invoke-direct {v13, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 442
    .local v13, serializationStrategies:Ljava/util/List;,"Ljava/util/List<Lcom/htc/gson/ExclusionStrategy;>;"
    new-instance v12, Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    invoke-direct {v12, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 445
    .local v12, deserializationStrategies:Ljava/util/List;,"Ljava/util/List<Lcom/htc/gson/ExclusionStrategy;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/htc/gson/ModifierBasedExclusionStrategy;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/htc/gson/ModifierBasedExclusionStrategy;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/gson/GsonBuilder;->serializeInnerClasses:Z

    if-nez v4, :cond_0

    .line 449
    sget-object v4, Lcom/htc/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/htc/gson/InnerClassExclusionStrategy;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    sget-object v4, Lcom/htc/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/htc/gson/InnerClassExclusionStrategy;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/gson/GsonBuilder;->ignoreVersionsAfter:D

    const-wide/high16 v16, -0x4010

    cmpl-double v4, v14, v16

    if-eqz v4, :cond_1

    .line 453
    new-instance v4, Lcom/htc/gson/VersionExclusionStrategy;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/gson/GsonBuilder;->ignoreVersionsAfter:D

    invoke-direct {v4, v14, v15}, Lcom/htc/gson/VersionExclusionStrategy;-><init>(D)V

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v4, Lcom/htc/gson/VersionExclusionStrategy;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/gson/GsonBuilder;->ignoreVersionsAfter:D

    invoke-direct {v4, v14, v15}, Lcom/htc/gson/VersionExclusionStrategy;-><init>(D)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    if-eqz v4, :cond_2

    .line 457
    sget-object v4, Lcom/htc/gson/GsonBuilder;->exposeAnnotationSerializationExclusionStrategy:Lcom/htc/gson/ExposeAnnotationSerializationExclusionStrategy;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    sget-object v4, Lcom/htc/gson/GsonBuilder;->exposeAnnotationDeserializationExclusionStrategy:Lcom/htc/gson/ExposeAnnotationDeserializationExclusionStrategy;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_2
    new-instance v2, Lcom/htc/gson/DisjunctionExclusionStrategy;

    invoke-direct {v2, v13}, Lcom/htc/gson/DisjunctionExclusionStrategy;-><init>(Ljava/util/Collection;)V

    .line 462
    .local v2, serializationExclusionStrategy:Lcom/htc/gson/ExclusionStrategy;
    new-instance v3, Lcom/htc/gson/DisjunctionExclusionStrategy;

    invoke-direct {v3, v12}, Lcom/htc/gson/DisjunctionExclusionStrategy;-><init>(Ljava/util/Collection;)V

    .line 465
    .local v3, deserializationExclusionStrategy:Lcom/htc/gson/ExclusionStrategy;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v8

    .line 466
    .local v8, customSerializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/JsonSerializer<*>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v9

    .line 467
    .local v9, customDeserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/JsonDeserializer<*>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/gson/GsonBuilder;->dateStyle:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/gson/GsonBuilder;->timeStyle:I

    invoke-static {v4, v7, v10, v8, v9}, Lcom/htc/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/ParameterizedTypeHandlerMap;)V

    .line 470
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/gson/GsonBuilder;->longSerializationPolicy:Lcom/htc/gson/LongSerializationPolicy;

    invoke-static {v4, v7}, Lcom/htc/gson/DefaultTypeAdapters;->getDefaultSerializers(ZLcom/htc/gson/LongSerializationPolicy;)Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/htc/gson/ParameterizedTypeHandlerMap;)V

    .line 473
    invoke-static {}, Lcom/htc/gson/DefaultTypeAdapters;->getDefaultDeserializers()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/htc/gson/ParameterizedTypeHandlerMap;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->instanceCreators:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v11

    .line 477
    .local v11, customInstanceCreators:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/InstanceCreator<*>;>;"
    invoke-static {}, Lcom/htc/gson/DefaultTypeAdapters;->getDefaultInstanceCreators()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/htc/gson/ParameterizedTypeHandlerMap;)V

    .line 479
    invoke-virtual {v8}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 480
    invoke-virtual {v9}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->instanceCreators:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 483
    new-instance v5, Lcom/htc/gson/MappedObjectConstructor;

    invoke-direct {v5, v11}, Lcom/htc/gson/MappedObjectConstructor;-><init>(Lcom/htc/gson/ParameterizedTypeHandlerMap;)V

    .line 485
    .local v5, objConstructor:Lcom/htc/gson/MappedObjectConstructor;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/gson/GsonBuilder;->prettyPrinting:Z

    if-eqz v4, :cond_3

    new-instance v6, Lcom/htc/gson/JsonPrintFormatter;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/gson/GsonBuilder;->escapeHtmlChars:Z

    invoke-direct {v6, v4}, Lcom/htc/gson/JsonPrintFormatter;-><init>(Z)V

    .line 487
    .local v6, formatter:Lcom/htc/gson/JsonFormatter;
    :goto_0
    new-instance v1, Lcom/htc/gson/Gson;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/htc/gson/GsonBuilder;->serializeNulls:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/gson/GsonBuilder;->generateNonExecutableJson:Z

    invoke-direct/range {v1 .. v10}, Lcom/htc/gson/Gson;-><init>(Lcom/htc/gson/ExclusionStrategy;Lcom/htc/gson/ExclusionStrategy;Lcom/htc/gson/FieldNamingStrategy;Lcom/htc/gson/MappedObjectConstructor;Lcom/htc/gson/JsonFormatter;ZLcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/ParameterizedTypeHandlerMap;Z)V

    .line 490
    .local v1, gson:Lcom/htc/gson/Gson;
    return-object v1

    .line 485
    .end local v1           #gson:Lcom/htc/gson/Gson;
    .end local v6           #formatter:Lcom/htc/gson/JsonFormatter;
    :cond_3
    new-instance v6, Lcom/htc/gson/JsonCompactFormatter;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/gson/GsonBuilder;->escapeHtmlChars:Z

    invoke-direct {v6, v4}, Lcom/htc/gson/JsonCompactFormatter;-><init>(Z)V

    goto :goto_0
.end method

.method public disableHtmlEscaping()Lcom/htc/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 269
    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/htc/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/gson/GsonBuilder;->serializeInnerClasses:Z

    .line 190
    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/htc/gson/GsonBuilder;
    .locals 1
    .parameter "modifiers"

    .prologue
    .line 141
    new-instance v0, Lcom/htc/gson/ModifierBasedExclusionStrategy;

    invoke-direct {v0, p1}, Lcom/htc/gson/ModifierBasedExclusionStrategy;-><init>([I)V

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/htc/gson/ModifierBasedExclusionStrategy;

    .line 142
    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/htc/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    .line 167
    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/htc/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 156
    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/htc/gson/GsonBuilder;
    .locals 1
    .parameter "type"
    .parameter "typeAdapter"

    .prologue
    .line 347
    instance-of v0, p2, Lcom/htc/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/htc/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/htc/gson/InstanceCreator;

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/htc/gson/Preconditions;->checkArgument(Z)V

    .line 349
    instance-of v0, p2, Lcom/htc/gson/InstanceCreator;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 350
    check-cast v0, Lcom/htc/gson/InstanceCreator;

    invoke-direct {p0, p1, v0}, Lcom/htc/gson/GsonBuilder;->registerInstanceCreator(Ljava/lang/reflect/Type;Lcom/htc/gson/InstanceCreator;)Lcom/htc/gson/GsonBuilder;

    .line 352
    :cond_1
    instance-of v0, p2, Lcom/htc/gson/JsonSerializer;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 353
    check-cast v0, Lcom/htc/gson/JsonSerializer;

    invoke-direct {p0, p1, v0}, Lcom/htc/gson/GsonBuilder;->registerSerializer(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializer;)Lcom/htc/gson/GsonBuilder;

    .line 355
    :cond_2
    instance-of v0, p2, Lcom/htc/gson/JsonDeserializer;

    if-eqz v0, :cond_3

    .line 356
    check-cast p2, Lcom/htc/gson/JsonDeserializer;

    .end local p2
    invoke-direct {p0, p1, p2}, Lcom/htc/gson/GsonBuilder;->registerDeserializer(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/GsonBuilder;

    .line 358
    :cond_3
    return-object p0

    .line 347
    .restart local p2
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeNulls()Lcom/htc/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/gson/GsonBuilder;->serializeNulls:Z

    .line 179
    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/htc/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 430
    return-object p0
.end method

.method public setDateFormat(I)Lcom/htc/gson/GsonBuilder;
    .locals 1
    .parameter "style"

    .prologue
    .line 306
    iput p1, p0, Lcom/htc/gson/GsonBuilder;->dateStyle:I

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 308
    return-object p0
.end method

.method public setDateFormat(II)Lcom/htc/gson/GsonBuilder;
    .locals 1
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    .line 327
    iput p1, p0, Lcom/htc/gson/GsonBuilder;->dateStyle:I

    .line 328
    iput p2, p0, Lcom/htc/gson/GsonBuilder;->timeStyle:I

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 330
    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/htc/gson/GsonBuilder;
    .locals 0
    .parameter "pattern"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/htc/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 288
    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/htc/gson/ExclusionStrategy;)Lcom/htc/gson/GsonBuilder;
    .locals 5
    .parameter "strategies"

    .prologue
    .line 243
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/gson/ExclusionStrategy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 244
    .local v3, strategy:Lcom/htc/gson/ExclusionStrategy;
    iget-object v4, p0, Lcom/htc/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v3           #strategy:Lcom/htc/gson/ExclusionStrategy;
    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/htc/gson/FieldNamingPolicy;)Lcom/htc/gson/GsonBuilder;
    .locals 1
    .parameter "namingConvention"

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/htc/gson/FieldNamingPolicy;->getFieldNamingPolicy()Lcom/htc/gson/FieldNamingStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/gson/GsonBuilder;->setFieldNamingStrategy(Lcom/htc/gson/FieldNamingStrategy;)Lcom/htc/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setFieldNamingStrategy(Lcom/htc/gson/FieldNamingStrategy;)Lcom/htc/gson/GsonBuilder;
    .locals 1
    .parameter "fieldNamingStrategy"

    .prologue
    .line 227
    new-instance v0, Lcom/htc/gson/SerializedNameAnnotationInterceptingNamingPolicy;

    invoke-direct {v0, p1}, Lcom/htc/gson/SerializedNameAnnotationInterceptingNamingPolicy;-><init>(Lcom/htc/gson/FieldNamingStrategy;)V

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

    .line 229
    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/htc/gson/LongSerializationPolicy;)Lcom/htc/gson/GsonBuilder;
    .locals 0
    .parameter "serializationPolicy"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/htc/gson/GsonBuilder;->longSerializationPolicy:Lcom/htc/gson/LongSerializationPolicy;

    .line 203
    return-object p0
.end method

.method public setPrettyPrinting()Lcom/htc/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/gson/GsonBuilder;->prettyPrinting:Z

    .line 257
    return-object p0
.end method

.method public setVersion(D)Lcom/htc/gson/GsonBuilder;
    .locals 0
    .parameter "ignoreVersionsAfter"

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/htc/gson/GsonBuilder;->ignoreVersionsAfter:D

    .line 126
    return-object p0
.end method

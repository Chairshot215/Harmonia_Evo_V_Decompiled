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

    new-instance v0, Lcom/htc/gson/InnerClassExclusionStrategy;

    invoke-direct {v0}, Lcom/htc/gson/InnerClassExclusionStrategy;-><init>()V

    sput-object v0, Lcom/htc/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/htc/gson/InnerClassExclusionStrategy;

    new-instance v0, Lcom/htc/gson/ExposeAnnotationSerializationExclusionStrategy;

    invoke-direct {v0}, Lcom/htc/gson/ExposeAnnotationSerializationExclusionStrategy;-><init>()V

    sput-object v0, Lcom/htc/gson/GsonBuilder;->exposeAnnotationSerializationExclusionStrategy:Lcom/htc/gson/ExposeAnnotationSerializationExclusionStrategy;

    new-instance v0, Lcom/htc/gson/ExposeAnnotationDeserializationExclusionStrategy;

    invoke-direct {v0}, Lcom/htc/gson/ExposeAnnotationDeserializationExclusionStrategy;-><init>()V

    sput-object v0, Lcom/htc/gson/GsonBuilder;->exposeAnnotationDeserializationExclusionStrategy:Lcom/htc/gson/ExposeAnnotationDeserializationExclusionStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    iget-object v0, p0, Lcom/htc/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    sget-object v1, Lcom/htc/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/htc/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/htc/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    sget-object v1, Lcom/htc/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/htc/gson/SyntheticFieldExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/htc/gson/GsonBuilder;->ignoreVersionsAfter:D

    iput-boolean v3, p0, Lcom/htc/gson/GsonBuilder;->serializeInnerClasses:Z

    iput-boolean v2, p0, Lcom/htc/gson/GsonBuilder;->prettyPrinting:Z

    iput-boolean v3, p0, Lcom/htc/gson/GsonBuilder;->escapeHtmlChars:Z

    sget-object v0, Lcom/htc/gson/Gson;->DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/htc/gson/ModifierBasedExclusionStrategy;

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/htc/gson/ModifierBasedExclusionStrategy;

    iput-boolean v2, p0, Lcom/htc/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    sget-object v0, Lcom/htc/gson/LongSerializationPolicy;->DEFAULT:Lcom/htc/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->longSerializationPolicy:Lcom/htc/gson/LongSerializationPolicy;

    sget-object v0, Lcom/htc/gson/Gson;->DEFAULT_NAMING_POLICY:Lcom/htc/gson/FieldNamingStrategy;

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

    new-instance v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->instanceCreators:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    new-instance v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    new-instance v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    iput-boolean v2, p0, Lcom/htc/gson/GsonBuilder;->serializeNulls:Z

    iput v4, p0, Lcom/htc/gson/GsonBuilder;->dateStyle:I

    iput v4, p0, Lcom/htc/gson/GsonBuilder;->timeStyle:I

    iput-boolean v2, p0, Lcom/htc/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iput-boolean v2, p0, Lcom/htc/gson/GsonBuilder;->generateNonExecutableJson:Z

    return-void
.end method

.method private static addTypeAdaptersForDate(Ljava/lang/String;IILcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/ParameterizedTypeHandlerMap;)V
    .locals 4
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

    const/4 v3, 0x2

    const-class v1, Ljava/util/Date;

    invoke-virtual {p3, v1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->hasSpecificHandlerFor(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ljava/util/Date;

    invoke-virtual {p4, v1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->hasSpecificHandlerFor(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-direct {v0, p0}, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-class v1, Ljava/util/Date;

    invoke-virtual {p3, v1, v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Date;

    invoke-virtual {p4, v1, v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    if-eq p1, v3, :cond_0

    if-eq p2, v3, :cond_0

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-direct {v0, p1, p2}, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;-><init>(II)V

    goto :goto_0
.end method

.method private registerDeserializer(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/GsonBuilder;
    .locals 2
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

    iget-object v0, p0, Lcom/htc/gson/GsonBuilder;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    new-instance v1, Lcom/htc/gson/JsonDeserializerExceptionWrapper;

    invoke-direct {v1, p2}, Lcom/htc/gson/JsonDeserializerExceptionWrapper;-><init>(Lcom/htc/gson/JsonDeserializer;)V

    invoke-virtual {v0, p1, v1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    return-object p0
.end method

.method private registerInstanceCreator(Ljava/lang/reflect/Type;Lcom/htc/gson/InstanceCreator;)Lcom/htc/gson/GsonBuilder;
    .locals 1
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

    iget-object v0, p0, Lcom/htc/gson/GsonBuilder;->instanceCreators:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    return-object p0
.end method

.method private registerSerializer(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializer;)Lcom/htc/gson/GsonBuilder;
    .locals 1
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

    iget-object v0, p0, Lcom/htc/gson/GsonBuilder;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public create()Lcom/htc/gson/Gson;
    .locals 18

    new-instance v13, Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    invoke-direct {v13, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance v12, Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    invoke-direct {v12, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/htc/gson/ModifierBasedExclusionStrategy;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/htc/gson/ModifierBasedExclusionStrategy;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/gson/GsonBuilder;->serializeInnerClasses:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/htc/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/htc/gson/InnerClassExclusionStrategy;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/htc/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/htc/gson/InnerClassExclusionStrategy;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/gson/GsonBuilder;->ignoreVersionsAfter:D

    const-wide/high16 v16, -0x4010

    cmpl-double v4, v14, v16

    if-eqz v4, :cond_1

    new-instance v4, Lcom/htc/gson/VersionExclusionStrategy;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/gson/GsonBuilder;->ignoreVersionsAfter:D

    invoke-direct {v4, v14, v15}, Lcom/htc/gson/VersionExclusionStrategy;-><init>(D)V

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/htc/gson/VersionExclusionStrategy;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/gson/GsonBuilder;->ignoreVersionsAfter:D

    invoke-direct {v4, v14, v15}, Lcom/htc/gson/VersionExclusionStrategy;-><init>(D)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/htc/gson/GsonBuilder;->exposeAnnotationSerializationExclusionStrategy:Lcom/htc/gson/ExposeAnnotationSerializationExclusionStrategy;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/htc/gson/GsonBuilder;->exposeAnnotationDeserializationExclusionStrategy:Lcom/htc/gson/ExposeAnnotationDeserializationExclusionStrategy;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v2, Lcom/htc/gson/DisjunctionExclusionStrategy;

    invoke-direct {v2, v13}, Lcom/htc/gson/DisjunctionExclusionStrategy;-><init>(Ljava/util/Collection;)V

    new-instance v3, Lcom/htc/gson/DisjunctionExclusionStrategy;

    invoke-direct {v3, v12}, Lcom/htc/gson/DisjunctionExclusionStrategy;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/gson/GsonBuilder;->dateStyle:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/gson/GsonBuilder;->timeStyle:I

    invoke-static {v4, v7, v10, v8, v9}, Lcom/htc/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/ParameterizedTypeHandlerMap;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/gson/GsonBuilder;->longSerializationPolicy:Lcom/htc/gson/LongSerializationPolicy;

    invoke-static {v4, v7}, Lcom/htc/gson/DefaultTypeAdapters;->getDefaultSerializers(ZLcom/htc/gson/LongSerializationPolicy;)Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/htc/gson/ParameterizedTypeHandlerMap;)V

    invoke-static {}, Lcom/htc/gson/DefaultTypeAdapters;->getDefaultDeserializers()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/htc/gson/ParameterizedTypeHandlerMap;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->instanceCreators:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v11

    invoke-static {}, Lcom/htc/gson/DefaultTypeAdapters;->getDefaultInstanceCreators()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/htc/gson/ParameterizedTypeHandlerMap;)V

    invoke-virtual {v8}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    invoke-virtual {v9}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->instanceCreators:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    new-instance v5, Lcom/htc/gson/MappedObjectConstructor;

    invoke-direct {v5, v11}, Lcom/htc/gson/MappedObjectConstructor;-><init>(Lcom/htc/gson/ParameterizedTypeHandlerMap;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/gson/GsonBuilder;->prettyPrinting:Z

    if-eqz v4, :cond_3

    new-instance v6, Lcom/htc/gson/JsonPrintFormatter;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/gson/GsonBuilder;->escapeHtmlChars:Z

    invoke-direct {v6, v4}, Lcom/htc/gson/JsonPrintFormatter;-><init>(Z)V

    :goto_0
    new-instance v1, Lcom/htc/gson/Gson;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/gson/GsonBuilder;->fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/htc/gson/GsonBuilder;->serializeNulls:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/gson/GsonBuilder;->generateNonExecutableJson:Z

    invoke-direct/range {v1 .. v10}, Lcom/htc/gson/Gson;-><init>(Lcom/htc/gson/ExclusionStrategy;Lcom/htc/gson/ExclusionStrategy;Lcom/htc/gson/FieldNamingStrategy;Lcom/htc/gson/MappedObjectConstructor;Lcom/htc/gson/JsonFormatter;ZLcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/ParameterizedTypeHandlerMap;Z)V

    return-object v1

    :cond_3
    new-instance v6, Lcom/htc/gson/JsonCompactFormatter;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/gson/GsonBuilder;->escapeHtmlChars:Z

    invoke-direct {v6, v4}, Lcom/htc/gson/JsonCompactFormatter;-><init>(Z)V

    goto :goto_0
.end method

.method public disableHtmlEscaping()Lcom/htc/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/gson/GsonBuilder;->escapeHtmlChars:Z

    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/htc/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/gson/GsonBuilder;->serializeInnerClasses:Z

    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/htc/gson/GsonBuilder;
    .locals 1

    new-instance v0, Lcom/htc/gson/ModifierBasedExclusionStrategy;

    invoke-direct {v0, p1}, Lcom/htc/gson/ModifierBasedExclusionStrategy;-><init>([I)V

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/htc/gson/ModifierBasedExclusionStrategy;

    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/htc/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/htc/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/gson/GsonBuilder;->generateNonExecutableJson:Z

    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/htc/gson/GsonBuilder;
    .locals 1

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

    instance-of v0, p2, Lcom/htc/gson/InstanceCreator;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/htc/gson/InstanceCreator;

    invoke-direct {p0, p1, v0}, Lcom/htc/gson/GsonBuilder;->registerInstanceCreator(Ljava/lang/reflect/Type;Lcom/htc/gson/InstanceCreator;)Lcom/htc/gson/GsonBuilder;

    :cond_1
    instance-of v0, p2, Lcom/htc/gson/JsonSerializer;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/htc/gson/JsonSerializer;

    invoke-direct {p0, p1, v0}, Lcom/htc/gson/GsonBuilder;->registerSerializer(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializer;)Lcom/htc/gson/GsonBuilder;

    :cond_2
    instance-of v0, p2, Lcom/htc/gson/JsonDeserializer;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/htc/gson/JsonDeserializer;

    invoke-direct {p0, p1, p2}, Lcom/htc/gson/GsonBuilder;->registerDeserializer(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/GsonBuilder;

    :cond_3
    return-object p0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeNulls()Lcom/htc/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/gson/GsonBuilder;->serializeNulls:Z

    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/htc/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    return-object p0
.end method

.method public setDateFormat(I)Lcom/htc/gson/GsonBuilder;
    .locals 1

    iput p1, p0, Lcom/htc/gson/GsonBuilder;->dateStyle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(II)Lcom/htc/gson/GsonBuilder;
    .locals 1

    iput p1, p0, Lcom/htc/gson/GsonBuilder;->dateStyle:I

    iput p2, p0, Lcom/htc/gson/GsonBuilder;->timeStyle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/htc/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/htc/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/htc/gson/ExclusionStrategy;)Lcom/htc/gson/GsonBuilder;
    .locals 5

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/htc/gson/GsonBuilder;->exclusionStrategies:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/htc/gson/FieldNamingPolicy;)Lcom/htc/gson/GsonBuilder;
    .locals 1

    invoke-virtual {p1}, Lcom/htc/gson/FieldNamingPolicy;->getFieldNamingPolicy()Lcom/htc/gson/FieldNamingStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/gson/GsonBuilder;->setFieldNamingStrategy(Lcom/htc/gson/FieldNamingStrategy;)Lcom/htc/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setFieldNamingStrategy(Lcom/htc/gson/FieldNamingStrategy;)Lcom/htc/gson/GsonBuilder;
    .locals 1

    new-instance v0, Lcom/htc/gson/SerializedNameAnnotationInterceptingNamingPolicy;

    invoke-direct {v0, p1}, Lcom/htc/gson/SerializedNameAnnotationInterceptingNamingPolicy;-><init>(Lcom/htc/gson/FieldNamingStrategy;)V

    iput-object v0, p0, Lcom/htc/gson/GsonBuilder;->fieldNamingPolicy:Lcom/htc/gson/FieldNamingStrategy;

    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/htc/gson/LongSerializationPolicy;)Lcom/htc/gson/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/htc/gson/GsonBuilder;->longSerializationPolicy:Lcom/htc/gson/LongSerializationPolicy;

    return-object p0
.end method

.method public setPrettyPrinting()Lcom/htc/gson/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/gson/GsonBuilder;->prettyPrinting:Z

    return-object p0
.end method

.method public setVersion(D)Lcom/htc/gson/GsonBuilder;
    .locals 0

    iput-wide p1, p0, Lcom/htc/gson/GsonBuilder;->ignoreVersionsAfter:D

    return-object p0
.end method

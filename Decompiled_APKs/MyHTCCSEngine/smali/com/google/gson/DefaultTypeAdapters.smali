.class final Lcom/google/gson/DefaultTypeAdapters;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/DefaultTypeAdapters$1;,
        Lcom/google/gson/DefaultTypeAdapters$HashSetCreator;,
        Lcom/google/gson/DefaultTypeAdapters$TreeSetCreator;,
        Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$StringTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$DoubleDeserializer;,
        Lcom/google/gson/DefaultTypeAdapters$DoubleSerializer;,
        Lcom/google/gson/DefaultTypeAdapters$FloatDeserializer;,
        Lcom/google/gson/DefaultTypeAdapters$FloatSerializer;,
        Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$LongDeserializer;,
        Lcom/google/gson/DefaultTypeAdapters$LongSerializer;,
        Lcom/google/gson/DefaultTypeAdapters$NumberTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$MapTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$PropertiesCreator;,
        Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$LocaleTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$UuidTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$UriTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$UrlTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$EnumTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;,
        Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    }
.end annotation


# static fields
.field private static final BIG_DECIMAL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

.field private static final BIG_INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

.field private static final BOOLEAN_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;

.field private static final BYTE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;

.field private static final CHARACTER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;

.field private static final COLLECTION_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;

.field private static final DATE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

.field private static final DEFAULT_DESERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_INSTANCE_CREATORS:Lcom/google/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_SERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final DOUBLE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DoubleDeserializer;

.field private static final ENUM_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$EnumTypeAdapter;

.field private static final FLOAT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$FloatDeserializer;

.field private static final GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

.field private static final HASH_SET_CREATOR:Lcom/google/gson/DefaultTypeAdapters$HashSetCreator;

.field private static final INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;

.field private static final LOCALE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$LocaleTypeAdapter;

.field private static final LONG_DESERIALIZER:Lcom/google/gson/DefaultTypeAdapters$LongDeserializer;

.field private static final MAP_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$MapTypeAdapter;

.field private static final NUMBER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$NumberTypeAdapter;

.field private static final PROPERTIES_CREATOR:Lcom/google/gson/DefaultTypeAdapters$PropertiesCreator;

.field private static final SHORT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;

.field private static final STRING_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringTypeAdapter;

.field private static final TREE_SET_CREATOR:Lcom/google/gson/DefaultTypeAdapters$TreeSetCreator;

.field private static final URI_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UriTypeAdapter;

.field private static final URL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UrlTypeAdapter;

.field private static final UUUID_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UuidTypeAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-direct {v0}, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;-><init>()V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->DATE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    .line 60
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$EnumTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$EnumTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->ENUM_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$EnumTypeAdapter;

    .line 61
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$UrlTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$UrlTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->URL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UrlTypeAdapter;

    .line 62
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$UriTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$UriTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->URI_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UriTypeAdapter;

    .line 63
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$UuidTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$UuidTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->UUUID_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UuidTypeAdapter;

    .line 64
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$LocaleTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->LOCALE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    .line 65
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    .line 66
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$MapTypeAdapter;

    invoke-direct {v0}, Lcom/google/gson/DefaultTypeAdapters$MapTypeAdapter;-><init>()V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$MapTypeAdapter;

    .line 67
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->BIG_DECIMAL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    .line 68
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->BIG_INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    .line 70
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    .line 71
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;

    .line 72
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    .line 73
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DoubleDeserializer;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$DoubleDeserializer;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->DOUBLE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DoubleDeserializer;

    .line 74
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$FloatDeserializer;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$FloatDeserializer;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->FLOAT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$FloatDeserializer;

    .line 75
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    .line 76
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$LongDeserializer;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$LongDeserializer;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->LONG_DESERIALIZER:Lcom/google/gson/DefaultTypeAdapters$LongDeserializer;

    .line 77
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$NumberTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$NumberTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->NUMBER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$NumberTypeAdapter;

    .line 78
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;

    .line 79
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$StringTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$StringTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->STRING_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringTypeAdapter;

    .line 81
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$PropertiesCreator;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$PropertiesCreator;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->PROPERTIES_CREATOR:Lcom/google/gson/DefaultTypeAdapters$PropertiesCreator;

    .line 82
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$TreeSetCreator;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$TreeSetCreator;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->TREE_SET_CREATOR:Lcom/google/gson/DefaultTypeAdapters$TreeSetCreator;

    .line 83
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$HashSetCreator;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$HashSetCreator;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->HASH_SET_CREATOR:Lcom/google/gson/DefaultTypeAdapters$HashSetCreator;

    .line 84
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    .line 90
    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->createDefaultSerializers()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_SERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 92
    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->createDefaultDeserializers()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_DESERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 94
    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->createDefaultInstanceCreators()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_INSTANCE_CREATORS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 808
    return-void
.end method

.method private static createDefaultDeserializers()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 135
    .local v0, map:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonDeserializer<*>;>;"
    const-class v1, Ljava/lang/Enum;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->ENUM_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$EnumTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 136
    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->URL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UrlTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 137
    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->URI_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UriTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 138
    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->UUUID_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UuidTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 139
    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->LOCALE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 140
    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 141
    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$MapTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 142
    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->DATE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 143
    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 144
    const-class v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 145
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BIG_DECIMAL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 146
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BIG_INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 149
    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 150
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 151
    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 152
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 153
    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 154
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 155
    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->DOUBLE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DoubleDeserializer;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 156
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->DOUBLE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DoubleDeserializer;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 157
    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->FLOAT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$FloatDeserializer;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 158
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->FLOAT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$FloatDeserializer;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 159
    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 160
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 161
    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->LONG_DESERIALIZER:Lcom/google/gson/DefaultTypeAdapters$LongDeserializer;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 162
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->LONG_DESERIALIZER:Lcom/google/gson/DefaultTypeAdapters$LongDeserializer;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 163
    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->NUMBER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$NumberTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 164
    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 165
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 166
    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->STRING_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 169
    return-object v0
.end method

.method private static createDefaultInstanceCreators()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 175
    .local v0, map:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/InstanceCreator<*>;>;"
    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$MapTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 178
    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 179
    const-class v1, Ljava/util/List;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 180
    const-class v1, Ljava/util/Queue;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 182
    const-class v1, Ljava/util/Set;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->HASH_SET_CREATOR:Lcom/google/gson/DefaultTypeAdapters$HashSetCreator;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 183
    const-class v1, Ljava/util/SortedSet;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->TREE_SET_CREATOR:Lcom/google/gson/DefaultTypeAdapters$TreeSetCreator;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 184
    const-class v1, Ljava/util/Properties;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->PROPERTIES_CREATOR:Lcom/google/gson/DefaultTypeAdapters$PropertiesCreator;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 186
    return-object v0
.end method

.method private static createDefaultSerializers()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 101
    .local v0, map:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonSerializer<*>;>;"
    const-class v1, Ljava/lang/Enum;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->ENUM_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$EnumTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 102
    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->URL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UrlTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 103
    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->URI_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UriTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 104
    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->UUUID_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UuidTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 105
    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->LOCALE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 106
    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 107
    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$MapTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 108
    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->DATE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 109
    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 110
    const-class v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 111
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BIG_DECIMAL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 112
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BIG_INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 115
    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 116
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 117
    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 118
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 119
    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 120
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 121
    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 122
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 123
    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->NUMBER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$NumberTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 124
    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 125
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 126
    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->STRING_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 129
    return-object v0
.end method

.method static getDefaultDeserializers()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 226
    sget-object v0, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_DESERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    return-object v0
.end method

.method static getDefaultInstanceCreators()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 230
    sget-object v0, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_INSTANCE_CREATORS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    return-object v0
.end method

.method static getDefaultSerializers()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    sget-object v1, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    invoke-static {v0, v1}, Lcom/google/gson/DefaultTypeAdapters;->getDefaultSerializers(ZLcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultSerializers(ZLcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 5
    .parameter "serializeSpecialFloatingPointValues"
    .parameter "longSerializationPolicy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/gson/LongSerializationPolicy;",
            ")",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v3, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v3}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 204
    .local v3, serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonSerializer<*>;>;"
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DoubleSerializer;

    invoke-direct {v0, p0}, Lcom/google/gson/DefaultTypeAdapters$DoubleSerializer;-><init>(Z)V

    .line 206
    .local v0, doubleSerializer:Lcom/google/gson/DefaultTypeAdapters$DoubleSerializer;
    const-class v4, Ljava/lang/Double;

    invoke-virtual {v3, v4, v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 207
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 210
    new-instance v1, Lcom/google/gson/DefaultTypeAdapters$FloatSerializer;

    invoke-direct {v1, p0}, Lcom/google/gson/DefaultTypeAdapters$FloatSerializer;-><init>(Z)V

    .line 212
    .local v1, floatSerializer:Lcom/google/gson/DefaultTypeAdapters$FloatSerializer;
    const-class v4, Ljava/lang/Float;

    invoke-virtual {v3, v4, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 213
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 216
    new-instance v2, Lcom/google/gson/DefaultTypeAdapters$LongSerializer;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, Lcom/google/gson/DefaultTypeAdapters$LongSerializer;-><init>(Lcom/google/gson/LongSerializationPolicy;Lcom/google/gson/DefaultTypeAdapters$1;)V

    .line 218
    .local v2, longSerializer:Lcom/google/gson/DefaultTypeAdapters$LongSerializer;
    const-class v4, Ljava/lang/Long;

    invoke-virtual {v3, v4, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 219
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 221
    sget-object v4, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_SERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v3, v4}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 222
    return-object v3
.end method

.method private static wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;)",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, deserializer:Lcom/google/gson/JsonDeserializer;,"Lcom/google/gson/JsonDeserializer<*>;"
    new-instance v0, Lcom/google/gson/JsonDeserializerExceptionWrapper;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonDeserializerExceptionWrapper;-><init>(Lcom/google/gson/JsonDeserializer;)V

    return-object v0
.end method

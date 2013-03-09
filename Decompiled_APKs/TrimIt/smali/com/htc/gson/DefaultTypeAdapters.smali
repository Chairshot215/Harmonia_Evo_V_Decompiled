.class final Lcom/htc/gson/DefaultTypeAdapters;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/gson/DefaultTypeAdapters$1;,
        Lcom/htc/gson/DefaultTypeAdapters$HashSetCreator;,
        Lcom/htc/gson/DefaultTypeAdapters$TreeSetCreator;,
        Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$StringTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$DoubleDeserializer;,
        Lcom/htc/gson/DefaultTypeAdapters$DoubleSerializer;,
        Lcom/htc/gson/DefaultTypeAdapters$FloatDeserializer;,
        Lcom/htc/gson/DefaultTypeAdapters$FloatSerializer;,
        Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$LongDeserializer;,
        Lcom/htc/gson/DefaultTypeAdapters$LongSerializer;,
        Lcom/htc/gson/DefaultTypeAdapters$NumberTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$PropertiesCreator;,
        Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$LocaleTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$UuidTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$UriTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$UrlTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;,
        Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    }
.end annotation


# static fields
.field private static final BIG_DECIMAL_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

.field private static final BIG_INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

.field private static final BOOLEAN_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;

.field private static final BYTE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;

.field private static final CHARACTER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;

.field private static final COLLECTION_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

.field private static final DATE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

.field private static final DEFAULT_DESERIALIZERS:Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_INSTANCE_CREATORS:Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_SERIALIZERS:Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final DOUBLE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$DoubleDeserializer;

.field private static final ENUM_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;

.field private static final FLOAT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$FloatDeserializer;

.field private static final GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

.field private static final HASH_SET_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$HashSetCreator;

.field private static final INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;

.field private static final LOCALE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$LocaleTypeAdapter;

.field private static final LONG_DESERIALIZER:Lcom/htc/gson/DefaultTypeAdapters$LongDeserializer;

.field private static final MAP_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;

.field private static final NUMBER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$NumberTypeAdapter;

.field private static final PROPERTIES_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$PropertiesCreator;

.field private static final SHORT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;

.field private static final STRING_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$StringTypeAdapter;

.field private static final TREE_SET_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$TreeSetCreator;

.field private static final URI_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UriTypeAdapter;

.field private static final URL_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UrlTypeAdapter;

.field private static final UUUID_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UuidTypeAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-direct {v0}, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;-><init>()V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->DATE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    .line 62
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->ENUM_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;

    .line 63
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$UrlTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$UrlTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->URL_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UrlTypeAdapter;

    .line 64
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$UriTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$UriTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->URI_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UriTypeAdapter;

    .line 65
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$UuidTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$UuidTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->UUUID_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UuidTypeAdapter;

    .line 66
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$LocaleTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->LOCALE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    .line 67
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    .line 68
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;

    invoke-direct {v0}, Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;-><init>()V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;

    .line 69
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->BIG_DECIMAL_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    .line 70
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->BIG_INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    .line 72
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    .line 73
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;

    .line 74
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    .line 75
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$DoubleDeserializer;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$DoubleDeserializer;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->DOUBLE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$DoubleDeserializer;

    .line 76
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$FloatDeserializer;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$FloatDeserializer;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->FLOAT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$FloatDeserializer;

    .line 77
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    .line 78
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$LongDeserializer;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$LongDeserializer;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->LONG_DESERIALIZER:Lcom/htc/gson/DefaultTypeAdapters$LongDeserializer;

    .line 79
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$NumberTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$NumberTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->NUMBER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$NumberTypeAdapter;

    .line 80
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;

    .line 81
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$StringTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$StringTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->STRING_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$StringTypeAdapter;

    .line 83
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$PropertiesCreator;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$PropertiesCreator;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->PROPERTIES_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$PropertiesCreator;

    .line 84
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$TreeSetCreator;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$TreeSetCreator;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->TREE_SET_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$TreeSetCreator;

    .line 85
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$HashSetCreator;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$HashSetCreator;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->HASH_SET_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$HashSetCreator;

    .line 86
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    .line 92
    invoke-static {}, Lcom/htc/gson/DefaultTypeAdapters;->createDefaultSerializers()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->DEFAULT_SERIALIZERS:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    .line 94
    invoke-static {}, Lcom/htc/gson/DefaultTypeAdapters;->createDefaultDeserializers()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->DEFAULT_DESERIALIZERS:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    .line 96
    invoke-static {}, Lcom/htc/gson/DefaultTypeAdapters;->createDefaultInstanceCreators()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->DEFAULT_INSTANCE_CREATORS:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    return-void
.end method

.method private static createDefaultDeserializers()Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 137
    .local v0, map:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/JsonDeserializer<*>;>;"
    const-class v1, Ljava/lang/Enum;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->ENUM_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 138
    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->URL_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UrlTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 139
    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->URI_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UriTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 140
    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->UUUID_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UuidTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 141
    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->LOCALE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 142
    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 143
    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 144
    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->DATE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 145
    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 146
    const-class v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 147
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BIG_DECIMAL_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 148
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BIG_INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 151
    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 152
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 153
    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 154
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 155
    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 156
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 157
    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->DOUBLE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$DoubleDeserializer;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 158
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->DOUBLE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$DoubleDeserializer;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 159
    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->FLOAT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$FloatDeserializer;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 160
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->FLOAT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$FloatDeserializer;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 161
    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 162
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 163
    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->LONG_DESERIALIZER:Lcom/htc/gson/DefaultTypeAdapters$LongDeserializer;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 164
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->LONG_DESERIALIZER:Lcom/htc/gson/DefaultTypeAdapters$LongDeserializer;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 165
    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->NUMBER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$NumberTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 166
    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 167
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 168
    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->STRING_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$StringTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 171
    return-object v0
.end method

.method private static createDefaultInstanceCreators()Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 177
    .local v0, map:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/InstanceCreator<*>;>;"
    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 180
    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 181
    const-class v1, Ljava/util/List;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 182
    const-class v1, Ljava/util/Queue;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 184
    const-class v1, Ljava/util/Set;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->HASH_SET_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$HashSetCreator;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 185
    const-class v1, Ljava/util/SortedSet;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->TREE_SET_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$TreeSetCreator;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 186
    const-class v1, Ljava/util/Properties;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->PROPERTIES_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$PropertiesCreator;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 187
    invoke-virtual {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 188
    return-object v0
.end method

.method private static createDefaultSerializers()Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 103
    .local v0, map:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/JsonSerializer<*>;>;"
    const-class v1, Ljava/lang/Enum;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->ENUM_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 104
    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->URL_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UrlTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 105
    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->URI_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UriTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 106
    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->UUUID_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UuidTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 107
    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->LOCALE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 108
    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 109
    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 110
    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->DATE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 111
    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 112
    const-class v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 113
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BIG_DECIMAL_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 114
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BIG_INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 117
    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 118
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 119
    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 120
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 121
    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 122
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 123
    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 124
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 125
    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->NUMBER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$NumberTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 126
    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 127
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 128
    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->STRING_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$StringTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 131
    return-object v0
.end method

.method static getDefaultDeserializers()Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 228
    sget-object v0, Lcom/htc/gson/DefaultTypeAdapters;->DEFAULT_DESERIALIZERS:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    return-object v0
.end method

.method static getDefaultInstanceCreators()Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 232
    sget-object v0, Lcom/htc/gson/DefaultTypeAdapters;->DEFAULT_INSTANCE_CREATORS:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    return-object v0
.end method

.method static getDefaultSerializers()Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x0

    sget-object v1, Lcom/htc/gson/LongSerializationPolicy;->DEFAULT:Lcom/htc/gson/LongSerializationPolicy;

    invoke-static {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters;->getDefaultSerializers(ZLcom/htc/gson/LongSerializationPolicy;)Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultSerializers(ZLcom/htc/gson/LongSerializationPolicy;)Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .locals 5
    .parameter "serializeSpecialFloatingPointValues"
    .parameter "longSerializationPolicy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/htc/gson/LongSerializationPolicy;",
            ")",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v3, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v3}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 206
    .local v3, serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/JsonSerializer<*>;>;"
    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$DoubleSerializer;

    invoke-direct {v0, p0}, Lcom/htc/gson/DefaultTypeAdapters$DoubleSerializer;-><init>(Z)V

    .line 208
    .local v0, doubleSerializer:Lcom/htc/gson/DefaultTypeAdapters$DoubleSerializer;
    const-class v4, Ljava/lang/Double;

    invoke-virtual {v3, v4, v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 209
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 212
    new-instance v1, Lcom/htc/gson/DefaultTypeAdapters$FloatSerializer;

    invoke-direct {v1, p0}, Lcom/htc/gson/DefaultTypeAdapters$FloatSerializer;-><init>(Z)V

    .line 214
    .local v1, floatSerializer:Lcom/htc/gson/DefaultTypeAdapters$FloatSerializer;
    const-class v4, Ljava/lang/Float;

    invoke-virtual {v3, v4, v1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 215
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 218
    new-instance v2, Lcom/htc/gson/DefaultTypeAdapters$LongSerializer;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, Lcom/htc/gson/DefaultTypeAdapters$LongSerializer;-><init>(Lcom/htc/gson/LongSerializationPolicy;Lcom/htc/gson/DefaultTypeAdapters$1;)V

    .line 220
    .local v2, longSerializer:Lcom/htc/gson/DefaultTypeAdapters$LongSerializer;
    const-class v4, Ljava/lang/Long;

    invoke-virtual {v3, v4, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 221
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 223
    sget-object v4, Lcom/htc/gson/DefaultTypeAdapters;->DEFAULT_SERIALIZERS:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v3, v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/htc/gson/ParameterizedTypeHandlerMap;)V

    .line 224
    return-object v3
.end method

.method private static wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;)",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, deserializer:Lcom/htc/gson/JsonDeserializer;,"Lcom/htc/gson/JsonDeserializer<*>;"
    new-instance v0, Lcom/htc/gson/JsonDeserializerExceptionWrapper;

    invoke-direct {v0, p0}, Lcom/htc/gson/JsonDeserializerExceptionWrapper;-><init>(Lcom/htc/gson/JsonDeserializer;)V

    return-object v0
.end method

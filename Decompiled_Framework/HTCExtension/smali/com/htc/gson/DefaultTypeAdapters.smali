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

    const/4 v1, 0x0

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-direct {v0}, Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;-><init>()V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->DATE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->ENUM_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$UrlTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$UrlTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->URL_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UrlTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$UriTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$UriTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->URI_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UriTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$UuidTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$UuidTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->UUUID_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UuidTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$LocaleTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->LOCALE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;

    invoke-direct {v0}, Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;-><init>()V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->BIG_DECIMAL_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->BIG_INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$DoubleDeserializer;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$DoubleDeserializer;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->DOUBLE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$DoubleDeserializer;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$FloatDeserializer;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$FloatDeserializer;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->FLOAT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$FloatDeserializer;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$LongDeserializer;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$LongDeserializer;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->LONG_DESERIALIZER:Lcom/htc/gson/DefaultTypeAdapters$LongDeserializer;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$NumberTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$NumberTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->NUMBER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$NumberTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$StringTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$StringTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->STRING_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$StringTypeAdapter;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$PropertiesCreator;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$PropertiesCreator;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->PROPERTIES_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$PropertiesCreator;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$TreeSetCreator;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$TreeSetCreator;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->TREE_SET_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$TreeSetCreator;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$HashSetCreator;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$HashSetCreator;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->HASH_SET_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$HashSetCreator;

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-direct {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;-><init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-static {}, Lcom/htc/gson/DefaultTypeAdapters;->createDefaultSerializers()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->DEFAULT_SERIALIZERS:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-static {}, Lcom/htc/gson/DefaultTypeAdapters;->createDefaultDeserializers()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->DEFAULT_DESERIALIZERS:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-static {}, Lcom/htc/gson/DefaultTypeAdapters;->createDefaultInstanceCreators()Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/htc/gson/DefaultTypeAdapters;->DEFAULT_INSTANCE_CREATORS:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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

    new-instance v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    const-class v1, Ljava/lang/Enum;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->ENUM_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->URL_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UrlTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->URI_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UriTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->UUUID_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UuidTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->LOCALE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->DATE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BIG_DECIMAL_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BIG_INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->DOUBLE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$DoubleDeserializer;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->DOUBLE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$DoubleDeserializer;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->FLOAT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$FloatDeserializer;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->FLOAT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$FloatDeserializer;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->LONG_DESERIALIZER:Lcom/htc/gson/DefaultTypeAdapters$LongDeserializer;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->LONG_DESERIALIZER:Lcom/htc/gson/DefaultTypeAdapters$LongDeserializer;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->NUMBER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$NumberTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->STRING_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$StringTypeAdapter;

    invoke-static {v2}, Lcom/htc/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

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

    new-instance v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/List;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Queue;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Set;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->HASH_SET_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$HashSetCreator;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/SortedSet;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->TREE_SET_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$TreeSetCreator;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Properties;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->PROPERTIES_CREATOR:Lcom/htc/gson/DefaultTypeAdapters$PropertiesCreator;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

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

    new-instance v0, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    const-class v1, Ljava/lang/Enum;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->ENUM_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$EnumTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->URL_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UrlTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->URI_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UriTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->UUUID_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$UuidTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->LOCALE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->DATE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BIG_DECIMAL_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BIG_INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->NUMBER_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$NumberTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/htc/gson/DefaultTypeAdapters;->STRING_TYPE_ADAPTER:Lcom/htc/gson/DefaultTypeAdapters$StringTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

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

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/gson/LongSerializationPolicy;->DEFAULT:Lcom/htc/gson/LongSerializationPolicy;

    invoke-static {v0, v1}, Lcom/htc/gson/DefaultTypeAdapters;->getDefaultSerializers(ZLcom/htc/gson/LongSerializationPolicy;)Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultSerializers(ZLcom/htc/gson/LongSerializationPolicy;)Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .locals 5
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

    new-instance v3, Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v3}, Lcom/htc/gson/ParameterizedTypeHandlerMap;-><init>()V

    new-instance v0, Lcom/htc/gson/DefaultTypeAdapters$DoubleSerializer;

    invoke-direct {v0, p0}, Lcom/htc/gson/DefaultTypeAdapters$DoubleSerializer;-><init>(Z)V

    const-class v4, Ljava/lang/Double;

    invoke-virtual {v3, v4, v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v1, Lcom/htc/gson/DefaultTypeAdapters$FloatSerializer;

    invoke-direct {v1, p0}, Lcom/htc/gson/DefaultTypeAdapters$FloatSerializer;-><init>(Z)V

    const-class v4, Ljava/lang/Float;

    invoke-virtual {v3, v4, v1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    new-instance v2, Lcom/htc/gson/DefaultTypeAdapters$LongSerializer;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, Lcom/htc/gson/DefaultTypeAdapters$LongSerializer;-><init>(Lcom/htc/gson/LongSerializationPolicy;Lcom/htc/gson/DefaultTypeAdapters$1;)V

    const-class v4, Ljava/lang/Long;

    invoke-virtual {v3, v4, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    sget-object v4, Lcom/htc/gson/DefaultTypeAdapters;->DEFAULT_SERIALIZERS:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v3, v4}, Lcom/htc/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/htc/gson/ParameterizedTypeHandlerMap;)V

    return-object v3
.end method

.method private static wrapDeserializer(Lcom/htc/gson/JsonDeserializer;)Lcom/htc/gson/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;)",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/htc/gson/JsonDeserializerExceptionWrapper;

    invoke-direct {v0, p0}, Lcom/htc/gson/JsonDeserializerExceptionWrapper;-><init>(Lcom/htc/gson/JsonDeserializer;)V

    return-object v0
.end method

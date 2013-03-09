.class public final Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
.super Ljava/lang/Object;
.source "AttributeTypeAndValue.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field private static final C:Lorg/apache/harmony/security/utils/ObjectIdentifier; = null

.field private static final CAPACITY:I = 0xa

.field private static final CN:Lorg/apache/harmony/security/utils/ObjectIdentifier; = null

.field private static final DC:Lorg/apache/harmony/security/utils/ObjectIdentifier; = null

.field private static final DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier; = null

.field private static final DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier; = null

.field private static final EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier; = null

.field private static final GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier; = null

.field private static final GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier; = null

.field private static final INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier; = null

.field private static final KNOWN_NAMES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/utils/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier; = null

.field private static final L:Lorg/apache/harmony/security/utils/ObjectIdentifier; = null

.field private static final O:Lorg/apache/harmony/security/utils/ObjectIdentifier; = null

.field private static final OU:Lorg/apache/harmony/security/utils/ObjectIdentifier; = null

.field private static final RFC1779_NAMES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/utils/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final RFC2253_NAMES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/utils/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final RFC2459_NAMES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/security/utils/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier; = null

.field private static final SIZE:I = 0xa

.field private static final ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private static final UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field public static final attributeValue:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

.field private final value:Lorg/apache/harmony/security/x501/AttributeValue;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x7

    const/16 v8, 0xa

    const/4 v7, 0x4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    const-string v5, "C"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_1

    const-string v5, "CN"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v9, [I

    fill-array-data v4, :array_2

    const-string v5, "DC"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_3

    const-string v5, "DNQ"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_4

    const-string v5, "DNQUALIFIER"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v9, [I

    fill-array-data v4, :array_5

    const-string v5, "EMAILADDRESS"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_6

    const-string v5, "GENERATION"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_7

    const-string v5, "GIVENNAME"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_8

    const-string v5, "INITIALS"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_9

    const-string v5, "L"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_a

    const-string v5, "O"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_b

    const-string v5, "OU"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_c

    const-string v5, "SERIALNUMBER"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_d

    const-string v5, "ST"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_e

    const-string v5, "STREET"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_f

    const-string v5, "SURNAME"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v7, [I

    fill-array-data v4, :array_10

    const-string v5, "T"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-instance v3, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    new-array v4, v9, [I

    fill-array-data v4, :array_11

    const-string v5, "UID"

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([ILjava/lang/String;Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    filled-new-array {v8, v8}, [I

    move-result-object v3

    const-class v4, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->CN:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->L:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ST:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->O:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->OU:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->C:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->STREET:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DC:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->UID:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQ:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->EMAILADDRESS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GENERATION:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->GIVENNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->INITIALS:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SERIALNUMBER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->SURNAME:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->T:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-static {v2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->addOID(Lorg/apache/harmony/security/utils/ObjectIdentifier;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->DNQUALIFIER:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    if-eq v1, v3, :cond_1

    invoke-static {v1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->addOID(Lorg/apache/harmony/security/utils/ObjectIdentifier;)V

    goto :goto_1

    :cond_2
    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2459_NAMES:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;

    const/16 v4, 0x13

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;-><init>(I)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->attributeValue:Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$2;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v5, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->attributeValue:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x26t 0x9t 0x0t 0x0t
        0x2ct 0xf9t 0x24t 0x1t
        0x64t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x26t 0x9t 0x0t 0x0t
        0x2ct 0xf9t 0x24t 0x1t
        0x64t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/security/x501/AttributeValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_2

    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getOID([I)Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-direct {v1, v0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([I)V

    :cond_0
    iput-object v1, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    :cond_1
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    return-void

    :cond_2
    sget-object v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_NAMES:Ljava/util/HashMap;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    iput-object v2, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    iget-object v2, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognizable attribute name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private constructor <init>([ILorg/apache/harmony/security/x501/AttributeValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getOID([I)Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([I)V

    :cond_0
    iput-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    return-void
.end method

.method synthetic constructor <init>([ILorg/apache/harmony/security/x501/AttributeValue;Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>([ILorg/apache/harmony/security/x501/AttributeValue;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)Lorg/apache/harmony/security/x501/AttributeValue;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    return-object v0
.end method

.method private static addOID(Lorg/apache/harmony/security/utils/ObjectIdentifier;)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->hashIntArray([I)I

    move-result v4

    rem-int/lit8 v1, v4, 0xa

    sget-object v4, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    aget-object v2, v4, v1

    const/4 v0, 0x0

    :goto_0
    aget-object v4, v2, v0

    if-eqz v4, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ObjectIdentifier: invalid static initialization; duplicate OIDs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v6}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x9

    if-ne v0, v4, :cond_2

    new-instance v4, Ljava/lang/Error;

    const-string v5, "ObjectIdentifier: invalid static initialization; small OID pool capacity"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    aput-object p0, v2, v0

    return-void
.end method

.method private static getOID([I)Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .locals 4

    invoke-static {p0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->hashIntArray([I)I

    move-result v3

    rem-int/lit8 v1, v3, 0xa

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->KNOWN_OIDS:[[Lorg/apache/harmony/security/utils/ObjectIdentifier;

    aget-object v2, v3, v1

    const/4 v0, 0x0

    :goto_0
    aget-object v3, v2, v0

    if-eqz v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v3

    invoke-static {p0, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static hashIntArray([I)I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public appendName(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6

    const/16 v5, 0x3d

    const/4 v1, 0x0

    const-string v3, "RFC1779"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v4}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getGroup()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v4}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void

    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toOIDString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v4, v4, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3, p2}, Lorg/apache/harmony/security/x501/AttributeValue;->appendQEString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getGroup()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC1779_NAMES:Ljava/util/HashMap;

    if-eq v3, v0, :cond_4

    sget-object v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->RFC2253_NAMES:Ljava/util/HashMap;

    if-ne v3, v0, :cond_6

    :cond_4
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CANONICAL"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->getTag()I

    move-result v2

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1StringType;->checkTag(I)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->PRINTABLESTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1StringType;->checkTag(I)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->TELETEXSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/security/asn1/ASN1StringType;->checkTag(I)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_2
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->getHexString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    invoke-virtual {v3}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const-string v3, "CANONICAL"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/AttributeValue;->makeCanonical()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;

    iget-object v3, v3, Lorg/apache/harmony/security/x501/AttributeValue;->escapedString:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;

    return-object v0
.end method

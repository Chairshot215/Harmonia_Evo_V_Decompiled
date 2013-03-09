.class public Lcom/android/i18n/addressinput/StandardChecks;
.super Ljava/lang/Object;
.source "StandardChecks.java"


# static fields
.field public static final PROBLEM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/AddressProblemType;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/i18n/addressinput/AddressField;Ljava/util/List<Lcom/android/i18n/addressinput/AddressProblemType;>;>;"
    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    new-array v2, v7, [Lcom/android/i18n/addressinput/AddressProblemType;

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->USING_UNUSED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->MISSING_REQUIRED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->UNKNOWN_VALUE:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/i18n/addressinput/StandardChecks;->addToMap(Ljava/util/Map;Lcom/android/i18n/addressinput/AddressField;[Lcom/android/i18n/addressinput/AddressProblemType;)V

    .line 41
    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    new-array v2, v7, [Lcom/android/i18n/addressinput/AddressProblemType;

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->USING_UNUSED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->MISSING_REQUIRED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->UNKNOWN_VALUE:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/i18n/addressinput/StandardChecks;->addToMap(Ljava/util/Map;Lcom/android/i18n/addressinput/AddressField;[Lcom/android/i18n/addressinput/AddressProblemType;)V

    .line 43
    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    new-array v2, v7, [Lcom/android/i18n/addressinput/AddressProblemType;

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->USING_UNUSED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->MISSING_REQUIRED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->UNKNOWN_VALUE:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/i18n/addressinput/StandardChecks;->addToMap(Ljava/util/Map;Lcom/android/i18n/addressinput/AddressField;[Lcom/android/i18n/addressinput/AddressProblemType;)V

    .line 45
    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    new-array v2, v7, [Lcom/android/i18n/addressinput/AddressProblemType;

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->USING_UNUSED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->MISSING_REQUIRED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->UNKNOWN_VALUE:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/i18n/addressinput/StandardChecks;->addToMap(Ljava/util/Map;Lcom/android/i18n/addressinput/AddressField;[Lcom/android/i18n/addressinput/AddressProblemType;)V

    .line 47
    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/android/i18n/addressinput/AddressProblemType;

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->USING_UNUSED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->MISSING_REQUIRED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->UNRECOGNIZED_FORMAT:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->MISMATCHING_VALUE:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/i18n/addressinput/StandardChecks;->addToMap(Ljava/util/Map;Lcom/android/i18n/addressinput/AddressField;[Lcom/android/i18n/addressinput/AddressProblemType;)V

    .line 50
    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    new-array v2, v6, [Lcom/android/i18n/addressinput/AddressProblemType;

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->USING_UNUSED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->MISSING_REQUIRED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/i18n/addressinput/StandardChecks;->addToMap(Ljava/util/Map;Lcom/android/i18n/addressinput/AddressField;[Lcom/android/i18n/addressinput/AddressProblemType;)V

    .line 52
    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    new-array v2, v6, [Lcom/android/i18n/addressinput/AddressProblemType;

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->USING_UNUSED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->MISSING_REQUIRED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/i18n/addressinput/StandardChecks;->addToMap(Ljava/util/Map;Lcom/android/i18n/addressinput/AddressField;[Lcom/android/i18n/addressinput/AddressProblemType;)V

    .line 54
    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    new-array v2, v6, [Lcom/android/i18n/addressinput/AddressProblemType;

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->USING_UNUSED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->MISSING_REQUIRED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/i18n/addressinput/StandardChecks;->addToMap(Ljava/util/Map;Lcom/android/i18n/addressinput/AddressField;[Lcom/android/i18n/addressinput/AddressProblemType;)V

    .line 56
    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    new-array v2, v6, [Lcom/android/i18n/addressinput/AddressProblemType;

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->USING_UNUSED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->MISSING_REQUIRED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/i18n/addressinput/StandardChecks;->addToMap(Ljava/util/Map;Lcom/android/i18n/addressinput/AddressField;[Lcom/android/i18n/addressinput/AddressProblemType;)V

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/i18n/addressinput/StandardChecks;->PROBLEM_MAP:Ljava/util/Map;

    .line 60
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static varargs addToMap(Ljava/util/Map;Lcom/android/i18n/addressinput/AddressField;[Lcom/android/i18n/addressinput/AddressProblemType;)V
    .locals 1
    .parameter
    .parameter "field"
    .parameter "problems"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/AddressProblemType;",
            ">;>;",
            "Lcom/android/i18n/addressinput/AddressField;",
            "[",
            "Lcom/android/i18n/addressinput/AddressProblemType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/i18n/addressinput/AddressField;Ljava/util/List<Lcom/android/i18n/addressinput/AddressProblemType;>;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

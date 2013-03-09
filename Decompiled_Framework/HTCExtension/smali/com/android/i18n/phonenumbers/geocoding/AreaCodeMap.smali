.class public Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
.super Ljava/lang/Object;
.source "AreaCodeMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

.field private final phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    return-void
.end method

.method private binarySearch(IIJ)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-gt p1, p2, :cond_2

    add-int v3, p1, p2

    ushr-int/lit8 v0, v3, 0x1

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v3, v0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getPrefix(I)I

    move-result v2

    int-to-long v3, v2

    cmp-long v3, v3, p3

    if-nez v3, :cond_0

    move v1, v0

    :goto_1
    return v1

    :cond_0
    int-to-long v3, v2

    cmp-long v3, v3, p3

    if-lez v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private createDefaultMapStorage()Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .locals 1

    new-instance v0, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;-><init>()V

    return-object v0
.end method

.method private createFlyweightMapStorage()Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .locals 1

    new-instance v0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;-><init>()V

    return-object v0
.end method

.method private static getSizeOfAreaCodeMapStorage(Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;Ljava/util/SortedMap;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->readFromSortedMap(Ljava/util/SortedMap;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->writeExternal(Ljava/io/ObjectOutput;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    return v2
.end method


# virtual methods
.method getAreaCodeMapStorage()Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    return-object v0
.end method

.method getSmallerMapStorage(Ljava/util/SortedMap;)Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->createFlyweightMapStorage()Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->getSizeOfAreaCodeMapStorage(Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;Ljava/util/SortedMap;)I

    move-result v4

    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->createDefaultMapStorage()Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->getSizeOfAreaCodeMapStorage(Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;Ljava/util/SortedMap;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ge v4, v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->createFlyweightMapStorage()Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    move-result-object v2

    goto :goto_0
.end method

.method lookup(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v8}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getNumOfEntries()I

    move-result v3

    if-nez v3, :cond_0

    const-string v8, ""

    :goto_0
    return-object v8

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v9, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-int/lit8 v0, v3, -0x1

    iget-object v8, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v8}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getPossibleLengths()Ljava/util/TreeSet;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v8

    if-lez v8, :cond_4

    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v8, v9, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_1
    invoke-direct {p0, v10, v0, v4, v5}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->binarySearch(IIJ)I

    move-result v0

    if-gez v0, :cond_2

    const-string v8, ""

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v8, v0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getPrefix(I)I

    move-result v1

    int-to-long v8, v1

    cmp-long v8, v4, v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v8, v0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->getDescription(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    invoke-interface {v2, v7}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    goto :goto_1

    :cond_4
    const-string v8, ""

    goto :goto_0
.end method

.method public readAreaCodeMap(Ljava/util/SortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->getSmallerMapStorage(Ljava/util/SortedMap;)Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;-><init>()V

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    :goto_0
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->readExternal(Ljava/io/ObjectInput;)V

    return-void

    :cond_0
    new-instance v1, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/geocoding/DefaultMapStorage;-><init>()V

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->isFlyweight()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->areaCodeMapStorage:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void
.end method

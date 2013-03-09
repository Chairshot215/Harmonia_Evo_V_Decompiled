.class Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;
.super Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;
.source "FlyweightMapStorage.java"


# static fields
.field private static final INT_SIZE:I = 0x4

.field private static final SHORT_SIZE:I = 0x2


# instance fields
.field private descIndexSizeInBytes:I

.field private descriptionIndexes:Ljava/nio/ByteBuffer;

.field private descriptionPool:[Ljava/lang/String;

.field private phoneNumberPrefixes:Ljava/nio/ByteBuffer;

.field private prefixSizeInBytes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMapStorageStrategy;-><init>()V

    return-void
.end method

.method private static getOptimalNumberOfBytesForValue(I)I
    .locals 1

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private static readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/2addr p3, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Ljava/io/ObjectInput;->readShort()S

    move-result v0

    invoke-virtual {p2, p3, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static readWordFromBuffer(Ljava/nio/ByteBuffer;II)I
    .locals 1

    mul-int/2addr p2, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method private static storeWordInBuffer(Ljava/nio/ByteBuffer;III)V
    .locals 1

    mul-int/2addr p2, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    int-to-short v0, p3

    invoke-virtual {p0, p2, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/2addr p3, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-interface {p0, v0}, Ljava/io/ObjectOutput;->writeShort(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-static {v1, v2, p1}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrefix(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-static {v0, v1, p1}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public isFlyweight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v4, v4

    if-ge v4, v1, :cond_2

    :cond_1
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    aput-object v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    iget v5, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    if-ge v4, v5, :cond_5

    :cond_4
    iget v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    iget v5, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    :cond_5
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    iget v5, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    if-ge v4, v5, :cond_7

    :cond_6
    iget v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    iget v5, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    :cond_7
    const/4 v2, 0x0

    :goto_2
    iget v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    if-ge v2, v4, :cond_8

    iget v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    iget-object v5, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v4, v5, v2}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    iget v4, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    iget-object v5, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v4, v5, v2}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public readFromSortedMap(Ljava/util/SortedMap;)V
    .locals 12
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

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v9

    iput v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    invoke-interface {p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->getOptimalNumberOfBytesForValue(I)I

    move-result v9

    iput v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    iget v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    iget v10, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    mul-int/2addr v9, v10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    iget v10, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    add-int/lit8 v6, v5, 0x1

    invoke-static {v9, v10, v5, v8}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->storeWordInBuffer(Ljava/nio/ByteBuffer;III)V

    iget-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    int-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->log10(D)D

    move-result-wide v10

    double-to-int v10, v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move v5, v6

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->getOptimalNumberOfBytesForValue(I)I

    move-result v9

    iput v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    iget v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    iget v10, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    mul-int/2addr v9, v10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_1
    iget v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    if-ge v3, v9, :cond_1

    iget-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    iget v10, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-static {v9, v10, v3}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    new-instance v10, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage$1;

    invoke-direct {v10, p0}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage$1;-><init>(Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;)V

    invoke-static {v9, v0, v10}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v7

    iget-object v9, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    iget v10, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    add-int/lit8 v6, v5, 0x1

    invoke-static {v9, v10, v5, v7}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->storeWordInBuffer(Ljava/nio/ByteBuffer;III)V

    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_1

    :cond_1
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->size()I

    move-result v6

    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v7, v7

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v2, 0x0

    :goto_2
    iget v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->numOfEntries:I

    if-ge v2, v7, :cond_2

    iget v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->prefixSizeInBytes:I

    iget-object v8, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v7, v8, v2}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    iget v7, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descIndexSizeInBytes:I

    iget-object v8, p0, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v7, v8, v2}, Lcom/android/i18n/phonenumbers/geocoding/FlyweightMapStorage;->writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.class final Lcom/jme3/export/binary/BinaryInputCapsule;
.super Ljava/lang/Object;
.source "BinaryInputCapsule.java"

# interfaces
.implements Lcom/jme3/export/InputCapsule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/export/binary/BinaryInputCapsule$1;,
        Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;,
        Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;,
        Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected cObj:Lcom/jme3/export/binary/BinaryClassObject;

.field protected fieldData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected importer:Lcom/jme3/export/binary/BinaryImporter;

.field protected index:I

.field protected savable:Lcom/jme3/export/Savable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/jme3/export/binary/BinaryInputCapsule;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/export/binary/BinaryInputCapsule;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/export/binary/BinaryImporter;Lcom/jme3/export/Savable;Lcom/jme3/export/binary/BinaryClassObject;)V
    .locals 1
    .parameter "importer"
    .parameter "savable"
    .parameter "bco"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 69
    iput-object p1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->importer:Lcom/jme3/export/binary/BinaryImporter;

    .line 70
    iput-object p3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    .line 71
    iput-object p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->savable:Lcom/jme3/export/Savable;

    .line 72
    return-void
.end method

.method protected static inflateFrom([BI)[B
    .locals 5
    .parameter "contents"
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 1136
    aget-byte v0, p0, p1

    .line 1137
    .local v0, firstByte:B
    if-ne v0, v4, :cond_1

    .line 1138
    invoke-static {v4}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v1

    .line 1147
    :cond_0
    :goto_0
    return-object v1

    .line 1139
    :cond_1
    if-ne v0, v3, :cond_2

    .line 1140
    invoke-static {v3}, Lcom/jme3/export/binary/ByteUtils;->convertToBytes(I)[B

    move-result-object v1

    goto :goto_0

    .line 1141
    :cond_2
    if-nez v0, :cond_3

    .line 1142
    const/4 v3, 0x0

    new-array v1, v3, [B

    goto :goto_0

    .line 1144
    :cond_3
    new-array v1, v0, [B

    .line 1145
    .local v1, rVal:[B
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1146
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v3, p1

    aget-byte v3, p0, v3

    aput-byte v3, v1, v2

    .line 1145
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private intSavableMapFromKV([I[Lcom/jme3/export/Savable;)Lcom/jme3/util/IntMap;
    .locals 4
    .parameter "keys"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Lcom/jme3/export/Savable;",
            ")",
            "Lcom/jme3/util/IntMap",
            "<",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 570
    :cond_0
    const/4 v0, 0x0

    .line 577
    :cond_1
    return-object v0

    .line 573
    :cond_2
    new-instance v0, Lcom/jme3/util/IntMap;

    array-length v2, p1

    invoke-direct {v0, v2}, Lcom/jme3/util/IntMap;-><init>(I)V

    .line 574
    .local v0, map:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<Lcom/jme3/export/Savable;>;"
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 575
    aget v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v0, v2, v3}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private resolveIDs([Ljava/lang/Object;)[Lcom/jme3/export/Savable;
    .locals 6
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 480
    if-eqz p1, :cond_1

    .line 481
    array-length v3, p1

    new-array v2, v3, [Lcom/jme3/export/Savable;

    .line 482
    .local v2, savables:[Lcom/jme3/export/Savable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 483
    aget-object v1, p1, v0

    check-cast v1, Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    .line 484
    .local v1, id:Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->importer:Lcom/jme3/export/binary/BinaryImporter;

    iget v5, v1, Lcom/jme3/export/binary/BinaryInputCapsule$ID;->id:I

    invoke-virtual {v3, v5}, Lcom/jme3/export/binary/BinaryImporter;->readObject(I)Lcom/jme3/export/Savable;

    move-result-object v3

    :goto_1
    aput-object v3, v2, v0

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 484
    goto :goto_1

    .end local v0           #i:I
    .end local v1           #id:Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    .end local v2           #savables:[Lcom/jme3/export/Savable;
    :cond_1
    move-object v2, v4

    .line 488
    :cond_2
    return-object v2
.end method

.method private savableArrayListFromArray([Lcom/jme3/export/Savable;)Ljava/util/ArrayList;
    .locals 3
    .parameter "savables"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/jme3/export/Savable;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    if-nez p1, :cond_1

    .line 535
    const/4 v0, 0x0

    .line 541
    :cond_0
    return-object v0

    .line 537
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 538
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/export/Savable;>;"
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 539
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private stringSavableMapFromKV([Ljava/lang/String;[Lcom/jme3/export/Savable;)Ljava/util/Map;
    .locals 4
    .parameter "keys"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Lcom/jme3/export/Savable;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 558
    :cond_0
    const/4 v0, 0x0

    .line 565
    :cond_1
    return-object v0

    .line 561
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 562
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/jme3/export/Savable;>;"
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 563
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getSavableVersion(Ljava/lang/Class;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jme3/export/Savable;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, desiredClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jme3/export/Savable;>;"
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->savable:Lcom/jme3/export/Savable;

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->classHierarchyVersions:[I

    iget-object v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->importer:Lcom/jme3/export/binary/BinaryImporter;

    invoke-virtual {v2}, Lcom/jme3/export/binary/BinaryImporter;->getFormatVersion()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/jme3/export/SavableClassUtil;->getSavedSavableVersion(Ljava/lang/Object;Ljava/lang/Class;[II)I

    move-result v0

    return v0
.end method

.method protected readBitSet([B)Ljava/util/BitSet;
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1124
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1125
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1126
    const/4 v1, 0x0

    .line 1130
    :cond_0
    return-object v1

    .line 1127
    :cond_1
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 1128
    .local v1, value:Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1129
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readBoolean([B)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 1128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 275
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method protected readBoolean([B)Z
    .locals 2
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-static {p1, v1}, Lcom/jme3/export/binary/ByteUtils;->convertBooleanFromBytes([BI)Z

    move-result v0

    .line 952
    .local v0, value:Z
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 953
    return v0
.end method

.method protected readBooleanArray([B)[Z
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 957
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 958
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 959
    const/4 v1, 0x0

    .line 963
    :cond_0
    return-object v1

    .line 960
    :cond_1
    new-array v1, v0, [Z

    .line 961
    .local v1, value:[Z
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 962
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readBoolean([B)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 961
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected readBooleanArray2D([B)[[Z
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 967
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 968
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 969
    const/4 v3, 0x0

    check-cast v3, [[Z

    .line 973
    :goto_0
    return-object v3

    .line 970
    :cond_0
    new-array v1, v0, [[Z

    .line 971
    .local v1, value:[[Z
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 972
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readBooleanArray([B)[Z

    move-result-object v3

    aput-object v3, v1, v2

    .line 971
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 973
    goto :goto_0
.end method

.method public readByte(Ljava/lang/String;B)B
    .locals 3
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 298
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    goto :goto_0
.end method

.method protected readByte([B)B
    .locals 2
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    aget-byte v0, p1, v1

    .line 750
    .local v0, value:B
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 751
    return v0
.end method

.method protected readByteArray([B)[B
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 762
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 763
    const/4 v1, 0x0

    .line 767
    :cond_0
    return-object v1

    .line 764
    :cond_1
    new-array v1, v0, [B

    .line 765
    .local v1, value:[B
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 766
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByte([B)B

    move-result v3

    aput-byte v3, v1, v2

    .line 765
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected readByteArray2D([B)[[B
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 771
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 772
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 773
    const/4 v3, 0x0

    check-cast v3, [[B

    .line 777
    :goto_0
    return-object v3

    .line 774
    :cond_0
    new-array v1, v0, [[B

    .line 775
    .local v1, value:[[B
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 776
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByteArray([B)[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 775
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 777
    goto :goto_0
.end method

.method public readByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 321
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p2

    .line 323
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method protected readByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1313
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1314
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1315
    const/4 v1, 0x0

    .line 1328
    :goto_0
    return-object v1

    .line 1317
    :cond_0
    invoke-static {}, Lcom/jme3/export/binary/BinaryImporter;->canUseFastBuffers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1318
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1319
    .local v1, value:Ljava/nio/ByteBuffer;
    iget v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-virtual {v1, p1, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1320
    iget v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    goto :goto_0

    .line 1323
    .end local v1           #value:Ljava/nio/ByteBuffer;
    :cond_1
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1324
    .restart local v1       #value:Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1325
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByteForBuffer([B)B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1324
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1327
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public readByteBufferArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    .local p2, defVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 330
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p2

    .line 332
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected readByteBufferArrayList([B)Ljava/util/ArrayList;
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1255
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1256
    const/4 v1, 0x0

    .line 1262
    :cond_0
    return-object v1

    .line 1258
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1259
    .local v1, rVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1260
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected readByteForBuffer([B)B
    .locals 2
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    aget-byte v0, p1, v1

    .line 756
    .local v0, value:B
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 757
    return v0
.end method

.method protected readDouble([B)D
    .locals 3
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    iget v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-static {p1, v2}, Lcom/jme3/export/binary/ByteUtils;->convertDoubleFromBytes([BI)D

    move-result-wide v0

    .line 859
    .local v0, value:D
    iget v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 860
    return-wide v0
.end method

.method protected readDoubleArray([B)[D
    .locals 5
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 865
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 866
    const/4 v1, 0x0

    .line 870
    :cond_0
    return-object v1

    .line 867
    :cond_1
    new-array v1, v0, [D

    .line 868
    .local v1, value:[D
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 869
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readDouble([B)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 868
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected readDoubleArray2D([B)[[D
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 875
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 876
    const/4 v3, 0x0

    check-cast v3, [[D

    .line 880
    :goto_0
    return-object v3

    .line 877
    :cond_0
    new-array v1, v0, [[D

    .line 878
    .local v1, value:[[D
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 879
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readDoubleArray([B)[D

    move-result-object v3

    aput-object v3, v1, v2

    .line 878
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 880
    goto :goto_0
.end method

.method public readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 3
    .parameter "name"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, enumType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, defVal:Ljava/lang/Enum;,"TT;"
    const/4 v2, 0x0

    .line 1373
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1374
    .local v0, eVal:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1375
    invoke-static {p2, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    .line 1377
    :cond_0
    return-object v2

    .end local v0           #eVal:Ljava/lang/String;
    :cond_1
    move-object v1, v2

    .line 1373
    goto :goto_0
.end method

.method public readFloat(Ljava/lang/String;F)F
    .locals 3
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 360
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 362
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0
.end method

.method protected readFloat([B)F
    .locals 2
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 825
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-static {p1, v1}, Lcom/jme3/export/binary/ByteUtils;->convertFloatFromBytes([BI)F

    move-result v0

    .line 826
    .local v0, value:F
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 827
    return v0
.end method

.method public readFloatArray(Ljava/lang/String;[F)[F
    .locals 3
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 368
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p2

    .line 370
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    check-cast v1, [F

    goto :goto_0
.end method

.method protected readFloatArray([B)[F
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 837
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 838
    const/4 v1, 0x0

    .line 842
    :cond_0
    return-object v1

    .line 839
    :cond_1
    new-array v1, v0, [F

    .line 840
    .local v1, value:[F
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 841
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloat([B)F

    move-result v3

    aput v3, v1, v2

    .line 840
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected readFloatArray2D([B)[[F
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 847
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 848
    const/4 v3, 0x0

    check-cast v3, [[F

    .line 852
    :goto_0
    return-object v3

    .line 849
    :cond_0
    new-array v1, v0, [[F

    .line 850
    .local v1, value:[[F
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 851
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloatArray([B)[F

    move-result-object v3

    aput-object v3, v1, v2

    .line 850
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 852
    goto :goto_0
.end method

.method public readFloatBuffer(Ljava/lang/String;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 384
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p2

    .line 386
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method protected readFloatBuffer([B)Ljava/nio/FloatBuffer;
    .locals 5
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1269
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1270
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1271
    const/4 v1, 0x0

    .line 1284
    :goto_0
    return-object v1

    .line 1273
    :cond_0
    invoke-static {}, Lcom/jme3/export/binary/BinaryImporter;->canUseFastBuffers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1274
    mul-int/lit8 v3, v0, 0x4

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1275
    .local v1, value:Ljava/nio/ByteBuffer;
    iget v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    mul-int/lit8 v4, v0, 0x4

    invoke-virtual {v1, p1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1276
    iget v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 1277
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    goto :goto_0

    .line 1279
    .end local v1           #value:Ljava/nio/ByteBuffer;
    :cond_1
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 1280
    .local v1, value:Ljava/nio/FloatBuffer;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1281
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloatForBuffer([B)F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 1280
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1283
    :cond_2
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method protected readFloatBufferArrayList([B)Ljava/util/ArrayList;
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1239
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1240
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1241
    const/4 v1, 0x0

    .line 1247
    :cond_0
    return-object v1

    .line 1243
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1244
    .local v1, rVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/nio/FloatBuffer;>;"
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1245
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloatBuffer([B)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected readFloatForBuffer([B)F
    .locals 2
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 831
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntForBuffer([B)I

    move-result v0

    .line 832
    .local v0, number:I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 400
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 402
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method protected readInt([B)I
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    iget v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-static {p1, v2}, Lcom/jme3/export/binary/BinaryInputCapsule;->inflateFrom([BI)[B

    move-result-object v0

    .line 793
    .local v0, bytes:[B
    iget v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 794
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/jme3/export/binary/ByteUtils;->rightAlignBytes([BI)[B

    move-result-object v0

    .line 795
    invoke-static {v0}, Lcom/jme3/export/binary/ByteUtils;->convertIntFromBytes([B)I

    move-result v1

    .line 796
    .local v1, value:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 798
    :cond_0
    iget v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v2, v2, -0x4

    iput v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 799
    :cond_1
    return v1
.end method

.method public readIntArray(Ljava/lang/String;[I)[I
    .locals 3
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 407
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p2

    .line 409
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    goto :goto_0
.end method

.method protected readIntArray([B)[I
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 804
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 805
    const/4 v1, 0x0

    .line 809
    :cond_0
    return-object v1

    .line 806
    :cond_1
    new-array v1, v0, [I

    .line 807
    .local v1, value:[I
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 808
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v3

    aput v3, v1, v2

    .line 807
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected readIntArray2D([B)[[I
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 814
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 815
    const/4 v3, 0x0

    check-cast v3, [[I

    .line 819
    :goto_0
    return-object v3

    .line 816
    :cond_0
    new-array v1, v0, [[I

    .line 817
    .local v1, value:[[I
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 818
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntArray([B)[I

    move-result-object v3

    aput-object v3, v1, v2

    .line 817
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 819
    goto :goto_0
.end method

.method public readIntBuffer(Ljava/lang/String;Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 3
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 423
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p2

    .line 425
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/IntBuffer;

    goto :goto_0
.end method

.method protected readIntBuffer([B)Ljava/nio/IntBuffer;
    .locals 5
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1291
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1292
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1293
    const/4 v1, 0x0

    .line 1306
    :goto_0
    return-object v1

    .line 1295
    :cond_0
    invoke-static {}, Lcom/jme3/export/binary/BinaryImporter;->canUseFastBuffers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1296
    mul-int/lit8 v3, v0, 0x4

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1297
    .local v1, value:Ljava/nio/ByteBuffer;
    iget v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    mul-int/lit8 v4, v0, 0x4

    invoke-virtual {v1, p1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1298
    iget v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 1299
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    goto :goto_0

    .line 1301
    .end local v1           #value:Ljava/nio/ByteBuffer;
    :cond_1
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 1302
    .local v1, value:Ljava/nio/IntBuffer;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1303
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntForBuffer([B)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 1302
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1305
    :cond_2
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method protected readIntForBuffer([B)I
    .locals 3
    .parameter "content"

    .prologue
    .line 783
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    iget v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int v0, v1, v2

    .line 787
    .local v0, number:I
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 788
    return v0
.end method

.method protected readIntSavableMap([B)Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;
    .locals 6
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1223
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1224
    .local v0, elements:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    move-object v2, v4

    .line 1231
    :goto_0
    return-object v2

    .line 1226
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntArray([B)[I

    move-result-object v1

    .line 1227
    .local v1, keys:[I
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray([B)[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v3

    .line 1228
    .local v3, values:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    new-instance v2, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;

    invoke-direct {v2, v4}, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;-><init>(Lcom/jme3/export/binary/BinaryInputCapsule$1;)V

    .line 1229
    .local v2, rVal:Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;
    iput-object v1, v2, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;->keys:[I

    .line 1230
    iput-object v3, v2, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;->values:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    goto :goto_0
.end method

.method public readIntSavableMap(Ljava/lang/String;Lcom/jme3/util/IntMap;)Lcom/jme3/util/IntMap;
    .locals 6
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jme3/util/IntMap",
            "<+",
            "Lcom/jme3/export/Savable;",
            ">;)",
            "Lcom/jme3/util/IntMap",
            "<+",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    .local p2, defVal:Lcom/jme3/util/IntMap;,"Lcom/jme3/util/IntMap<+Lcom/jme3/export/Savable;>;"
    iget-object v4, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v4, v4, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 679
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v5, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v2, p2

    .line 689
    :goto_0
    return-object v2

    .line 681
    :cond_1
    iget-object v4, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v5, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 682
    .local v2, value:Ljava/lang/Object;
    instance-of v4, v2, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;

    if-eqz v4, :cond_2

    move-object v1, v2

    .line 684
    check-cast v1, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;

    .line 685
    .local v1, in:Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;
    iget-object v4, v1, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;->values:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    invoke-direct {p0, v4}, Lcom/jme3/export/binary/BinaryInputCapsule;->resolveIDs([Ljava/lang/Object;)[Lcom/jme3/export/Savable;

    move-result-object v3

    .line 686
    .local v3, values:[Lcom/jme3/export/Savable;
    iget-object v4, v1, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;->keys:[I

    invoke-direct {p0, v4, v3}, Lcom/jme3/export/binary/BinaryInputCapsule;->intSavableMapFromKV([I[Lcom/jme3/export/Savable;)Lcom/jme3/util/IntMap;

    move-result-object v2

    .line 687
    .local v2, value:Lcom/jme3/util/IntMap;
    iget-object v4, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v5, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    .end local v1           #in:Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;
    .end local v2           #value:Lcom/jme3/util/IntMap;
    .end local v3           #values:[Lcom/jme3/export/Savable;
    :cond_2
    check-cast v2, Lcom/jme3/util/IntMap;

    goto :goto_0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 430
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 432
    .end local p2
    :cond_0
    :goto_0
    return-wide p2

    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method protected readLong([B)J
    .locals 5
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    iget v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-static {p1, v3}, Lcom/jme3/export/binary/BinaryInputCapsule;->inflateFrom([BI)[B

    move-result-object v0

    .line 887
    .local v0, bytes:[B
    iget v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 888
    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/jme3/export/binary/ByteUtils;->rightAlignBytes([BI)[B

    move-result-object v0

    .line 889
    invoke-static {v0}, Lcom/jme3/export/binary/ByteUtils;->convertLongFromBytes([B)J

    move-result-wide v1

    .line 890
    .local v1, value:J
    return-wide v1
.end method

.method protected readLongArray([B)[J
    .locals 5
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 894
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 895
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 896
    const/4 v1, 0x0

    .line 900
    :cond_0
    return-object v1

    .line 897
    :cond_1
    new-array v1, v0, [J

    .line 898
    .local v1, value:[J
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 899
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readLong([B)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 898
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected readLongArray2D([B)[[J
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 904
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 905
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 906
    const/4 v3, 0x0

    check-cast v3, [[J

    .line 910
    :goto_0
    return-object v3

    .line 907
    :cond_0
    new-array v1, v0, [[J

    .line 908
    .local v1, value:[[J
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 909
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readLongArray([B)[J

    move-result-object v3

    aput-object v3, v1, v2

    .line 908
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 910
    goto :goto_0
.end method

.method public readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;
    .locals 4
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    iget-object v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v2, v2, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 452
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v3, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 454
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v3, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 455
    .local v1, value:Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 456
    const/4 p2, 0x0

    goto :goto_0

    .line 457
    :cond_2
    instance-of v2, v1, Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->importer:Lcom/jme3/export/binary/BinaryImporter;

    check-cast v1, Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    .end local v1           #value:Ljava/lang/Object;
    iget v3, v1, Lcom/jme3/export/binary/BinaryInputCapsule$ID;->id:I

    invoke-virtual {v2, v3}, Lcom/jme3/export/binary/BinaryImporter;->readObject(I)Lcom/jme3/export/Savable;

    move-result-object v1

    .line 459
    .local v1, value:Lcom/jme3/export/Savable;
    iget-object v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v3, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    check-cast v1, Lcom/jme3/export/Savable;

    .end local v1           #value:Lcom/jme3/export/Savable;
    move-object p2, v1

    goto :goto_0
.end method

.method protected readSavable([B)Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    .locals 2
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1154
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1155
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1156
    const/4 v1, 0x0

    .line 1159
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    invoke-direct {v1, v0}, Lcom/jme3/export/binary/BinaryInputCapsule$ID;-><init>(I)V

    goto :goto_0
.end method

.method public readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;
    .locals 4
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v2, v2, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 468
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v3, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 476
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 470
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v3, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 471
    .local v1, values:[Ljava/lang/Object;
    instance-of v2, v1, [Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    if-eqz v2, :cond_0

    .line 472
    invoke-direct {p0, v1}, Lcom/jme3/export/binary/BinaryInputCapsule;->resolveIDs([Ljava/lang/Object;)[Lcom/jme3/export/Savable;

    move-result-object v1

    .line 473
    iget-object v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v3, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    check-cast v1, [Lcom/jme3/export/Savable;

    .end local v1           #values:[Ljava/lang/Object;
    check-cast v1, [Lcom/jme3/export/Savable;

    move-object p2, v1

    goto :goto_0
.end method

.method protected readSavableArray([B)[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1166
    .local v0, elements:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1167
    const/4 v1, 0x0

    .line 1172
    :cond_0
    return-object v1

    .line 1168
    :cond_1
    new-array v1, v0, [Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    .line 1169
    .local v1, rVal:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1170
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavable([B)Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected readSavableArray2D([B)[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1176
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1177
    .local v0, elements:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1178
    const/4 v3, 0x0

    check-cast v3, [[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    .line 1183
    :goto_0
    return-object v3

    .line 1179
    :cond_0
    new-array v1, v0, [[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    .line 1180
    .local v1, rVal:[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1181
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray([B)[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1180
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 1183
    goto :goto_0
.end method

.method protected readSavableArray3D([B)[[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1187
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1188
    .local v0, elements:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1189
    const/4 v3, 0x0

    check-cast v3, [[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    .line 1194
    :goto_0
    return-object v3

    .line 1190
    :cond_0
    new-array v1, v0, [[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    .line 1191
    .local v1, rVal:[[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1192
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray2D([B)[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1191
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 1194
    goto :goto_0
.end method

.method public readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v3, v3, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 583
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v4, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v2, p2

    .line 592
    :goto_0
    return-object v2

    .line 585
    :cond_1
    iget-object v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v4, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 586
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, [Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    if-eqz v3, :cond_2

    .line 588
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v1

    .line 589
    .local v1, savables:[Lcom/jme3/export/Savable;
    invoke-direct {p0, v1}, Lcom/jme3/export/binary/BinaryInputCapsule;->savableArrayListFromArray([Lcom/jme3/export/Savable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 590
    .local v2, value:Ljava/util/ArrayList;
    iget-object v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v4, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .end local v1           #savables:[Lcom/jme3/export/Savable;
    .end local v2           #value:Ljava/util/ArrayList;
    :cond_2
    check-cast v2, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected readSavableMap([B)[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1200
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1201
    .local v0, elements:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1202
    const/4 v3, 0x0

    check-cast v3, [[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    .line 1207
    :goto_0
    return-object v3

    .line 1203
    :cond_0
    new-array v1, v0, [[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    .line 1204
    .local v1, rVal:[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1205
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray([B)[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1204
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 1207
    goto :goto_0
.end method

.method protected readShort([B)S
    .locals 2
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 916
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    invoke-static {p1, v1}, Lcom/jme3/export/binary/ByteUtils;->convertShortFromBytes([BI)S

    move-result v0

    .line 917
    .local v0, value:S
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 918
    return v0
.end method

.method public readShortArray(Ljava/lang/String;[S)[S
    .locals 3
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 702
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p2

    .line 704
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    check-cast v1, [S

    goto :goto_0
.end method

.method protected readShortArray([B)[S
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 930
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 931
    const/4 v1, 0x0

    .line 935
    :cond_0
    return-object v1

    .line 932
    :cond_1
    new-array v1, v0, [S

    .line 933
    .local v1, value:[S
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 934
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readShort([B)S

    move-result v3

    aput-short v3, v1, v2

    .line 933
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected readShortArray2D([B)[[S
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 939
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 940
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 941
    const/4 v3, 0x0

    check-cast v3, [[S

    .line 945
    :goto_0
    return-object v3

    .line 942
    :cond_0
    new-array v1, v0, [[S

    .line 943
    .local v1, value:[[S
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 944
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readShortArray([B)[S

    move-result-object v3

    aput-object v3, v1, v2

    .line 943
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 945
    goto :goto_0
.end method

.method public readShortBuffer(Ljava/lang/String;Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .locals 3
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 718
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p2

    .line 720
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ShortBuffer;

    goto :goto_0
.end method

.method protected readShortBuffer([B)Ljava/nio/ShortBuffer;
    .locals 5
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1335
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1336
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1337
    const/4 v1, 0x0

    .line 1350
    :goto_0
    return-object v1

    .line 1339
    :cond_0
    invoke-static {}, Lcom/jme3/export/binary/BinaryImporter;->canUseFastBuffers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1340
    mul-int/lit8 v3, v0, 0x2

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1341
    .local v1, value:Ljava/nio/ByteBuffer;
    iget v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {v1, p1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1342
    iget v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 1343
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    goto :goto_0

    .line 1345
    .end local v1           #value:Ljava/nio/ByteBuffer;
    :cond_1
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 1346
    .local v1, value:Ljava/nio/ShortBuffer;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1347
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readShortForBuffer([B)S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 1346
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1349
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method protected readShortForBuffer([B)S
    .locals 3
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 922
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v1, v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    int-to-short v0, v1

    .line 924
    .local v0, number:S
    iget v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 925
    return v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 725
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p2

    .line 727
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method protected readString([B)Ljava/lang/String;
    .locals 9
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x80

    .line 1000
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v2

    .line 1001
    .local v2, length:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 1002
    const/4 v6, 0x0

    .line 1097
    :goto_0
    return-object v6

    .line 1035
    :cond_0
    new-array v1, v2, [B

    .line 1036
    .local v1, bytes:[B
    const/4 v4, 0x0

    .line 1038
    .local v4, utf8State:I
    const/4 v5, 0x0

    .local v5, x:I
    :goto_1
    if-ge v5, v2, :cond_6

    .line 1039
    iget v6, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    aget-byte v6, p1, v6

    aput-byte v6, v1, v5

    .line 1040
    aget-byte v6, v1, v5

    and-int/lit16 v0, v6, 0xff

    .line 1042
    .local v0, b:I
    packed-switch v4, :pswitch_data_0

    .line 1038
    :cond_1
    :goto_2
    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1044
    :pswitch_1
    if-lt v0, v8, :cond_1

    .line 1047
    and-int/lit16 v6, v0, 0xc0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_2

    .line 1048
    const/4 v4, 0x2

    goto :goto_2

    .line 1050
    :cond_2
    and-int/lit16 v6, v0, 0xe0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_3

    .line 1051
    const/4 v4, 0x3

    goto :goto_2

    .line 1054
    :cond_3
    const/16 v4, 0xa

    .line 1056
    goto :goto_2

    .line 1060
    :pswitch_2
    and-int/lit16 v6, v0, 0x80

    if-ne v6, v8, :cond_5

    .line 1061
    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    const/4 v4, 0x4

    :goto_3
    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 1063
    :cond_5
    const/16 v4, 0xa

    goto :goto_2

    .line 1070
    .end local v0           #b:I
    :cond_6
    if-nez v4, :cond_7

    .line 1072
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1087
    :catch_0
    move-exception v3

    .line 1091
    .local v3, uee:Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/jme3/export/binary/BinaryInputCapsule;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v8, "Your export has been saved with an incorrect encoding or your version of Java is unable to decode the stored string. While your export may load correctly by falling back, using it on different platforms or java versions might lead to very strange inconsitenties. You should probably re-export your work. See ISSUE 276 in the jME issue tracker."

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1097
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 1075
    .end local v3           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_7
    :try_start_1
    sget-object v6, Lcom/jme3/export/binary/BinaryInputCapsule;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Your export has been saved with an incorrect encoding for it\'s String fields which means it might not load correctly due to encoding issues. You should probably re-export your work. See ISSUE 276 in the jME issue tracker."

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1085
    new-instance v6, Ljava/lang/String;

    const-string v7, "ISO8859_1"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1042
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "defVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v1, v1, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 733
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p2

    .line 735
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v2, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method protected readStringArray([B)[Ljava/lang/String;
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1102
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1103
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1104
    const/4 v1, 0x0

    .line 1108
    :cond_0
    return-object v1

    .line 1105
    :cond_1
    new-array v1, v0, [Ljava/lang/String;

    .line 1106
    .local v1, value:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1107
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected readStringArray2D([B)[[Ljava/lang/String;
    .locals 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1112
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1113
    .local v0, length:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1114
    const/4 v3, 0x0

    check-cast v3, [[Ljava/lang/String;

    .line 1118
    :goto_0
    return-object v3

    .line 1115
    :cond_0
    new-array v1, v0, [[Ljava/lang/String;

    .line 1116
    .local v1, value:[[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1117
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readStringArray([B)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 1118
    goto :goto_0
.end method

.method protected readStringSavableMap([B)Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;
    .locals 6
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1211
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    .line 1212
    .local v0, elements:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    move-object v2, v4

    .line 1219
    :goto_0
    return-object v2

    .line 1214
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readStringArray([B)[Ljava/lang/String;

    move-result-object v1

    .line 1215
    .local v1, keys:[Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray([B)[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v3

    .line 1216
    .local v3, values:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    new-instance v2, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;

    invoke-direct {v2, v4}, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;-><init>(Lcom/jme3/export/binary/BinaryInputCapsule$1;)V

    .line 1217
    .local v2, rVal:Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;
    iput-object v1, v2, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;->keys:[Ljava/lang/String;

    .line 1218
    iput-object v3, v2, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;->values:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    goto :goto_0
.end method

.method public readStringSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/jme3/export/Savable;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    .local p2, defVal:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Lcom/jme3/export/Savable;>;"
    iget-object v4, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v4, v4, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    .line 662
    .local v0, field:Lcom/jme3/export/binary/BinaryClassField;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v5, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v2, p2

    .line 672
    :goto_0
    return-object v2

    .line 664
    :cond_1
    iget-object v4, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v5, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 665
    .local v2, value:Ljava/lang/Object;
    instance-of v4, v2, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;

    if-eqz v4, :cond_2

    move-object v1, v2

    .line 667
    check-cast v1, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;

    .line 668
    .local v1, in:Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;
    iget-object v4, v1, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;->values:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    invoke-direct {p0, v4}, Lcom/jme3/export/binary/BinaryInputCapsule;->resolveIDs([Ljava/lang/Object;)[Lcom/jme3/export/Savable;

    move-result-object v3

    .line 669
    .local v3, values:[Lcom/jme3/export/Savable;
    iget-object v4, v1, Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;->keys:[Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/jme3/export/binary/BinaryInputCapsule;->stringSavableMapFromKV([Ljava/lang/String;[Lcom/jme3/export/Savable;)Ljava/util/Map;

    move-result-object v2

    .line 670
    .local v2, value:Ljava/util/Map;
    iget-object v4, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    iget-byte v5, v0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    .end local v1           #in:Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;
    .end local v2           #value:Ljava/util/Map;
    .end local v3           #values:[Lcom/jme3/export/Savable;
    :cond_2
    check-cast v2, Ljava/util/Map;

    goto :goto_0
.end method

.method public setContent([BII)V
    .locals 9
    .parameter "content"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    .line 76
    iput p2, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    :goto_0
    iget v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    if-ge v0, p3, :cond_0

    .line 77
    iget v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    aget-byte v6, p1, v0

    .line 79
    .local v6, alias:B
    iget v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->index:I

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->cObj:Lcom/jme3/export/binary/BinaryClassObject;

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryClassObject;->aliasFields:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/binary/BinaryClassField;

    iget-byte v7, v0, Lcom/jme3/export/binary/BinaryClassField;->type:B

    .line 83
    .local v7, type:B
    const/4 v8, 0x0

    .line 85
    .local v8, value:Ljava/lang/Object;
    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    .line 103
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByte([B)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    .line 252
    .end local v8           #value:Ljava/lang/Object;
    :goto_1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryInputCapsule;->fieldData:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    .end local v7           #type:B
    :catch_0
    move-exception v5

    .line 255
    .local v5, e:Ljava/io/IOException;
    sget-object v0, Lcom/jme3/export/binary/BinaryInputCapsule;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setContent(byte[] content)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 87
    .end local v5           #e:Ljava/io/IOException;
    .restart local v7       #type:B
    .restart local v8       #value:Ljava/lang/Object;
    :sswitch_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readBitSet([B)Ljava/util/BitSet;

    move-result-object v8

    .line 88
    .local v8, value:Ljava/util/BitSet;
    goto :goto_1

    .line 91
    .local v8, value:Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readBoolean([B)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 92
    .local v8, value:Ljava/lang/Boolean;
    goto :goto_1

    .line 95
    .local v8, value:Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readBooleanArray([B)[Z

    move-result-object v8

    .line 96
    .local v8, value:[Z
    goto :goto_1

    .line 99
    .local v8, value:Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readBooleanArray2D([B)[[Z

    move-result-object v8

    .line 100
    .local v8, value:[[Z
    goto :goto_1

    .line 107
    .local v8, value:Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByteArray([B)[B

    move-result-object v8

    .line 108
    .local v8, value:[B
    goto :goto_1

    .line 111
    .local v8, value:Ljava/lang/Object;
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByteArray2D([B)[[B

    move-result-object v8

    .line 112
    .local v8, value:[[B
    goto :goto_1

    .line 115
    .local v8, value:Ljava/lang/Object;
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 116
    .local v8, value:Ljava/nio/ByteBuffer;
    goto :goto_1

    .line 119
    .local v8, value:Ljava/lang/Object;
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readDouble([B)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 120
    .local v8, value:Ljava/lang/Double;
    goto :goto_1

    .line 123
    .local v8, value:Ljava/lang/Object;
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readDoubleArray([B)[D

    move-result-object v8

    .line 124
    .local v8, value:[D
    goto :goto_1

    .line 127
    .local v8, value:Ljava/lang/Object;
    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readDoubleArray2D([B)[[D

    move-result-object v8

    .line 128
    .local v8, value:[[D
    goto :goto_1

    .line 131
    .local v8, value:Ljava/lang/Object;
    :sswitch_b
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloat([B)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 132
    .local v8, value:Ljava/lang/Float;
    goto :goto_1

    .line 135
    .local v8, value:Ljava/lang/Object;
    :sswitch_c
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloatArray([B)[F

    move-result-object v8

    .line 136
    .local v8, value:[F
    goto :goto_1

    .line 139
    .local v8, value:Ljava/lang/Object;
    :sswitch_d
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloatArray2D([B)[[F

    move-result-object v8

    .line 140
    .local v8, value:[[F
    goto :goto_1

    .line 143
    .local v8, value:Ljava/lang/Object;
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloatBuffer([B)Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 144
    .local v8, value:Ljava/nio/FloatBuffer;
    goto :goto_1

    .line 147
    .local v8, value:Ljava/lang/Object;
    :sswitch_f
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readFloatBufferArrayList([B)Ljava/util/ArrayList;

    move-result-object v8

    .line 148
    .local v8, value:Ljava/util/ArrayList;
    goto :goto_1

    .line 151
    .local v8, value:Ljava/lang/Object;
    :sswitch_10
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readByteBufferArrayList([B)Ljava/util/ArrayList;

    move-result-object v8

    .line 152
    .local v8, value:Ljava/util/ArrayList;
    goto :goto_1

    .line 155
    .local v8, value:Ljava/lang/Object;
    :sswitch_11
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readInt([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 156
    .local v8, value:Ljava/lang/Integer;
    goto/16 :goto_1

    .line 159
    .local v8, value:Ljava/lang/Object;
    :sswitch_12
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntArray([B)[I

    move-result-object v8

    .line 160
    .local v8, value:[I
    goto/16 :goto_1

    .line 163
    .local v8, value:Ljava/lang/Object;
    :sswitch_13
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntArray2D([B)[[I

    move-result-object v8

    .line 164
    .local v8, value:[[I
    goto/16 :goto_1

    .line 167
    .local v8, value:Ljava/lang/Object;
    :sswitch_14
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntBuffer([B)Ljava/nio/IntBuffer;

    move-result-object v8

    .line 168
    .local v8, value:Ljava/nio/IntBuffer;
    goto/16 :goto_1

    .line 171
    .local v8, value:Ljava/lang/Object;
    :sswitch_15
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readLong([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 172
    .local v8, value:Ljava/lang/Long;
    goto/16 :goto_1

    .line 175
    .local v8, value:Ljava/lang/Object;
    :sswitch_16
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readLongArray([B)[J

    move-result-object v8

    .line 176
    .local v8, value:[J
    goto/16 :goto_1

    .line 179
    .local v8, value:Ljava/lang/Object;
    :sswitch_17
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readLongArray2D([B)[[J

    move-result-object v8

    .line 180
    .local v8, value:[[J
    goto/16 :goto_1

    .line 183
    .local v8, value:Ljava/lang/Object;
    :sswitch_18
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavable([B)Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v8

    .line 184
    .local v8, value:Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    goto/16 :goto_1

    .line 187
    .local v8, value:Ljava/lang/Object;
    :sswitch_19
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray([B)[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v8

    .line 188
    .local v8, value:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    goto/16 :goto_1

    .line 191
    .local v8, value:Ljava/lang/Object;
    :sswitch_1a
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray2D([B)[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v8

    .line 192
    .local v8, value:[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    goto/16 :goto_1

    .line 195
    .local v8, value:Ljava/lang/Object;
    :sswitch_1b
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray([B)[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v8

    .line 196
    .local v8, value:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    goto/16 :goto_1

    .line 199
    .local v8, value:Ljava/lang/Object;
    :sswitch_1c
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray2D([B)[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v8

    .line 200
    .local v8, value:[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    goto/16 :goto_1

    .line 203
    .local v8, value:Ljava/lang/Object;
    :sswitch_1d
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableArray3D([B)[[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v8

    .line 204
    .local v8, value:[[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    goto/16 :goto_1

    .line 207
    .local v8, value:Ljava/lang/Object;
    :sswitch_1e
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readSavableMap([B)[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;

    move-result-object v8

    .line 208
    .local v8, value:[[Lcom/jme3/export/binary/BinaryInputCapsule$ID;
    goto/16 :goto_1

    .line 211
    .local v8, value:Ljava/lang/Object;
    :sswitch_1f
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readStringSavableMap([B)Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;

    move-result-object v8

    .line 212
    .local v8, value:Lcom/jme3/export/binary/BinaryInputCapsule$StringIDMap;
    goto/16 :goto_1

    .line 215
    .local v8, value:Ljava/lang/Object;
    :sswitch_20
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readIntSavableMap([B)Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;

    move-result-object v8

    .line 216
    .local v8, value:Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;
    goto/16 :goto_1

    .line 219
    .local v8, value:Ljava/lang/Object;
    :sswitch_21
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readShort([B)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    .line 220
    .local v8, value:Ljava/lang/Short;
    goto/16 :goto_1

    .line 223
    .local v8, value:Ljava/lang/Object;
    :sswitch_22
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readShortArray([B)[S

    move-result-object v8

    .line 224
    .local v8, value:[S
    goto/16 :goto_1

    .line 227
    .local v8, value:Ljava/lang/Object;
    :sswitch_23
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readShortArray2D([B)[[S

    move-result-object v8

    .line 228
    .local v8, value:[[S
    goto/16 :goto_1

    .line 231
    .local v8, value:Ljava/lang/Object;
    :sswitch_24
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readShortBuffer([B)Ljava/nio/ShortBuffer;

    move-result-object v8

    .line 232
    .local v8, value:Ljava/nio/ShortBuffer;
    goto/16 :goto_1

    .line 235
    .local v8, value:Ljava/lang/Object;
    :sswitch_25
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readString([B)Ljava/lang/String;

    move-result-object v8

    .line 236
    .local v8, value:Ljava/lang/String;
    goto/16 :goto_1

    .line 239
    .local v8, value:Ljava/lang/Object;
    :sswitch_26
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readStringArray([B)[Ljava/lang/String;

    move-result-object v8

    .line 240
    .local v8, value:[Ljava/lang/String;
    goto/16 :goto_1

    .line 243
    .local v8, value:Ljava/lang/Object;
    :sswitch_27
    invoke-virtual {p0, p1}, Lcom/jme3/export/binary/BinaryInputCapsule;->readStringArray2D([B)[[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 244
    .local v8, value:[[Ljava/lang/String;
    goto/16 :goto_1

    .line 259
    .end local v6           #alias:B
    .end local v7           #type:B
    .end local v8           #value:[[Ljava/lang/String;
    :cond_0
    return-void

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0xa -> :sswitch_11
        0xb -> :sswitch_12
        0xc -> :sswitch_13
        0x14 -> :sswitch_b
        0x15 -> :sswitch_c
        0x16 -> :sswitch_d
        0x1e -> :sswitch_8
        0x1f -> :sswitch_9
        0x20 -> :sswitch_a
        0x28 -> :sswitch_15
        0x29 -> :sswitch_16
        0x2a -> :sswitch_17
        0x32 -> :sswitch_21
        0x33 -> :sswitch_22
        0x34 -> :sswitch_23
        0x3c -> :sswitch_2
        0x3d -> :sswitch_3
        0x3e -> :sswitch_4
        0x46 -> :sswitch_25
        0x47 -> :sswitch_26
        0x48 -> :sswitch_27
        0x50 -> :sswitch_1
        0x5a -> :sswitch_18
        0x5b -> :sswitch_19
        0x5c -> :sswitch_1a
        0x64 -> :sswitch_1b
        0x65 -> :sswitch_1c
        0x66 -> :sswitch_1d
        0x69 -> :sswitch_1e
        0x6a -> :sswitch_1f
        0x6b -> :sswitch_20
        0x6e -> :sswitch_f
        0x6f -> :sswitch_10
        0x78 -> :sswitch_e
        0x79 -> :sswitch_14
        0x7a -> :sswitch_7
        0x7b -> :sswitch_24
    .end sparse-switch
.end method

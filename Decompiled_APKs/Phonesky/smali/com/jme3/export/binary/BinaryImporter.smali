.class public final Lcom/jme3/export/binary/BinaryImporter;
.super Ljava/lang/Object;
.source "BinaryImporter.java"

# interfaces
.implements Lcom/jme3/export/JmeImporter;


# static fields
.field public static debug:Z

.field private static final fastRead:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private aliasWidth:I

.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private capsuleTable:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/jme3/export/Savable;",
            "Lcom/jme3/export/binary/BinaryInputCapsule;",
            ">;"
        }
    .end annotation
.end field

.field private classes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/export/binary/BinaryClassObject;",
            ">;"
        }
    .end annotation
.end field

.field private contentTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation
.end field

.field private dataArray:[B

.field private formatVersion:I

.field private locationTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 52
    const-class v1, Lcom/jme3/export/binary/BinaryImporter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    .line 70
    sput-boolean v0, Lcom/jme3/export/binary/BinaryImporter;->debug:Z

    .line 76
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/jme3/export/binary/BinaryImporter;->fastRead:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->classes:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->contentTable:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->capsuleTable:Ljava/util/IdentityHashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->locationTable:Ljava/util/HashMap;

    .line 79
    return-void
.end method

.method public static canUseFastBuffers()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/jme3/export/binary/BinaryImporter;->fastRead:Z

    return v0
.end method


# virtual methods
.method public getAssetManager()Lcom/jme3/asset/AssetManager;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->assetManager:Lcom/jme3/asset/AssetManager;

    return-object v0
.end method

.method public getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;
    .locals 1
    .parameter "id"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->capsuleTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/InputCapsule;

    return-object v0
.end method

.method public getFormatVersion()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/jme3/export/binary/BinaryImporter;->formatVersion:I

    return v0
.end method

.method public load(Ljava/io/InputStream;)Lcom/jme3/export/Savable;
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, p1, v0, v0}, Lcom/jme3/export/binary/BinaryImporter;->load(Ljava/io/InputStream;Lcom/jme3/export/ReadListener;Ljava/io/ByteArrayOutputStream;)Lcom/jme3/export/Savable;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/io/InputStream;Lcom/jme3/export/ReadListener;Ljava/io/ByteArrayOutputStream;)Lcom/jme3/export/Savable;
    .locals 33
    .parameter "is"
    .parameter "listener"
    .parameter "baos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryImporter;->contentTable:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->clear()V

    .line 135
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 140
    .local v6, bis:Ljava/io/BufferedInputStream;
    invoke-static {v6}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v22

    .line 141
    .local v22, maybeSignature:I
    const v29, 0x4a4d4533

    move/from16 v0, v22

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 143
    invoke-static {v6}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jme3/export/binary/BinaryImporter;->formatVersion:I

    .line 144
    invoke-static {v6}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v23

    .line 147
    .local v23, numClasses:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/export/binary/BinaryImporter;->formatVersion:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_1

    .line 148
    new-instance v29, Ljava/io/IOException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "The binary file is of newer version than expected! "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/export/binary/BinaryImporter;->formatVersion:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " > "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 154
    .end local v23           #numClasses:I
    :cond_0
    move/from16 v23, v22

    .line 158
    .restart local v23       #numClasses:I
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jme3/export/binary/BinaryImporter;->formatVersion:I

    .line 161
    :cond_1
    const/4 v7, 0x4

    .line 162
    .local v7, bytes:I
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x4380

    invoke-static/range {v29 .. v30}, Lcom/jme3/math/FastMath;->log(FF)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jme3/export/binary/BinaryImporter;->aliasWidth:I

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryImporter;->classes:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->clear()V

    .line 165
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/export/binary/BinaryImporter;->aliasWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Lcom/jme3/export/binary/BinaryImporter;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, alias:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/export/binary/BinaryImporter;->formatVersion:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_2

    .line 171
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v9

    .line 172
    .local v9, classHierarchySize:I
    new-array v10, v9, [I

    .line 173
    .local v10, classHierarchyVersions:[I
    const/16 v20, 0x0

    .local v20, j:I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v9, :cond_3

    .line 174
    invoke-static {v6}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v29

    aput v29, v10, v20

    .line 173
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 177
    .end local v9           #classHierarchySize:I
    .end local v10           #classHierarchyVersions:[I
    .end local v20           #j:I
    :cond_2
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v10, v0, [I

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v10, v29

    .line 181
    .restart local v10       #classHierarchyVersions:[I
    :cond_3
    invoke-static {v6}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v11

    .line 182
    .local v11, classLength:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lcom/jme3/export/binary/BinaryImporter;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v12

    .line 184
    .local v12, className:Ljava/lang/String;
    new-instance v5, Lcom/jme3/export/binary/BinaryClassObject;

    invoke-direct {v5}, Lcom/jme3/export/binary/BinaryClassObject;-><init>()V

    .line 185
    .local v5, bco:Lcom/jme3/export/binary/BinaryClassObject;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v29

    iput-object v0, v5, Lcom/jme3/export/binary/BinaryClassObject;->alias:[B

    .line 186
    iput-object v12, v5, Lcom/jme3/export/binary/BinaryClassObject;->className:Ljava/lang/String;

    .line 187
    iput-object v10, v5, Lcom/jme3/export/binary/BinaryClassObject;->classHierarchyVersions:[I

    .line 189
    invoke-static {v6}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v17

    .line 190
    .local v17, fields:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/export/binary/BinaryImporter;->aliasWidth:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x8

    add-int v29, v29, v11

    add-int v7, v7, v29

    .line 192
    new-instance v29, Ljava/util/HashMap;

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v29

    iput-object v0, v5, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    .line 193
    new-instance v29, Ljava/util/HashMap;

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v29

    iput-object v0, v5, Lcom/jme3/export/binary/BinaryClassObject;->aliasFields:Ljava/util/HashMap;

    .line 194
    const/16 v28, 0x0

    .local v28, x:I
    :goto_2
    move/from16 v0, v28

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 195
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v29

    move/from16 v0, v29

    int-to-byte v13, v0

    .line 196
    .local v13, fieldAlias:B
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v29

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 198
    .local v16, fieldType:B
    invoke-static {v6}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v15

    .line 199
    .local v15, fieldNameLength:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Lcom/jme3/export/binary/BinaryImporter;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v14

    .line 200
    .local v14, fieldName:Ljava/lang/String;
    new-instance v4, Lcom/jme3/export/binary/BinaryClassField;

    move/from16 v0, v16

    invoke-direct {v4, v14, v13, v0}, Lcom/jme3/export/binary/BinaryClassField;-><init>(Ljava/lang/String;BB)V

    .line 201
    .local v4, bcf:Lcom/jme3/export/binary/BinaryClassField;
    iget-object v0, v5, Lcom/jme3/export/binary/BinaryClassObject;->nameFields:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, v5, Lcom/jme3/export/binary/BinaryClassObject;->aliasFields:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    add-int/lit8 v29, v15, 0x6

    add-int v7, v7, v29

    .line 194
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 205
    .end local v4           #bcf:Lcom/jme3/export/binary/BinaryClassField;
    .end local v13           #fieldAlias:B
    .end local v14           #fieldName:Ljava/lang/String;
    .end local v15           #fieldNameLength:I
    .end local v16           #fieldType:B
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryImporter;->classes:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 207
    .end local v3           #alias:Ljava/lang/String;
    .end local v5           #bco:Lcom/jme3/export/binary/BinaryClassObject;
    .end local v10           #classHierarchyVersions:[I
    .end local v11           #classLength:I
    .end local v12           #className:Ljava/lang/String;
    .end local v17           #fields:I
    .end local v28           #x:I
    :cond_5
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/jme3/export/ReadListener;->readBytes(I)V

    .line 209
    :cond_6
    invoke-static {v6}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v24

    .line 210
    .local v24, numLocs:I
    const/4 v7, 0x4

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryImporter;->capsuleTable:Ljava/util/IdentityHashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/IdentityHashMap;->clear()V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryImporter;->locationTable:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->clear()V

    .line 214
    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 215
    invoke-static {v6}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v19

    .line 216
    .local v19, id:I
    invoke-static {v6}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v21

    .line 217
    .local v21, loc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryImporter;->locationTable:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    add-int/lit8 v7, v7, 0x8

    .line 214
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 222
    .end local v19           #id:I
    .end local v21           #loc:I
    :cond_7
    invoke-static {v6}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v25

    .line 223
    .local v25, numbIDs:I
    invoke-static {v6}, Lcom/jme3/export/binary/ByteUtils;->readInt(Ljava/io/InputStream;)I

    move-result v19

    .line 224
    .restart local v19       #id:I
    add-int/lit8 v7, v7, 0x8

    .line 225
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/jme3/export/ReadListener;->readBytes(I)V

    .line 227
    :cond_8
    if-nez p3, :cond_a

    .line 228
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    .end local p3
    move-object/from16 v0, p3

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 232
    .restart local p3
    :goto_4
    const/16 v27, -0x1

    .line 233
    .local v27, size:I
    const/16 v29, 0x1000

    move/from16 v0, v29

    new-array v8, v0, [B

    .line 234
    .local v8, cache:[B
    :cond_9
    :goto_5
    invoke-virtual {v6, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v27

    const/16 v29, -0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    .line 235
    const/16 v29, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v0, v8, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 236
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/jme3/export/ReadListener;->readBytes(I)V

    goto :goto_5

    .line 230
    .end local v8           #cache:[B
    .end local v27           #size:I
    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_4

    .line 238
    .restart local v8       #cache:[B
    .restart local v27       #size:I
    :cond_b
    const/4 v6, 0x0

    .line 240
    invoke-virtual/range {p3 .. p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    .line 241
    const/16 p3, 0x0

    .line 243
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/jme3/export/binary/BinaryImporter;->readObject(I)Lcom/jme3/export/Savable;

    move-result-object v26

    .line 244
    .local v26, rVal:Lcom/jme3/export/Savable;
    sget-boolean v29, Lcom/jme3/export/binary/BinaryImporter;->debug:Z

    if-eqz v29, :cond_c

    .line 245
    sget-object v29, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    const-string v30, "Importer Stats: "

    invoke-virtual/range {v29 .. v30}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 246
    sget-object v29, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v30, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v31, "Tags: {0}"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    sget-object v29, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v30, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v31, "Objects: {0}"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    sget-object v29, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v30, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v31, "Data Size: {0}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    :cond_c
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    .line 251
    return-object v26
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 6
    .parameter "info"

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/export/binary/BinaryImporter;->assetManager:Lcom/jme3/asset/AssetManager;

    .line 107
    const/4 v1, 0x0

    .line 109
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 110
    invoke-virtual {p0, v1}, Lcom/jme3/export/binary/BinaryImporter;->load(Ljava/io/InputStream;)Lcom/jme3/export/Savable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 116
    .local v2, s:Lcom/jme3/export/Savable;
    if-eqz v1, :cond_0

    .line 118
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    .end local v2           #s:Lcom/jme3/export/Savable;
    :cond_0
    :goto_0
    return-object v2

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, ex:Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "An error occured while loading jME binary object"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    if-eqz v1, :cond_1

    .line 118
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 122
    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 116
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 118
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 119
    :cond_2
    :goto_2
    throw v3

    .restart local v2       #s:Lcom/jme3/export/Savable;
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v2           #s:Lcom/jme3/export/Savable;
    .restart local v0       #ex:Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto :goto_1

    .end local v0           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public readObject(I)Lcom/jme3/export/Savable;
    .locals 14
    .parameter "id"

    .prologue
    const/4 v12, 0x0

    .line 308
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->contentTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->contentTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/export/Savable;

    .line 358
    :goto_0
    return-object v0

    .line 313
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->locationTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 315
    .local v10, loc:I
    iget v0, p0, Lcom/jme3/export/binary/BinaryImporter;->aliasWidth:I

    invoke-virtual {p0, v0, v10}, Lcom/jme3/export/binary/BinaryImporter;->readString(II)Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, alias:Ljava/lang/String;
    iget v0, p0, Lcom/jme3/export/binary/BinaryImporter;->aliasWidth:I

    add-int/2addr v10, v0

    .line 318
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->classes:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/export/binary/BinaryClassObject;

    .line 320
    .local v7, bco:Lcom/jme3/export/binary/BinaryClassObject;
    if-nez v7, :cond_1

    .line 321
    sget-object v0, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "readObject(int id)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NULL class object: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    .line 322
    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    invoke-static {v0, v10}, Lcom/jme3/export/binary/ByteUtils;->convertIntFromBytes([BI)I

    move-result v9

    .line 326
    .local v9, dataLength:I
    add-int/lit8 v10, v10, 0x4

    .line 328
    const/4 v11, 0x0

    .line 329
    .local v11, out:Lcom/jme3/export/Savable;
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->assetManager:Lcom/jme3/asset/AssetManager;

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, v7, Lcom/jme3/export/binary/BinaryClassObject;->className:Ljava/lang/String;

    iget-object v1, p0, Lcom/jme3/export/binary/BinaryImporter;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v1}, Lcom/jme3/asset/AssetManager;->getClassLoaders()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jme3/export/SavableClassUtil;->fromName(Ljava/lang/String;Ljava/util/List;)Lcom/jme3/export/Savable;

    move-result-object v11

    .line 335
    :goto_1
    new-instance v8, Lcom/jme3/export/binary/BinaryInputCapsule;

    invoke-direct {v8, p0, v11, v7}, Lcom/jme3/export/binary/BinaryInputCapsule;-><init>(Lcom/jme3/export/binary/BinaryImporter;Lcom/jme3/export/Savable;Lcom/jme3/export/binary/BinaryClassObject;)V

    .line 336
    .local v8, cap:Lcom/jme3/export/binary/BinaryInputCapsule;
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    add-int v1, v10, v9

    invoke-virtual {v8, v0, v10, v1}, Lcom/jme3/export/binary/BinaryInputCapsule;->setContent([BII)V

    .line 338
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->capsuleTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v11, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->contentTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-interface {v11, p0}, Lcom/jme3/export/Savable;->read(Lcom/jme3/export/JmeImporter;)V

    .line 343
    iget-object v0, p0, Lcom/jme3/export/binary/BinaryImporter;->capsuleTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v11}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v11

    .line 345
    goto/16 :goto_0

    .line 332
    .end local v8           #cap:Lcom/jme3/export/binary/BinaryInputCapsule;
    :cond_2
    iget-object v0, v7, Lcom/jme3/export/binary/BinaryClassObject;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/jme3/export/SavableClassUtil;->fromName(Ljava/lang/String;)Lcom/jme3/export/Savable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v11

    goto :goto_1

    .line 347
    .end local v6           #alias:Ljava/lang/String;
    .end local v7           #bco:Lcom/jme3/export/binary/BinaryClassObject;
    .end local v9           #dataLength:I
    .end local v10           #loc:I
    .end local v11           #out:Lcom/jme3/export/Savable;
    :catch_0
    move-exception v5

    .line 348
    .local v5, e:Ljava/io/IOException;
    sget-object v0, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "readObject(int id)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v12

    .line 349
    goto/16 :goto_0

    .line 350
    .end local v5           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 351
    .local v5, e:Ljava/lang/ClassNotFoundException;
    sget-object v0, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "readObject(int id)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v12

    .line 352
    goto/16 :goto_0

    .line 353
    .end local v5           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 354
    .local v5, e:Ljava/lang/InstantiationException;
    sget-object v0, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "readObject(int id)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v12

    .line 355
    goto/16 :goto_0

    .line 356
    .end local v5           #e:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v5

    .line 357
    .local v5, e:Ljava/lang/IllegalAccessException;
    sget-object v0, Lcom/jme3/export/binary/BinaryImporter;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "readObject(int id)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v12

    .line 358
    goto/16 :goto_0
.end method

.method protected readString(II)Ljava/lang/String;
    .locals 4
    .parameter "length"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    new-array v0, p1, [B

    .line 299
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 300
    iget-object v2, p0, Lcom/jme3/export/binary/BinaryImporter;->dataArray:[B

    add-int v3, v1, p2

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method protected readString(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 3
    .parameter "f"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    new-array v0, p2, [B

    .line 290
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 291
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

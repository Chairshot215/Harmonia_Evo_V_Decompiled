.class Ljava/util/jar/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarVerifier$VerifierEntry;
    }
.end annotation


# instance fields
.field private final certificates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final jarName:Ljava/lang/String;

.field mainAttributesEnd:I

.field private man:Ljava/util/jar/Manifest;

.field private metaEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final signatures:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    iput-object p1, p0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljava/util/jar/JarVerifier;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/jar/JarVerifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Ljava/util/jar/JarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/jar/JarVerifier;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    return-object v0
.end method

.method private failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 3

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed verification of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSignerCertificates(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    if-eqz v1, :cond_0

    move-object v0, v1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method private invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 3

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has invalid digest for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z
    .locals 10

    const-string v8, "Digest-Algorithms"

    invoke-virtual {p1, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "SHA SHA1"

    :cond_0
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz p6, :cond_3

    add-int/lit8 v8, p5, -0x1

    aget-byte v8, p3, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, p5, -0x2

    aget-byte v8, p3, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, p5, -0x1

    sub-int/2addr v8, p4

    invoke-virtual {v6, p3, p4, v8}, Ljava/security/MessageDigest;->update([BII)V

    :goto_1
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    sget-object v8, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v5}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v8

    invoke-static {v2, v8}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p7

    :cond_2
    return p7

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_3
    sub-int v8, p5, p4

    invoke-virtual {v6, p3, p4, v8}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1
.end method

.method private verifyCertificate(Ljava/lang/String;)V
    .locals 25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0x2e

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".SF"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    if-nez v22, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    const-string v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2, v6}, Lorg/apache/harmony/security/utils/JarUtils;->verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    new-instance v3, Ljava/util/jar/Attributes;

    invoke-direct {v3}, Ljava/util/jar/Attributes;-><init>()V

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    :try_start_1
    new-instance v19, Ljava/util/jar/InitManifest;

    sget-object v2, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v3, v2}, Ljava/util/jar/InitManifest;-><init>([BLjava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;)V

    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/jar/InitManifest;->initEntries(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v12, 0x0

    const-string v2, "Created-By"

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    const-string v2, "signtool"

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_4

    const/4 v12, 0x1

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/jar/JarVerifier;->mainAttributesEnd:I

    if-lez v2, :cond_5

    if-nez v12, :cond_5

    const-string v4, "-Digest-Manifest-Main-Attributes"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/jar/JarVerifier;->mainAttributesEnd:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Ljava/util/jar/JarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    :catch_0
    move-exception v16

    goto/16 :goto_0

    :catch_1
    move-exception v16

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Ljava/util/jar/JarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    :catch_2
    move-exception v16

    goto/16 :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    if-eqz v12, :cond_7

    const-string v4, "-Digest"

    :goto_2
    const/4 v6, 0x0

    array-length v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/jar/Manifest;->getChunk(Ljava/lang/String;)Ljava/util/jar/Manifest$Chunk;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/Attributes;

    const-string v8, "-Digest"

    iget v10, v14, Ljava/util/jar/Manifest$Chunk;->start:I

    iget v11, v14, Ljava/util/jar/Manifest$Chunk;->end:I

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object v9, v5

    invoke-direct/range {v6 .. v13}, Ljava/util/jar/JarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/jar/JarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2, v6}, Ljava/util/jar/JarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    :cond_7
    const-string v4, "-Digest-Manifest"

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method addMetaEntry(Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method getCertificates(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 2

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    goto :goto_0
.end method

.method initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v9

    if-nez v9, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-static {v15, v1}, Ljava/util/jar/JarVerifier;->getSignerCertificates(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/Certificate;

    const-string v1, "Digest-Algorithms"

    invoke-virtual {v9, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    const-string v8, "SHA SHA1"

    :cond_6
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :cond_7
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-Digest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    sget-object v1, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    :try_start_0
    new-instance v1, Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Ljava/util/jar/JarVerifier$VerifierEntry;-><init>(Ljava/util/jar/JarVerifier;Ljava/lang/String;Ljava/security/MessageDigest;[B[Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method isSignedJar()Z
    .locals 1

    iget-object v0, p0, Ljava/util/jar/JarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized readCertificates()Z
    .locals 4

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    iget-object v3, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ".DSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".RSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    invoke-direct {p0, v1}, Ljava/util/jar/JarVerifier;->verifyCertificate(Ljava/lang/String;)V

    iget-object v3, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method removeMetaEntries()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->metaEntries:Ljava/util/HashMap;

    return-void
.end method

.method setManifest(Ljava/util/jar/Manifest;)V
    .locals 0

    iput-object p1, p0, Ljava/util/jar/JarVerifier;->man:Ljava/util/jar/Manifest;

    return-void
.end method

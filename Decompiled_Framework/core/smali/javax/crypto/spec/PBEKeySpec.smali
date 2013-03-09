.class public Ljavax/crypto/spec/PBEKeySpec;
.super Ljava/lang/Object;
.source "PBEKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final iterationCount:I

.field private final keyLength:I

.field private password:[C

.field private final salt:[B


# direct methods
.method public constructor <init>([C)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    return-void

    :cond_0
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public constructor <init>([C[BI)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "salt == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "salt.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iterationCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p1, :cond_3

    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    :goto_0
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    return-void

    :cond_3
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public constructor <init>([C[BII)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "salt == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "salt.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iterationCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gtz p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyLength <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p1, :cond_4

    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    :goto_0
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    iput p4, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    return-void

    :cond_4
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public final clearPassword()V
    .locals 2

    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    return-void
.end method

.method public final getIterationCount()I
    .locals 1

    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    return v0
.end method

.method public final getKeyLength()I
    .locals 1

    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    return v0
.end method

.method public final getPassword()[C
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The password has been cleared"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, v1

    new-array v0, v1, [C

    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    iget-object v2, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final getSalt()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    iget-object v2, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

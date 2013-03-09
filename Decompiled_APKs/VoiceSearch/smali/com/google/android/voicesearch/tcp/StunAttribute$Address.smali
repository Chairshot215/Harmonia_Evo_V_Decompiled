.class public Lcom/google/android/voicesearch/tcp/StunAttribute$Address;
.super Ljava/lang/Object;
.source "StunAttribute.java"

# interfaces
.implements Lcom/google/android/voicesearch/tcp/StunAttributeData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/tcp/StunAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Address"
.end annotation


# instance fields
.field private ipAddr:[B

.field private port:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->ipAddr:[B

    .line 225
    return-void
.end method

.method private equalsAddress(Lcom/google/android/voicesearch/tcp/StunAttribute$Address;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static fromByteArray([BI)Lcom/google/android/voicesearch/tcp/StunAttribute$Address;
    .locals 4
    .parameter "src"
    .parameter "offset"

    .prologue
    .line 242
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;

    invoke-direct {v0}, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;-><init>()V

    .line 243
    .local v0, addr:Lcom/google/android/voicesearch/tcp/StunAttribute$Address;
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->port:I

    .line 244
    iget-object v1, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->ipAddr:[B

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x4

    aget-byte v3, p0, v3

    aput-byte v3, v1, v2

    .line 245
    iget-object v1, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->ipAddr:[B

    const/4 v2, 0x1

    add-int/lit8 v3, p1, 0x5

    aget-byte v3, p0, v3

    aput-byte v3, v1, v2

    .line 246
    iget-object v1, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->ipAddr:[B

    const/4 v2, 0x2

    add-int/lit8 v3, p1, 0x6

    aget-byte v3, p0, v3

    aput-byte v3, v1, v2

    .line 247
    iget-object v1, v0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->ipAddr:[B

    const/4 v2, 0x3

    add-int/lit8 v3, p1, 0x7

    aget-byte v3, p0, v3

    aput-byte v3, v1, v2

    .line 248
    return-object v0
.end method


# virtual methods
.method public asByteArray()[B
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 229
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 230
    .local v0, b:[B
    const/4 v1, -0x1

    aput-byte v1, v0, v4

    .line 231
    aput-byte v3, v0, v3

    .line 232
    iget v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->port:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 233
    iget v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->port:I

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 234
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->ipAddr:[B

    aget-byte v2, v2, v4

    aput-byte v2, v0, v1

    .line 235
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->ipAddr:[B

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 236
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->ipAddr:[B

    aget-byte v2, v2, v5

    aput-byte v2, v0, v1

    .line 237
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->ipAddr:[B

    aget-byte v2, v2, v6

    aput-byte v2, v0, v1

    .line 238
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 165
    instance-of v0, p1, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->equalsAddress(Lcom/google/android/voicesearch/tcp/StunAttribute$Address;)Z

    move-result v0

    .line 168
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 253
    const/16 v0, 0x8

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->ipAddr:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->ipAddr:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->ipAddr:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->ipAddr:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->port:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

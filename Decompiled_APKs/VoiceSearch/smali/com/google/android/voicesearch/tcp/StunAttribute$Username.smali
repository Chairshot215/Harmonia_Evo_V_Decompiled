.class public Lcom/google/android/voicesearch/tcp/StunAttribute$Username;
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
    name = "Username"
.end annotation


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    return-void
.end method

.method public static fromByteArray([BII)Lcom/google/android/voicesearch/tcp/StunAttribute$Username;
    .locals 4
    .parameter "src"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 341
    new-instance v1, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;

    invoke-direct {v1}, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;-><init>()V

    .line 343
    .local v1, uname:Lcom/google/android/voicesearch/tcp/StunAttribute$Username;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, p1, p2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, v1, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    return-object v1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "UTF-8 Encoding not supported"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public asByteArray()[B
    .locals 4

    .prologue
    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;->data:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 337
    .local v0, b:[B
    return-object v0

    .line 334
    .end local v0           #b:[B
    :catch_0
    move-exception v1

    .line 335
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "UTF-8 Encoding not supported"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLength()I
    .locals 4

    .prologue
    .line 352
    const/4 v1, 0x0

    .line 354
    .local v1, len:I
    :try_start_0
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;->data:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    return v1

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "UTF-8 Encoding not supported"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;->data:Ljava/lang/String;

    return-object v0
.end method

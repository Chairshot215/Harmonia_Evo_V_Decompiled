.class public Lcom/android/org/bouncycastle/asn1/LazyDERSequence;
.super Lcom/android/org/bouncycastle/asn1/DERSequence;
.source "LazyDERSequence.java"


# instance fields
.field private encoded:[B

.field private parsed:Z

.field private size:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->parsed:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->size:I

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    return-void
.end method

.method private parse()V
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/LazyDERConstructionEnumeration;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/LazyDERConstructionEnumeration;-><init>([B)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->addObject(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->parsed:Z

    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x30

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-virtual {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method public declared-synchronized getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->parsed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->parse()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getObjects()Ljava/util/Enumeration;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->parsed:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/LazyDERConstructionEnumeration;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/LazyDERConstructionEnumeration;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 2

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->size:I

    if-gez v1, :cond_0

    new-instance v0, Lcom/android/org/bouncycastle/asn1/LazyDERConstructionEnumeration;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/LazyDERConstructionEnumeration;-><init>([B)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->size:I

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->size:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/LazyDERSequence;->size:I

    return v1
.end method

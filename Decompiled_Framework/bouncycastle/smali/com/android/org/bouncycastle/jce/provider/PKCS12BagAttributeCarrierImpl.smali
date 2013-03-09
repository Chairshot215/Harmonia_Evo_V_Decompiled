.class Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;
.super Ljava/lang/Object;
.source "PKCS12BagAttributeCarrierImpl.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private pkcs12Attributes:Ljava/util/Hashtable;

.field private pkcs12Ordering:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>(Ljava/util/Hashtable;Ljava/util/Vector;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method getAttributes()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method getOrdering()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    return-object v0
.end method

.method public readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/util/Hashtable;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method

.method public setBagAttribute(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method size()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

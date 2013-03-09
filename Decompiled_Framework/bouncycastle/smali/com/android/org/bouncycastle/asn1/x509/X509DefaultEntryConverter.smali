.class public Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;
.super Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;
.source "X509DefaultEntryConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public getConvertedValue(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p2, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;->convertHexEncoded(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t recode value for oid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

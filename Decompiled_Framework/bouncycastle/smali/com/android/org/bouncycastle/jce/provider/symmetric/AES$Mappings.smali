.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;
.super Ljava/util/HashMap;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final wrongAES128:Ljava/lang/String; = "2.16.840.1.101.3.4.2"

.field private static final wrongAES192:Ljava/lang/String; = "2.16.840.1.101.3.4.22"

.field private static final wrongAES256:Ljava/lang/String; = "2.16.840.1.101.3.4.42"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "AlgorithmParameters.AES"

    const-string v1, "com.android.org.bouncycastle.jce.provider.symmetric.AES$AlgParams"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.2"

    const-string v1, "AES"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.22"

    const-string v1, "AES"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.42"

    const-string v1, "AES"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.AES"

    const-string v1, "com.android.org.bouncycastle.jce.provider.symmetric.AES$ECB"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Cipher.2.16.840.1.101.3.4.2"

    const-string v1, "AES"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Cipher.2.16.840.1.101.3.4.22"

    const-string v1, "AES"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.Cipher.2.16.840.1.101.3.4.42"

    const-string v1, "AES"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.AESWRAP"

    const-string v1, "com.android.org.bouncycastle.jce.provider.symmetric.AES$Wrap"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AESWRAP"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AESWRAP"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AESWRAP"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.AES"

    const-string v1, "com.android.org.bouncycastle.jce.provider.symmetric.AES$KeyGen"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/AES$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

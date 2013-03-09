.class Lcom/android/org/bouncycastle/openssl/PEMReader$PKCS7Parser;
.super Ljava/lang/Object;
.source "PEMReader.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PKCS7Parser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$PKCS7Parser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Lcom/android/org/bouncycastle/openssl/PEMReader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/openssl/PEMReader$PKCS7Parser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;)V

    return-void
.end method


# virtual methods
.method public parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/ContentInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem parsing PKCS7 object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

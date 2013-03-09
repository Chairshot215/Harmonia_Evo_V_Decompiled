.class Lcom/android/org/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;
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
    name = "X509AttributeCertificateParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;->this$0:Lcom/android/org/bouncycastle/openssl/PEMReader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Lcom/android/org/bouncycastle/openssl/PEMReader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;)V

    return-void
.end method


# virtual methods
.method public parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V2AttributeCertificate;-><init>([B)V

    return-object v0
.end method

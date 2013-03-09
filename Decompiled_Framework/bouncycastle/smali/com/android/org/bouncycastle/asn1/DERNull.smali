.class public Lcom/android/org/bouncycastle/asn1/DERNull;
.super Lcom/android/org/bouncycastle/asn1/ASN1Null;
.source "DERNull.java"


# static fields
.field public static final INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

.field private static final zeroBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DERNull;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->zeroBytes:[B

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Null;-><init>()V

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

    const/4 v0, 0x5

    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->zeroBytes:[B

    invoke-virtual {p1, v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    return-void
.end method

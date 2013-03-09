.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/DESede$Mappings;
.super Ljava/util/HashMap;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Cipher.DESEDE"

    const-string v1, "com.android.org.bouncycastle.jce.provider.symmetric.DESede$ECB"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.DESEDEWRAP"

    const-string v1, "com.android.org.bouncycastle.jce.provider.symmetric.DESede$Wrap"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DESEDEWRAP"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.DESEDE"

    const-string v1, "com.android.org.bouncycastle.jce.provider.symmetric.DESede$KeyGenerator"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SecretKeyFactory.DESEDE"

    const-string v1, "com.android.org.bouncycastle.jce.provider.symmetric.DESede$KeyFactory"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class public Lcom/android/org/bouncycastle/jce/provider/symmetric/Blowfish$Mappings;
.super Ljava/util/HashMap;
.source "Blowfish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/symmetric/Blowfish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Cipher.BLOWFISH"

    const-string v1, "com.android.org.bouncycastle.jce.provider.symmetric.Blowfish$ECB"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/Blowfish$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.BLOWFISH"

    const-string v1, "com.android.org.bouncycastle.jce.provider.symmetric.Blowfish$KeyGen"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/Blowfish$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.KeyGenerator.1.3.6.1.4.1.3029.1.2"

    const-string v1, "BLOWFISH"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/Blowfish$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AlgorithmParameters.BLOWFISH"

    const-string v1, "com.android.org.bouncycastle.jce.provider.symmetric.Blowfish$AlgParams"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/Blowfish$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.AlgorithmParameters.1.3.6.1.4.1.3029.1.2"

    const-string v1, "BLOWFISH"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/symmetric/Blowfish$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

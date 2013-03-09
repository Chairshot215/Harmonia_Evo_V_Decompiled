.class public abstract Lcom/android/org/bouncycastle/x509/X509StoreSpi;
.super Ljava/lang/Object;
.source "X509StoreSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract engineGetMatches(Lcom/android/org/bouncycastle/util/Selector;)Ljava/util/Collection;
.end method

.method public abstract engineInit(Lcom/android/org/bouncycastle/x509/X509StoreParameters;)V
.end method

.class public abstract Ljavax/net/ssl/TrustManagerFactorySpi;
.super Ljava/lang/Object;
.source "TrustManagerFactorySpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
.end method

.method protected abstract engineInit(Ljava/security/KeyStore;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method protected abstract engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

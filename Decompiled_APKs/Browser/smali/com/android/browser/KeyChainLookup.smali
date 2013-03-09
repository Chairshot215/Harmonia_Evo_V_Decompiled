.class final Lcom/android/browser/KeyChainLookup;
.super Landroid/os/AsyncTask;
.source "KeyChainLookup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/webkit/ClientCertRequestHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "alias"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/KeyChainLookup;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/browser/KeyChainLookup;->mHandler:Landroid/webkit/ClientCertRequestHandler;

    .line 34
    iput-object p3, p0, Lcom/android/browser/KeyChainLookup;->mAlias:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/KeyChainLookup;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 40
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/KeyChainLookup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/browser/KeyChainLookup;->mAlias:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 41
    .local v2, privateKey:Ljava/security/PrivateKey;
    iget-object v3, p0, Lcom/android/browser/KeyChainLookup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/browser/KeyChainLookup;->mAlias:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 49
    .local v0, certificateChain:[Ljava/security/cert/X509Certificate;
    iget-object v3, p0, Lcom/android/browser/KeyChainLookup;->mHandler:Landroid/webkit/ClientCertRequestHandler;

    invoke-virtual {v3, v2, v0}, Landroid/webkit/ClientCertRequestHandler;->proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    .line 50
    .end local v0           #certificateChain:[Ljava/security/cert/X509Certificate;
    .end local v2           #privateKey:Ljava/security/PrivateKey;
    :goto_0
    return-object v5

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, e:Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/android/browser/KeyChainLookup;->mHandler:Landroid/webkit/ClientCertRequestHandler;

    invoke-virtual {v3}, Landroid/webkit/ClientCertRequestHandler;->ignore()V

    goto :goto_0

    .line 45
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 46
    .local v1, e:Landroid/security/KeyChainException;
    iget-object v3, p0, Lcom/android/browser/KeyChainLookup;->mHandler:Landroid/webkit/ClientCertRequestHandler;

    invoke-virtual {v3}, Landroid/webkit/ClientCertRequestHandler;->ignore()V

    goto :goto_0
.end method

.class Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;
.super Landroid/os/AsyncTask;
.source "CertInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/certinstaller/CertInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallCaCertsToKeyChainTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/certinstaller/CertInstaller;


# direct methods
.method private constructor <init>(Lcom/android/certinstaller/CertInstaller;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/certinstaller/CertInstaller;Lcom/android/certinstaller/CertInstaller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .parameter "unused"

    .prologue
    .line 214
    :try_start_0
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-static {v2}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 216
    .local v1, keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;->this$0:Lcom/android/certinstaller/CertInstaller;

    #getter for: Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;
    invoke-static {v2}, Lcom/android/certinstaller/CertInstaller;->access$200(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CredentialHelper;

    move-result-object v2

    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/certinstaller/CredentialHelper;->installCaCertsToKeyChain(Landroid/security/IKeyChainService;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 218
    :try_start_2
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 222
    .end local v1           #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :goto_0
    return-object v2

    .line 218
    .restart local v1       #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    .end local v1           #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 222
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "success"

    .prologue
    .line 227
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;->this$0:Lcom/android/certinstaller/CertInstaller;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/certinstaller/CertInstaller;->setResult(I)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-virtual {v0}, Lcom/android/certinstaller/CertInstaller;->finish()V

    .line 231
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 210
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.class Lcom/android/keychain/KeyChainActivity$AliasLoader;
.super Landroid/os/AsyncTask;
.source "KeyChainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keychain/KeyChainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/keychain/KeyChainActivity$CertificateAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keychain/KeyChainActivity;


# direct methods
.method private constructor <init>(Lcom/android/keychain/KeyChainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/keychain/KeyChainActivity$AliasLoader;->this$0:Lcom/android/keychain/KeyChainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keychain/KeyChainActivity;Lcom/android/keychain/KeyChainActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/keychain/KeyChainActivity$AliasLoader;-><init>(Lcom/android/keychain/KeyChainActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/keychain/KeyChainActivity$CertificateAdapter;
    .locals 5
    .parameter "params"

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/keychain/KeyChainActivity$AliasLoader;->this$0:Lcom/android/keychain/KeyChainActivity;

    #getter for: Lcom/android/keychain/KeyChainActivity;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v2}, Lcom/android/keychain/KeyChainActivity;->access$100(Lcom/android/keychain/KeyChainActivity;)Landroid/security/KeyStore;

    move-result-object v2

    const-string v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, aliasArray:[Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, aliasList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 148
    new-instance v2, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;

    iget-object v3, p0, Lcom/android/keychain/KeyChainActivity$AliasLoader;->this$0:Lcom/android/keychain/KeyChainActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;-><init>(Lcom/android/keychain/KeyChainActivity;Ljava/util/List;Lcom/android/keychain/KeyChainActivity$1;)V

    return-object v2

    .line 144
    .end local v1           #aliasList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/keychain/KeyChainActivity$AliasLoader;->doInBackground([Ljava/lang/Void;)Lcom/android/keychain/KeyChainActivity$CertificateAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity$AliasLoader;->this$0:Lcom/android/keychain/KeyChainActivity;

    #calls: Lcom/android/keychain/KeyChainActivity;->displayCertChooserDialog(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)V
    invoke-static {v0, p1}, Lcom/android/keychain/KeyChainActivity;->access$300(Lcom/android/keychain/KeyChainActivity;Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)V

    .line 152
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    check-cast p1, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/keychain/KeyChainActivity$AliasLoader;->onPostExecute(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)V

    return-void
.end method

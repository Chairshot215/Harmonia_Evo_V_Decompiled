.class Lcom/android/internal/os/EncryptionManager3LM$1;
.super Ljava/lang/Thread;
.source "EncryptionManager3LM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/EncryptionManager3LM;->convertToPlaintext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/EncryptionManager3LM;


# direct methods
.method constructor <init>(Lcom/android/internal/os/EncryptionManager3LM;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/EncryptionManager3LM$1;->this$0:Lcom/android/internal/os/EncryptionManager3LM;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/os/EncryptionManager3LM$1;->this$0:Lcom/android/internal/os/EncryptionManager3LM;

    invoke-virtual {v5}, Lcom/android/internal/os/EncryptionManager3LM;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/EncryptionManager3LM$1;->this$0:Lcom/android/internal/os/EncryptionManager3LM;

    #getter for: Lcom/android/internal/os/EncryptionManager3LM;->mService:Landroid/os/IEncryption3LM;
    invoke-static {v5}, Lcom/android/internal/os/EncryptionManager3LM;->access$000(Lcom/android/internal/os/EncryptionManager3LM;)Landroid/os/IEncryption3LM;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v5, v6, v7}, Landroid/os/IEncryption3LM;->convertToPlaintext(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/internal/os/EncryptionManager3LM$1;->this$0:Lcom/android/internal/os/EncryptionManager3LM;

    invoke-virtual {v5}, Lcom/android/internal/os/EncryptionManager3LM;->stopSelf()V

    return-void
.end method

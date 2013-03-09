.class public Lcom/android/certinstaller/CertInstallerMain;
.super Lcom/android/certinstaller/CertFile;
.source "CertInstallerMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/certinstaller/CertFile;-><init>()V

    return-void
.end method

.method private installByType(Ljava/lang/String;[B)V
    .locals 4
    .parameter "type"
    .parameter "value"

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/certinstaller/CertInstaller;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "application/x-pkcs12"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "PKCS12"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 131
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/certinstaller/CertInstallerMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    return-void

    .line 125
    :cond_0
    const-string v1, "application/x-x509-ca-cert"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/x-x509-user-cert"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    :cond_1
    const-string v1, "CERT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    .line 129
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/certinstaller/CertFile;->onCreate(Landroid/os/Bundle;)V

    .line 43
    if-eqz p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/certinstaller/CertInstallerMain$1;

    invoke-direct {v1, p0}, Lcom/android/certinstaller/CertInstallerMain$1;-><init>(Lcom/android/certinstaller/CertInstallerMain;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onError(I)V
    .locals 0
    .parameter "errorId"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->finish()V

    .line 143
    return-void
.end method

.method protected onInstallationDone(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/certinstaller/CertFile;->onInstallationDone(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->finish()V

    .line 138
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 61
    .local v5, intent:Landroid/content/Intent;
    if-nez v5, :cond_2

    const/4 v0, 0x0

    .line 63
    .local v0, action:Ljava/lang/String;
    :goto_0
    const-string v12, "android.credentials.INSTALL"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 64
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 66
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->isStoragePresent()Z

    move-result v12

    if-nez v12, :cond_3

    .line 68
    const v12, 0x7f060001

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 118
    .end local v3           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->finish()V

    .line 119
    :goto_2
    return-void

    .line 61
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    .restart local v0       #action:Ljava/lang/String;
    .restart local v3       #bundle:Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->getAllCertFiles()Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, allFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 73
    const/high16 v12, 0x7f06

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 75
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v14, :cond_5

    .line 76
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    invoke-virtual {p0, v12}, Lcom/android/certinstaller/CertInstallerMain;->installFromFile(Ljava/io/File;)V

    goto :goto_2

    .line 79
    :cond_5
    new-instance v12, Landroid/content/Intent;

    const-class v13, Lcom/android/certinstaller/CertFileList;

    invoke-direct {v12, p0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v12, v14}, Lcom/android/certinstaller/CertInstallerMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 85
    .end local v1           #allFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    :cond_6
    new-instance v7, Landroid/content/Intent;

    const-class v12, Lcom/android/certinstaller/CertInstaller;

    invoke-direct {v7, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v7, newIntent:Landroid/content/Intent;
    invoke-virtual {v7, v5}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v7, v14}, Lcom/android/certinstaller/CertInstallerMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 90
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v7           #newIntent:Landroid/content/Intent;
    :cond_7
    const-string v12, "android.intent.action.VIEW"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 91
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 92
    .local v4, data:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    .line 93
    .local v11, type:Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v11, :cond_1

    .line 94
    const/4 v9, 0x0

    .line 95
    .local v9, payload:[B
    const/4 v6, 0x0

    .line 97
    .local v6, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 98
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    .local v8, out:Ljava/io/ByteArrayOutputStream;
    const/16 v12, 0x400

    new-array v2, v12, [B

    .line 100
    .local v2, buffer:[B
    const/4 v10, 0x0

    .line 101
    .local v10, read:I
    :goto_3
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_8

    .line 102
    const/4 v12, 0x0

    invoke-virtual {v8, v2, v12, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 106
    .end local v2           #buffer:[B
    .end local v8           #out:Ljava/io/ByteArrayOutputStream;
    .end local v10           #read:I
    :catch_0
    move-exception v12

    .line 109
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 111
    :goto_4
    if-nez v9, :cond_9

    .line 112
    const-string v12, "CertInstaller"

    const-string v13, "Unable to read stream for for certificate"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 104
    .restart local v2       #buffer:[B
    .restart local v8       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #read:I
    :cond_8
    :try_start_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 105
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 109
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4

    .end local v2           #buffer:[B
    .end local v8           #out:Ljava/io/ByteArrayOutputStream;
    .end local v10           #read:I
    :catchall_0
    move-exception v12

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v12

    .line 114
    :cond_9
    invoke-direct {p0, v11, v9}, Lcom/android/certinstaller/CertInstallerMain;->installByType(Ljava/lang/String;[B)V

    goto/16 :goto_1
.end method

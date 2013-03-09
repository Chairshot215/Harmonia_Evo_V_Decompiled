.class public Lcom/android/certinstaller/CertFile;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "CertFile.java"

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field private static final CERT_FILE_KEY:Ljava/lang/String; = "cf"

.field static final CERT_FILE_MISSING_ERROR:I = 0x7f06001d

.field static final CERT_READ_ERROR:I = 0x7f06001e

.field static final CERT_TOO_LARGE_ERROR:I = 0x7f06001c

.field static final DOWNLOAD_DIR:Ljava/lang/String; = "download"

.field private static final MAX_FILE_SIZE:I = 0xf4240

.field protected static final REQUEST_INSTALL_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CertFile"


# instance fields
.field private mCertFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method

.method private install(Ljava/lang/String;[B)V
    .locals 2
    .parameter "fileName"
    .parameter "value"

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/certinstaller/CertInstaller;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v1, ".pfx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".p12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    const-string v1, "PKCS12"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 199
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/certinstaller/CertFile;->startActivityForResult(Landroid/content/Intent;I)V

    .line 200
    return-void

    .line 193
    :cond_1
    const-string v1, ".cer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".crt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    :cond_2
    const-string v1, "CERT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    .line 197
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private toastError(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 203
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 163
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertFile;->isFileAcceptable(Ljava/lang/String;)Z

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAllCertFiles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, allFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 116
    .local v3, root:Ljava/io/File;
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v4, "download"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v1, download:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 119
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 120
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 124
    .end local v2           #files:[Ljava/io/File;
    :cond_0
    invoke-virtual {v3, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 125
    .restart local v2       #files:[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 126
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 129
    :cond_1
    return-object v0

    .line 113
    .end local v1           #download:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #root:Ljava/io/File;
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .restart local v3       #root:Ljava/io/File;
    goto :goto_0
.end method

.method protected installFromFile(Ljava/io/File;)V
    .locals 7
    .parameter "file"

    .prologue
    const v6, 0x7f06001e

    const v4, 0x7f06001d

    const v5, 0x7f06001c

    .line 138
    const-string v1, "CertFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install cert from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 142
    invoke-static {p1}, Lcom/android/certinstaller/Util;->readFile(Ljava/io/File;)[B

    move-result-object v0

    .line 143
    .local v0, data:[B
    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0, v6}, Lcom/android/certinstaller/CertFile;->toastError(I)V

    .line 145
    invoke-virtual {p0, v6}, Lcom/android/certinstaller/CertFile;->onError(I)V

    .line 160
    .end local v0           #data:[B
    :goto_0
    return-void

    .line 148
    .restart local v0       #data:[B
    :cond_0
    iput-object p1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    .line 149
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/certinstaller/CertFile;->install(Ljava/lang/String;[B)V

    goto :goto_0

    .line 151
    .end local v0           #data:[B
    :cond_1
    const-string v1, "CertFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cert file is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0, v5}, Lcom/android/certinstaller/CertFile;->toastError(I)V

    .line 153
    invoke-virtual {p0, v5}, Lcom/android/certinstaller/CertFile;->onError(I)V

    goto :goto_0

    .line 156
    :cond_2
    const-string v1, "CertFile"

    const-string v2, "cert file does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0, v4}, Lcom/android/certinstaller/CertFile;->toastError(I)V

    .line 158
    invoke-virtual {p0, v4}, Lcom/android/certinstaller/CertFile;->onError(I)V

    goto :goto_0
.end method

.method protected isFileAcceptable(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 171
    const-string v0, ".crt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".p12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".cer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".pfx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isStoragePresent()Z
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    .line 73
    if-ne p1, v0, :cond_2

    .line 74
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    invoke-static {v1}, Lcom/android/certinstaller/Util;->deleteFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    .local v0, success:Z
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertFile;->onInstallationDone(Z)V

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    .line 81
    .end local v0           #success:Z
    :goto_1
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_2
    const-string v1, "CertFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown request code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onError(I)V
    .locals 0
    .parameter "errorId"

    .prologue
    .line 101
    return-void
.end method

.method protected onInstallationDone(Z)V
    .locals 1
    .parameter "success"

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertFile;->setResult(I)V

    .line 92
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedStates"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 65
    const-string v1, "cf"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    .line 69
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outStates"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "cf"

    iget-object v1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

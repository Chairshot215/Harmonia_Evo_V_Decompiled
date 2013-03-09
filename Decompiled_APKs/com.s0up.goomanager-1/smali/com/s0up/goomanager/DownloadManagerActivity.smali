.class public Lcom/s0up/goomanager/DownloadManagerActivity;
.super Landroid/app/Activity;
.source "DownloadManagerActivity.java"


# instance fields
.field private dm:Landroid/app/DownloadManager;

.field private downloadLink:Ljava/lang/String;

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/DownloadManagerActivity;->fileName:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/DownloadManagerActivity;->downloadLink:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/s0up/goomanager/DownloadManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 24
    .local v2, extras:Landroid/os/Bundle;
    const v7, 0x7f03000d

    invoke-virtual {p0, v7}, Lcom/s0up/goomanager/DownloadManagerActivity;->setContentView(I)V

    .line 25
    const-string v7, "downloadLink"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/s0up/goomanager/DownloadManagerActivity;->downloadLink:Ljava/lang/String;

    .line 26
    const-string v7, "fileName"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/s0up/goomanager/DownloadManagerActivity;->fileName:Ljava/lang/String;

    .line 27
    const-string v7, "download"

    invoke-virtual {p0, v7}, Lcom/s0up/goomanager/DownloadManagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/DownloadManager;

    iput-object v7, p0, Lcom/s0up/goomanager/DownloadManagerActivity;->dm:Landroid/app/DownloadManager;

    .line 28
    const-string v7, "goomanager"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/s0up/goomanager/DownloadManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 29
    .local v6, settings:Landroid/content/SharedPreferences;
    const-string v7, "download_path"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/goomanager/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, DOWNLOAD_PATH:Ljava/lang/String;
    new-instance v5, Landroid/app/DownloadManager$Request;

    .line 31
    iget-object v7, p0, Lcom/s0up/goomanager/DownloadManagerActivity;->downloadLink:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 30
    invoke-direct {v5, v7}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 33
    .local v5, request:Landroid/app/DownloadManager$Request;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v4, folder:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-nez v7, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/s0up/goomanager/DownloadManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "Unable to create download directory"

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 36
    invoke-virtual {p0}, Lcom/s0up/goomanager/DownloadManagerActivity;->finish()V

    .line 39
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/s0up/goomanager/DownloadManagerActivity;->fileName:Ljava/lang/String;

    invoke-direct {v3, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .local v3, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 42
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 44
    :try_start_0
    iget-object v7, p0, Lcom/s0up/goomanager/DownloadManagerActivity;->dm:Landroid/app/DownloadManager;

    invoke-virtual {v7, v5}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/s0up/goomanager/DownloadManagerActivity;->finish()V

    .line 53
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/s0up/goomanager/DownloadManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unable to write to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 49
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_1
    invoke-virtual {p0}, Lcom/s0up/goomanager/DownloadManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unable to write to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

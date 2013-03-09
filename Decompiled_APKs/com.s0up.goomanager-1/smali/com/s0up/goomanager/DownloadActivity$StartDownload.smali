.class Lcom/s0up/goomanager/DownloadActivity$StartDownload;
.super Landroid/os/AsyncTask;
.source "DownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private folder:Ljava/io/File;

.field final synthetic this$0:Lcom/s0up/goomanager/DownloadActivity;


# direct methods
.method private constructor <init>(Lcom/s0up/goomanager/DownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s0up/goomanager/DownloadActivity;Lcom/s0up/goomanager/DownloadActivity$StartDownload;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/DownloadActivity$StartDownload;-><init>(Lcom/s0up/goomanager/DownloadActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "params"

    .prologue
    .line 174
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    iget-object v3, v3, Lcom/s0up/goomanager/DownloadActivity;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->folder:Ljava/io/File;

    .line 175
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->folder:Ljava/io/File;

    iget-object v4, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->pathText:Ljava/lang/String;
    invoke-static {v4}, Lcom/s0up/goomanager/DownloadActivity;->access$2(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->file:Ljava/io/File;

    .line 176
    iget-object v2, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->folder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->folder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/s0up/goomanager/MD5Checksum;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, computedMd5:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Computed md5 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->fileMd5:Ljava/lang/String;
    invoke-static {v4}, Lcom/s0up/goomanager/DownloadActivity;->access$1(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->fileMd5:Ljava/lang/String;
    invoke-static {v2}, Lcom/s0up/goomanager/DownloadActivity;->access$1(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    const-string v2, "ALREADY_EXISTS"

    .line 190
    .end local v0           #computedMd5:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    const-string v2, "INVALID_MD5"

    goto :goto_0

    .line 188
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "FILE_NOT_EXISTS"

    goto :goto_0

    .line 190
    .restart local v0       #computedMd5:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 161
    iget-object v2, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->file:Ljava/io/File;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const-string v2, "INVALID_MD5"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 164
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    const-class v3, Lcom/s0up/goomanager/WebViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v1, webViewIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->pathLink:Ljava/lang/String;
    invoke-static {v2}, Lcom/s0up/goomanager/DownloadActivity;->access$0(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "///"

    const-string v4, "/"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, downloadLink:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://goo.im"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v2, "downloadLink"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v2, "fileMd5"

    iget-object v3, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->fileMd5:Ljava/lang/String;
    invoke-static {v3}, Lcom/s0up/goomanager/DownloadActivity;->access$1(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v2, p0, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    invoke-virtual {v2, v1}, Lcom/s0up/goomanager/DownloadActivity;->startActivity(Landroid/content/Intent;)V

    .line 170
    return-void
.end method

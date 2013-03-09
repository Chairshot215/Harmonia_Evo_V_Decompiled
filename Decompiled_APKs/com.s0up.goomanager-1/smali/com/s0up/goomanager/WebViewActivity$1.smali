.class Lcom/s0up/goomanager/WebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/WebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/WebViewActivity$1;->this$0:Lcom/s0up/goomanager/WebViewActivity;

    .line 67
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v7, 0x0

    .line 70
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 71
    const/16 v5, 0x2f

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, urlName:Ljava/lang/String;
    const-string v5, "&android=true"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    iget-object v5, p0, Lcom/s0up/goomanager/WebViewActivity$1;->this$0:Lcom/s0up/goomanager/WebViewActivity;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    #setter for: Lcom/s0up/goomanager/WebViewActivity;->canGoBack:Ljava/lang/Boolean;
    invoke-static {v5, v6}, Lcom/s0up/goomanager/WebViewActivity;->access$0(Lcom/s0up/goomanager/WebViewActivity;Ljava/lang/Boolean;)V

    .line 77
    :goto_0
    const-string v5, "&android=true"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/s0up/goomanager/WebViewActivity$1;->this$0:Lcom/s0up/goomanager/WebViewActivity;

    #getter for: Lcom/s0up/goomanager/WebViewActivity;->fileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/s0up/goomanager/WebViewActivity;->access$1(Lcom/s0up/goomanager/WebViewActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    iget-object v5, p0, Lcom/s0up/goomanager/WebViewActivity$1;->this$0:Lcom/s0up/goomanager/WebViewActivity;

    #getter for: Lcom/s0up/goomanager/WebViewActivity;->isDownloading:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/s0up/goomanager/WebViewActivity;->access$2(Lcom/s0up/goomanager/WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 79
    iget-object v5, p0, Lcom/s0up/goomanager/WebViewActivity$1;->this$0:Lcom/s0up/goomanager/WebViewActivity;

    const-string v6, "goomanager"

    invoke-virtual {v5, v6, v7}, Lcom/s0up/goomanager/WebViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 80
    .local v3, settings:Landroid/content/SharedPreferences;
    const-string v5, "download_path"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/goomanager/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, DOWNLOAD_PATH:Ljava/lang/String;
    new-instance v1, Lcom/s0up/goomanager/download/Download;

    invoke-direct {v1}, Lcom/s0up/goomanager/download/Download;-><init>()V

    .line 83
    .local v1, downloadInformation:Lcom/s0up/goomanager/download/Download;
    const-wide/16 v5, -0x1

    iput-wide v5, v1, Lcom/s0up/goomanager/download/Download;->fileLength:J

    .line 84
    iget-object v5, p0, Lcom/s0up/goomanager/WebViewActivity$1;->this$0:Lcom/s0up/goomanager/WebViewActivity;

    #getter for: Lcom/s0up/goomanager/WebViewActivity;->fileMd5:Ljava/lang/String;
    invoke-static {v5}, Lcom/s0up/goomanager/WebViewActivity;->access$3(Lcom/s0up/goomanager/WebViewActivity;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/s0up/goomanager/download/Download;->md5Sum:Ljava/lang/String;

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/s0up/goomanager/WebViewActivity$1;->this$0:Lcom/s0up/goomanager/WebViewActivity;

    #getter for: Lcom/s0up/goomanager/WebViewActivity;->fileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/s0up/goomanager/WebViewActivity;->access$1(Lcom/s0up/goomanager/WebViewActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    .line 86
    iput-object p2, v1, Lcom/s0up/goomanager/download/Download;->url:Ljava/lang/String;

    .line 87
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/s0up/goomanager/WebViewActivity$1;->this$0:Lcom/s0up/goomanager/WebViewActivity;

    const-class v6, Lcom/s0up/goomanager/download/DownloadService;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v2, service:Landroid/content/Intent;
    const-string v5, "downloadFile"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    iget-object v5, p0, Lcom/s0up/goomanager/WebViewActivity$1;->this$0:Lcom/s0up/goomanager/WebViewActivity;

    invoke-virtual {v5, v2}, Lcom/s0up/goomanager/WebViewActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    iget-object v5, p0, Lcom/s0up/goomanager/WebViewActivity$1;->this$0:Lcom/s0up/goomanager/WebViewActivity;

    invoke-virtual {v5}, Lcom/s0up/goomanager/WebViewActivity;->finish()V

    .line 93
    .end local v0           #DOWNLOAD_PATH:Ljava/lang/String;
    .end local v1           #downloadInformation:Lcom/s0up/goomanager/download/Download;
    .end local v2           #service:Landroid/content/Intent;
    .end local v3           #settings:Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v5, p0, Lcom/s0up/goomanager/WebViewActivity$1;->this$0:Lcom/s0up/goomanager/WebViewActivity;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    #setter for: Lcom/s0up/goomanager/WebViewActivity;->canGoBack:Ljava/lang/Boolean;
    invoke-static {v5, v6}, Lcom/s0up/goomanager/WebViewActivity;->access$0(Lcom/s0up/goomanager/WebViewActivity;Ljava/lang/Boolean;)V

    goto/16 :goto_0
.end method

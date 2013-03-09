.class Lcom/htc/musicenhancer/provider/DownloadProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/provider/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/provider/DownloadProvider;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/provider/DownloadProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/htc/musicenhancer/provider/DownloadProvider$1;->this$0:Lcom/htc/musicenhancer/provider/DownloadProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 518
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    const-string v2, "[DownloadProvider]"

    const-string v3, "ACTION_MEDIA_EJECT"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, mountPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, externalPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/htc/musicenhancer/provider/DownloadProvider$1;->this$0:Lcom/htc/musicenhancer/provider/DownloadProvider;

    const-string v3, "content://music.downloadalbumart/external"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    #calls: Lcom/htc/musicenhancer/provider/DownloadProvider;->detachVolume(Landroid/net/Uri;)V
    invoke-static {v2, v3}, Lcom/htc/musicenhancer/provider/DownloadProvider;->access$100(Lcom/htc/musicenhancer/provider/DownloadProvider;Landroid/net/Uri;)V

    .line 537
    .end local v0           #externalPath:Ljava/lang/String;
    .end local v1           #mountPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    const-string v2, "[DownloadProvider]"

    const-string v3, "ACTION_MEDIA_MOUNTED"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 530
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 531
    .restart local v1       #mountPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 532
    .restart local v0       #externalPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    iget-object v2, p0, Lcom/htc/musicenhancer/provider/DownloadProvider$1;->this$0:Lcom/htc/musicenhancer/provider/DownloadProvider;

    const-string v3, "external"

    #calls: Lcom/htc/musicenhancer/provider/DownloadProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/htc/musicenhancer/provider/DownloadProvider;->access$200(Lcom/htc/musicenhancer/provider/DownloadProvider;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method

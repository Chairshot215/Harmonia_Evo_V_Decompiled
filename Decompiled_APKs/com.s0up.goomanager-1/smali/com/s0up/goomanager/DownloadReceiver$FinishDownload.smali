.class Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;
.super Landroid/os/AsyncTask;
.source "DownloadReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/DownloadReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinishDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/s0up/goomanager/DownloadReceiver;


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/DownloadReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->context:Landroid/content/Context;

    .line 90
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 131
    iget-object v3, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    iget-object v3, v3, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 156
    :goto_0
    return-object v6

    .line 134
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    iget-object v3, v3, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, downloadedFile:Ljava/io/File;
    const-string v0, ""

    .line 137
    .local v0, computedMd5:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    iget-object v3, v3, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/s0up/goomanager/MD5Checksum;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key comparison to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/s0up/goomanager/Singleton;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VALID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    const-string v4, "Download Complete"

    #setter for: Lcom/s0up/goomanager/DownloadReceiver;->contentTitle:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/s0up/goomanager/DownloadReceiver;->access$2(Lcom/s0up/goomanager/DownloadReceiver;Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Download has completed successfully! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    iget-object v5, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    iget-object v5, v5, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 141
    #setter for: Lcom/s0up/goomanager/DownloadReceiver;->contentText:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/s0up/goomanager/DownloadReceiver;->access$3(Lcom/s0up/goomanager/DownloadReceiver;Ljava/lang/String;)V

    .line 143
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "key complete and valid"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    iget-object v3, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    const-string v4, "Unable to compute md5"

    #setter for: Lcom/s0up/goomanager/DownloadReceiver;->contentTitle:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/s0up/goomanager/DownloadReceiver;->access$2(Lcom/s0up/goomanager/DownloadReceiver;Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    const-string v4, "GooManager was unable to compute the md5sum"

    #setter for: Lcom/s0up/goomanager/DownloadReceiver;->contentText:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/s0up/goomanager/DownloadReceiver;->access$3(Lcom/s0up/goomanager/DownloadReceiver;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    const-string v4, "Md5sum mismatch!"

    #setter for: Lcom/s0up/goomanager/DownloadReceiver;->contentTitle:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/s0up/goomanager/DownloadReceiver;->access$2(Lcom/s0up/goomanager/DownloadReceiver;Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    const-string v4, "The downloaded file had an invalid md5sum"

    #setter for: Lcom/s0up/goomanager/DownloadReceiver;->contentText:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/s0up/goomanager/DownloadReceiver;->access$3(Lcom/s0up/goomanager/DownloadReceiver;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 94
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 96
    .local v2, show_notification:Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->context:Landroid/content/Context;

    .line 97
    const-string v6, "notification"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 96
    iput-object v4, v5, Lcom/s0up/goomanager/DownloadReceiver;->notificationManager:Landroid/app/NotificationManager;

    .line 100
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f020006

    iget-object v5, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    #getter for: Lcom/s0up/goomanager/DownloadReceiver;->contentTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/s0up/goomanager/DownloadReceiver;->access$0(Lcom/s0up/goomanager/DownloadReceiver;)Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 100
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 102
    .local v3, uploadComplete:Landroid/app/Notification;
    iget v4, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Landroid/app/Notification;->defaults:I

    .line 103
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x11

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 106
    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    iget-object v4, v4, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    iget-object v4, v4, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    iget-object v4, v4, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v5, "openrecovery-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 107
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->context:Landroid/content/Context;

    const-class v5, Lcom/s0up/goomanager/FlashActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v1, notificationIntent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->context:Landroid/content/Context;

    invoke-static {v4, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 125
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    #getter for: Lcom/s0up/goomanager/DownloadReceiver;->contentTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/s0up/goomanager/DownloadReceiver;->access$0(Lcom/s0up/goomanager/DownloadReceiver;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    #getter for: Lcom/s0up/goomanager/DownloadReceiver;->contentText:Ljava/lang/String;
    invoke-static {v6}, Lcom/s0up/goomanager/DownloadReceiver;->access$1(Lcom/s0up/goomanager/DownloadReceiver;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 126
    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    iget-object v4, v4, Lcom/s0up/goomanager/DownloadReceiver;->notificationManager:Landroid/app/NotificationManager;

    sget-wide v5, Lcom/s0up/goomanager/DownloadReceiver;->downloadId:J

    long-to-int v5, v5

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 128
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    :cond_0
    return-void

    .line 108
    .end local v1           #notificationIntent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    iget-object v4, v4, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    iget-object v4, v4, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v5, "openrecovery-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 109
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->context:Landroid/content/Context;

    const-class v5, Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .restart local v1       #notificationIntent:Landroid/content/Intent;
    const-string v4, "is_recovery"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    const-string v4, "downloadedFile"

    iget-object v5, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    iget-object v5, v5, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    iget-object v4, v4, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".img"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->this$0:Lcom/s0up/goomanager/DownloadReceiver;

    iget-object v4, v4, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".blob"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 113
    :cond_2
    const-string v4, "is_img"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    const-string v4, "GOO"

    const-string v5, "File downloaded is a .img"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_3
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 118
    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 120
    .end local v1           #notificationIntent:Landroid/content/Intent;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->context:Landroid/content/Context;

    const-class v5, Lcom/s0up/goomanager/NullActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1       #notificationIntent:Landroid/content/Intent;
    goto/16 :goto_0
.end method

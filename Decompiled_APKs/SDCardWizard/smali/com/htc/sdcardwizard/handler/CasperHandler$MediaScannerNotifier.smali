.class public Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;
.super Ljava/lang/Object;
.source "CasperHandler.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/handler/CasperHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MediaScannerNotifier"
.end annotation


# instance fields
.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mMimeType:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/sdcardwizard/handler/CasperHandler;


# direct methods
.method public constructor <init>(Lcom/htc/sdcardwizard/handler/CasperHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->this$0:Lcom/htc/sdcardwizard/handler/CasperHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p1, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .line 58
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter "path"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->this$0:Lcom/htc/sdcardwizard/handler/CasperHandler;

    iget-object v0, v0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 70
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 72
    return-void

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public scan(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :try_start_1
    iput-object p1, p0, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->mPath:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->mMimeType:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 80
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 81
    monitor-exit v1

    .line 84
    :goto_0
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

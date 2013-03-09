.class Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;
.super Ljava/lang/Object;
.source "BluetoothOppService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaScannerNotifier"
.end annotation


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "handler"

    .prologue
    .line 943
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mContext:Landroid/content/Context;

    .line 945
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 946
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mCallback:Landroid/os/Handler;

    .line 947
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .line 949
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 950
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 964
    if-eqz p2, :cond_0

    .line 965
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 966
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mCallback:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 967
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 968
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 969
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 970
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .end local v1           #msg:Landroid/os/Message;
    :goto_1
    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 984
    return-void

    .line 972
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 973
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mCallback:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 974
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 975
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 976
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 978
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 979
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "BtOpp Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!MediaScannerConnection exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 982
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    goto :goto_1

    .line 981
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 982
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v3}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 981
    throw v2
.end method

.class public interface abstract Lcom/htc/android/mail/eassvc/core/SyncSource;
.super Ljava/lang/Object;
.source "SyncSource.java"


# virtual methods
.method public abstract beginSync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/eassvc/core/SyncException;
        }
    .end annotation
.end method

.method public abstract cancelSync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/eassvc/core/SyncException;
        }
    .end annotation
.end method

.method public abstract deleteAccount()Z
.end method

.method public abstract deletePIMAppData(Z)V
.end method

.method public abstract endSync(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/eassvc/core/SyncException;
        }
    .end annotation
.end method

.method public abstract getAccount()Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
.end method

.method public abstract getColID()Ljava/lang/String;
.end method

.method public abstract getHttpClient()Landroid/net/http/AndroidHttpClient;
.end method

.method public abstract getHttpPost()Lorg/apache/http/client/methods/HttpPost;
.end method

.method public abstract getLastSyncErrorCode()I
.end method

.method public abstract getLastSyncInfo()Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
.end method

.method public abstract getLastSyncResult()I
.end method

.method public abstract getLastSyncTime()J
.end method

.method public abstract getListener()Lcom/htc/android/mail/eassvc/core/SyncListener;
.end method

.method public abstract getLock()Ljava/lang/Object;
.end method

.method public abstract getRetryCount()I
.end method

.method public abstract getSyncKey()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isPause()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract needRetry()Z
.end method

.method public abstract pause()V
.end method

.method public abstract release()V
.end method

.method public abstract releaseHttpClient()V
.end method

.method public abstract resetCancelFlag()V
.end method

.method public abstract setCheckPoint()V
.end method

.method public abstract setColID(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setHttpPost(Lorg/apache/http/client/methods/HttpPost;)V
.end method

.method public abstract setHttpTimeout(I)V
.end method

.method public abstract setLastSyncErrorCode(I)V
.end method

.method public abstract setLastSyncResult(I)V
.end method

.method public abstract setListener(Lcom/htc/android/mail/eassvc/core/SyncListener;)V
.end method

.method public abstract setPause(Z)V
.end method

.method public abstract setRetry()V
.end method

.method public abstract setSyncKey(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

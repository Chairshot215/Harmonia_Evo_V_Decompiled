.class public interface abstract Lcom/google/android/apps/uploader/googlemobile/common/io/TcpConnectionFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/io/ConnectionFactory;


# virtual methods
.method public abstract createConnection(Ljava/lang/String;I)Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleTcpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getReceivedBytes()J
.end method

.method public abstract getSentBytes()J
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract notifyUnreliable()V
.end method

.method public abstract resetSentReceiveBytes()V
.end method

.method public abstract setLogAdapter(Lcom/google/android/apps/uploader/googlemobile/common/io/LogAdapter;)V
.end method

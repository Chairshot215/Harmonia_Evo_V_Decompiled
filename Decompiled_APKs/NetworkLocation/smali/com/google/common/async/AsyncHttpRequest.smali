.class public interface abstract Lcom/google/common/async/AsyncHttpRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/async/AsyncRequest;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getLastProgressTimestamp()J
.end method

.method public abstract getResponseCode()I
.end method

.method public abstract getResponseLength()J
.end method

.method public abstract getResponseStream()Ljava/io/DataInputStream;
.end method

.method public abstract getResponseType()Ljava/lang/String;
.end method

.method public abstract setContentType(Ljava/lang/String;)V
.end method

.method public abstract setMethod(Ljava/lang/String;)V
.end method

.method public abstract setPayload(Ljava/io/InputStream;)V
.end method

.method public abstract setWatchdogDelay(J)V
.end method

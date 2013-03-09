.class public interface abstract Lcom/google/android/finsky/remoting/RadioConnection;
.super Ljava/lang/Object;
.source "RadioConnection.java"


# virtual methods
.method public abstract ensureRouteToHost(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation
.end method

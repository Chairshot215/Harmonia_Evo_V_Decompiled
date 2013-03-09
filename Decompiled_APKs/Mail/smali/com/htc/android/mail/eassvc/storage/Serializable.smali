.class public interface abstract Lcom/htc/android/mail/eassvc/storage/Serializable;
.super Ljava/lang/Object;
.source "Serializable.java"


# virtual methods
.method public abstract deserialize(Ljava/io/DataInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract serialize(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

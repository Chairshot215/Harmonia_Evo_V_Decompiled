.class public interface abstract Lcom/google/common/io/HttpConnectionFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/io/ConnectionFactory;


# virtual methods
.method public abstract createConnection(Ljava/lang/String;Z)Lcom/google/common/io/GoogleHttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

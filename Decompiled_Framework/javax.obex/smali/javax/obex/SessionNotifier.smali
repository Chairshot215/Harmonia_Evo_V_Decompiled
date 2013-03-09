.class public interface abstract Ljavax/obex/SessionNotifier;
.super Ljava/lang/Object;
.source "SessionNotifier.java"


# virtual methods
.method public abstract acceptAndOpen(Ljavax/obex/ServerRequestHandler;)Ljavax/obex/ObexSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract acceptAndOpen(Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)Ljavax/obex/ObexSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

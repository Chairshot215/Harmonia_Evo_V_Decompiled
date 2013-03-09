.class public interface abstract Lcom/google/masf/protocol/Request$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/masf/protocol/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract requestCompleted(Lcom/google/masf/protocol/Request;Lcom/google/masf/protocol/Response;)V
.end method

.method public abstract requestFailed(Lcom/google/masf/protocol/Request;Ljava/lang/Exception;)V
.end method

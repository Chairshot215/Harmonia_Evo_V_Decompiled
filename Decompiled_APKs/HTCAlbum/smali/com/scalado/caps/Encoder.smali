.class public abstract Lcom/scalado/caps/Encoder;
.super Lcom/scalado/caps/PeerBase;
.source "Encoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract render(Lcom/scalado/caps/Session;)Lcom/scalado/base/Iterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

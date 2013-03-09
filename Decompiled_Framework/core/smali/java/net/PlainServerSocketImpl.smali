.class public Ljava/net/PlainServerSocketImpl;
.super Ljava/net/PlainSocketImpl;
.source "PlainServerSocketImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method protected create(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/net/PlainSocketImpl;->create(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/net/PlainServerSocketImpl;->setOption(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

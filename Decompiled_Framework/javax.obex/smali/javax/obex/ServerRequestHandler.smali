.class public Ljavax/obex/ServerRequestHandler;
.super Ljava/lang/Object;
.source "ServerRequestHandler.java"


# instance fields
.field private mConnectionId:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljavax/obex/ServerRequestHandler;->mConnectionId:J

    return-void
.end method


# virtual methods
.method public getConnectionId()J
    .locals 2

    iget-wide v0, p0, Ljavax/obex/ServerRequestHandler;->mConnectionId:J

    return-wide v0
.end method

.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 1

    const/16 v0, 0xd1

    return v0
.end method

.method public onAuthenticationFailure([B)V
    .locals 0

    return-void
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 1

    const/16 v0, 0xa0

    return v0
.end method

.method public onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 1

    const/16 v0, 0xd1

    return v0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 0

    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 1

    const/16 v0, 0xd1

    return v0
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 1

    const/16 v0, 0xd1

    return v0
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 1

    const/16 v0, 0xd1

    return v0
.end method

.method public setConnectionId(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal Connection ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p1, p0, Ljavax/obex/ServerRequestHandler;->mConnectionId:J

    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

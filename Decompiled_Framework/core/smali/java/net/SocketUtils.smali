.class public Ljava/net/SocketUtils;
.super Ljava/lang/Object;
.source "SocketUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCreated(Ljava/net/Socket;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    return-void
.end method

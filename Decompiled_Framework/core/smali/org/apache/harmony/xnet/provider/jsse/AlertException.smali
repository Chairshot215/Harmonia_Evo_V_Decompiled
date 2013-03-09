.class public Lorg/apache/harmony/xnet/provider/jsse/AlertException;
.super Ljava/lang/RuntimeException;
.source "AlertException.java"


# static fields
.field private static final serialVersionUID:J = -0x3dbba1ffd7ad4b1dL


# instance fields
.field private final description:B

.field private final reason:Ljavax/net/ssl/SSLException;


# direct methods
.method protected constructor <init>(BLjavax/net/ssl/SSLException;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->reason:Ljavax/net/ssl/SSLException;

    iput-byte p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->description:B

    return-void
.end method


# virtual methods
.method protected getDescriptionCode()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->description:B

    return v0
.end method

.method protected getReason()Ljavax/net/ssl/SSLException;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;->reason:Ljavax/net/ssl/SSLException;

    return-object v0
.end method

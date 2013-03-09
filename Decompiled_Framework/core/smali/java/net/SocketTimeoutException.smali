.class public Ljava/net/SocketTimeoutException;
.super Ljava/io/InterruptedIOException;
.source "SocketTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = -0x7ac5a1b5018c9cacL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

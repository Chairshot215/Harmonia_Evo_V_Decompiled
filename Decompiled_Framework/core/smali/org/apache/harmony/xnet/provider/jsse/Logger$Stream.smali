.class public Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;
.super Ljava/io/PrintStream;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stream"
.end annotation


# static fields
.field private static indent:I


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endIndent()V
    .locals 1

    sget v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    return-void
.end method

.method public newIndent()V
    .locals 1

    sget v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget v1, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    if-ge v0, v1, :cond_0

    const-string v1, "  "

    invoke-super {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public print([B)V
    .locals 7

    const/16 v1, 0x10

    const-string v2, " "

    const-string v3, ""

    const/4 v5, 0x0

    array-length v6, p1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V

    return-void
.end method

.method public print([BII)V
    .locals 7

    const/16 v1, 0x10

    const-string v2, " "

    const-string v3, ""

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V

    return-void
.end method

.method public printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 7

    const/4 v5, 0x0

    array-length v6, p4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V

    return-void
.end method

.method public printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p6, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v2, v0, p5

    aget-byte v2, p4, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    rem-int/2addr v2, p1

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print(Ljava/lang/String;)V

    invoke-super {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

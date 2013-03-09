.class public Lgnu/mapping/InPort;
.super Lgnu/text/LineBufferedReader;
.source "InPort.java"

# interfaces
.implements Lgnu/text/Printable;


# static fields
.field public static final inLocation:Lgnu/mapping/ThreadLocation;

.field private static systemInPort:Lgnu/mapping/InPort;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lgnu/mapping/TtyInPort;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string v2, "/dev/stdin"

    invoke-static {v2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    sget-object v3, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    invoke-direct {v0, v1, v2, v3}, Lgnu/mapping/TtyInPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V

    sput-object v0, Lgnu/mapping/InPort;->systemInPort:Lgnu/mapping/InPort;

    .line 67
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "in-default"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/InPort;->inLocation:Lgnu/mapping/ThreadLocation;

    .line 69
    sget-object v0, Lgnu/mapping/InPort;->inLocation:Lgnu/mapping/ThreadLocation;

    sget-object v1, Lgnu/mapping/InPort;->systemInPort:Lgnu/mapping/InPort;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lgnu/text/LineBufferedReader;-><init>(Ljava/io/InputStream;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lgnu/text/Path;)V
    .locals 0
    .parameter "in"
    .parameter "path"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;)V

    .line 27
    invoke-virtual {p0, p2}, Lgnu/mapping/InPort;->setPath(Lgnu/text/Path;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lgnu/text/Path;Ljava/lang/Object;)V
    .locals 1
    .parameter "in"
    .parameter "path"
    .parameter "conv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p1, p3}, Lgnu/mapping/InPort;->convertToReader(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/io/Reader;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;)V

    .line 51
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p3, v0, :cond_0

    .line 57
    const/16 v0, 0x800

    :try_start_0
    new-array v0, v0, [C

    invoke-virtual {p0, v0}, Lgnu/mapping/InPort;->setBuffer([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/mapping/InPort;->setConvertCR(Z)V

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lgnu/text/LineBufferedReader;-><init>(Ljava/io/Reader;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lgnu/text/Path;)V
    .locals 0
    .parameter "in"
    .parameter "path"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    .line 16
    invoke-virtual {p0, p2}, Lgnu/mapping/InPort;->setPath(Lgnu/text/Path;)V

    .line 17
    return-void
.end method

.method public static convertToReader(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/io/Reader;
    .locals 5
    .parameter "in"
    .parameter "conv"

    .prologue
    .line 32
    if-eqz p1, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq p1, v2, :cond_1

    .line 34
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v2, :cond_0

    const-string v2, "8859_1"

    move-object v0, v2

    .line 37
    .local v0, enc:Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0           #enc:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 39
    .restart local v0       #enc:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 41
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown character encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    .end local v0           #enc:Ljava/lang/String;
    .end local v1           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_1
.end method

.method public static inDefault()Lgnu/mapping/InPort;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lgnu/mapping/InPort;->inLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/InPort;

    return-object v0
.end method

.method public static openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;
    .locals 4
    .parameter "strm"
    .parameter "fname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lgnu/mapping/InPort;

    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v1

    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v2

    const-string v3, "port-char-encoding"

    invoke-virtual {v2, v3}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;
    .locals 4
    .parameter "fname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    .line 85
    .local v0, path:Lgnu/text/Path;
    invoke-virtual {v0}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 86
    .local v1, strm:Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 87
    .end local v1           #strm:Ljava/io/InputStream;
    .local v2, strm:Ljava/io/InputStream;
    invoke-static {v2, v0}, Lgnu/mapping/InPort;->openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v3

    return-object v3
.end method

.method public static setInDefault(Lgnu/mapping/InPort;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 78
    sget-object v0, Lgnu/mapping/InPort;->inLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    .line 79
    return-void
.end method


# virtual methods
.method public print(Lgnu/lists/Consumer;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 99
    const-string v1, "#<input-port"

    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lgnu/mapping/InPort;->getName()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 103
    const/16 v1, 0x20

    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->write(I)V

    .line 104
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 106
    :cond_0
    const/16 v1, 0x3e

    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->write(I)V

    .line 107
    return-void
.end method

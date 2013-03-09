.class public final Lcom/scalado/stream/FileStream;
.super Lcom/scalado/stream/Stream;
.source "FileStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/stream/FileStream$Access;
    }
.end annotation


# instance fields
.field private access:Lcom/scalado/stream/FileStream$Access;

.field private filename:Ljava/lang/String;

.field private isClosed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/scalado/stream/Stream;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/stream/FileStream;->isClosed:Z

    iget v1, p2, Lcom/scalado/stream/FileStream$Access;->value:I

    invoke-direct {p0, p1, v1}, Lcom/scalado/stream/FileStream;->nativeCreate(Ljava/lang/String;I)I

    move-result v0

    iput-object p2, p0, Lcom/scalado/stream/FileStream;->access:Lcom/scalado/stream/FileStream$Access;

    iput-object p1, p0, Lcom/scalado/stream/FileStream;->filename:Ljava/lang/String;

    return-void
.end method

.method private native nativeClose()I
.end method

.method private native nativeCreate(Ljava/lang/String;I)I
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v1, p0, Lcom/scalado/stream/FileStream;->isClosed:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/scalado/stream/FileStream;->nativeClose()I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/stream/FileStream;->isClosed:Z

    :cond_0
    return-void
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/scalado/stream/FileStream;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public isReadable()Z
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/stream/FileStream;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scalado/stream/FileStream;->access:Lcom/scalado/stream/FileStream$Access;

    sget-object v1, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWritable()Z
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/stream/FileStream;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scalado/stream/FileStream;->access:Lcom/scalado/stream/FileStream$Access;

    sget-object v1, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

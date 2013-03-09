.class public Lcom/s0up/goomanager/FileListOption;
.super Ljava/lang/Object;
.source "FileListOption.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/s0up/goomanager/FileListOption;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "n"
    .parameter "d"
    .parameter "p"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/s0up/goomanager/FileListOption;->name:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/s0up/goomanager/FileListOption;->data:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/s0up/goomanager/FileListOption;->path:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/s0up/goomanager/FileListOption;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/s0up/goomanager/FileListOption;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/s0up/goomanager/FileListOption;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s0up/goomanager/FileListOption;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/s0up/goomanager/FileListOption;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/FileListOption;->compareTo(Lcom/s0up/goomanager/FileListOption;)I

    move-result v0

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/s0up/goomanager/FileListOption;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/s0up/goomanager/FileListOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/s0up/goomanager/FileListOption;->path:Ljava/lang/String;

    return-object v0
.end method

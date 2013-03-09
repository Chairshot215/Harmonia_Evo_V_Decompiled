.class final Lcom/google/common/io/CharStreams$1;
.super Ljava/lang/Object;
.source "CharStreams.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/CharStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/InputSupplier",
        "<",
        "Ljava/io/StringReader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$value:Ljava/lang/String;


# virtual methods
.method public getInput()Ljava/io/StringReader;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/google/common/io/CharStreams$1;->val$value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getInput()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/common/io/CharStreams$1;->getInput()Ljava/io/StringReader;

    move-result-object v0

    return-object v0
.end method

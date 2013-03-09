.class final Lcom/google/common/io/CharStreams$4;
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
        "Ljava/io/Reader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$suppliers:Ljava/lang/Iterable;


# virtual methods
.method public getInput()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lcom/google/common/io/MultiReader;

    iget-object v1, p0, Lcom/google/common/io/CharStreams$4;->val$suppliers:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/io/MultiReader;-><init>(Ljava/util/Iterator;)V

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
    .line 379
    invoke-virtual {p0}, Lcom/google/common/io/CharStreams$4;->getInput()Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

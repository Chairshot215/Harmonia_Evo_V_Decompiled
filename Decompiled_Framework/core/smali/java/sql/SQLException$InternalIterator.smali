.class Ljava/sql/SQLException$InternalIterator;
.super Ljava/lang/Object;
.source "SQLException.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/sql/SQLException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private current:Ljava/sql/SQLException;


# direct methods
.method constructor <init>(Ljava/sql/SQLException;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/sql/SQLException$InternalIterator;->next()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Throwable;
    .locals 2

    iget-object v1, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    iget-object v0, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    iget-object v1, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    #getter for: Ljava/sql/SQLException;->next:Ljava/sql/SQLException;
    invoke-static {v1}, Ljava/sql/SQLException;->access$000(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v1

    iput-object v1, p0, Ljava/sql/SQLException$InternalIterator;->current:Ljava/sql/SQLException;

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

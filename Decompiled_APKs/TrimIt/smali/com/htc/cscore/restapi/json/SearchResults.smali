.class public Lcom/htc/cscore/restapi/json/SearchResults;
.super Ljava/lang/Object;
.source "SearchResults.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x523e52b964a771efL


# instance fields
.field public Count:I

.field public Results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    .local p0, this:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/cscore/restapi/json/SearchResults;->Results:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<TT;>;"
    .local p1, o:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/htc/cscore/restapi/json/SearchResults;->Results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 59
    .local p0, this:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<TT;>;"
    iget-object v0, p0, Lcom/htc/cscore/restapi/json/SearchResults;->Results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 50
    .local p0, this:Lcom/htc/cscore/restapi/json/SearchResults;,"Lcom/htc/cscore/restapi/json/SearchResults<TT;>;"
    iget-object v0, p0, Lcom/htc/cscore/restapi/json/SearchResults;->Results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

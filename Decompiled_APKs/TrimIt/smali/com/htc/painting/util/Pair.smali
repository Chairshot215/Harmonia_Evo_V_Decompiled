.class public Lcom/htc/painting/util/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, this:Lcom/htc/painting/util/Pair;,"Lcom/htc/painting/util/Pair<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/htc/painting/util/Pair;->mKey:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lcom/htc/painting/util/Pair;->mValue:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lcom/htc/painting/util/Pair;,"Lcom/htc/painting/util/Pair<TK;TV;>;"
    iget-object v0, p0, Lcom/htc/painting/util/Pair;->mKey:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lcom/htc/painting/util/Pair;,"Lcom/htc/painting/util/Pair<TK;TV;>;"
    iget-object v0, p0, Lcom/htc/painting/util/Pair;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setKey(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/htc/painting/util/Pair;,"Lcom/htc/painting/util/Pair<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iput-object p1, p0, Lcom/htc/painting/util/Pair;->mKey:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, this:Lcom/htc/painting/util/Pair;,"Lcom/htc/painting/util/Pair<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lcom/htc/painting/util/Pair;->mValue:Ljava/lang/Object;

    .line 23
    return-void
.end method

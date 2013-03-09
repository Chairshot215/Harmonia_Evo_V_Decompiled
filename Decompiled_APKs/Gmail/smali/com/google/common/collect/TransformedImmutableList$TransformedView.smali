.class Lcom/google/common/collect/TransformedImmutableList$TransformedView;
.super Lcom/google/common/collect/TransformedImmutableList;
.source "TransformedImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TransformedImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformedView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedImmutableList",
        "<TD;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TransformedImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TransformedImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList$TransformedView;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>.TransformedView;"
    .local p2, backingList:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TD;>;"
    iput-object p1, p0, Lcom/google/common/collect/TransformedImmutableList$TransformedView;->this$0:Lcom/google/common/collect/TransformedImmutableList;

    .line 37
    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedImmutableList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList$TransformedView;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>.TransformedView;"
    invoke-super {p0, p1}, Lcom/google/common/collect/TransformedImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList$TransformedView;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>.TransformedView;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/TransformedImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList$TransformedView;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>.TransformedView;"
    .local p1, d:Ljava/lang/Object;,"TD;"
    iget-object v0, p0, Lcom/google/common/collect/TransformedImmutableList$TransformedView;->this$0:Lcom/google/common/collect/TransformedImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TransformedImmutableList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

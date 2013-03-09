.class Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;
.super Ljava/lang/Object;
.source "IteratorJoiner.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/contacts/IteratorJoiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/syncadapters/contacts/IteratorJoiner",
        "<TT;>.Result;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;


# direct methods
.method private constructor <init>(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)V
    .locals 2
    .parameter

    .prologue
    .local p0, this:Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<TT;>.MyIterator;"
    const/4 v1, 0x0

    .line 85
    iput-object p1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mIteratorLeft:Ljava/util/Iterator;
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$200(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mIteratorLeft:Ljava/util/Iterator;
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$200(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    #setter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemLeft:Ljava/lang/Object;
    invoke-static {p1, v0}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$102(Lcom/google/android/syncadapters/contacts/IteratorJoiner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mIteratorRight:Ljava/util/Iterator;
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$400(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mIteratorRight:Ljava/util/Iterator;
    invoke-static {p1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$400(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :cond_0
    #setter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemRight:Ljava/lang/Object;
    invoke-static {p1, v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$302(Lcom/google/android/syncadapters/contacts/IteratorJoiner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void

    :cond_1
    move-object v0, v1

    .line 86
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/syncadapters/contacts/IteratorJoiner;Lcom/google/android/syncadapters/contacts/IteratorJoiner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    .local p0, this:Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<TT;>.MyIterator;"
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;-><init>(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)V

    return-void
.end method

.method private compareItems(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, this:Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<TT;>.MyIterator;"
    .local p1, a:Ljava/lang/Object;,"TT;"
    .local p2, b:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "these should not both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    if-nez p1, :cond_1

    .line 145
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 147
    :cond_1
    if-nez p2, :cond_2

    .line 148
    const/4 v0, -0x1

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mComparator:Ljava/util/Comparator;
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$800(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 95
    .local p0, this:Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<TT;>.MyIterator;"
    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemRight:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$300(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemLeft:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$100(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/syncadapters/contacts/IteratorJoiner",
            "<TT;>.Result;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<TT;>.MyIterator;"
    const/4 v2, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you must only call next() when hasNext() is true"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemLeft:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$100(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemRight:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$300(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->compareItems(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 120
    .local v0, result:I
    if-gtz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemLeft:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$100(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mResult:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;
    invoke-static {v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$500(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemLeft:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$100(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/lang/Object;

    move-result-object v3

    #setter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->left:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->access$602(Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v3, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mIteratorLeft:Ljava/util/Iterator;
    invoke-static {v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$200(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mIteratorLeft:Ljava/util/Iterator;
    invoke-static {v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$200(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    #setter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemLeft:Ljava/lang/Object;
    invoke-static {v3, v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$102(Lcom/google/android/syncadapters/contacts/IteratorJoiner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :goto_1
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemRight:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$300(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 128
    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mResult:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;
    invoke-static {v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$500(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemRight:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$300(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/lang/Object;

    move-result-object v3

    #setter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->right:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->access$702(Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    iget-object v3, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mIteratorRight:Ljava/util/Iterator;
    invoke-static {v3}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$400(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mIteratorRight:Ljava/util/Iterator;
    invoke-static {v2}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$400(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    :cond_1
    #setter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mItemRight:Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$302(Lcom/google/android/syncadapters/contacts/IteratorJoiner;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :goto_2
    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mResult:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;
    invoke-static {v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$500(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->getLeft()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mResult:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;
    invoke-static {v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$500(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->getRight()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 135
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "should never happen"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mResult:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;
    invoke-static {v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$500(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    move-result-object v1

    #setter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->left:Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->access$602(Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 131
    :cond_4
    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mResult:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;
    invoke-static {v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$500(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    move-result-object v1

    #setter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->right:Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->access$702(Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 137
    :cond_5
    iget-object v1, p0, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->this$0:Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    #getter for: Lcom/google/android/syncadapters/contacts/IteratorJoiner;->mResult:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;
    invoke-static {v1}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->access$500(Lcom/google/android/syncadapters/contacts/IteratorJoiner;)Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    .local p0, this:Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<TT;>.MyIterator;"
    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;->next()Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 154
    .local p0, this:Lcom/google/android/syncadapters/contacts/IteratorJoiner$MyIterator;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<TT;>.MyIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

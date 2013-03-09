.class public Lcom/htc/sunny/SBaseAdapter;
.super Ljava/lang/Object;
.source "SBaseAdapter.java"


# instance fields
.field private final mDataSetObservable:Lcom/htc/sunny/SDataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/htc/sunny/SDataSetObservable;

    invoke-direct {v0}, Lcom/htc/sunny/SDataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny/SDataSetObservable;

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/sunny/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny/SDataSetObservable;

    invoke-virtual {v0}, Lcom/htc/sunny/SDataSetObservable;->notifyChanged()V

    .line 42
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/sunny/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny/SDataSetObservable;

    invoke-virtual {v0}, Lcom/htc/sunny/SDataSetObservable;->notifyInvalidated()V

    .line 50
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sunny/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny/SDataSetObservable;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SDataSetObservable;->notifyChanged(I)V

    .line 46
    return-void
.end method

.method public registerDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/sunny/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny/SDataSetObservable;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SDataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public unregisterDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/sunny/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny/SDataSetObservable;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SDataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

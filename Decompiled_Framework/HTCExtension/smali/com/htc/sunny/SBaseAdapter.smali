.class public Lcom/htc/sunny/SBaseAdapter;
.super Ljava/lang/Object;
.source "SBaseAdapter.java"


# instance fields
.field private final mDataSetObservable:Lcom/htc/sunny/SDataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/sunny/SDataSetObservable;

    invoke-direct {v0}, Lcom/htc/sunny/SDataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny/SDataSetObservable;

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny/SDataSetObservable;

    invoke-virtual {v0}, Lcom/htc/sunny/SDataSetObservable;->notifyChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny/SDataSetObservable;

    invoke-virtual {v0}, Lcom/htc/sunny/SDataSetObservable;->notifyInvalidated()V

    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny/SDataSetObservable;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SDataSetObservable;->notifyChanged(I)V

    return-void
.end method

.method public registerDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny/SDataSetObservable;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SDataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SBaseAdapter;->mDataSetObservable:Lcom/htc/sunny/SDataSetObservable;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SDataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

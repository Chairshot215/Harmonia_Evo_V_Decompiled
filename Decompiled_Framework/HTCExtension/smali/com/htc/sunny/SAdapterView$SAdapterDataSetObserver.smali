.class Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;
.super Lcom/htc/sunny/SDataSetObserver;
.source "SAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SAdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SAdapterView;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SAdapterView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;->this$0:Lcom/htc/sunny/SAdapterView;

    invoke-direct {p0}, Lcom/htc/sunny/SDataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;->this$0:Lcom/htc/sunny/SAdapterView;

    invoke-virtual {v0}, Lcom/htc/sunny/SAdapterView;->notifyDataSetChanged()V

    return-void
.end method

.method public onChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;->this$0:Lcom/htc/sunny/SAdapterView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SAdapterView;->notifyUpdateItem(I)V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method

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
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;->this$0:Lcom/htc/sunny/SAdapterView;

    invoke-direct {p0}, Lcom/htc/sunny/SDataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;->this$0:Lcom/htc/sunny/SAdapterView;

    invoke-virtual {v0}, Lcom/htc/sunny/SAdapterView;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method public onChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;->this$0:Lcom/htc/sunny/SAdapterView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SAdapterView;->notifyUpdateItem(I)V

    .line 62
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

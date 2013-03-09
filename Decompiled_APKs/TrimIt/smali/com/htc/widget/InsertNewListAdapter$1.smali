.class Lcom/htc/widget/InsertNewListAdapter$1;
.super Landroid/database/DataSetObserver;
.source "InsertNewListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/InsertNewListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/InsertNewListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/widget/InsertNewListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/widget/InsertNewListAdapter$1;->this$0:Lcom/htc/widget/InsertNewListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter$1;->this$0:Lcom/htc/widget/InsertNewListAdapter;

    #getter for: Lcom/htc/widget/InsertNewListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/InsertNewListAdapter;->access$000(Lcom/htc/widget/InsertNewListAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter$1;->this$0:Lcom/htc/widget/InsertNewListAdapter;

    #getter for: Lcom/htc/widget/InsertNewListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/widget/InsertNewListAdapter;->access$000(Lcom/htc/widget/InsertNewListAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 88
    return-void
.end method

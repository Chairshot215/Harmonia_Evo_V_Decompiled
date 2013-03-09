.class Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "HTCCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/HTCCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/HTCCursorAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/fm/HTCCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fm/HTCCursorAdapter;Lcom/htc/fm/HTCCursorAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;-><init>(Lcom/htc/fm/HTCCursorAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 686
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/fm/HTCCursorAdapter;->mDataValid:Z

    .line 688
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    iget-boolean v0, v0, Lcom/htc/fm/HTCCursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    .line 689
    const-string v0, "HTCCursorAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    iget-object v2, v2, Lcom/htc/fm/HTCCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> MyDataSetObserver onChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    #calls: Lcom/htc/fm/HTCCursorAdapter;->syncNodeList()V
    invoke-static {v0}, Lcom/htc/fm/HTCCursorAdapter;->access$400(Lcom/htc/fm/HTCCursorAdapter;)V

    .line 693
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 694
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/fm/HTCCursorAdapter;->notifyDataSetChanged()V

    .line 695
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    iget-object v1, p0, Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    #getter for: Lcom/htc/fm/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/fm/HTCCursorAdapter;->access$100(Lcom/htc/fm/HTCCursorAdapter;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fm/HTCCursorAdapter;->onDatasetChanged(Landroid/database/Cursor;)V

    .line 698
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/fm/HTCCursorAdapter;->mDataValid:Z

    .line 706
    iget-object v0, p0, Lcom/htc/fm/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fm/HTCCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/fm/HTCCursorAdapter;->notifyDataSetInvalidated()V

    .line 707
    return-void
.end method

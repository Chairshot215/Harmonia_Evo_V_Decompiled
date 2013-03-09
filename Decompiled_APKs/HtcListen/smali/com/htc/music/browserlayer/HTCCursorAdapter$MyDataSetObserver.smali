.class Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "HTCCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/HTCCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/browserlayer/HTCCursorAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/browserlayer/HTCCursorAdapter;Lcom/htc/music/browserlayer/HTCCursorAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/HTCCursorAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataValid:Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_0

    const-string v0, "[HTCCursorAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iget-object v2, v2, Lcom/htc/music/browserlayer/HTCCursorAdapter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> MyDataSetObserver onChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    #calls: Lcom/htc/music/browserlayer/HTCCursorAdapter;->syncNodeList()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->access$400(Lcom/htc/music/browserlayer/HTCCursorAdapter;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    iget-object v1, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/HTCCursorAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->access$100(Lcom/htc/music/browserlayer/HTCCursorAdapter;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->onDatasetChanged(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/music/browserlayer/HTCCursorAdapter;->mDataValid:Z

    iget-object v0, p0, Lcom/htc/music/browserlayer/HTCCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/HTCCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/HTCCursorAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.class Lcom/htc/fusion/fx/controls/FxCursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "FxCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/FxCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/FxCursorAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/fusion/fx/controls/FxCursorAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fusion/fx/controls/FxCursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fusion/fx/controls/FxCursorAdapter;Lcom/htc/fusion/fx/controls/FxCursorAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/controls/FxCursorAdapter$MyDataSetObserver;-><init>(Lcom/htc/fusion/fx/controls/FxCursorAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fusion/fx/controls/FxCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 4

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fusion/fx/controls/FxCursorAdapter;

    #getter for: Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->access$100(Lcom/htc/fusion/fx/controls/FxCursorAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fusion/fx/controls/FxCursorAdapter;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mDataValid:Z

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fusion/fx/controls/FxCursorAdapter;

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fusion/fx/controls/FxCursorAdapter;

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter$MyDataSetObserver;->this$0:Lcom/htc/fusion/fx/controls/FxCursorAdapter;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->getCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ComposerBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$MyDataSetObserver;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$MyDataSetObserver;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$800(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$MyDataSetObserver;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$800(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$MyDataSetObserver;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$MyDataSetObserver;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->setTitle(Ljava/lang/String;)V

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$MyDataSetObserver;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->hideEmptyErrorView()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$MyDataSetObserver;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    move-result-object v1

    const v2, 0x7f07002e

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->showEmptyView(I)V

    goto :goto_1
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method

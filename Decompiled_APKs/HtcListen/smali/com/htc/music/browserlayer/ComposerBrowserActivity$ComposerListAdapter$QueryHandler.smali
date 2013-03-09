.class Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ComposerBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6

    const/4 v5, 0x0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getUnknownComposer()Landroid/database/Cursor;

    move-result-object v2

    if-eqz p3, :cond_2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object p3, v3, v5

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {v0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p3, v0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->init(Landroid/database/Cursor;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    move-result-object v3

    iput-boolean v5, v3, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAsyncQuerying:Z

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;
    invoke-static {v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->showSpinner(Z)V

    :cond_1
    return-void

    :cond_2
    if-eqz v2, :cond_0

    move-object p3, v2

    goto :goto_0
.end method

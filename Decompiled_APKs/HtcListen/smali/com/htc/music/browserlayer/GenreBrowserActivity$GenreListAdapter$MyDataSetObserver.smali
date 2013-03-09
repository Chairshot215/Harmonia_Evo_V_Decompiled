.class Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "GenreBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;Lcom/htc/music/browserlayer/GenreBrowserActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->access$800(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->access$800(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/music/browserlayer/GenreBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->setTitle(Ljava/lang/String;)V

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->hideEmptyErrorView()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivity$GenreListAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivity;

    move-result-object v1

    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->showEmptyView(I)V

    goto :goto_1
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method

.class Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ArtistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;Lcom/htc/music/browserlayer/ArtistBrowserActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$1100(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$1100(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->setTitle(Ljava/lang/String;)V

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter$MyDataSetObserver;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->mActivity:Lcom/htc/music/browserlayer/ArtistBrowserActivity;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;->access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivity$ArtistListAdapter;)Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    move-result-object v2

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$1100(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->init(Landroid/database/Cursor;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method

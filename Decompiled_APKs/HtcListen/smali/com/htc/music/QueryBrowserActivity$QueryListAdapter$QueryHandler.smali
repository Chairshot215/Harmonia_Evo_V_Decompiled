.class Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;->this$0:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;->this$0:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    #getter for: Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/htc/music/QueryBrowserActivity;
    invoke-static {v0}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->access$300(Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;)Lcom/htc/music/QueryBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/music/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    return-void
.end method

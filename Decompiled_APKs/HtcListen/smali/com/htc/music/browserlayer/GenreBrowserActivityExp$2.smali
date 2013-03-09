.class Lcom/htc/music/browserlayer/GenreBrowserActivityExp$2;
.super Landroid/os/Handler;
.source "GenreBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$2;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$2;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v0, v0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$2;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$2;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v1, v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->getGenresCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    :cond_0
    return-void
.end method

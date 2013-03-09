.class Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GenreBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    iget-object v1, v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mIsDestroy:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$1100(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "[GenreBrowserActivityExp]"

    const-string v2, "@@@@ onQueryComplete()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string v1, "[GenreBrowserActivityExp]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@ onQueryComplete() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    iget-object v1, v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->checkDataset(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v1, p3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "[GenreBrowserActivityExp]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@ onQueryComplete() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    iget-object v1, v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    const/4 v2, 0x1

    #setter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mIsInited:Z
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$1302(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;Z)Z

    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->access$1400(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->init(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->access$1400(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-result-object v1

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->setTitle()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$1500(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    iget-object v1, v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iput-boolean v4, v1, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAsyncQuerying:Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->access$1400(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$QueryHandler;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->mActivity:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;->access$1400(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;)Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->showSpinner(Z)V

    goto/16 :goto_0
.end method

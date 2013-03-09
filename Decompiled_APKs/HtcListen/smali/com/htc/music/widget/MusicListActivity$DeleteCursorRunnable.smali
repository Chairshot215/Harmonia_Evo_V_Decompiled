.class Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;
.super Ljava/lang/Object;
.source "MusicListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteCursorRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProjection:[Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mWhere:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/widget/MusicListActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/widget/MusicListActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->this$0:Lcom/htc/music/widget/MusicListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mProjection:[Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mSelectionArgs:[Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mSortOrder:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/widget/MusicListActivity;Lcom/htc/music/widget/MusicListActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;-><init>(Lcom/htc/music/widget/MusicListActivity;)V

    return-void
.end method


# virtual methods
.method public Init(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mProjection:[Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mSelectionArgs:[Ljava/lang/String;

    iput-object p6, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mSortOrder:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 9

    const-string v0, "[MusicListActivity]"

    const-string v1, "at runable thread run"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mSortOrder:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    invoke-static {v0, v6, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracksByCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->this$0:Lcom/htc/music/widget/MusicListActivity;

    #getter for: Lcom/htc/music/widget/MusicListActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/widget/MusicListActivity;->access$200(Lcom/htc/music/widget/MusicListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity$DeleteCursorRunnable;->this$0:Lcom/htc/music/widget/MusicListActivity;

    #getter for: Lcom/htc/music/widget/MusicListActivity;->messageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/widget/MusicListActivity;->access$200(Lcom/htc/music/widget/MusicListActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    const-string v0, "[MusicListActivity]"

    const-string v1, "at runable thread run after"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_1
    throw v0
.end method

.class Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;
.super Ljava/lang/Object;
.source "MusicListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/MusicListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteCursorRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mWhere:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/fm/MusicListActivity;


# direct methods
.method private constructor <init>(Lcom/htc/fm/MusicListActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 241
    iput-object p1, p0, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;->this$0:Lcom/htc/fm/MusicListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object v0, p0, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    .line 243
    iput-object v0, p0, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;->mCursor:Landroid/database/Cursor;

    .line 244
    iput-object v0, p0, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fm/MusicListActivity;Lcom/htc/fm/MusicListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;-><init>(Lcom/htc/fm/MusicListActivity;)V

    return-void
.end method


# virtual methods
.method public Init(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    .line 248
    iput-object p2, p0, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;->mCursor:Landroid/database/Cursor;

    .line 249
    iput-object p3, p0, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;->mWhere:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;->this$0:Lcom/htc/fm/MusicListActivity;

    #getter for: Lcom/htc/fm/MusicListActivity;->mLooper:Landroid/os/Looper;
    invoke-static {v0}, Lcom/htc/fm/MusicListActivity;->access$200(Lcom/htc/fm/MusicListActivity;)Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 256
    const-string v0, "cathy"

    const-string v1, "at runable thread run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;->this$0:Lcom/htc/fm/MusicListActivity;

    #getter for: Lcom/htc/fm/MusicListActivity;->messageDialogHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/MusicListActivity;->access$300(Lcom/htc/fm/MusicListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    const-string v0, "cathy"

    const-string v1, "at runable thread run after"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity$DeleteCursorRunnable;->this$0:Lcom/htc/fm/MusicListActivity;

    #getter for: Lcom/htc/fm/MusicListActivity;->mLooper:Landroid/os/Looper;
    invoke-static {v0}, Lcom/htc/fm/MusicListActivity;->access$200(Lcom/htc/fm/MusicListActivity;)Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 262
    :cond_0
    return-void
.end method

.class Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$2;
.super Landroid/os/Handler;
.source "ComposerBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$2;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$2;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v0, v0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$2;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$2;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v1, v1, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    :cond_0
    return-void
.end method

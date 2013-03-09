.class Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;
.super Ljava/lang/Object;
.source "SourceSwitcherAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/SourceSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadVMMRunnable"
.end annotation


# instance fields
.field mContext:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;->mContext:Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;->mHandler:Ljava/lang/ref/SoftReference;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;->mContext:Ljava/lang/ref/SoftReference;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;->mHandler:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v6, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;->mContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;->mHandler:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/htc/music/util/CustomizeSetting;->isSupportVmmStore(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVMMIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "StartNewActivity"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v5, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    const-string v6, "VMMBrowserTabPlugin"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v3, v7}, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    const v6, 0x7f070002

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    const v6, 0x7f02006f

    iput v6, v5, Lcom/htc/music/util/SourceItem;->mIconRes:I

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

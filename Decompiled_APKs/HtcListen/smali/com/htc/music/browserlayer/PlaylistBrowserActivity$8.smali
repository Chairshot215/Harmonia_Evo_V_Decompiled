.class Lcom/htc/music/browserlayer/PlaylistBrowserActivity$8;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finishactivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$8;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivity$8;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;->finish()V

    return-void
.end method

.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;
.super Ljava/lang/Object;
.source "AlbumTrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->finish()V

    return-void
.end method

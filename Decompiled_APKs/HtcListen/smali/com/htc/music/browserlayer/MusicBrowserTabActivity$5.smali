.class Lcom/htc/music/browserlayer/MusicBrowserTabActivity$5;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$5;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$5;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->onSearchRequested()Z

    return-void
.end method

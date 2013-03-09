.class Lcom/htc/music/browserlayer/ArtistBrowserActivity$4;
.super Ljava/lang/Object;
.source "ArtistBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$4;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$4;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$4;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$4;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$500(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$4;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$600(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->deleteTracksForArtist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

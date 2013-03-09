.class Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;
.super Ljava/lang/Object;
.source "ArtistBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivity;->createLongPressDialog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
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

    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$500(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$600(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-static {v4, v3}, Lcom/htc/music/util/MusicUtils;->getSongListForArtistAndPrepare(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v2

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mFilter:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$700(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/htc/music/NpCategory;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mCurrentArtistId:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mGenre:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$500(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ArtistBrowserActivity;->mComposer:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->access$600(Lcom/htc/music/browserlayer/ArtistBrowserActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    :cond_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    const/4 v5, 0x0

    invoke-static {v4, v2, v5, v0}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    const-class v5, Lcom/htc/music/browserlayer/PlaylistBrowserActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "pickermode"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-virtual {v4, v1, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-virtual {v4, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivity;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivity;->doSearch()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

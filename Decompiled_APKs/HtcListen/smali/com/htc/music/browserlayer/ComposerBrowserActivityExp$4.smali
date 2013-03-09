.class Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;
.super Ljava/lang/Object;
.source "ComposerBrowserActivityExp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->showDeleteDialog(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mDeleteType:I
    invoke-static {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$700(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracksForComposer(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$800(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mArtistId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$800(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$700(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lcom/htc/music/util/MusicUtils;->deleteTracksForArtist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$900(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mAlbumId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$900(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->mComposerName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;->access$700(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Lcom/htc/music/util/MusicUtils;->deleteTracksForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

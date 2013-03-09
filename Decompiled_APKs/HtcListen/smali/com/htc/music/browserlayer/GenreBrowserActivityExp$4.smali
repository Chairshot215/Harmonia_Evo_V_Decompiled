.class Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;
.super Ljava/lang/Object;
.source "GenreBrowserActivityExp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->showDeleteDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "[GenreBrowserActivityExp]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@ mDeleteType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDeleteType:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$500(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mDeleteType:I
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$500(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracksForGenre(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mArtistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$700(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mArtistId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$700(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->deleteTracksForArtist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$800(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mAlbumId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$800(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->mGenresId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExp;->access$600(Lcom/htc/music/browserlayer/GenreBrowserActivityExp;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v2, v3}, Lcom/htc/music/util/MusicUtils;->deleteTracksForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

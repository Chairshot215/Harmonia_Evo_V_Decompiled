.class Lcom/htc/music/browserlayer/GenreBrowserActivity$5;
.super Ljava/lang/Object;
.source "GenreBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivity$5;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/GenreBrowserActivity;->mCurrentGenreId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivity;->access$400(Lcom/htc/music/browserlayer/GenreBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracksForGenre(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

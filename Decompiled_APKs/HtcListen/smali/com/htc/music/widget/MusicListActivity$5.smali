.class Lcom/htc/music/widget/MusicListActivity$5;
.super Ljava/lang/Object;
.source "MusicListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/MusicListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/MusicListActivity$5;->this$0:Lcom/htc/music/widget/MusicListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity$5;->this$0:Lcom/htc/music/widget/MusicListActivity;

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuIds:[I
    invoke-static {v0}, Lcom/htc/music/widget/MusicListActivity;->access$300(Lcom/htc/music/widget/MusicListActivity;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicListActivity$5;->this$0:Lcom/htc/music/widget/MusicListActivity;

    iget-object v1, p0, Lcom/htc/music/widget/MusicListActivity$5;->this$0:Lcom/htc/music/widget/MusicListActivity;

    #getter for: Lcom/htc/music/widget/MusicListActivity;->mHtcContextMenuIds:[I
    invoke-static {v1}, Lcom/htc/music/widget/MusicListActivity;->access$300(Lcom/htc/music/widget/MusicListActivity;)[I

    move-result-object v1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/MusicListActivity;->onHtcContextItemSelected(I)Z

    :cond_0
    return-void
.end method

.class Lcom/htc/fm/MusicListActivity$5;
.super Ljava/lang/Object;
.source "MusicListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/MusicListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/MusicListActivity;


# direct methods
.method constructor <init>(Lcom/htc/fm/MusicListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/htc/fm/MusicListActivity$5;->this$0:Lcom/htc/fm/MusicListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 779
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 780
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity$5;->this$0:Lcom/htc/fm/MusicListActivity;

    #getter for: Lcom/htc/fm/MusicListActivity;->mHtcContextMenuIds:[I
    invoke-static {v0}, Lcom/htc/fm/MusicListActivity;->access$400(Lcom/htc/fm/MusicListActivity;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity$5;->this$0:Lcom/htc/fm/MusicListActivity;

    iget-object v1, p0, Lcom/htc/fm/MusicListActivity$5;->this$0:Lcom/htc/fm/MusicListActivity;

    #getter for: Lcom/htc/fm/MusicListActivity;->mHtcContextMenuIds:[I
    invoke-static {v1}, Lcom/htc/fm/MusicListActivity;->access$400(Lcom/htc/fm/MusicListActivity;)[I

    move-result-object v1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/fm/MusicListActivity;->onHtcContextItemSelected(I)Z

    .line 782
    :cond_0
    return-void
.end method

.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;
.super Ljava/lang/Object;
.source "ActivityAlbumFolderSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #calls: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onConfirm()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$300(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$2;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #calls: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onCancel()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$400(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x7f0a0038
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

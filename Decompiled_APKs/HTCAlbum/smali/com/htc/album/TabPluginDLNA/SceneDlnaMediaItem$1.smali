.class Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$1;
.super Ljava/lang/Object;
.source "SceneDlnaMediaItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->showDialogErrorCommunication()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$1;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem.1;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$1;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 176
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$1;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem.1;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$1;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onBackPressed()Z

    .line 177
    return-void
.end method

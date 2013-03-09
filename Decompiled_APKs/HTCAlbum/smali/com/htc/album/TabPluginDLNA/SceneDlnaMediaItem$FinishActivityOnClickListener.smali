.class Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$FinishActivityOnClickListener;
.super Ljava/lang/Object;
.source "SceneDlnaMediaItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinishActivityOnClickListener"
.end annotation


# instance fields
.field private mActivityRef:Landroid/app/Activity;

.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;Landroid/app/Activity;)V
    .locals 1
    .parameter
    .parameter "ctrl"

    .prologue
    .line 188
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$FinishActivityOnClickListener;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>.FinishActivityOnClickListener;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$FinishActivityOnClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$FinishActivityOnClickListener;->mActivityRef:Landroid/app/Activity;

    .line 189
    iput-object p2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$FinishActivityOnClickListener;->mActivityRef:Landroid/app/Activity;

    .line 190
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 193
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$FinishActivityOnClickListener;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>.FinishActivityOnClickListener;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$FinishActivityOnClickListener;->mActivityRef:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 194
    return-void
.end method

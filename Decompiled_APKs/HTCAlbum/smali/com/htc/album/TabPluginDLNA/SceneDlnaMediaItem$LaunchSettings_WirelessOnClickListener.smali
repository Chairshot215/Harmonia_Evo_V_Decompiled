.class Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$LaunchSettings_WirelessOnClickListener;
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
    name = "LaunchSettings_WirelessOnClickListener"
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
    .line 201
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$LaunchSettings_WirelessOnClickListener;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>.LaunchSettings_WirelessOnClickListener;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$LaunchSettings_WirelessOnClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$LaunchSettings_WirelessOnClickListener;->mActivityRef:Landroid/app/Activity;

    .line 202
    iput-object p2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$LaunchSettings_WirelessOnClickListener;->mActivityRef:Landroid/app/Activity;

    .line 203
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 206
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$LaunchSettings_WirelessOnClickListener;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>.LaunchSettings_WirelessOnClickListener;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$LaunchSettings_WirelessOnClickListener;->mActivityRef:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void
.end method

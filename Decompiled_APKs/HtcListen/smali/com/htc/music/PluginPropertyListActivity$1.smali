.class Lcom/htc/music/PluginPropertyListActivity$1;
.super Ljava/lang/Object;
.source "PluginPropertyListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/PluginPropertyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/PluginPropertyListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/PluginPropertyListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/PluginPropertyListActivity$1;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$1;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/PluginPropertyListActivity;->access$000(Lcom/htc/music/PluginPropertyListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlaybackService: onServiceConnected..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$1;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    #setter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/htc/music/PluginPropertyListActivity;->access$102(Lcom/htc/music/PluginPropertyListActivity;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$1;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    :cond_0
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$1;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #calls: Lcom/htc/music/PluginPropertyListActivity;->showPoperty()V
    invoke-static {v0}, Lcom/htc/music/PluginPropertyListActivity;->access$200(Lcom/htc/music/PluginPropertyListActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

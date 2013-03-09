.class Lcom/htc/music/MediaPlaybackErrorActivity$10$2;
.super Ljava/lang/Object;
.source "MediaPlaybackErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/MediaPlaybackErrorActivity$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/MediaPlaybackErrorActivity$10;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackErrorActivity$10;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$10$2;->this$1:Lcom/htc/music/MediaPlaybackErrorActivity$10;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity$10$2;->this$1:Lcom/htc/music/MediaPlaybackErrorActivity$10;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackErrorActivity$10;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    const-string v3, "DLNA"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/htc/music/MediaPlaybackErrorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "server"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "Render"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity$10$2;->this$1:Lcom/htc/music/MediaPlaybackErrorActivity$10;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackErrorActivity$10;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    iget-object v2, v2, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2, p2}, Lcom/htc/music/IMediaPlaybackService;->onPluginSelected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

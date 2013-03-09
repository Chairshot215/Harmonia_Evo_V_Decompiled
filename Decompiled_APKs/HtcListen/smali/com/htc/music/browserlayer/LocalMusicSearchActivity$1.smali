.class Lcom/htc/music/browserlayer/LocalMusicSearchActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "LocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$1;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$1;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$1;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;)V

    return-void
.end method

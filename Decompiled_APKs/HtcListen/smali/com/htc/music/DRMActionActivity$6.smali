.class Lcom/htc/music/DRMActionActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "DRMActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DRMActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DRMActionActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/DRMActionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DRMActionActivity$6;->this$0:Lcom/htc/music/DRMActionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity$6;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/htc/music/DRMActionActivity;->access$600(Lcom/htc/music/DRMActionActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity$6;->this$0:Lcom/htc/music/DRMActionActivity;

    #calls: Lcom/htc/music/DRMActionActivity;->showPoperty()V
    invoke-static {v1}, Lcom/htc/music/DRMActionActivity;->access$700(Lcom/htc/music/DRMActionActivity;)V

    goto :goto_0
.end method

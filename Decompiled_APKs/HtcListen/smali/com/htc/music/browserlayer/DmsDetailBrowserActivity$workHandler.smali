.class public Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;
.super Landroid/os/Handler;
.source "DmsDetailBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "workHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "contentID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$workHandler;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

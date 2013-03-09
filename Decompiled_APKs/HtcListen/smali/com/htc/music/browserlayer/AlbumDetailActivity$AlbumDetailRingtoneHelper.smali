.class Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;
.super Lcom/htc/music/util/RingtoneHelper;
.source "AlbumDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumDetailRingtoneHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-direct {p0, p2}, Lcom/htc/music/util/RingtoneHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public showNoNotificationRingtoneDialog()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    return-void
.end method

.method public showRingtoneDialog()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    return-void
.end method

.method public startContactActivity(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$AlbumDetailRingtoneHelper;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-super {p0, v0, p2}, Lcom/htc/music/util/RingtoneHelper;->startContactActivity(Landroid/app/Activity;I)V

    return-void
.end method

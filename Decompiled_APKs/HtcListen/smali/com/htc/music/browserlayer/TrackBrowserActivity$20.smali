.class Lcom/htc/music/browserlayer/TrackBrowserActivity$20;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

.field final synthetic val$resultIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$20;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iput-object p2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$20;->val$resultIntent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$20;->val$resultIntent:Landroid/content/Intent;

    const-string v2, "SELECTED_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$20;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$20;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRingToneHelper:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackBrowserRingtoneHelper;->hadnleContactRingtoneResult(Ljava/util/ArrayList;Z)V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$20;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->showSetContactRingtoneToast()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$3200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    return-void
.end method

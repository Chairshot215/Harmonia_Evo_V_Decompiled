.class Lcom/htc/music/NowPlayingViewHelper$1;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/NowPlayingViewHelper;->onActivityResult(IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;

.field final synthetic val$resultIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$1;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper$1;->val$resultIntent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$1;->val$resultIntent:Landroid/content/Intent;

    const-string v2, "SELECTED_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$1;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$000(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$1;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    new-instance v2, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$1;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v4, p0, Lcom/htc/music/NowPlayingViewHelper$1;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v4, v4, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    invoke-direct {v2, v3, v4}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;-><init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;)V

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    invoke-static {v1, v2}, Lcom/htc/music/NowPlayingViewHelper;->access$002(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    const-string v1, "[NowPlayingViewHelper]"

    const-string v2, "Ringtonehelper is null!! this should never happen!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$1;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$000(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$1;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$000(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->hadnleContactRingtoneResult(Ljava/util/ArrayList;Z)V

    :cond_1
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$1;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #calls: Lcom/htc/music/NowPlayingViewHelper;->showSetContactRingtoneToast()V
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$100(Lcom/htc/music/NowPlayingViewHelper;)V

    return-void
.end method

.class Lcom/htc/music/HtcMusic$20;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;

.field final synthetic val$resultIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    iput-object p2, p0, Lcom/htc/music/HtcMusic$20;->val$resultIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->val$resultIntent:Landroid/content/Intent;

    const-string v2, "SELECTED_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    new-instance v2, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v4, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {v2, v3, v4}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;-><init>(Lcom/htc/music/HtcMusic;Landroid/content/Context;)V

    iput-object v2, v1, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const-string v1, "[HtcMusic]"

    const-string v2, "Ringtonehelper is null!! this should never happen!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, v1, Lcom/htc/music/HtcMusic;->mRingtoneHelper:Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/htc/music/HtcMusic$HtcMusicRingtoneHelper;->hadnleContactRingtoneResult(Ljava/util/ArrayList;Z)V

    :cond_1
    iget-object v1, p0, Lcom/htc/music/HtcMusic$20;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->showSetContactRingtoneToast()V
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$2300(Lcom/htc/music/HtcMusic;)V

    return-void
.end method

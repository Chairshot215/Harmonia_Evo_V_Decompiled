.class Lcom/htc/sdm/activity/SoundSetDetail$ApplySoundSetTask;
.super Landroid/os/AsyncTask;
.source "SoundSetDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplySoundSetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetDetail;


# direct methods
.method private constructor <init>(Lcom/htc/sdm/activity/SoundSetDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetDetail$ApplySoundSetTask;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sdm/activity/SoundSetDetail;Lcom/htc/sdm/activity/SoundSetDetail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1154
    invoke-direct {p0, p1}, Lcom/htc/sdm/activity/SoundSetDetail$ApplySoundSetTask;-><init>(Lcom/htc/sdm/activity/SoundSetDetail;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 1159
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetDetail$ApplySoundSetTask;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v2}, Lcom/htc/sdm/activity/SoundSetDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-static {v2, v3}, Lcom/htc/sdm/util/SDMUtil;->setCurSoundsetGUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 1160
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetDetail$ApplySoundSetTask;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v2}, Lcom/htc/sdm/activity/SoundSetDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-static {v2, v3, v4}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySoundSet(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1161
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_SOUND_SET_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.intent.EXTRA_SUMMARY"

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetDetail$ApplySoundSetTask;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    invoke-virtual {v2, v0}, Lcom/htc/sdm/activity/SoundSetDetail;->sendBroadcast(Landroid/content/Intent;)V

    .line 1164
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1165
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0xc8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1166
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetDetail$ApplySoundSetTask;->this$0:Lcom/htc/sdm/activity/SoundSetDetail;

    #getter for: Lcom/htc/sdm/activity/SoundSetDetail;->uiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetDetail;->access$700(Lcom/htc/sdm/activity/SoundSetDetail;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1167
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1154
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sdm/activity/SoundSetDetail$ApplySoundSetTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

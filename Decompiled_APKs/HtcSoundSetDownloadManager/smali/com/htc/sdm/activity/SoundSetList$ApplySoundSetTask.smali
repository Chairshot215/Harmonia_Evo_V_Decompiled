.class Lcom/htc/sdm/activity/SoundSetList$ApplySoundSetTask;
.super Landroid/os/AsyncTask;
.source "SoundSetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList;
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
.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetList;


# direct methods
.method private constructor <init>(Lcom/htc/sdm/activity/SoundSetList;)V
    .locals 0
    .parameter

    .prologue
    .line 2802
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$ApplySoundSetTask;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sdm/activity/SoundSetList;Lcom/htc/sdm/activity/SoundSetList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2802
    invoke-direct {p0, p1}, Lcom/htc/sdm/activity/SoundSetList$ApplySoundSetTask;-><init>(Lcom/htc/sdm/activity/SoundSetList;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 2807
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList$ApplySoundSetTask;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v2}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-static {v2, v3}, Lcom/htc/sdm/util/SDMUtil;->setCurSoundsetGUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 2808
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList$ApplySoundSetTask;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v2}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-static {v2, v3, v4}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySoundSet(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 2809
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.intent.ACTION_PERSONALIZE_SOUND_SET_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2810
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.intent.EXTRA_SUMMARY"

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2811
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList$ApplySoundSetTask;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v2, v0}, Lcom/htc/sdm/activity/SoundSetList;->sendBroadcast(Landroid/content/Intent;)V

    .line 2812
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2813
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0xc8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2814
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList$ApplySoundSetTask;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->uiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$3200(Lcom/htc/sdm/activity/SoundSetList;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2815
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2802
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sdm/activity/SoundSetList$ApplySoundSetTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

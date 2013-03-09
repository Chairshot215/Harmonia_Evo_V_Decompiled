.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcAboutPhoneSoftwareUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$2;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 577
    const-string v1, "SECONDS"

    const/16 v2, 0x3c

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    .line 580
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 581
    .local v0, msg:Landroid/os/Message;
    sget v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 582
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$2;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mDisplayHandlerAlert:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->access$300(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 584
    return-void
.end method

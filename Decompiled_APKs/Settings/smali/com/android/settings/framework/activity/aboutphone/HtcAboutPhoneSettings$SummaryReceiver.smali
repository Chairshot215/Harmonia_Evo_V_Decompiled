.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcAboutPhoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SummaryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->access$100()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mIsUpdaterProcessing:Z
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->access$002(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;Z)Z

    .line 333
    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->access$200()Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mIsUpdaterProcessing:Z
    invoke-static {v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->access$000(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setDownloadSummary(Z)V

    .line 334
    return-void
.end method

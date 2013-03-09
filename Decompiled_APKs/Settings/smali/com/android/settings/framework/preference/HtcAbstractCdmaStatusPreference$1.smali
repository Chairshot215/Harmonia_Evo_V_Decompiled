.class Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcAbstractCdmaStatusPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 137
    sget-object v2, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, PhoneTaskIndex:I
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;

    invoke-virtual {v2}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getPhoneTask()Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 141
    const-string v2, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, summary:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;

    iget-object v3, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c09f5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->access$002(Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;

    iget-object v3, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;

    #getter for: Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->access$000(Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    .end local v1           #summary:Ljava/lang/String;
    :cond_0
    return-void

    .line 147
    .restart local v1       #summary:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;

    #setter for: Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->mSummary:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->access$002(Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

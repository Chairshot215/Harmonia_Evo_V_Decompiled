.class Lcom/android/mms/ui/MessagingPreferenceActivity$7;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

.field final synthetic val$preDisplayMessage:Lcom/htc/preference/HtcPreference;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Lcom/htc/preference/HtcPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;->val$preDisplayMessage:Lcom/htc/preference/HtcPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "p"
    .parameter "newObjValue"

    .prologue
    .line 1665
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 1666
    .local v0, sSetting:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1667
    :cond_0
    const/4 v2, 0x0

    .line 1680
    :goto_0
    return v2

    .line 1669
    :cond_1
    const/4 v1, 0x0

    .line 1670
    .local v1, sSummary:Ljava/lang/String;
    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "pref_sent_success_only"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1671
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1678
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;->val$preDisplayMessage:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1680
    const/4 v2, 0x1

    goto :goto_0

    .line 1672
    :cond_4
    const-string v2, "failure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "pref_sent_failure_only"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1673
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1674
    :cond_6
    const-string v2, "success_and_failure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "pref_sent_success_and_failure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1675
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1676
    :cond_8
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "pref_sent_none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1677
    :cond_9
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

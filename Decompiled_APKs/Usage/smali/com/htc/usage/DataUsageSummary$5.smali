.class Lcom/htc/usage/DataUsageSummary$5;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/htc/usage/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 6
    .parameter "tabId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 626
    const-string v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTabChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v1, "mobile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3g"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    #calls: Lcom/htc/usage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/usage/DataUsageSummary;->access$1200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    #setter for: Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v1, v2}, Lcom/htc/usage/DataUsageSummary;->access$1102(Lcom/htc/usage/DataUsageSummary;Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    .line 630
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$1300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/net/NetworkPolicyEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v2}, Lcom/htc/usage/DataUsageSummary;->access$1100(Lcom/htc/usage/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/usage/net/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v0

    .line 631
    .local v0, cycleStartDay:I
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    const-string v2, "mobile"

    invoke-static {v2, v0}, Lcom/htc/usage/MyPreferenceFragment;->newInstance(Ljava/lang/String;I)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v2

    #setter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v1, v2}, Lcom/htc/usage/DataUsageSummary;->access$302(Lcom/htc/usage/DataUsageSummary;Lcom/htc/usage/MyPreferenceFragment;)Lcom/htc/usage/MyPreferenceFragment;

    .line 645
    .end local v0           #cycleStartDay:I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-virtual {v1}, Lcom/htc/usage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f070017

    iget-object v3, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v3}, Lcom/htc/usage/DataUsageSummary;->access$300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 646
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mOnPrefChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
    invoke-static {v2}, Lcom/htc/usage/DataUsageSummary;->access$1400(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/usage/MyPreferenceFragment;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 647
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mCycleStartDayChangeListener:Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;
    invoke-static {v2}, Lcom/htc/usage/DataUsageSummary;->access$1500(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/usage/MyPreferenceFragment;->setCycleStartDaySetListener(Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;)V

    .line 649
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$1600(Lcom/htc/usage/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$1600(Lcom/htc/usage/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 650
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-virtual {v1}, Lcom/htc/usage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "appDetails"

    invoke-virtual {v1, v2, v5}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 653
    :cond_2
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    #calls: Lcom/htc/usage/DataUsageSummary;->isAppDetailMode()Z
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$1700(Lcom/htc/usage/DataUsageSummary;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 654
    const-string v1, "DataUsageSummary"

    const-string v2, "Now in AppDetailMode."

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    #calls: Lcom/htc/usage/DataUsageSummary;->hideMobileGlobalPreferences(Z)V
    invoke-static {v1, v5}, Lcom/htc/usage/DataUsageSummary;->access$1800(Lcom/htc/usage/DataUsageSummary;Z)V

    .line 659
    :cond_3
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    #calls: Lcom/htc/usage/DataUsageSummary;->updateBody()V
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$200(Lcom/htc/usage/DataUsageSummary;)V

    .line 660
    return-void

    .line 633
    :cond_4
    const-string v1, "wifi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 634
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    const-string v2, "wifi"

    invoke-static {v2, v4}, Lcom/htc/usage/MyPreferenceFragment;->newInstance(Ljava/lang/String;I)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v2

    #setter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v1, v2}, Lcom/htc/usage/DataUsageSummary;->access$302(Lcom/htc/usage/DataUsageSummary;Lcom/htc/usage/MyPreferenceFragment;)Lcom/htc/usage/MyPreferenceFragment;

    goto/16 :goto_0

    .line 636
    :cond_5
    const-string v1, "ethernet"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 637
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    const-string v2, "ethernet"

    invoke-static {v2, v4}, Lcom/htc/usage/MyPreferenceFragment;->newInstance(Ljava/lang/String;I)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v2

    #setter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v1, v2}, Lcom/htc/usage/DataUsageSummary;->access$302(Lcom/htc/usage/DataUsageSummary;Lcom/htc/usage/MyPreferenceFragment;)Lcom/htc/usage/MyPreferenceFragment;

    goto/16 :goto_0

    .line 639
    :cond_6
    const-string v1, "4g"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    #calls: Lcom/htc/usage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/usage/DataUsageSummary;->access$1200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    #setter for: Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v1, v2}, Lcom/htc/usage/DataUsageSummary;->access$1102(Lcom/htc/usage/DataUsageSummary;Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    .line 641
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$1300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/net/NetworkPolicyEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v2}, Lcom/htc/usage/DataUsageSummary;->access$1100(Lcom/htc/usage/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/usage/net/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v0

    .line 642
    .restart local v0       #cycleStartDay:I
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$5;->this$0:Lcom/htc/usage/DataUsageSummary;

    const-string v2, "4g"

    invoke-static {v2, v0}, Lcom/htc/usage/MyPreferenceFragment;->newInstance(Ljava/lang/String;I)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v2

    #setter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v1, v2}, Lcom/htc/usage/DataUsageSummary;->access$302(Lcom/htc/usage/DataUsageSummary;Lcom/htc/usage/MyPreferenceFragment;)Lcom/htc/usage/MyPreferenceFragment;

    goto/16 :goto_0
.end method

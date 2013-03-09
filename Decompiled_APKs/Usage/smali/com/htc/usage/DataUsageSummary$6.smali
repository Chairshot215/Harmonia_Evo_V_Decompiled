.class Lcom/htc/usage/DataUsageSummary$6;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


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
    .line 1066
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$6;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "pref"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 1068
    const-string v9, "DataUsageSummary"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPreferenceChange key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    iget-object v9, p0, Lcom/htc/usage/DataUsageSummary$6;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v9}, Lcom/htc/usage/DataUsageSummary;->access$300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v9

    if-nez v9, :cond_1

    .line 1070
    const-string v5, "DataUsageSummary"

    const-string v9, "Current preference fragment is null"

    invoke-static {v5, v9}, Lcom/htc/usage/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v10

    .line 1120
    :cond_0
    :goto_0
    return v5

    .line 1074
    :cond_1
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/htc/usage/MyPreferenceFragment;->KEY_ENABLE_MOBILE_DATA:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/htc/usage/MyPreferenceFragment;->KEY_ENABLE_MOBILE4G_DATA:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1076
    :cond_2
    iget-object v9, p0, Lcom/htc/usage/DataUsageSummary$6;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mBinding:Z
    invoke-static {v9}, Lcom/htc/usage/DataUsageSummary;->access$1900(Lcom/htc/usage/DataUsageSummary;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v5, v10

    .line 1077
    goto :goto_0

    :cond_3
    move-object v9, p2

    .line 1080
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1081
    .local v7, dataEnabled:Z
    iget-object v9, p0, Lcom/htc/usage/DataUsageSummary$6;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/usage/DataUsageSummary;->access$1600(Lcom/htc/usage/DataUsageSummary;)Ljava/lang/String;

    move-result-object v6

    .line 1082
    .local v6, currentTab:Ljava/lang/String;
    const-string v9, "mobile"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1083
    if-eqz v7, :cond_9

    .line 1084
    iget-object v9, p0, Lcom/htc/usage/DataUsageSummary$6;->this$0:Lcom/htc/usage/DataUsageSummary;

    #calls: Lcom/htc/usage/DataUsageSummary;->setMobileNetworkEnabled(Z)V
    invoke-static {v9, v5}, Lcom/htc/usage/DataUsageSummary;->access$2000(Lcom/htc/usage/DataUsageSummary;Z)V

    .line 1093
    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/htc/usage/DataUsageSummary$6;->this$0:Lcom/htc/usage/DataUsageSummary;

    #calls: Lcom/htc/usage/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v9, v10}, Lcom/htc/usage/DataUsageSummary;->access$2100(Lcom/htc/usage/DataUsageSummary;Z)V

    .line 1096
    .end local v6           #currentTab:Ljava/lang/String;
    .end local v7           #dataEnabled:Z
    :cond_5
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/htc/usage/MyPreferenceFragment;->KEY_ENABLE_MOBILE_USAGE_LIMIT:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/htc/usage/MyPreferenceFragment;->KEY_ENABLE_MOBILE4G_USAGE_LIMIT:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1098
    :cond_6
    iget-object v9, p0, Lcom/htc/usage/DataUsageSummary$6;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v9}, Lcom/htc/usage/DataUsageSummary;->access$300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/usage/MyPreferenceFragment;->isUsageLimitChecked()Z

    move-result v9

    if-nez v9, :cond_a

    move v8, v5

    .line 1099
    .local v8, disableAtLimit:Z
    :goto_2
    if-eqz v8, :cond_b

    .line 1102
    iget-object v9, p0, Lcom/htc/usage/DataUsageSummary$6;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-static {v9}, Lcom/htc/usage/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/htc/usage/DataUsageSummary;)V

    .line 1108
    .end local v8           #disableAtLimit:Z
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/htc/usage/MyPreferenceFragment;->KEY_MOBILE_USAGE_CYCLE_LIST:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/htc/usage/MyPreferenceFragment;->KEY_MOBILE4G_USAGE_CYCLE_LIST:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/htc/usage/MyPreferenceFragment;->KEY_WIFI_USAGE_CYCLE_LIST:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/htc/usage/MyPreferenceFragment;->KEY_ETHERNET_USAGE_CYCLE_LIST:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1112
    :cond_8
    iget-object v9, p0, Lcom/htc/usage/DataUsageSummary$6;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v9}, Lcom/htc/usage/DataUsageSummary;->access$1000(Lcom/htc/usage/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1113
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/htc/usage/DataUsageSummary;->getStartTimeFromEntryValue(Ljava/lang/String;)J
    invoke-static {v9}, Lcom/htc/usage/DataUsageSummary;->access$2200(Ljava/lang/String;)J

    move-result-wide v1

    .line 1114
    .local v1, startTime:J
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/htc/usage/DataUsageSummary;->getEndTimeFromEntryValue(Ljava/lang/String;)J
    invoke-static {v9}, Lcom/htc/usage/DataUsageSummary;->access$2300(Ljava/lang/String;)J

    move-result-wide v3

    .line 1115
    .local v3, endTime:J
    iget-object v9, p0, Lcom/htc/usage/DataUsageSummary$6;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v9}, Lcom/htc/usage/DataUsageSummary;->access$300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v9

    invoke-static/range {v0 .. v5}, Lcom/htc/usage/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/usage/MyPreferenceFragment;->setCycleSummary(Ljava/lang/String;)V

    .line 1116
    iget-object v9, p0, Lcom/htc/usage/DataUsageSummary$6;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;
    invoke-static {v9}, Lcom/htc/usage/DataUsageSummary;->access$900(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/widget/ChartDataUsageView;

    move-result-object v9

    invoke-virtual {v9, v1, v2, v3, v4}, Lcom/htc/usage/widget/ChartDataUsageView;->setVisibleRange(JJ)V

    .line 1117
    iget-object v9, p0, Lcom/htc/usage/DataUsageSummary$6;->this$0:Lcom/htc/usage/DataUsageSummary;

    #calls: Lcom/htc/usage/DataUsageSummary;->updateDetailData()V
    invoke-static {v9}, Lcom/htc/usage/DataUsageSummary;->access$2400(Lcom/htc/usage/DataUsageSummary;)V

    goto/16 :goto_0

    .line 1090
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #startTime:J
    .end local v3           #endTime:J
    .restart local v6       #currentTab:Ljava/lang/String;
    .restart local v7       #dataEnabled:Z
    :cond_9
    iget-object v9, p0, Lcom/htc/usage/DataUsageSummary$6;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-static {v9}, Lcom/htc/usage/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/htc/usage/DataUsageSummary;)V

    goto/16 :goto_1

    .end local v6           #currentTab:Ljava/lang/String;
    .end local v7           #dataEnabled:Z
    :cond_a
    move v8, v10

    .line 1098
    goto :goto_2

    .line 1104
    .restart local v8       #disableAtLimit:Z
    :cond_b
    iget-object v9, p0, Lcom/htc/usage/DataUsageSummary$6;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-static {v9}, Lcom/htc/usage/DataUsageSummary$ConfirmCancelLimitFragment;->show(Lcom/htc/usage/DataUsageSummary;)V

    goto :goto_3
.end method

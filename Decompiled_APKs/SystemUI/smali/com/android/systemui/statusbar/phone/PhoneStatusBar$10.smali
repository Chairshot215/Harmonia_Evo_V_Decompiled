.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "PhoneStatusBar"

    const-string v5, "makeStatusBarViewExtra+"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    const v6, 0x7f0e007e

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLinearLayout:Landroid/view/View;

    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_RECENT_APP:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLinearLayout:Landroid/view/View;

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f03000b

    invoke-static {v2, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/RecentApps;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentApps:Lcom/android/systemui/statusbar/phone/RecentApps;
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/RecentApps;)Lcom/android/systemui/statusbar/phone/RecentApps;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLinearLayout:Landroid/view/View;

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentApps:Lcom/android/systemui/statusbar/phone/RecentApps;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/RecentApps;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentApps:Lcom/android/systemui/statusbar/phone/RecentApps;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/RecentApps;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/RecentApps;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x7f030009

    invoke-static {v2, v5, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/preference/QuickSettings;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/preference/QuickSettings;)Lcom/android/systemui/statusbar/preference/QuickSettings;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/preference/QuickSettings;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/statusbar/phone/ExpandedView;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/preference/QuickSettings;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/preference/QuickSettings;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettings:Lcom/android/systemui/statusbar/preference/QuickSettings;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/preference/QuickSettings;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/preference/QuickSettings;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    const v5, 0x7f0e00d9

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchButtons:Landroid/widget/LinearLayout;
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchButtons:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v5, 0x7f0e00db

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandViewButton:Landroid/widget/TextView;
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandViewButton:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandViewButtonListener:Landroid/view/View$OnClickListener;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandViewButton:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f080087

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchButtons:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v5, 0x7f0e00dc

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingButton:Landroid/widget/TextView;
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingButton:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingButtonListener:Landroid/view/View$OnClickListener;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingButton:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f080085

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_QUICK_SETTINGS:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSwitchButtons:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarReady:Z
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.StatusBarService.STATUS_BAR_READY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const-string v2, "PhoneStatusBar"

    const-string v3, "makeStatusBarViewExtra-"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    move v2, v4

    goto/16 :goto_0
.end method

.class public Lcom/htc/android/mail/easclient/SynchronizationSetting;
.super Lcom/htc/app/HtcListActivity;
.source "SynchronizationSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;,
        Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;,
        Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;
    }
.end annotation


# static fields
.field public static final CALLING_FROM_WIDGET:I = 0x5e

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DELETE_INFO:Z = false

.field private static final REQUEST_CODE_CONFIRM:I = 0x1

.field public static final SCHEDULE_MODE_MANUAL:I = 0x2

.field public static final SCHEDULE_MODE_PUSH_MAIL:I = 0x0

.field public static final SCHEDULE_MODE_SCHEDULE:I = 0x1

.field private static mCreateFail:Z

.field public static mRequestCode:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private cksb:Landroid/util/SparseBooleanArray;

.field private mAddHeaderView:Z

.field private mBtnNext:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field private mBtnPrev:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field private mCallingActivity:I

.field private mContext:Landroid/content/Context;

.field private mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

.field private mFromWhere:Ljava/lang/String;

.field private mIsDestroy:Z

.field private mIsExchangeSaved:Z

.field private mIsTaskAPExist:Z

.field private mSchedule:I

.field private mScheduleList:Lcom/htc/widget/HtcListView;

.field private mScheduleMode:I

.field mSyncSourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSystemAccount:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->DEBUG:Z

    .line 110
    const/16 v0, 0x64

    sput v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mRequestCode:I

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mCreateFail:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 101
    const-string v0, "SynchronizationSetting"

    iput-object v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->TAG:Ljava/lang/String;

    .line 112
    iput-boolean v2, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsDestroy:Z

    .line 113
    iput-boolean v2, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mAddHeaderView:Z

    .line 117
    iput-object v1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mBtnPrev:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 118
    iput-object v1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mBtnNext:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 119
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->cksb:Landroid/util/SparseBooleanArray;

    .line 120
    iput-object v1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleList:Lcom/htc/widget/HtcListView;

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSchedule:I

    .line 122
    iput v2, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleMode:I

    .line 123
    iput-boolean v2, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsTaskAPExist:Z

    .line 124
    iput-object v1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mContext:Landroid/content/Context;

    .line 125
    iput-object v1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSystemAccount:Landroid/accounts/Account;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    .line 129
    iput-boolean v2, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsExchangeSaved:Z

    .line 130
    iput-object v1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    .line 745
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/easclient/SynchronizationSetting;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/easclient/SynchronizationSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/android/mail/easclient/SynchronizationSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleMode:I

    return p1
.end method

.method private addItem(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "SyncSource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    .local v0, map:Ljava/util/HashMap;
    const-string v1, "SyncSource"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    return-void
.end method

.method private clear_pref()V
    .locals 4

    .prologue
    .line 617
    const-string v2, "EASSetupWizard"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 618
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 619
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 620
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 621
    return-void
.end method

.method private getResultList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v1, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->addItem(Ljava/util/List;Ljava/lang/String;)V

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_0
    return-object v1
.end method

.method private getScheduleInt(I)I
    .locals 3
    .parameter "scheduleMode"

    .prologue
    .line 684
    const/4 v0, 0x1

    .line 685
    .local v0, schedule:I
    packed-switch p1, :pswitch_data_0

    .line 701
    :goto_0
    return v0

    .line 687
    :pswitch_0
    const/4 v0, 0x1

    .line 688
    goto :goto_0

    .line 690
    :pswitch_1
    iget v1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSchedule:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 691
    const/4 v0, 0x4

    goto :goto_0

    .line 693
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSchedule:I

    .line 695
    goto :goto_0

    .line 697
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getScheduleString(I)Ljava/lang/String;
    .locals 5
    .parameter "schedule"

    .prologue
    const/4 v4, 0x4

    .line 704
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, entries:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 706
    .local v1, ret:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 738
    aget-object v1, v0, v4

    .line 742
    :goto_0
    return-object v1

    .line 708
    :pswitch_0
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 709
    goto :goto_0

    .line 711
    :pswitch_1
    const/4 v2, 0x1

    aget-object v1, v0, v2

    .line 712
    goto :goto_0

    .line 714
    :pswitch_2
    const/4 v2, 0x2

    aget-object v1, v0, v2

    .line 715
    goto :goto_0

    .line 717
    :pswitch_3
    const/4 v2, 0x3

    aget-object v1, v0, v2

    .line 718
    goto :goto_0

    .line 720
    :pswitch_4
    aget-object v1, v0, v4

    .line 721
    goto :goto_0

    .line 723
    :pswitch_5
    const/4 v2, 0x5

    aget-object v1, v0, v2

    .line 724
    goto :goto_0

    .line 726
    :pswitch_6
    const/4 v2, 0x6

    aget-object v1, v0, v2

    .line 727
    goto :goto_0

    .line 729
    :pswitch_7
    const/4 v2, 0x7

    aget-object v1, v0, v2

    .line 730
    goto :goto_0

    .line 732
    :pswitch_8
    const/16 v2, 0x8

    aget-object v1, v0, v2

    .line 733
    goto :goto_0

    .line 735
    :pswitch_9
    const/16 v2, 0x9

    aget-object v1, v0, v2

    .line 736
    goto :goto_0

    .line 706
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private isPrefExist()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 623
    const-string v3, "EASSetupWizard"

    invoke-virtual {p0, v3, v2}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 624
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v3, "mailAddress"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, email:Ljava/lang/String;
    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private load_pref(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 4
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    .line 628
    const-string v1, "EASSetupWizard"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 630
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "mailAddress"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    .line 631
    const-string v1, "serverName"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    .line 632
    const-string v1, "userName"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    .line 633
    const-string v1, "password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    .line 634
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->decodePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    .line 635
    const-string v1, "doamin"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    .line 636
    const-string v1, "useSSL"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    .line 637
    return-void
.end method

.method private save_pref()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 639
    const-string v6, "EASSetupWizard"

    invoke-virtual {p0, v6, v8}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 640
    .local v4, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 641
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    .line 642
    .local v3, lv:Lcom/htc/widget/HtcListView;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v0, checkedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 644
    iget-boolean v6, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mAddHeaderView:Z

    if-eqz v6, :cond_2

    .line 645
    if-nez v2, :cond_1

    .line 643
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 648
    :cond_1
    iget-object v6, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->cksb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 649
    iget-object v6, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 652
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->cksb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 653
    iget-object v6, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 658
    :cond_3
    iget-object v6, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 659
    const-string v6, "isMailChecked"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 662
    :goto_2
    iget-object v6, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 663
    const-string v6, "isContactChecked"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 666
    :goto_3
    iget-object v6, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 667
    const-string v6, "isCalendarChecked"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 671
    :goto_4
    iget-boolean v6, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsTaskAPExist:Z

    if-eqz v6, :cond_4

    .line 672
    iget-object v6, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 673
    const-string v6, "isTaskChecked"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 677
    :cond_4
    :goto_5
    iget v6, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleMode:I

    invoke-direct {p0, v6}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getScheduleInt(I)I

    move-result v5

    .line 678
    .local v5, schedule:I
    const-string v6, "schedule"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 679
    const-string v6, "hasSetSyncSource"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 680
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 681
    return-void

    .line 661
    .end local v5           #schedule:I
    :cond_5
    const-string v6, "isMailChecked"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 665
    :cond_6
    const-string v6, "isContactChecked"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 669
    :cond_7
    const-string v6, "isCalendarChecked"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 675
    :cond_8
    const-string v6, "isTaskChecked"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_5
.end method

.method private setItemChecked(Lcom/htc/widget/HtcListView;)V
    .locals 8
    .parameter "listView"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 572
    const-string v3, "EASSetupWizard"

    invoke-virtual {p0, v3, v5}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 573
    .local v1, preferences:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->cksb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 574
    const-string v3, "hasSetSyncSource"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 575
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 576
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 577
    .local v2, text:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 575
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    :cond_1
    iget-boolean v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsTaskAPExist:Z

    if-eqz v3, :cond_5

    .line 580
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 581
    const-string v3, "isMailChecked"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 582
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->cksb:Landroid/util/SparseBooleanArray;

    const-string v4, "isMailChecked"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 583
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 584
    const-string v3, "isContactChecked"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 585
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->cksb:Landroid/util/SparseBooleanArray;

    const-string v4, "isContactChecked"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 586
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 587
    const-string v3, "isCalendarChecked"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 588
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->cksb:Landroid/util/SparseBooleanArray;

    const-string v4, "isCalendarChecked"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 589
    :cond_4
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 590
    const-string v3, "isTaskChecked"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 591
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->cksb:Landroid/util/SparseBooleanArray;

    const-string v4, "isTaskChecked"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_1

    .line 595
    :cond_5
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 596
    const-string v3, "isMailChecked"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 597
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->cksb:Landroid/util/SparseBooleanArray;

    const-string v4, "isMailChecked"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_1

    .line 598
    :cond_6
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 599
    const-string v3, "isContactChecked"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 600
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->cksb:Landroid/util/SparseBooleanArray;

    const-string v4, "isContactChecked"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_1

    .line 601
    :cond_7
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    const-string v3, "isCalendarChecked"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 603
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->cksb:Landroid/util/SparseBooleanArray;

    const-string v4, "isCalendarChecked"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_1

    .line 609
    .end local v0           #i:I
    .end local v2           #text:Ljava/lang/String;
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 610
    invoke-virtual {p1, v0, v6}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 611
    iget-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->cksb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 614
    :cond_9
    return-void
.end method

.method private setListViewHeight(Lcom/htc/widget/HtcListView;)V
    .locals 8
    .parameter "lv"

    .prologue
    const/4 v7, 0x0

    .line 373
    if-nez p1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 377
    .local v4, la:Landroid/widget/ListAdapter;
    if-eqz v4, :cond_0

    .line 380
    const/4 v1, 0x0

    .line 381
    .local v1, height:I
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 382
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 383
    const/4 v6, 0x0

    invoke-interface {v4, v2, v6, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 384
    .local v3, item:Landroid/view/View;
    invoke-virtual {v3, v7, v7}, Landroid/view/View;->measure(II)V

    .line 385
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v1, v6

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 387
    .end local v3           #item:Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 388
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getDividerHeight()I

    move-result v6

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v6, v1

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 389
    invoke-virtual {p1, v5}, Lcom/htc/widget/HtcListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 407
    sget-boolean v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    sget v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mRequestCode:I

    if-ne p1, v1, :cond_1

    .line 409
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_2

    .line 423
    :cond_1
    :goto_0
    return-void

    .line 411
    :cond_2
    const/16 v1, 0x65

    if-ne p2, v1, :cond_4

    .line 412
    invoke-virtual {p0, p2, p3}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->setResult(ILandroid/content/Intent;)V

    .line 413
    const-string v1, "account"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 414
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_3

    .line 415
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->setAuenticatorResult(Landroid/accounts/Account;)V

    .line 417
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->finish()V

    goto :goto_0

    .line 419
    .end local v0           #account:Landroid/accounts/Account;
    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->setResult(ILandroid/content/Intent;)V

    .line 420
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 543
    iget-object v1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mBtnPrev:Lcom/htc/android/mail/widget/MailFooterBarButton;

    if-ne p1, v1, :cond_1

    .line 545
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->save_pref()V

    .line 552
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->setResult(I)V

    .line 553
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->finish()V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mBtnNext:Lcom/htc/android/mail/widget/MailFooterBarButton;

    if-ne p1, v1, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->save_pref()V

    .line 556
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 557
    .local v0, intentNextPage:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 558
    const-string v1, "intent.eas.from_where"

    iget-object v2, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mFromWhere:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v1, "CallingActivity"

    iget v2, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mCallingActivity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    const-string v1, "mIsExchangeSaved"

    iget-boolean v2, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsExchangeSaved:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 563
    iget-object v1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    if-eqz v1, :cond_2

    .line 564
    const-string v1, "mEASAccountInfo"

    iget-object v2, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 567
    :cond_2
    sget v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mRequestCode:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 27
    .parameter "savedInstanceState"

    .prologue
    .line 189
    sget-boolean v24, Lcom/htc/android/mail/easclient/SynchronizationSetting;->DEBUG:Z

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "onCreate()"

    invoke-static/range {v24 .. v25}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mContext:Landroid/content/Context;

    .line 192
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->requestWindowFeature(I)Z

    .line 193
    const v24, 0x7f03004d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->setContentView(I)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 196
    .local v10, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 197
    if-eqz v10, :cond_1

    .line 198
    const-string v24, "mIsExchangeSaved"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsExchangeSaved:Z

    .line 199
    const-string v24, "mEASAccountInfo"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    .line 201
    :cond_1
    sget-boolean v24, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "isExchangeSaved:"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsExchangeSaved:Z

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, ", "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-object/from16 v24, v0

    if-nez v24, :cond_3

    const/16 v24, 0x0

    :goto_0
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getWindow()Landroid/view/Window;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getWindow()Landroid/view/Window;

    move-result-object v24

    const v25, 0x20806a9

    invoke-virtual/range {v24 .. v25}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getWindow()Landroid/view/Window;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 218
    .local v12, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v24, 0x2

    move/from16 v0, v24

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getWindow()Landroid/view/Window;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 221
    const-string v24, "isTaskAPExist"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsTaskAPExist:Z

    .line 224
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsTaskAPExist:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 225
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v4, v0, [Ljava/lang/String;

    .line 226
    .local v4, SyncSource:[Ljava/lang/String;
    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0216

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v4, v24

    .line 227
    const/16 v24, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0217

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v4, v24

    .line 228
    const/16 v24, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0218

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v4, v24

    .line 229
    const/16 v24, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0219

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v4, v24

    .line 237
    :goto_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v9, v0, :cond_5

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSyncSourceList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    aget-object v25, v4, v9

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 201
    .end local v4           #SyncSource:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_3
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 231
    .restart local v12       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v4, v0, [Ljava/lang/String;

    .line 232
    .restart local v4       #SyncSource:[Ljava/lang/String;
    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0216

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v4, v24

    .line 233
    const/16 v24, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0217

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v4, v24

    .line 234
    const/16 v24, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0218

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v4, v24

    goto :goto_1

    .line 241
    .restart local v9       #i:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v11

    .line 242
    .local v11, listView:Lcom/htc/widget/HtcListView;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    .line 243
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 252
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 253
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 254
    new-instance v6, Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;

    const v24, 0x7f030016

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v6, v0, v1, v4}, Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 259
    .local v6, adapter:Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 260
    invoke-virtual {v11}, Lcom/htc/widget/HtcListView;->clearChoices()V

    .line 261
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->setItemChecked(Lcom/htc/widget/HtcListView;)V

    .line 262
    invoke-virtual {v6, v11}, Lcom/htc/android/mail/easclient/SynchronizationSetting$SynchronizationAdapter;->setCheckedStatus(Lcom/htc/widget/HtcListView;)V

    .line 264
    const/16 v24, 0x0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lcom/htc/widget/HtcListView;->setRoundCorner(ZZ)V

    .line 268
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->setListViewHeight(Lcom/htc/widget/HtcListView;)V

    .line 271
    const v24, 0x7f09006f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    .line 272
    .local v8, footerBar:Lcom/htc/android/mail/widget/MailFooterBar2Btn;
    invoke-virtual {v8}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getLeftButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mBtnPrev:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 273
    invoke-virtual {v8}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mBtnNext:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mBtnPrev:Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-object/from16 v24, v0

    const v25, 0x7f0b0281

    invoke-virtual/range {v24 .. v25}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mBtnNext:Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-object/from16 v24, v0

    const v25, 0x7f0b0280

    invoke-virtual/range {v24 .. v25}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mBtnPrev:Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mBtnNext:Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b02e8

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 280
    .local v17, pushMail_label:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b02e9

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 282
    .local v16, pushMail_desc:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b02eb

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 283
    .local v20, schedule_desc:Ljava/lang/String;
    const/16 v21, 0x0

    .line 284
    .local v21, schedule_label:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b02ec

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 285
    .local v15, manual_label:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b02ed

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 286
    .local v14, manual_desc:Ljava/lang/String;
    const-string v24, "schedule"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSchedule:I

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "schedule: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSchedule:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsExchangeSaved:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->fetchFreq:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSchedule:I

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "restore fetchFreq: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSchedule:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSchedule:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f060021

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, entries:[Ljava/lang/String;
    const/16 v24, 0x4

    aget-object v21, v7, v24

    .line 300
    .end local v7           #entries:[Ljava/lang/String;
    :goto_3
    const v24, 0x7f09019a

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/htc/widget/HtcListView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleList:Lcom/htc/widget/HtcListView;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleList:Lcom/htc/widget/HtcListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleList:Lcom/htc/widget/HtcListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lcom/htc/widget/HtcListView;->setRoundCorner(ZZ)V

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSchedule:I

    move/from16 v24, v0

    if-nez v24, :cond_b

    .line 307
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;

    move-object/from16 v19, v0

    .line 308
    .local v19, scheduleItem:[Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;
    const/16 v24, 0x0

    new-instance v25, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;-><init>(Lcom/htc/android/mail/easclient/SynchronizationSetting;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v25, v19, v24

    .line 309
    const/16 v24, 0x1

    new-instance v25, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;-><init>(Lcom/htc/android/mail/easclient/SynchronizationSetting;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v25, v19, v24

    .line 316
    :goto_4
    new-instance v18, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleList:Lcom/htc/widget/HtcListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;-><init>(Lcom/htc/android/mail/easclient/SynchronizationSetting;[Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;Lcom/htc/widget/HtcListView;)V

    .line 317
    .local v18, scheduleAdapter:Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleList:Lcom/htc/widget/HtcListView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleList:Lcom/htc/widget/HtcListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleList:Lcom/htc/widget/HtcListView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleList:Lcom/htc/widget/HtcListView;

    move-object/from16 v24, v0

    new-instance v25, Lcom/htc/android/mail/easclient/SynchronizationSetting$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/android/mail/easclient/SynchronizationSetting$1;-><init>(Lcom/htc/android/mail/easclient/SynchronizationSetting;)V

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleList:Lcom/htc/widget/HtcListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->setListViewHeight(Lcom/htc/widget/HtcListView;)V

    .line 329
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    .line 330
    .local v5, accManagerAutoSync:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSchedule:I

    move/from16 v24, v0

    if-eqz v24, :cond_c

    if-nez v5, :cond_c

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleList:Lcom/htc/widget/HtcListView;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 332
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleMode:I

    .line 341
    :goto_5
    const-string v24, "intent.eas.from_where"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mFromWhere:Ljava/lang/String;

    .line 342
    const-string v24, "CallingActivity"

    const/16 v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mCallingActivity:I

    .line 343
    sget-boolean v24, Lcom/htc/android/mail/easclient/SynchronizationSetting;->DEBUG:Z

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mCallingActivity: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mCallingActivity:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mCallingActivity:I

    move/from16 v24, v0

    const/16 v25, 0x5e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mBtnNext:Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-object/from16 v24, v0

    const v25, 0x7f0b0280

    invoke-virtual/range {v24 .. v25}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 356
    :cond_8
    const v24, 0x7f090198

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 357
    .local v23, subtitleSelectData:Landroid/widget/RelativeLayout;
    const v24, 0x7f0900d9

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v25, 0x7f0b025e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    .line 359
    const v24, 0x7f090199

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 360
    .local v22, subtitleListschedule:Landroid/widget/RelativeLayout;
    const v24, 0x7f0900d9

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v25, 0x7f0b025f

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    .line 362
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsExchangeSaved:Z

    move/from16 v24, v0

    if-nez v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v13

    .line 365
    .local v13, lv:Lcom/htc/widget/HtcListView;
    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->MailSyncFlag:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 366
    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->ABSyncFlag:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 367
    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->CalSyncFlag:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 369
    .end local v13           #lv:Lcom/htc/widget/HtcListView;
    :cond_9
    return-void

    .line 297
    .end local v5           #accManagerAutoSync:Z
    .end local v18           #scheduleAdapter:Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;
    .end local v19           #scheduleItem:[Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;
    .end local v22           #subtitleListschedule:Landroid/widget/RelativeLayout;
    .end local v23           #subtitleSelectData:Landroid/widget/RelativeLayout;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSchedule:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getScheduleString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_3

    .line 311
    :cond_b
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;

    move-object/from16 v19, v0

    .line 312
    .restart local v19       #scheduleItem:[Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;
    const/16 v24, 0x0

    new-instance v25, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;-><init>(Lcom/htc/android/mail/easclient/SynchronizationSetting;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v25, v19, v24

    .line 313
    const/16 v24, 0x1

    new-instance v25, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;-><init>(Lcom/htc/android/mail/easclient/SynchronizationSetting;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v25, v19, v24

    .line 314
    const/16 v24, 0x2

    new-instance v25, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v14}, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;-><init>(Lcom/htc/android/mail/easclient/SynchronizationSetting;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v25, v19, v24

    goto/16 :goto_4

    .line 333
    .restart local v5       #accManagerAutoSync:Z
    .restart local v18       #scheduleAdapter:Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSchedule:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleList:Lcom/htc/widget/HtcListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 335
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleMode:I

    goto/16 :goto_5

    .line 337
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleList:Lcom/htc/widget/HtcListView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 338
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleMode:I

    goto/16 :goto_5
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 452
    sget-boolean v0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_0
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsDestroy:Z

    .line 455
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 483
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->save_pref()V

    .line 490
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->setResult(I)V

    .line 491
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->finish()V

    .line 492
    const/4 v0, 0x1

    .line 495
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "idL"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 393
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v0

    .line 394
    .local v0, isChecked:Z
    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p1, p3, v3}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 397
    iget-object v1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->cksb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p3, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 404
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-virtual {p1, p3, v2}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 402
    iget-object v1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->cksb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "inState"

    .prologue
    .line 521
    const-string v5, "CallingActivity"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mCallingActivity:I

    .line 522
    const-string v5, "mAddHeaderView"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mAddHeaderView:Z

    .line 523
    const-string v5, "mSchedule"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSchedule:I

    .line 524
    const-string v5, "mScheduleMode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleMode:I

    .line 526
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 527
    const-string v5, "mIsExchangeSaved"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsExchangeSaved:Z

    .line 528
    const-string v5, "mEASAccountInfo"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 529
    .local v3, obj:Landroid/os/Parcelable;
    if-eqz v3, :cond_0

    .line 530
    check-cast v3, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    .end local v3           #obj:Landroid/os/Parcelable;
    iput-object v3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    .line 534
    .local v2, lv:Lcom/htc/widget/HtcListView;
    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v0

    .line 535
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 536
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 537
    .local v4, text:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v2, v1, v5}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    .end local v4           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 458
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 459
    iget-object v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-direct {p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->isPrefExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->setResult(I)V

    .line 462
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->finish()V

    .line 464
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 500
    const-string v4, "CallingActivity"

    iget v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mCallingActivity:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 501
    const-string v4, "mAddHeaderView"

    iget-boolean v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mAddHeaderView:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 502
    const-string v4, "mSchedule"

    iget v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mSchedule:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    const-string v4, "mScheduleMode"

    iget v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mScheduleMode:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 505
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    .line 506
    .local v2, lv:Lcom/htc/widget/HtcListView;
    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v0

    .line 507
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 508
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 509
    .local v3, text:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 510
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 507
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    .end local v3           #text:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 513
    const-string v4, "mIsExchangeSaved"

    iget-boolean v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mIsExchangeSaved:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 514
    iget-object v4, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    if-eqz v4, :cond_2

    .line 515
    const-string v4, "mEASAccountInfo"

    iget-object v5, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 518
    :cond_2
    return-void
.end method

.method setAuenticatorResult(Landroid/accounts/Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 426
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 427
    .local v1, result:Landroid/os/Bundle;
    const-string v2, "authAccount"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v2, "accountType"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "accountAuthenticatorResponse"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 431
    .local v0, callback:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 433
    :cond_0
    return-void
.end method

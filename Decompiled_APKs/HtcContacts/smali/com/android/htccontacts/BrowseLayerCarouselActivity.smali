.class public Lcom/android/htccontacts/BrowseLayerCarouselActivity;
.super Lcom/android/htccontacts/app/BaseCarouselActivity;
.source "BrowseLayerCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/BrowseLayerCarouselActivity$ResetNewCallFlagThread;,
        Lcom/android/htccontacts/BrowseLayerCarouselActivity$ResetNewCallFlagIdleHandler;,
        Lcom/android/htccontacts/BrowseLayerCarouselActivity$StartProfilingThreadIdleHandler;,
        Lcom/android/htccontacts/BrowseLayerCarouselActivity$ProfileThread;
    }
.end annotation


# static fields
.field private static final CALLHISTORY_ENTRY_COMPONENT:Ljava/lang/String; = "com.android.htccontacts.ViewCallHistory"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DEFAULT_TAB_ORDER:Ljava/lang/String; = "GR_OD_CH"

.field private static final DIALER_ENTRY_COMPONENT:Ljava/lang/String; = "com.android.htccontacts.DialerTabActivity"

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_ALL_PEOPLE_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_ALL_PEOPLE_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_ALL_PEOPLE_REST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_CALL_HISTORY_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_CALL_HISTORY_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_CALL_HISTORY_REST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_FAVE_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_FAVE_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_FAVE_REST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_GROUP_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_GROUP_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_GROUP_REST:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_UPDATES_AND_EVENTS_ON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_UPDATES_AND_EVENTS_OVERLAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DRAWABLE_RES_UPDATES_AND_EVENTS_REST:I = 0x0

.field private static final MENU_ARRANGE_ICONS:I = 0x10000

.field private static final PACKAGE_NAME_SKYPE:Ljava/lang/String; = "com.skype.merlin_mecha"

.field public static final TAB_ABBR_CALL_HISTORY:Ljava/lang/String; = "CH"

.field public static final TAB_ABBR_GROUP:Ljava/lang/String; = "GR"

.field public static final TAB_ABBR_ONLINE_DIRECTORY:Ljava/lang/String; = "OD"

.field private static final TAG:Ljava/lang/String; = "BrowseLayerCarouselActivity"

.field public static final TAG_ALL_PEOPLE:Ljava/lang/String; = "PEOPLE_ALL_PEOPLE"

.field public static final TAG_CALL_HISTORY:Ljava/lang/String; = "PEOPLE_CALL_HISTORY"

.field public static final TAG_CUSTOM_FAVES:Ljava/lang/String; = "PEOPLE_FAVES"

.field public static final TAG_DIALER:Ljava/lang/String; = "PEOPLE_DIALER"

.field public static final TAG_GROUP:Ljava/lang/String; = "PEOPLE_GROUP"

.field public static final TAG_ONLINE_DIRECTORY:Ljava/lang/String; = "PEOPLE_ONLINE_DIRECTORY"

.field public static final TAG_VIDEO_CALL:Ljava/lang/String; = "PEOPLE_VIDEO_CALL"


# instance fields
.field private mCurConfig:Landroid/content/res/Configuration;

.field private mCustomizedBundle:Landroid/os/Bundle;

.field private mHasOnNewIntent:Z

.field private mLogOnCreateStartingTime:J

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSyncControl:Lcom/htc/util/contacts/SyncControl;

.field private mTabOrder:Ljava/lang/String;

.field private final resetNewCallIdleHandler:Landroid/os/MessageQueue$IdleHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x208029b

    const v4, 0x2080223

    const v3, 0x2080222

    const v2, 0x20801e7

    const v1, 0x20801e6

    .line 69
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DEBUG:Z

    .line 116
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sput v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_ALL_PEOPLE_ON:I

    .line 119
    sput v2, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_ALL_PEOPLE_REST:I

    .line 120
    const v0, 0x20803b3

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_ALL_PEOPLE_OVERLAY:I

    .line 122
    const v0, 0x20802e6

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_GROUP_ON:I

    .line 123
    const v0, 0x20802e7

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_GROUP_REST:I

    .line 124
    const v0, 0x20803b4

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_GROUP_OVERLAY:I

    .line 126
    sput v5, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_FAVE_ON:I

    .line 127
    const v0, 0x208029c

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_FAVE_REST:I

    .line 128
    const v0, 0x2080388

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_FAVE_OVERLAY:I

    .line 130
    const v0, 0x208044d

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_ON:I

    .line 131
    const v0, 0x208044e

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_REST:I

    .line 132
    const v0, 0x20803ce

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_OVERLAY:I

    .line 134
    sput v3, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_ON:I

    .line 135
    sput v4, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_REST:I

    .line 136
    const v0, 0x208037f

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_OVERLAY:I

    .line 160
    :goto_0
    return-void

    .line 140
    :cond_0
    sput v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_ALL_PEOPLE_ON:I

    .line 141
    sput v2, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_ALL_PEOPLE_REST:I

    .line 142
    const v0, 0x20803b3

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_ALL_PEOPLE_OVERLAY:I

    .line 144
    const v0, 0x20802e6

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_GROUP_ON:I

    .line 145
    const v0, 0x20802e7

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_GROUP_REST:I

    .line 146
    const v0, 0x20803b4

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_GROUP_OVERLAY:I

    .line 148
    sput v5, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_FAVE_ON:I

    .line 149
    const v0, 0x208029c

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_FAVE_REST:I

    .line 150
    const v0, 0x2080388

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_FAVE_OVERLAY:I

    .line 152
    const v0, 0x208044d

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_ON:I

    .line 153
    const v0, 0x208044e

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_REST:I

    .line 154
    const v0, 0x20803ce

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_OVERLAY:I

    .line 156
    sput v3, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_ON:I

    .line 157
    sput v4, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_REST:I

    .line 158
    const v0, 0x208037f

    sput v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_OVERLAY:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;-><init>()V

    .line 112
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mCurConfig:Landroid/content/res/Configuration;

    .line 166
    iput-object v1, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mCustomizedBundle:Landroid/os/Bundle;

    .line 167
    iput-object v1, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mTabOrder:Ljava/lang/String;

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mLogOnCreateStartingTime:J

    .line 178
    new-instance v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity$ResetNewCallFlagIdleHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity$ResetNewCallFlagIdleHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->resetNewCallIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mHasOnNewIntent:Z

    .line 783
    return-void
.end method

.method private addAllPeopleTab(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v0}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 463
    .local v0, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v1, "PEOPLE_ALL_PEOPLE"

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 464
    const v1, 0x7f0a0015

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 465
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_ALL_PEOPLE_REST:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 466
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_ALL_PEOPLE_ON:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 467
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_ALL_PEOPLE_OVERLAY:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 468
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 469
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 470
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    return-void
.end method

.method private addCallHistoryTab(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v0}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 543
    .local v0, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v1, "PEOPLE_CALL_HISTORY"

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 544
    const v1, 0x7f0a0376

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 545
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_REST:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 546
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_ON:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 547
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_CALL_HISTORY_OVERLAY:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 548
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 549
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 550
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    return-void
.end method

.method private addDialerTab(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    const v5, 0x20803d9

    .line 565
    new-instance v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v0}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 566
    .local v0, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v1, "PEOPLE_DIALER"

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 567
    const v1, 0x7f0a0351

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 568
    iput v5, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 569
    const v1, 0x20803d8

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 570
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_overlay_phone"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 571
    iget v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    if-nez v1, :cond_0

    .line 572
    iput v5, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 574
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.htcdialer"

    const-string v3, "com.android.htcdialer.Dialer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 575
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 576
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    return-void
.end method

.method private addFavesTab(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v0}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 555
    .local v0, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v1, "PEOPLE_FAVES"

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 556
    const v1, 0x7f0a001d

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 557
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_FAVE_REST:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 558
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_FAVE_ON:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 559
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_FAVE_OVERLAY:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 560
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/htccontacts/BrowseContactsPartialActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 561
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    return-void
.end method

.method private addGroupTab(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 513
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v0}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 514
    .local v0, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v1, "PEOPLE_GROUP"

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 515
    const v1, 0x7f0a0018

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 516
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_GROUP_REST:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 517
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_GROUP_ON:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 518
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_GROUP_OVERLAY:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 519
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/htccontacts/BrowseGroupsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 520
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    return-void
.end method

.method private addOnlineDirectoryTab(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v0}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 525
    .local v0, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v1, "PEOPLE_ONLINE_DIRECTORY"

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 526
    const v1, 0x7f0a001a

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 527
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 528
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v1

    if-nez v1, :cond_0

    .line 529
    const v1, 0x2080365

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 530
    const v1, 0x2080364

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 531
    const v1, 0x20803b1

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 538
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    return-void

    .line 534
    :cond_0
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_REST:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 535
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_ON:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 536
    sget v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DRAWABLE_RES_UPDATES_AND_EVENTS_OVERLAY:I

    iput v1, v0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    goto :goto_0
.end method

.method private addVideoCallTab(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->addVideoCallTab(Ljava/util/List;Z)V

    .line 475
    return-void
.end method

.method private addVideoCallTab(Ljava/util/List;Z)V
    .locals 7
    .parameter
    .parameter "checkPackage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    const/4 v6, 0x1

    .line 478
    const/4 v0, 0x1

    .line 479
    .local v0, addTab:Z
    if-eqz p2, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 482
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.skype.merlin_mecha"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    if-ne v6, v0, :cond_2

    .line 491
    new-instance v3, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v3}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 492
    .local v3, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v4, "PEOPLE_VIDEO_CALL"

    iput-object v4, v3, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 493
    const v4, 0x7f0a001f

    iput v4, v3, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 494
    const v4, 0x2080ae6

    iput v4, v3, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 495
    const v4, 0x2080ae5

    iput v4, v3, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 496
    const v4, 0x7f020019

    iput v4, v3, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 497
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/android/htccontacts/BrowseContactsVideoCallActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 498
    iput-boolean v6, v3, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 499
    const/16 v4, 0x64

    iput v4, v3, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->taskState:I

    .line 500
    if-eqz p1, :cond_1

    .line 501
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    .end local v3           #tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    :goto_1
    return-void

    .line 486
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 487
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_0

    .line 504
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .restart local v3       #tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->addSpecTab(Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;)V

    goto :goto_1

    .line 508
    .end local v3           #tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    :cond_2
    const-string v4, "PEOPLE_VIDEO_CALL"

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->removeTabFromDb(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private ensureProfiling()V
    .locals 7

    .prologue
    .line 627
    new-instance v1, Lcom/android/htccontacts/BrowseLayerCarouselActivity$StartProfilingThreadIdleHandler;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity$StartProfilingThreadIdleHandler;-><init>(Landroid/app/Activity;)V

    .line 629
    .local v1, idler:Landroid/os/MessageQueue$IdleHandler;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 631
    .local v4, sp:Landroid/content/SharedPreferences;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 632
    .local v0, handler:Landroid/os/Handler;
    new-instance v3, Lcom/android/htccontacts/BrowseLayerCarouselActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/android/htccontacts/BrowseLayerCarouselActivity$1;-><init>(Lcom/android/htccontacts/BrowseLayerCarouselActivity;Landroid/os/MessageQueue$IdleHandler;)V

    .line 638
    .local v3, r:Ljava/lang/Runnable;
    const-string v5, "PROFILING_INITIALIZED_DONE"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 639
    .local v2, initialized:I
    if-nez v2, :cond_0

    .line 640
    const-wide/32 v5, 0xea60

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 642
    :cond_0
    return-void
.end method

.method private ensureUpgradeDone()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 669
    const-string v2, "upgrade"

    invoke-virtual {p0, v2, v3}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 670
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "carousel"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 671
    .local v0, carsouselUpdate:Z
    return v0
.end method

.method private handleUpgradeCarousel()V
    .locals 1

    .prologue
    .line 645
    invoke-static {}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->isUpgradingFromSense1_6_2_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->ensureUpgradeDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->removeOnlineDirectoryTab()V

    .line 648
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->setUpgradeDone()V

    .line 651
    :cond_0
    return-void
.end method

.method private static final isUpgradingFromSense1_6_2_0()Z
    .locals 2

    .prologue
    .line 655
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x93

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeOnlineDirectoryTab()V
    .locals 6

    .prologue
    .line 683
    :try_start_0
    const-string v2, "delete from tasks where task_tag = \'PEOPLE_ONLINE_DIRECTORY\';"

    .line 684
    .local v2, sql:Ljava/lang/String;
    const-string v3, "carousel.db"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 685
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "delete from tasks where task_tag = \'PEOPLE_ONLINE_DIRECTORY\';"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #sql:Ljava/lang/String;
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v1

    .line 688
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "BrowseLayerCarouselActivity"

    const-string v4, "remove online directoryTab"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetNewCallsFlag()V
    .locals 2

    .prologue
    .line 701
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->resetNewCallIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 702
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->resetNewCallIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 703
    return-void
.end method

.method private setUpgradeDone()V
    .locals 4

    .prologue
    .line 675
    const-string v2, "upgrade"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 676
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 677
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "carousel"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 678
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 679
    return-void
.end method

.method private setupShortcut()V
    .locals 6

    .prologue
    .line 446
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v2, shortcutIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 449
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 450
    const-string v3, "android.intent.extra.shortcut.NAME"

    const v4, 0x7f0a00ec

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    :try_start_0
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const v5, 0x7f02003a

    invoke-static {v4, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->setResult(ILandroid/content/Intent;)V

    .line 459
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BrowseLayerCarouselActivity"

    const-string v4, "loadContactPhoto: exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updatePrefs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefsName"
    .parameter "mString"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    return-void
.end method

.method private updatePrefs(Ljava/lang/String;Z)V
    .locals 2
    .parameter "prefsName"
    .parameter "mBoolean"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->moveTaskToBack(Z)Z

    .line 364
    iget-object v0, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    invoke-virtual {v0}, Lcom/htc/util/contacts/SyncControl;->removeAutoCancel()V

    .line 365
    iget-object v0, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    invoke-virtual {v0}, Lcom/htc/util/contacts/SyncControl;->startPendingSync()V

    .line 366
    return-void
.end method

.method public getHasOnNewIntentAndReset()Z
    .locals 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mHasOnNewIntent:Z

    .line 184
    .local v0, hasOrNot:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mHasOnNewIntent:Z

    .line 185
    return v0
.end method

.method protected getLocalTabSpec()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 597
    .local v0, tabSpecList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    invoke-direct {p0, v0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->addDialerTab(Ljava/util/List;)V

    .line 598
    invoke-direct {p0, v0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->addAllPeopleTab(Ljava/util/List;)V

    .line 599
    invoke-direct {p0, v0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->addGroupTab(Ljava/util/List;)V

    .line 600
    invoke-direct {p0, v0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->addCallHistoryTab(Ljava/util/List;)V

    .line 602
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8a

    if-ne v1, v2, :cond_1

    .line 604
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->addVideoCallTab(Ljava/util/List;)V

    .line 606
    :cond_1
    return-object v0
.end method

.method public getOnCreateStartingTime()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mLogOnCreateStartingTime:J

    return-wide v0
.end method

.method protected getPluginFeature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    const-string v0, "AddBrowseLayerTab"

    return-object v0
.end method

.method protected getUniqueCarouselId()I
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 259
    sget-boolean v3, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 260
    const-string v3, "BrowseLayerCarouselActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged()....."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 264
    iget-object v3, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 266
    .local v1, diff:I
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_3

    .line 268
    sget-boolean v3, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 269
    const-string v3, "BrowseLayerCarouselActivity"

    const-string v4, "    finish my self"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    invoke-static {p1}, Lcom/android/htccontacts/PeopleApp;->isDockMode(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->finish()V

    .line 290
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 292
    return-void

    .line 276
    :cond_3
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    .line 277
    .local v2, localActivityManager:Landroid/app/LocalActivityManager;
    const/4 v0, 0x0

    .line 278
    .local v0, dialerActivity:Landroid/app/Activity;
    if-eqz v2, :cond_2

    .line 279
    const-string v3, "PEOPLE_DIALER"

    invoke-virtual {v2, v3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eq v3, v0, :cond_2

    .line 282
    sget-boolean v3, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 283
    const-string v3, "BrowseLayerCarouselActivity"

    const-string v4, "    request dialer to finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_4
    const-string v3, "PEOPLE_DIALER"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mLogOnCreateStartingTime:J

    .line 211
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->handleUpgradeCarousel()V

    .line 217
    iget-object v2, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 220
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mCustomizedBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 224
    const-string v2, "GR_OD_CH"

    iput-object v2, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mTabOrder:Ljava/lang/String;

    .line 231
    :goto_0
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->setupShortcut()V

    .line 233
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->finish()V

    .line 254
    :goto_1
    return-void

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mCustomizedBundle:Landroid/os/Bundle;

    const-string v3, "BROWSE_LAYER_TAB_ORDER"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mTabOrder:Ljava/lang/String;

    goto :goto_0

    .line 241
    :cond_1
    const-string v2, "People"

    invoke-static {v2}, Lcom/htc/util/contacts/SyncControl;->getSyncControl(Ljava/lang/String;)Lcom/htc/util/contacts/SyncControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    .line 242
    iget-object v2, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    const-string v3, "com.htc.socialnetwork.facebook"

    invoke-virtual {v2, v3}, Lcom/htc/util/contacts/SyncControl;->addExceptionAccountType(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    const-string v3, "com.htc.socialnetwork.flickr"

    invoke-virtual {v2, v3}, Lcom/htc/util/contacts/SyncControl;->addExceptionAccountType(Ljava/lang/String;)V

    .line 245
    sget-boolean v2, Lcom/android/htccontacts/util/ContactsUtils;->sIsProfilingEnabled:Z

    if-eqz v2, :cond_2

    .line 246
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->ensureProfiling()V

    .line 249
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 251
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->getInstance()Lcom/android/htccontacts/PeopleApp;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/htccontacts/PeopleApp;->registerUiModeObserver(Landroid/app/Activity;)I

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "arrange_tabs"

    const-string v3, "string"

    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 371
    .local v0, id:I
    const/high16 v1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x208032f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 372
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 373
    const/4 v1, 0x1

    return v1
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 694
    const-string v0, "PEOPLE_CALL_HISTORY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PEOPLE_DIALER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->resetNewCallsFlag()V

    .line 698
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 332
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->getInstance()Lcom/android/htccontacts/PeopleApp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->getInstance()Lcom/android/htccontacts/PeopleApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/htccontacts/PeopleApp;->unregisterUiModeObserver(Landroid/app/Activity;)I

    .line 335
    :cond_0
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onDestroy()V

    .line 357
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mLogOnCreateStartingTime:J

    .line 316
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    const-string v0, "Display contacts filter by account"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->updatePrefs(Ljava/lang/String;Z)V

    .line 325
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mHasOnNewIntent:Z

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->setIntent(Landroid/content/Intent;)V

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 328
    return-void

    .line 323
    :cond_2
    sget-boolean v0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BrowseLayerCarouselActivity"

    const-string v1, "intent get action == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 378
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 383
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 380
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->enterEditMode()V

    .line 381
    const/4 v0, 0x1

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 297
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onPause()V

    .line 298
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 306
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onResume()V

    .line 310
    iget-object v0, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    const-string v1, "com.android.contacts"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/contacts/SyncControl;->setCancel(Ljava/lang/String;Z)V

    .line 311
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 707
    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 708
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    .line 709
    .local v0, panelHost:Lcom/htc/widget/CarouselHost;
    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, tag:Ljava/lang/String;
    const-string v2, "PEOPLE_DIALER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PEOPLE_CALL_HISTORY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 711
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->resetNewCallsFlag()V

    .line 714
    .end local v0           #panelHost:Lcom/htc/widget/CarouselHost;
    .end local v1           #tag:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onWindowFocusChanged(Z)V

    .line 715
    return-void
.end method

.method protected processPluginIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "intent"

    .prologue
    .line 586
    return-object p1
.end method

.method protected setCurrentTab(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v5

    .line 396
    .local v5, panelHost:Lcom/htc/widget/CarouselHost;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, componentName:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 398
    const-string v8, "com.android.htccontacts.ViewCallHistory"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->resetNewCallsFlag()V

    .line 400
    const-string v8, "PEOPLE_CALL_HISTORY"

    invoke-virtual {v5, v8}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 443
    :goto_0
    return-void

    .line 402
    :cond_0
    const-string v8, "com.android.htccontacts.DialerTabActivity"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 403
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->resetNewCallsFlag()V

    .line 404
    const-string v8, "PEOPLE_DIALER"

    invoke-virtual {v5, v8}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_1
    const-string v1, "PEOPLE_ALL_PEOPLE"

    .line 411
    .local v1, defaultTabTag:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 412
    .local v7, uri:Landroid/net/Uri;
    const-string v8, "type"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, extraType:Ljava/lang/String;
    const-string v8, "HTC_TAB"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, extraTab:Ljava/lang/String;
    const/4 v4, 0x0

    .line 415
    .local v4, intentType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 417
    .local v6, tabParam:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 418
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 419
    const-string v8, "tab"

    invoke-virtual {v7, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 422
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 423
    move-object v1, v2

    .line 426
    :cond_3
    if-nez v4, :cond_4

    .line 427
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 430
    :cond_4
    if-eqz v4, :cond_5

    .line 431
    const-string v8, "vnd.android.cursor.dir/calls"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 433
    const-string v1, "PEOPLE_CALL_HISTORY"

    .line 437
    :cond_5
    const-string v8, "PEOPLE_CALL_HISTORY"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "PEOPLE_DIALER"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 439
    :cond_6
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseLayerCarouselActivity;->resetNewCallsFlag()V

    .line 442
    :cond_7
    invoke-virtual {v5, v1}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setUpPluginTab()V
    .locals 0

    .prologue
    .line 388
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->setUpPluginTab()V

    .line 392
    return-void
.end method

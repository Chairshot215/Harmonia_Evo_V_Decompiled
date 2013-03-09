.class public Lcom/android/mms/ui/MessageTabSwitchActivity;
.super Lcom/htc/widget/CarouselActivity;
.source "MessageTabSwitchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageTabSwitchActivity$QueryUnreadCountAsyncTask;
    }
.end annotation


# static fields
.field protected static final BG_QUERY_UNREAD_COUNT:I = 0x1

.field private static final LOCAL_LOGV:Z = true

.field protected static final TAB_DEFALT_INDEX:I = 0x0

.field public static final TAB_DEFAULT_TAG:Ljava/lang/String; = "tab_all_message"

.field protected static final TAB_INDEX_COUNT:I = 0x3

.field protected static final TAB_MMSSMS_INDEX:I = 0x1

.field public static final TAB_MMSSMS_TAG:Ljava/lang/String; = "tab_conversation"

.field protected static final TAB_NONE_INDEX:I = -0x1

.field protected static final TAB_VVM_INDEX:I = 0x2

.field public static final TAB_VVM_TAG:Ljava/lang/String; = "tab_voicemail"

.field private static final TAG:Ljava/lang/String; = "MessageTabSwitchActivity"

.field private static TabActivity:Lcom/android/mms/ui/MessageTabSwitchActivity; = null

.field public static final UI_CANCEL_NOTIFICATION_INAPP:I = 0xf

.field public static final UI_CANCEL_NOTIFICATION_ONCE:I = 0x10

.field protected static final UI_SET_TAB_UNREAD_COUNT:I = 0x1


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field private mBgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;

.field mContentObserver:Landroid/database/ContentObserver;

.field protected mCountDirty:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mIsForeground:Z

.field protected mTabUnreadCounts:[I

.field protected mTagIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUnreadCountQueryTask:Lcom/android/mms/ui/MessageTabSwitchActivity$QueryUnreadCountAsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessageTabSwitchActivity;->TabActivity:Lcom/android/mms/ui/MessageTabSwitchActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    const-string v0, "com.android.mms.MmsCarouselProvider"

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselActivity;-><init>(Ljava/lang/String;)V

    .line 81
    iput-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mAppContext:Landroid/content/Context;

    .line 82
    iput-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTagIndexMap:Ljava/util/HashMap;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTabUnreadCounts:[I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mIsForeground:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mCountDirty:Z

    .line 372
    iput-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mUnreadCountQueryTask:Lcom/android/mms/ui/MessageTabSwitchActivity$QueryUnreadCountAsyncTask;

    .line 469
    new-instance v0, Lcom/android/mms/ui/MessageTabSwitchActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTabSwitchActivity$2;-><init>(Lcom/android/mms/ui/MessageTabSwitchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mBgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;

    .line 503
    new-instance v0, Lcom/android/mms/ui/MessageTabSwitchActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTabSwitchActivity$3;-><init>(Lcom/android/mms/ui/MessageTabSwitchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mHandler:Landroid/os/Handler;

    .line 515
    new-instance v0, Lcom/android/mms/ui/MessageTabSwitchActivity$4;

    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity$4;-><init>(Lcom/android/mms/ui/MessageTabSwitchActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mContentObserver:Landroid/database/ContentObserver;

    .line 93
    return-void

    .line 85
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public static updateCountTexts([I)V
    .locals 5
    .parameter "counts"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 361
    sget-object v0, Lcom/android/mms/ui/MessageTabSwitchActivity;->TabActivity:Lcom/android/mms/ui/MessageTabSwitchActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/MessageTabSwitchActivity;->TabActivity:Lcom/android/mms/ui/MessageTabSwitchActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    const-string v0, "MessageTabSwitchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unreadCount: mms> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vvm> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    aget v0, p0, v3

    sget-object v1, Lcom/android/mms/ui/MessageTabSwitchActivity;->TabActivity:Lcom/android/mms/ui/MessageTabSwitchActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTabUnreadCounts:[I

    aget v1, v1, v4

    if-ne v0, v1, :cond_2

    aget v0, p0, v4

    sget-object v1, Lcom/android/mms/ui/MessageTabSwitchActivity;->TabActivity:Lcom/android/mms/ui/MessageTabSwitchActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTabUnreadCounts:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    if-eq v0, v1, :cond_0

    .line 366
    :cond_2
    sget-object v0, Lcom/android/mms/ui/MessageTabSwitchActivity;->TabActivity:Lcom/android/mms/ui/MessageTabSwitchActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTabUnreadCounts:[I

    array-length v1, p0

    invoke-static {p0, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    sget-object v0, Lcom/android/mms/ui/MessageTabSwitchActivity;->TabActivity:Lcom/android/mms/ui/MessageTabSwitchActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTabUnreadCounts:[I

    aget v1, p0, v3

    aget v2, p0, v4

    add-int/2addr v1, v2

    aput v1, v0, v3

    .line 368
    sget-object v0, Lcom/android/mms/ui/MessageTabSwitchActivity;->TabActivity:Lcom/android/mms/ui/MessageTabSwitchActivity;

    iput-boolean v3, v0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mCountDirty:Z

    .line 369
    sget-object v0, Lcom/android/mms/ui/MessageTabSwitchActivity;->TabActivity:Lcom/android/mms/ui/MessageTabSwitchActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->updateCountTexts()V

    goto :goto_0
.end method


# virtual methods
.method protected checkIntentActivities(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 116
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 117
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 121
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getAcitivityInetent(I)Landroid/content/Intent;
    .locals 3
    .parameter "tabIndex"

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 99
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 110
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->checkIntentActivities(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-object v0

    .line 101
    .restart local v0       #intent:Landroid/content/Intent;
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/AllMessageListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mAppContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 107
    :pswitch_2
    const-string v1, "com.htc.vvm.VoiceMailMainActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentTab()I
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, tag:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 243
    const/4 v1, -0x1

    .line 245
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTagIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getTagByIndex(I)Ljava/lang/String;
    .locals 1
    .parameter "tabIndex"

    .prologue
    .line 250
    const-string v0, "tab_all_message"

    .line 251
    .local v0, tag:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 262
    :goto_0
    return-object v0

    .line 253
    :pswitch_0
    const-string v0, "tab_all_message"

    .line 254
    goto :goto_0

    .line 256
    :pswitch_1
    const-string v0, "tab_conversation"

    .line 257
    goto :goto_0

    .line 259
    :pswitch_2
    const-string v0, "tab_voicemail"

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initTab()V
    .locals 9

    .prologue
    const/16 v8, 0x65

    .line 156
    const v1, 0x209002f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->setContentView(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    .line 159
    .local v0, mPanelHost:Lcom/htc/widget/CarouselHost;
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTagIndexMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTagIndexMap:Ljava/util/HashMap;

    .line 161
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTagIndexMap:Ljava/util/HashMap;

    const-string v2, "tab_all_message"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTagIndexMap:Ljava/util/HashMap;

    const-string v2, "tab_conversation"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTagIndexMap:Ljava/util/HashMap;

    const-string v2, "tab_voicemail"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTagIndexMap:Ljava/util/HashMap;

    const-string v2, "tab_all_message"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getAcitivityInetent(I)Landroid/content/Intent;

    move-result-object v7

    .line 168
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_1

    .line 169
    const-string v1, "tab_all_message"

    const v3, 0x7f09010c

    const v4, 0x7f0200fc

    const v5, 0x7f0200fb

    const v6, 0x7f020104

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTagIndexMap:Ljava/util/HashMap;

    const-string v2, "tab_conversation"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getAcitivityInetent(I)Landroid/content/Intent;

    move-result-object v7

    .line 192
    if-eqz v7, :cond_2

    .line 193
    const-string v1, "tab_conversation"

    const v3, 0x7f090106

    const v4, 0x7f0200fe

    const v5, 0x7f0200fd

    const v6, 0x7f020105

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTagIndexMap:Ljava/util/HashMap;

    const-string v2, "tab_voicemail"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getAcitivityInetent(I)Landroid/content/Intent;

    move-result-object v7

    .line 216
    if-eqz v7, :cond_3

    .line 217
    const-string v1, "tab_voicemail"

    const v3, 0x7f09023c

    const v4, 0x7f020100

    const v5, 0x7f0200ff

    const v6, 0x7f020106

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 238
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 381
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 385
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 390
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageTabSwitchActivity;->setGId(I)V

    .line 391
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 392
    const-string v0, "MessageTabSwitchActivity"

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageTabSwitchActivity;->requestWindowFeature(I)Z

    .line 394
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mAppContext:Landroid/content/Context;

    .line 395
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->initTab()V

    .line 398
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 401
    sput-object p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->TabActivity:Lcom/android/mms/ui/MessageTabSwitchActivity;

    .line 403
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 408
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 454
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onDestroy()V

    .line 455
    const-string v0, "MessageTabSwitchActivity"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessageTabSwitchActivity;->TabActivity:Lcom/android/mms/ui/MessageTabSwitchActivity;

    .line 457
    iget-object v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 458
    iget-object v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mBgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;

    invoke-virtual {v0, v2}, Lcom/android/mms/util/MmsAsyncWorkHandler;->removeMessages(I)V

    .line 459
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 461
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 429
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onPause()V

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mIsForeground:Z

    .line 432
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 418
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onResume()V

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mIsForeground:Z

    .line 421
    const-string v0, "MessageTabSwitchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCountDirty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mCountDirty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mCountDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->postQueryRefreshUnreadCounts()V

    .line 425
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 412
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onStart()V

    .line 414
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 436
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onStop()V

    .line 439
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessagingController;->updateVvmShortcut(Landroid/content/Context;IZ)V

    .line 450
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessagingController;->updateAllShhortcuts(Landroid/content/Context;IZ)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .parameter "hasFocus"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0xf

    .line 127
    const-string v0, "MessageTabSwitchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-eqz p1, :cond_0

    .line 129
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const/16 v0, 0x321

    invoke-virtual {p0, v0, v4, v5, v3}, Lcom/android/mms/ui/MessageTabSwitchActivity;->removeNotification(IJI)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const/16 v0, 0x7b

    invoke-virtual {p0, v0, v4, v5, v3}, Lcom/android/mms/ui/MessageTabSwitchActivity;->removeNotification(IJI)V

    goto :goto_0
.end method

.method protected postQueryRefreshUnreadCounts()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mBgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;

    invoke-virtual {v0, v2}, Lcom/android/mms/util/MmsAsyncWorkHandler;->removeMessages(I)V

    .line 375
    iget-object v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mBgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mBgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;

    invoke-virtual {v1, v2}, Lcom/android/mms/util/MmsAsyncWorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 376
    return-void
.end method

.method protected postRefreshAllMessageUnreadCounts()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/MessageTabSwitchActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageTabSwitchActivity$1;-><init>(Lcom/android/mms/ui/MessageTabSwitchActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    return-void
.end method

.method public removeNotification(IJI)V
    .locals 4
    .parameter "id"
    .parameter "millis"
    .parameter "what"

    .prologue
    .line 141
    const-string v1, "MessageTabSwitchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delay> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-wide/16 v1, -0x3

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity$Utils;->updateCurrentThreadID(J)J

    .line 143
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mBgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;

    if-eqz v1, :cond_0

    .line 144
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 145
    .local v0, msg:Landroid/os/Message;
    iput p4, v0, Landroid/os/Message;->what:I

    .line 146
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 147
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mBgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 151
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNormalNotification(Landroid/content/Context;I)Z

    goto :goto_0
.end method

.method protected setCurrentTab(I)V
    .locals 2
    .parameter "tabIndex"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method protected setCurrentTab(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 266
    const-string v1, "tab"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, tag:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "tab_all_message"

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method protected setCurrentTabByTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/htc/widget/CarouselActivity;->setDefaultTab(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method protected updateCountText(I)V
    .locals 5
    .parameter "tabIndex"

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v2, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTabUnreadCounts:[I

    aget v0, v2, p1

    .line 287
    .local v0, count:I
    if-lez v0, :cond_2

    .line 288
    const/16 v2, 0x63

    if-le v0, v2, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "99+"

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/CarouselHost;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 293
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v3

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    .line 299
    :goto_1
    return-void

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/CarouselHost;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/CarouselHost;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected updateCountTexts()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 321
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 322
    iget-object v2, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTabUnreadCounts:[I

    aget v0, v2, v1

    .line 323
    .local v0, count:I
    if-lez v0, :cond_2

    .line 324
    const/16 v2, 0x63

    if-le v0, v2, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "99+"

    invoke-virtual {v2, v4, v5}, Lcom/htc/widget/CarouselHost;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 329
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v5

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4, v5, v2}, Lcom/htc/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    .line 321
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/widget/CarouselHost;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    move v2, v3

    .line 329
    goto :goto_2

    .line 331
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/widget/CarouselHost;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/htc/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    goto :goto_3

    .line 335
    .end local v0           #count:I
    :cond_3
    return-void
.end method

.method protected updateCountTexts(Z)V
    .locals 6
    .parameter "disable"

    .prologue
    const/4 v3, 0x0

    .line 302
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    .line 303
    iget-object v2, p0, Lcom/android/mms/ui/MessageTabSwitchActivity;->mTabUnreadCounts:[I

    aget v0, v2, v1

    .line 304
    .local v0, count:I
    if-lez v0, :cond_3

    .line 305
    const/16 v2, 0x63

    if-le v0, v2, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "99+"

    invoke-virtual {v2, v4, v5}, Lcom/htc/widget/CarouselHost;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 310
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v5

    if-lez v0, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4, v5, v2}, Lcom/htc/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    .line 302
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/widget/CarouselHost;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move v2, v3

    .line 310
    goto :goto_2

    .line 312
    :cond_3
    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/htc/widget/CarouselHost;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getTagByIndex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/htc/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    goto :goto_3

    .line 318
    .end local v0           #count:I
    :cond_4
    return-void
.end method

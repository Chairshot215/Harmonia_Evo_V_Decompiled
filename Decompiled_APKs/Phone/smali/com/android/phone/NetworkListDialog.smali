.class public Lcom/android/phone/NetworkListDialog;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "NetworkListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final DBG:Z = false

.field private static final DIALOG_NETWORK_SELECTION:I = 0x64

.field private static final EVENT_NETWORK_SELECTION_COMPLETE:I = 0x1

.field private static final EVENT_NETWORK_SELECTION_STATE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkListDialog"

.field private static final MANUAL_LIST_NETWORKS_KEY:Ljava/lang/String; = "manual_list_networks_key"

.field public static final sIusacellShowNemericOpList:Ljava/util/ArrayList;

.field public static final sTelcelShowNemericOpList:Ljava/util/ArrayList;


# instance fields
.field isCancel:Z

.field isSetManualError:Z

.field private mCid:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerProxy:Landroid/os/Handler;

.field private mHtcContext:Landroid/content/Context;

.field private mIsActEnabled:Z

.field private mLocale:Ljava/util/Locale;

.field private mNetworkList:Lcom/htc/preference/HtcPreferenceCategory;

.field private mNetworkMapList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkSelectMsg:Ljava/lang/String;

.field private mOperatorStringLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mQMIHandler:Landroid/os/Handler;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSimNumeric:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/phone/ManualSelectNetwork;->sIusacellShowNemericOpList:Ljava/util/ArrayList;

    sput-object v0, Lcom/android/phone/NetworkListDialog;->sIusacellShowNemericOpList:Ljava/util/ArrayList;

    .line 112
    sget-object v0, Lcom/android/phone/ManualSelectNetwork;->sTelcelShowNemericOpList:Ljava/util/ArrayList;

    sput-object v0, Lcom/android/phone/NetworkListDialog;->sTelcelShowNemericOpList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NetworkListDialog;->mHandlerProxy:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/android/phone/NetworkListDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkListDialog$1;-><init>(Lcom/android/phone/NetworkListDialog;)V

    iput-object v0, p0, Lcom/android/phone/NetworkListDialog;->mHandler:Landroid/os/Handler;

    .line 157
    new-instance v0, Lcom/android/phone/NetworkListDialog$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkListDialog$2;-><init>(Lcom/android/phone/NetworkListDialog;)V

    iput-object v0, p0, Lcom/android/phone/NetworkListDialog;->mQMIHandler:Landroid/os/Handler;

    .line 567
    new-instance v0, Lcom/android/phone/NetworkListDialog$4;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkListDialog$4;-><init>(Lcom/android/phone/NetworkListDialog;)V

    iput-object v0, p0, Lcom/android/phone/NetworkListDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkListDialog;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkListDialog;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkListDialog;Ljava/lang/Throwable;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkListDialog;->isCommandExceptionGenericFailure(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkListDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/NetworkListDialog;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkListDialog;Landroid/telephony/ServiceState;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkListDialog;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v0

    return v0
.end method

.method private clearList()V
    .locals 3

    .prologue
    .line 560
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog;->mNetworkMapList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreference;

    .line 561
    .local v1, p:Lcom/htc/preference/HtcPreference;
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog;->mNetworkList:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 563
    .end local v1           #p:Lcom/htc/preference/HtcPreference;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/NetworkListDialog;->mNetworkMapList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 564
    return-void
.end method

.method private convertOperatorName(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 4
    .parameter "ni"

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/phone/NetworkListDialog;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/NetworkListDialog;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 287
    iget-object v1, p0, Lcom/android/phone/NetworkListDialog;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    .local v0, opName:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_0
    return-object v0

    .line 290
    .end local v0           #opName:Ljava/lang/String;
    :cond_1
    const-string v1, "50506"

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    const-string v0, "3Telstra"

    .restart local v0       #opName:Ljava/lang/String;
    goto :goto_0

    .line 294
    .end local v0           #opName:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #opName:Ljava/lang/String;
    goto :goto_0
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/phone/NetworkListDialog;->mNetworkList:Lcom/htc/preference/HtcPreferenceCategory;

    if-eqz p1, :cond_0

    const v0, 0x7f0e02ca

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 456
    return-void

    .line 455
    :cond_0
    const v0, 0x7f0e02c8

    goto :goto_0
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "ex"

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/android/phone/NetworkListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/android/phone/NetworkListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e04ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 540
    :cond_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 542
    return-void
.end method

.method private displayNetworkSelectionSucceeded()V
    .locals 5

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/android/phone/NetworkListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 551
    iget-object v1, p0, Lcom/android/phone/NetworkListDialog;->mHandlerProxy:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/NetworkListDialog$3;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkListDialog$3;-><init>(Lcom/android/phone/NetworkListDialog;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 557
    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 4
    .parameter "networkStr"

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/phone/NetworkListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e02cd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkListDialog;->mNetworkSelectMsg:Ljava/lang/String;

    .line 532
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkListDialog;->showDialog(I)V

    .line 533
    return-void
.end method

.method private hasService(Landroid/telephony/ServiceState;)Z
    .locals 2
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 577
    if-eqz p1, :cond_0

    .line 578
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 585
    const/4 v0, 0x1

    .line 588
    :cond_0
    :pswitch_0
    return v0

    .line 578
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isCommandExceptionGenericFailure(Ljava/lang/Throwable;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 210
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 594
    const-string v0, "NetworkListDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void
.end method

.method private retrieveOperatorNameList()V
    .locals 6

    .prologue
    .line 253
    iget-object v3, p0, Lcom/android/phone/NetworkListDialog;->mHtcContext:Landroid/content/Context;

    if-eqz v3, :cond_5

    .line 254
    iget-object v3, p0, Lcom/android/phone/NetworkListDialog;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/phone/NetworkListDialog;->mLocale:Ljava/util/Locale;

    .line 255
    iget-object v3, p0, Lcom/android/phone/NetworkListDialog;->mLocale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NetworkListDialog;->mLocale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NetworkListDialog;->mLocale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/android/phone/NetworkListDialog;->mOperatorStringLists:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 259
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/phone/NetworkListDialog;->mOperatorStringLists:Ljava/util/HashMap;

    .line 261
    :cond_1
    iget-object v3, p0, Lcom/android/phone/NetworkListDialog;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x207000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, opStr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 263
    aget-object v3, v1, v0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, strArray:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 265
    iget-object v3, p0, Lcom/android/phone/NetworkListDialog;->mOperatorStringLists:Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v0           #i:I
    .end local v1           #opStr:[Ljava/lang/String;
    .end local v2           #strArray:[Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/NetworkListDialog;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v3, :cond_4

    .line 271
    iget-object v3, p0, Lcom/android/phone/NetworkListDialog;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 272
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/NetworkListDialog;->mOperatorStringLists:Ljava/util/HashMap;

    .line 282
    :cond_4
    :goto_1
    return-void

    .line 276
    :cond_5
    iget-object v3, p0, Lcom/android/phone/NetworkListDialog;->mHtcContext:Landroid/content/Context;

    if-nez v3, :cond_6

    .line 277
    const-string v3, "NetworkListDialog"

    const-string v4, "No HTC Context was loaded!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 279
    :cond_6
    const-string v3, "NetworkListDialog"

    const-string v4, "Leave as what it was!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/phone/NetworkListDialog;->finish()V

    .line 251
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 309
    const v9, 0x7f050021

    invoke-virtual {p0, v9}, Lcom/android/phone/NetworkListDialog;->addPreferencesFromResource(I)V

    .line 311
    const-string v9, "ro.cid"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, cid:Ljava/lang/String;
    const-string v9, "0"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ro.ril.oem.show.act."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "0"

    const-string v10, "ro.ril.oem.show.act"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/phone/NetworkListDialog;->mIsActEnabled:Z

    .line 314
    iput-object v2, p0, Lcom/android/phone/NetworkListDialog;->mCid:Ljava/lang/String;

    .line 317
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v9, p0, Lcom/android/phone/NetworkListDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 322
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->needregisterForManualState()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/phone/NetworkListDialog;->mQMIHandler:Landroid/os/Handler;

    :goto_1
    iput-object v9, p0, Lcom/android/phone/NetworkListDialog;->mHandlerProxy:Landroid/os/Handler;

    .line 325
    :try_start_0
    iget-object v9, p0, Lcom/android/phone/NetworkListDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/NetworkListDialog;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/NetworkListDialog;->retrieveOperatorNameList()V

    .line 331
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/phone/NetworkListDialog;->mNetworkMapList:Ljava/util/HashMap;

    .line 332
    invoke-virtual {p0}, Lcom/android/phone/NetworkListDialog;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    const-string v10, "manual_list_networks_key"

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v9, p0, Lcom/android/phone/NetworkListDialog;->mNetworkList:Lcom/htc/preference/HtcPreferenceCategory;

    .line 334
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 336
    .local v0, app:Lcom/android/phone/PhoneApp;
    const-string v9, "gsm.sim.operator.numeric"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/NetworkListDialog;->mSimNumeric:Ljava/lang/String;

    .line 338
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getOperatorInfo()Ljava/util/List;

    move-result-object v6

    .line 339
    .local v6, netInfo:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    if-eqz v6, :cond_12

    .line 340
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/phone/NetworkListDialog;->displayEmptyNetworkList(Z)V

    .line 341
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/OperatorInfo;

    .line 342
    .local v7, ni:Lcom/android/internal/telephony/OperatorInfo;
    new-instance v1, Lcom/htc/preference/HtcPreference;

    const/4 v9, 0x0

    invoke-direct {v1, p0, v9}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 347
    .local v1, carrier:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v8

    .line 350
    .local v8, opName:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/phone/NetworkListDialog;->mIsActEnabled:Z

    if-eqz v9, :cond_c

    .line 356
    const-string v9, "334050"

    iget-object v10, p0, Lcom/android/phone/NetworkListDialog;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 357
    sget-object v9, Lcom/android/phone/NetworkListDialog;->sIusacellShowNemericOpList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 358
    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 360
    :cond_1
    iget-object v9, p0, Lcom/android/phone/NetworkListDialog;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 361
    const-string v9, "2"

    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 362
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " NextG"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 418
    :goto_4
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 419
    iget-object v9, p0, Lcom/android/phone/NetworkListDialog;->mNetworkList:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v9, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 420
    iget-object v9, p0, Lcom/android/phone/NetworkListDialog;->mNetworkMapList:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 312
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #carrier:Lcom/htc/preference/HtcPreference;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #netInfo:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    .end local v7           #ni:Lcom/android/internal/telephony/OperatorInfo;
    .end local v8           #opName:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 322
    :cond_3
    iget-object v9, p0, Lcom/android/phone/NetworkListDialog;->mHandler:Landroid/os/Handler;

    goto/16 :goto_1

    .line 326
    :catch_0
    move-exception v3

    .line 327
    .local v3, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/NetworkListDialog;->mHtcContext:Landroid/content/Context;

    goto/16 :goto_2

    .line 364
    .end local v3           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #carrier:Lcom/htc/preference/HtcPreference;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #netInfo:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    .restart local v7       #ni:Lcom/android/internal/telephony/OperatorInfo;
    .restart local v8       #opName:Ljava/lang/String;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " GSM"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 367
    :cond_5
    const-string v9, "2"

    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 368
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (3G)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 370
    :cond_6
    invoke-virtual {v1, v8}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 373
    :cond_7
    const-string v9, "334020"

    iget-object v10, p0, Lcom/android/phone/NetworkListDialog;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 374
    sget-object v9, Lcom/android/phone/NetworkListDialog;->sTelcelShowNemericOpList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 375
    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 378
    :cond_8
    const-string v9, "2"

    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 379
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (3G)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 381
    :cond_9
    invoke-virtual {v1, v8}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 384
    :cond_a
    const-string v9, "2"

    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 385
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (3G)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 387
    :cond_b
    invoke-virtual {v1, v8}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 393
    :cond_c
    invoke-direct {p0, v7}, Lcom/android/phone/NetworkListDialog;->convertOperatorName(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v5

    .line 394
    .local v5, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->STE_CONFIG()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 395
    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 396
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 397
    :cond_d
    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 398
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 414
    :cond_e
    :goto_5
    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 400
    :cond_f
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v10, 0x2

    if-ne v9, v10, :cond_e

    .line 402
    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 403
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 405
    :cond_10
    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 406
    const-string v9, "2"

    invoke-virtual {v7}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 407
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (3G)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 409
    :cond_11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (GSM)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 423
    .end local v1           #carrier:Lcom/htc/preference/HtcPreference;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #ni:Lcom/android/internal/telephony/OperatorInfo;
    .end local v8           #opName:Ljava/lang/String;
    :cond_12
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/phone/NetworkListDialog;->displayEmptyNetworkList(Z)V

    .line 425
    :cond_13
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/NetworkListDialog;->isSetManualError:Z

    .line 426
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/phone/NetworkListDialog;->isCancel:Z

    .line 434
    invoke-virtual {p0}, Lcom/android/phone/NetworkListDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/phone/NetworkListDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 438
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 509
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 512
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 514
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v1, p0, Lcom/android/phone/NetworkListDialog;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 515
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 516
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 519
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 478
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 480
    invoke-virtual {p0}, Lcom/android/phone/NetworkListDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/NetworkListDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 484
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, handled:Z
    move-object v3, p2

    .line 220
    .local v3, selectedCarrier:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, networkStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->needregisterForManualState()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v5

    .line 228
    .local v1, msg:Landroid/os/Message;
    :goto_0
    iget-object v6, p0, Lcom/android/phone/NetworkListDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/NetworkListDialog;->mNetworkMapList:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/OperatorInfo;

    invoke-interface {v6, v4, v1}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 231
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->needregisterForManualState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    iget-object v4, p0, Lcom/android/phone/NetworkListDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/NetworkListDialog;->mHandlerProxy:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-interface {v4, v6, v7, v5}, Lcom/android/internal/telephony/Phone;->registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 236
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/phone/NetworkListDialog;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x1

    .line 240
    sget-boolean v4, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v4, :cond_1

    .line 241
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->clearSDRNotfication()V

    .line 245
    :cond_1
    return v0

    .line 226
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    iget-object v4, p0, Lcom/android/phone/NetworkListDialog;->mHandlerProxy:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 524
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/android/phone/NetworkListDialog;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 527
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 444
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 447
    invoke-virtual {p0}, Lcom/android/phone/NetworkListDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkListDialog;->mResolver:Landroid/content/ContentResolver;

    .line 448
    iget-object v0, p0, Lcom/android/phone/NetworkListDialog;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "network_selection"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 450
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 490
    iget-object v1, p0, Lcom/android/phone/NetworkListDialog;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "network_selection"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 492
    iget-boolean v1, p0, Lcom/android/phone/NetworkListDialog;->isSetManualError:Z

    if-eqz v1, :cond_1

    .line 494
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 495
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->delayTime(I)V

    .line 502
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 503
    return-void

    .line 496
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/NetworkListDialog;->isCancel:Z

    if-eqz v1, :cond_0

    .line 499
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 500
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->delayTime(I)V

    goto :goto_0
.end method

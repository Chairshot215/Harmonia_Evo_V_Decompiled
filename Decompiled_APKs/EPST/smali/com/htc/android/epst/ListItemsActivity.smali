.class public Lcom/htc/android/epst/ListItemsActivity;
.super Landroid/app/ListActivity;
.source "ListItemsActivity.java"

# interfaces
.implements Lcom/htc/android/epst/CommitChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;,
        Lcom/htc/android/epst/ListItemsActivity$ValidationTask;,
        Lcom/htc/android/epst/ListItemsActivity$AgentHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DIALOG_AUTH_PROGRESS:I = 0xc

.field private static final DIALOG_COMMIT_PROGRESS:I = 0x2

.field public static final DIALOG_EDITING_FILE_SETTING:I = 0x5

.field public static final DIALOG_EDITING_IP_ADDRESS_SETTING:I = 0x7

.field public static final DIALOG_EDITING_NULL_SETTING:I = 0x6

.field public static final DIALOG_EDITING_OPTION_SETTING:I = 0x4

.field public static final DIALOG_EDITING_SID_NID_SETTING:I = 0x8

.field public static final DIALOG_EDITING_STRING_SETTING:I = 0x3

.field private static final DIALOG_NONE:I = 0x0

.field private static final DIALOG_PASSWORD:I = 0xb

.field private static final DIALOG_PROGRESS:I = 0x1

.field private static final DIALOG_PROMPT_REBOOT:I = 0x9

.field private static final DIALOG_RESET_CANCEL:I = 0xa

.field private static final EVENT_CLEAR_COMMAND:I = 0x7

.field private static final EVENT_COMMIT_CHANGE:I = 0x2

.field private static final EVENT_DESTORY_WIMAXCONTRILLER:I = 0x1

.field private static final EVENT_GET_DATA:I = 0x0

.field private static final EVENT_REFURBISH_COMMAND:I = 0x4

.field private static final EVENT_RTN_COMMAND:I = 0x3

.field private static final EVENT_SCRTN_COMMAND:I = 0x5

.field private static final EVENT_USERDATA_COMMAND:I = 0x6

.field public static final IP_ADDRESS_SEPARATOR:Ljava/lang/String; = "\\."

.field private static final LOG_TAG:Ljava/lang/String; = "ListItemsActivity"

.field private static final MAX_PROGRESS:I = 0x64

.field public static final SID_NID_SEPARATOR:Ljava/lang/String; = "/"

.field private static final VIEW_MAP_KEY:Ljava/lang/String; = "ITEM"

.field public static bLaunchActivity:Z

.field public static mListItemsActivity:Lcom/htc/android/epst/ListItemsActivity;

.field private static mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private static mUnlockRetry:I

.field private static sEditingItem:Lcom/htc/android/epst/SettingItem;

.field private static sModifiedValue:Ljava/lang/String;

.field private static sProgress:I

.field private static sProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private static sTimer:Ljava/util/Timer;

.field private static sUpdatedItemCount:I


# instance fields
.field private DBG:Z

.field public LBSPDELOCK:Z

.field private final REFURBISHMENT_STATUS:I

.field private bRenewItems:Z

.field public bmEncodeShareSecret:Z

.field mAgentHandler:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

.field mHandler:Landroid/os/Handler;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMode:I

.field private mPassword:Ljava/lang/String;

.field private mRebootDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mResetCancelDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mResultReceiver:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mSettingGroup:Lcom/htc/android/epst/SettingGroup;

.field mThread:Landroid/os/HandlerThread;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

.field private rebootSecondCount:I

.field private targetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    const-class v0, Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/android/epst/ListItemsActivity;->$assertionsDisabled:Z

    .line 141
    sput v1, Lcom/htc/android/epst/ListItemsActivity;->sProgress:I

    .line 143
    sput v1, Lcom/htc/android/epst/ListItemsActivity;->sUpdatedItemCount:I

    .line 145
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->freezeNum()I

    move-result v0

    sput v0, Lcom/htc/android/epst/ListItemsActivity;->mUnlockRetry:I

    .line 147
    sput-object v2, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    .line 153
    sput-boolean v1, Lcom/htc/android/epst/ListItemsActivity;->bLaunchActivity:Z

    .line 154
    sput-object v2, Lcom/htc/android/epst/ListItemsActivity;->mListItemsActivity:Lcom/htc/android/epst/ListItemsActivity;

    return-void

    :cond_0
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mPassword:Ljava/lang/String;

    .line 118
    iput v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mMode:I

    .line 120
    new-instance v0, Lcom/htc/android/epst/CdmaSettingUpdater;

    invoke-direct {v0}, Lcom/htc/android/epst/CdmaSettingUpdater;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 124
    iput-object v4, p0, Lcom/htc/android/epst/ListItemsActivity;->mResetCancelDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 126
    iput-object v4, p0, Lcom/htc/android/epst/ListItemsActivity;->mRebootDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 130
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    .line 131
    iput-boolean v2, p0, Lcom/htc/android/epst/ListItemsActivity;->bRenewItems:Z

    .line 134
    sget v0, Lcom/htc/android/epst/EPST;->mRebootTime:I

    iput v0, p0, Lcom/htc/android/epst/ListItemsActivity;->rebootSecondCount:I

    .line 151
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/epst/ListItemsActivity;->bmEncodeShareSecret:Z

    .line 152
    iput-boolean v1, p0, Lcom/htc/android/epst/ListItemsActivity;->LBSPDELOCK:Z

    .line 156
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ListItemsActivity"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mThread:Landroid/os/HandlerThread;

    .line 522
    iput v2, p0, Lcom/htc/android/epst/ListItemsActivity;->REFURBISHMENT_STATUS:I

    .line 1052
    new-instance v0, Lcom/htc/android/epst/ListItemsActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/ListItemsActivity$5;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    iput-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mHandler:Landroid/os/Handler;

    .line 1424
    iput-object v4, p0, Lcom/htc/android/epst/ListItemsActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1425
    iput-object v4, p0, Lcom/htc/android/epst/ListItemsActivity;->mResultReceiver:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    .line 1432
    return-void

    :cond_0
    move v0, v2

    .line 151
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/android/epst/ListItemsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/htc/android/epst/ListItemsActivity;->sUpdatedItemCount:I

    return v0
.end method

.method static synthetic access$1004()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/htc/android/epst/ListItemsActivity;->sUpdatedItemCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/android/epst/ListItemsActivity;->sUpdatedItemCount:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    sput p0, Lcom/htc/android/epst/ListItemsActivity;->sProgress:I

    return p0
.end method

.method static synthetic access$1112(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    sget v0, Lcom/htc/android/epst/ListItemsActivity;->sProgress:I

    add-int/2addr v0, p0

    sput v0, Lcom/htc/android/epst/ListItemsActivity;->sProgress:I

    return v0
.end method

.method static synthetic access$1200()Lcom/htc/app/HtcProgressDialog;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/epst/ListItemsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/android/epst/ListItemsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/android/epst/ListItemsActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/android/epst/ListItemsActivity;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/android/epst/ListItemsActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->targetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mResultReceiver:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    sput-object p0, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/htc/android/epst/ListItemsActivity;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/epst/ListItemsActivity;->modifySidNid(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/epst/ListItemsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->getData()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/android/epst/ListItemsActivity;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/epst/ListItemsActivity;->modifyIPAddress(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/epst/ListItemsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/htc/android/epst/ListItemsActivity;->bRenewItems:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/android/epst/ListItemsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/htc/android/epst/ListItemsActivity;->bRenewItems:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/android/epst/ListItemsActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->getViewMap()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/epst/ListItemsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mMode:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/android/epst/ListItemsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->showProgress()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingValueUpdater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    return-object v0
.end method

.method static synthetic access$800()Lcom/htc/android/epst/SettingItem;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/epst/ListItemsActivity;Lcom/htc/android/epst/SettingItem;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/android/epst/ListItemsActivity;->getDialogId(Lcom/htc/android/epst/SettingItem;)I

    move-result v0

    return v0
.end method

.method private filterOutItems()V
    .locals 11

    .prologue
    const v10, 0x7f0401b8

    const v9, 0x7f0401b7

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 432
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_19

    .line 433
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/SettingItem;

    .line 435
    .local v1, item:Lcom/htc/android/epst/SettingItem;
    iget-boolean v3, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "ListItemsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/epst/ListItemsActivity;->mMode:I

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getMode()I

    move-result v6

    and-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    iget v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mMode:I

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getMode()I

    move-result v4

    and-int/2addr v3, v4

    iget v4, p0, Lcom/htc/android/epst/ListItemsActivity;->mMode:I

    if-eq v3, v4, :cond_3

    .line 437
    iget-boolean v3, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "ListItemsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/epst/ListItemsActivity;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nValid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/epst/ListItemsActivity;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_1
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 439
    add-int/lit8 v0, v0, -0x1

    .line 432
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_3
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v3

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getOperatorID()I

    move-result v4

    and-int/2addr v3, v4

    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 441
    iget-boolean v3, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "ListItemsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->operatorID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_4
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 444
    :cond_5
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v3

    const-string v4, "epst_clear"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 445
    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v9}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v7, :cond_6

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v10}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v7, :cond_2

    .line 447
    :cond_6
    sget-boolean v3, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_WIMAX_INFO_ENTRY:Z

    if-nez v3, :cond_2

    .line 448
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 449
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 452
    :cond_7
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v3

    const-string v4, "g_06_modem_settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v3

    const-string v4, "d_data_evdo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 455
    :cond_8
    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f04016a

    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/htc/android/epst/HtcFeatureList;->IS_WORLD_PHONE:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 457
    invoke-virtual {v1, v8}, Lcom/htc/android/epst/SettingItem;->setEditable(Z)V

    goto/16 :goto_1

    .line 459
    :cond_9
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v3

    const-string v4, "g_01_display"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 460
    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0400bb

    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    iget-boolean v3, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v3, :cond_a

    const-string v3, "ListItemsActivity"

    const-string v4, "display check refurbishment status"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_a
    invoke-direct {p0, v8}, Lcom/htc/android/epst/ListItemsActivity;->getPreNVItem(I)Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, nResult:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    :cond_b
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 465
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 468
    .end local v2           #nResult:Ljava/lang/String;
    :cond_c
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v3

    const-string v4, "epst_rtn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 469
    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v9}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v7, :cond_d

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v10}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v7, :cond_e

    .line 471
    :cond_d
    sget-boolean v3, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_WIMAX_INFO_ENTRY:Z

    if-nez v3, :cond_2

    .line 472
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 473
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 475
    :cond_e
    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0400bd

    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    iget-boolean v3, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v3, :cond_f

    const-string v3, "ListItemsActivity"

    const-string v4, "RTN check refurbishment status"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_f
    invoke-direct {p0, v8}, Lcom/htc/android/epst/ListItemsActivity;->getPreNVItem(I)Ljava/lang/String;

    move-result-object v2

    .line 478
    .restart local v2       #nResult:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 479
    :cond_10
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 480
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 483
    .end local v2           #nResult:Ljava/lang/String;
    :cond_11
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v3

    const-string v4, "p_data_nam_general"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v3

    const-string v4, "g_03_nam_settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v3

    const-string v4, "epst_msl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v3

    const-string v4, "epst_otksl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 487
    :cond_12
    sget-boolean v3, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_MDN_READ_ONLY:Z

    if-ne v3, v7, :cond_14

    .line 488
    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f04013a

    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0400f8

    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0401b6

    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_13
    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 492
    invoke-virtual {v1, v8}, Lcom/htc/android/epst/SettingItem;->setEditable(Z)V

    goto/16 :goto_1

    .line 494
    :cond_14
    sget-boolean v3, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_METEROPCS_ONLY:Z

    if-nez v3, :cond_2

    .line 495
    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0401de

    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v7, :cond_2

    .line 496
    const-string v3, "ListItemsActivity"

    const-string v4, "remove SID"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 498
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 502
    :cond_15
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v3

    const-string v4, "d_data_advanced"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 503
    sget-boolean v3, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_METEROPCS_ONLY:Z

    if-nez v3, :cond_16

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0401d3

    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 504
    const-string v3, "ListItemsActivity"

    const-string v4, "remove Proxy/Gateway"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v0, v0, -0x1

    .line 508
    :cond_16
    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0401d2

    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v7, :cond_17

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0401cb

    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v7, :cond_2

    :cond_17
    sget-boolean v3, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_MODSUPPORT_BOOST:Z

    if-eq v3, v7, :cond_2

    .line 510
    iget-boolean v3, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v3, :cond_18

    const-string v3, "ListItemsActivity"

    const-string v4, "remove RTSP/HTTP & MMS Server URL Setting"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_18
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 512
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 516
    .end local v1           #item:Lcom/htc/android/epst/SettingItem;
    :cond_19
    return-void
.end method

.method private getData()V
    .locals 11

    .prologue
    .line 394
    iget-object v8, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v8}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 396
    :try_start_0
    const-class v7, Lcom/htc/android/epst/R$xml;

    .line 397
    .local v7, stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 398
    .local v1, fIDs:[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v1

    if-ge v3, v8, :cond_2

    .line 399
    aget-object v2, v1, v3

    .line 400
    .local v2, fld:Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 402
    .local v5, nID:I
    iget-boolean v8, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "ListItemsActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v9}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 404
    iget-boolean v8, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, "ListItemsActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getData>fld.getName():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v10}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 406
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, v6}, Lcom/htc/android/epst/ListItemsActivity;->getSettingGroupInfo(Landroid/content/res/XmlResourceParser;)V

    .line 407
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v1           #fIDs:[Ljava/lang/reflect/Field;
    .end local v2           #fld:Ljava/lang/reflect/Field;
    .end local v3           #i:I
    .end local v5           #nID:I
    .end local v6           #parser:Landroid/content/res/XmlResourceParser;
    .end local v7           #stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    iget-object v8, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v8}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 416
    iget-object v8, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v8}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/epst/SettingItem;

    .line 417
    .local v4, item:Lcom/htc/android/epst/SettingItem;
    iget-object v8, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v8}, Lcom/htc/android/epst/SettingGroup;->getItemBeginId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v4, v8}, Lcom/htc/android/epst/SettingItem;->setId(I)V

    .line 415
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 398
    .end local v4           #item:Lcom/htc/android/epst/SettingItem;
    .restart local v1       #fIDs:[Ljava/lang/reflect/Field;
    .restart local v2       #fld:Ljava/lang/reflect/Field;
    .restart local v5       #nID:I
    .restart local v7       #stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 411
    .end local v1           #fIDs:[Ljava/lang/reflect/Field;
    .end local v2           #fld:Ljava/lang/reflect/Field;
    .end local v3           #i:I
    .end local v5           #nID:I
    .end local v7           #stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 413
    const-string v8, "ListItemsActivity"

    const-string v9, "getData() error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #i:I
    :cond_4
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->filterOutItems()V

    .line 422
    const/4 v3, 0x0

    :goto_3
    iget-object v8, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v8}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 423
    iget-object v8, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v8}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/epst/SettingItem;

    .line 424
    .restart local v4       #item:Lcom/htc/android/epst/SettingItem;
    iget-object v8, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v8}, Lcom/htc/android/epst/SettingGroup;->getItemBeginId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v4, v8}, Lcom/htc/android/epst/SettingItem;->setId(I)V

    .line 422
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 428
    .end local v4           #item:Lcom/htc/android/epst/SettingItem;
    :cond_5
    return-void
.end method

.method private getDialogId(Lcom/htc/android/epst/SettingItem;)I
    .locals 3
    .parameter "item"

    .prologue
    .line 760
    const/4 v0, 0x0

    .line 762
    .local v0, ret:I
    if-eqz p1, :cond_0

    .line 765
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/epst/translator/Translator;->getTypedInfo()Ljava/util/List;

    move-result-object v1

    .line 767
    .local v1, typeInfo:Ljava/util/List;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 770
    .end local v1           #typeInfo:Ljava/util/List;
    :cond_0
    return v0
.end method

.method private getItemById(I)Lcom/htc/android/epst/SettingItem;
    .locals 2
    .parameter "id"

    .prologue
    .line 1118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1119
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1120
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/SettingItem;

    .line 1123
    :goto_1
    return-object v1

    .line 1118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1123
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getLastSettingItem()Lcom/htc/android/epst/SettingItem;
    .locals 3

    .prologue
    .line 868
    iget-object v2, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v2}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v0

    .line 869
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/epst/SettingItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 870
    .local v1, lastIndex:I
    if-ltz v1, :cond_0

    .line 871
    iget-object v2, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v2}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/SettingItem;

    .line 874
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPreNVItem(I)Ljava/lang/String;
    .locals 8
    .parameter "iCommandType"

    .prologue
    .line 524
    const-string v1, "C8F8030000"

    .line 525
    .local v1, nRefurbishStatus:Ljava/lang/String;
    const-string v0, ""

    .line 526
    .local v0, nCommand:Ljava/lang/String;
    const-string v2, ""

    .line 527
    .local v2, nResult:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->isSupportDMAgent()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 529
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->isDMConnectSuccess()Z

    move-result v5

    if-nez v5, :cond_0

    .line 530
    const-string v5, "ListItemsActivity"

    const-string v6, "DMAgent hasn\'t connected yet!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 561
    .end local v2           #nResult:Ljava/lang/String;
    .local v3, nResult:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 533
    .end local v3           #nResult:Ljava/lang/String;
    .restart local v2       #nResult:Ljava/lang/String;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 538
    const-string v5, "ListItemsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No this command type (1)!!["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_1
    invoke-static {v1}, Lcom/htc/android/epst/EntryEPSTInfo;->DMSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 542
    iget-boolean v5, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "ListItemsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nResult:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_1
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/android/epst/internal/DataObject;->validateStateOfNv(Ljava/lang/String;)I

    move-result v4

    .line 545
    .local v4, nStatus:I
    if-nez v4, :cond_4

    .line 546
    packed-switch p1, :pswitch_data_1

    .line 551
    const-string v5, "ListItemsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No this command type (2)!!["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v2, ""

    .line 560
    .end local v4           #nStatus:I
    :cond_2
    :goto_2
    iget-boolean v5, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "ListItemsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return nResult:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v3, v2

    .line 561
    .end local v2           #nResult:Ljava/lang/String;
    .restart local v3       #nResult:Ljava/lang/String;
    goto/16 :goto_0

    .line 535
    .end local v3           #nResult:Ljava/lang/String;
    .restart local v2       #nResult:Ljava/lang/String;
    :pswitch_0
    move-object v0, v1

    .line 536
    goto :goto_1

    .line 548
    .restart local v4       #nStatus:I
    :pswitch_1
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v5

    const/16 v6, 0x8

    const/16 v7, 0xa

    invoke-virtual {v5, v2, v6, v7}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 549
    goto :goto_2

    .line 556
    :cond_4
    const-string v2, ""

    .line 557
    const-string v5, "ListItemsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nResult is not available:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 546
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private getSettingGroupInfo(Landroid/content/res/XmlResourceParser;)V
    .locals 13
    .parameter "parser"

    .prologue
    .line 811
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 814
    .local v2, attributes:Landroid/util/AttributeSet;
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    .line 815
    .local v4, eventType:I
    :goto_0
    const/4 v11, 0x1

    if-eq v4, v11, :cond_2

    .line 816
    const/4 v11, 0x2

    if-ne v4, v11, :cond_7

    .line 817
    invoke-interface {v2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    .line 818
    .local v9, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v9, :cond_7

    .line 819
    invoke-interface {v2, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {v2, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, attrValue:Ljava/lang/String;
    const-string v11, "item_begin_id"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 822
    iget-object v11, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/android/epst/SettingGroup;->setItemBeginId(Ljava/lang/Integer;)V

    .line 818
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 823
    :cond_1
    const-string v11, "name"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 824
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/htc/android/epst/Utility;->findString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 825
    .local v8, name:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v11}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lcom/htc/android/epst/SettingItem;

    invoke-direct {v12, v8}, Lcom/htc/android/epst/SettingItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 856
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v4           #eventType:I
    .end local v5           #i:I
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #size:I
    :catch_0
    move-exception v3

    .line 857
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 858
    const-string v11, "ListItemsActivity"

    const-string v12, "getSettingGroupInfo is error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    return-void

    .line 826
    .restart local v0       #attrName:Ljava/lang/String;
    .restart local v1       #attrValue:Ljava/lang/String;
    .restart local v4       #eventType:I
    .restart local v5       #i:I
    .restart local v9       #size:I
    :cond_3
    :try_start_1
    const-string v11, "editable"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 827
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->getLastSettingItem()Lcom/htc/android/epst/SettingItem;

    move-result-object v7

    .line 828
    .local v7, lastItem:Lcom/htc/android/epst/SettingItem;
    if-eqz v7, :cond_0

    .line 829
    const-string v11, "true"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v7, v11}, Lcom/htc/android/epst/SettingItem;->setEditable(Z)V

    goto :goto_2

    .line 831
    .end local v7           #lastItem:Lcom/htc/android/epst/SettingItem;
    :cond_4
    const-string v11, "translator"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 832
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->getLastSettingItem()Lcom/htc/android/epst/SettingItem;

    move-result-object v7

    .line 833
    .restart local v7       #lastItem:Lcom/htc/android/epst/SettingItem;
    if-eqz v7, :cond_0

    .line 834
    invoke-virtual {v7, v1}, Lcom/htc/android/epst/SettingItem;->setTranslatorClassName(Ljava/lang/String;)V

    .line 835
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/htc/android/epst/Utility;->getTranslator(Ljava/lang/String;)Lcom/htc/android/epst/translator/Translator;

    move-result-object v10

    .line 836
    .local v10, translator:Lcom/htc/android/epst/translator/Translator;
    invoke-virtual {v7, v10}, Lcom/htc/android/epst/SettingItem;->setTranslator(Lcom/htc/android/epst/translator/Translator;)V

    goto :goto_2

    .line 838
    .end local v7           #lastItem:Lcom/htc/android/epst/SettingItem;
    .end local v10           #translator:Lcom/htc/android/epst/translator/Translator;
    :cond_5
    const-string v11, "mode"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 839
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->getLastSettingItem()Lcom/htc/android/epst/SettingItem;

    move-result-object v7

    .line 840
    .restart local v7       #lastItem:Lcom/htc/android/epst/SettingItem;
    if-eqz v7, :cond_0

    .line 841
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 842
    .local v6, index:I
    invoke-virtual {v7, v6}, Lcom/htc/android/epst/SettingItem;->setMode(I)V

    goto :goto_2

    .line 844
    .end local v6           #index:I
    .end local v7           #lastItem:Lcom/htc/android/epst/SettingItem;
    :cond_6
    const-string v11, "operator"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 845
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->getLastSettingItem()Lcom/htc/android/epst/SettingItem;

    move-result-object v7

    .line 846
    .restart local v7       #lastItem:Lcom/htc/android/epst/SettingItem;
    if-eqz v7, :cond_0

    .line 847
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 848
    .restart local v6       #index:I
    invoke-virtual {v7, v6}, Lcom/htc/android/epst/SettingItem;->setOperatorID(I)V

    goto/16 :goto_2

    .line 853
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #index:I
    .end local v7           #lastItem:Lcom/htc/android/epst/SettingItem;
    .end local v9           #size:I
    :cond_7
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto/16 :goto_0
.end method

.method private getViewMap()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/epst/SettingItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 648
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/epst/SettingItem;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 650
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 651
    .local v1, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/epst/SettingItem;>;"
    const-string v3, "ITEM"

    iget-object v4, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v4}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    .end local v1           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/android/epst/SettingItem;>;"
    :cond_0
    return-object v2
.end method

.method private makeEditingIPDialog()Landroid/app/Dialog;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    .line 1734
    sget-boolean v9, Lcom/htc/android/epst/ListItemsActivity;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1735
    :cond_0
    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    if-nez v9, :cond_1

    .line 1736
    new-instance v9, Lcom/htc/android/epst/SettingItem;

    const-string v10, ""

    invoke-direct {v9, v10}, Lcom/htc/android/epst/SettingItem;-><init>(Ljava/lang/String;)V

    sput-object v9, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    .line 1737
    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    new-instance v10, Lcom/htc/android/epst/translator/NullTranslator;

    invoke-direct {v10}, Lcom/htc/android/epst/translator/NullTranslator;-><init>()V

    invoke-virtual {v9, v10}, Lcom/htc/android/epst/SettingItem;->setTranslator(Lcom/htc/android/epst/translator/Translator;)V

    .line 1739
    :cond_1
    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v11, :cond_2

    .line 1740
    const-string v9, "0.0.0.0"

    sput-object v9, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    .line 1744
    :cond_2
    iget-boolean v9, p0, Lcom/htc/android/epst/ListItemsActivity;->LBSPDELOCK:Z

    if-ne v9, v11, :cond_3

    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v9}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0400ca

    invoke-virtual {p0, v10}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1746
    const-string v9, "0.0.0.0"

    sput-object v9, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    .line 1750
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1751
    .local v2, factory:Landroid/view/LayoutInflater;
    const v9, 0x7f020002

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1752
    .local v1, editItemView:Landroid/view/View;
    new-array v6, v12, [I

    fill-array-data v6, :array_0

    .line 1754
    .local v6, ipIds:[I
    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    const-string v10, "\\."

    invoke-virtual {v9, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 1755
    .local v7, ips:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v12, :cond_6

    .line 1756
    rsub-int/lit8 v9, v3, 0x4

    add-int/lit8 v4, v9, -0x1

    .line 1757
    .local v4, index:I
    aget v9, v6, v3

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1758
    .local v5, ipEdit:Landroid/widget/EditText;
    aget-object v9, v7, v4

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1759
    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v9}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/android/epst/translator/Translator;->getInputFilters()[Landroid/text/InputFilter;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1760
    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v9}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/android/epst/translator/Translator;->getInputFilters()[Landroid/text/InputFilter;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1762
    :cond_4
    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 1763
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_5

    .line 1764
    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 1767
    :cond_5
    new-instance v9, Lcom/htc/android/epst/ListItemsActivity$20;

    invoke-direct {v9, p0, v4}, Lcom/htc/android/epst/ListItemsActivity$20;-><init>(Lcom/htc/android/epst/ListItemsActivity;I)V

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1755
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1788
    .end local v4           #index:I
    .end local v5           #ipEdit:Landroid/widget/EditText;
    :cond_6
    const v9, 0x7f040009

    invoke-virtual {p0, v9}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v12}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1789
    .local v8, titleStr:Ljava/lang/String;
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    new-instance v11, Lcom/htc/android/epst/ListItemsActivity$22;

    invoke-direct {v11, p0}, Lcom/htc/android/epst/ListItemsActivity$22;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x104

    new-instance v11, Lcom/htc/android/epst/ListItemsActivity$21;

    invoke-direct {v11, p0}, Lcom/htc/android/epst/ListItemsActivity$21;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1823
    .local v0, alertdialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v9, Lcom/htc/android/epst/ListItemsActivity$23;

    invoke-direct {v9, p0}, Lcom/htc/android/epst/ListItemsActivity$23;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1830
    return-object v0

    .line 1752
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x6t 0x7ft
        0x6t 0x0t 0x6t 0x7ft
        0x4t 0x0t 0x6t 0x7ft
        0x3t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method private makeEditingOptionDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1950
    sget-boolean v6, Lcom/htc/android/epst/ListItemsActivity;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    sget-object v6, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1951
    :cond_0
    sget-object v6, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    if-nez v6, :cond_1

    .line 1952
    new-instance v6, Lcom/htc/android/epst/SettingItem;

    const-string v7, ""

    invoke-direct {v6, v7}, Lcom/htc/android/epst/SettingItem;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    .line 1953
    sget-object v6, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    new-instance v7, Lcom/htc/android/epst/translator/NullTranslator;

    invoke-direct {v7}, Lcom/htc/android/epst/translator/NullTranslator;-><init>()V

    invoke-virtual {v6, v7}, Lcom/htc/android/epst/SettingItem;->setTranslator(Lcom/htc/android/epst/translator/Translator;)V

    .line 1956
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1957
    .local v3, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1958
    .local v4, selectedIndex:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    sget-object v6, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v6}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/android/epst/translator/Translator;->getTypedInfo()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 1959
    sget-object v6, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v6}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/android/epst/translator/Translator;->getTypedInfo()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1961
    .local v2, option:Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1962
    sget-object v6, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1963
    add-int/lit8 v4, v1, -0x1

    .line 1958
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1967
    .end local v2           #option:Ljava/lang/String;
    :cond_3
    const v6, 0x7f040009

    invoke-virtual {p0, v6}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v8}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1968
    .local v5, title:Ljava/lang/String;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    new-array v6, v9, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    new-instance v8, Lcom/htc/android/epst/ListItemsActivity$30;

    invoke-direct {v8, p0, v3}, Lcom/htc/android/epst/ListItemsActivity$30;-><init>(Lcom/htc/android/epst/ListItemsActivity;Ljava/util/List;)V

    invoke-virtual {v7, v6, v4, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/htc/android/epst/ListItemsActivity$29;

    invoke-direct {v8, p0}, Lcom/htc/android/epst/ListItemsActivity$29;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    new-instance v8, Lcom/htc/android/epst/ListItemsActivity$28;

    invoke-direct {v8, p0}, Lcom/htc/android/epst/ListItemsActivity$28;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1997
    .local v0, alertdialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v6, Lcom/htc/android/epst/ListItemsActivity$31;

    invoke-direct {v6, p0}, Lcom/htc/android/epst/ListItemsActivity$31;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2005
    return-object v0
.end method

.method private makeEditingSidNidDialog()Landroid/app/Dialog;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 1606
    sget-boolean v9, Lcom/htc/android/epst/ListItemsActivity;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1607
    :cond_0
    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    if-nez v9, :cond_1

    .line 1608
    new-instance v9, Lcom/htc/android/epst/SettingItem;

    const-string v10, ""

    invoke-direct {v9, v10}, Lcom/htc/android/epst/SettingItem;-><init>(Ljava/lang/String;)V

    sput-object v9, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    .line 1609
    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    new-instance v10, Lcom/htc/android/epst/translator/NullTranslator;

    invoke-direct {v10}, Lcom/htc/android/epst/translator/NullTranslator;-><init>()V

    invoke-virtual {v9, v10}, Lcom/htc/android/epst/SettingItem;->setTranslator(Lcom/htc/android/epst/translator/Translator;)V

    .line 1612
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1613
    .local v3, factory:Landroid/view/LayoutInflater;
    const v9, 0x7f020004

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1614
    .local v1, editItemView:Landroid/view/View;
    new-array v5, v12, [I

    fill-array-data v5, :array_0

    .line 1616
    .local v5, ids:[I
    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v11, :cond_2

    .line 1617
    const-string v9, "0/0"

    sput-object v9, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    .line 1619
    :cond_2
    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 1620
    .local v7, sidnid:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v9, v5

    if-ge v4, v9, :cond_5

    .line 1621
    move v6, v4

    .line 1622
    .local v6, index:I
    aget v9, v5, v4

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1623
    .local v2, editText:Landroid/widget/EditText;
    aget-object v9, v7, v6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1624
    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v9}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/android/epst/translator/Translator;->getInputFilters()[Landroid/text/InputFilter;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1625
    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v9}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/android/epst/translator/Translator;->getInputFilters()[Landroid/text/InputFilter;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1627
    :cond_3
    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 1628
    if-nez v4, :cond_4

    .line 1629
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1632
    :cond_4
    new-instance v9, Lcom/htc/android/epst/ListItemsActivity$16;

    invoke-direct {v9, p0, v6, v2}, Lcom/htc/android/epst/ListItemsActivity$16;-><init>(Lcom/htc/android/epst/ListItemsActivity;ILandroid/widget/EditText;)V

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1620
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1655
    .end local v2           #editText:Landroid/widget/EditText;
    .end local v6           #index:I
    :cond_5
    const v9, 0x7f040009

    invoke-virtual {p0, v9}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v12}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1656
    .local v8, titleStr:Ljava/lang/String;
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v9, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    new-instance v11, Lcom/htc/android/epst/ListItemsActivity$18;

    invoke-direct {v11, p0}, Lcom/htc/android/epst/ListItemsActivity$18;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x104

    new-instance v11, Lcom/htc/android/epst/ListItemsActivity$17;

    invoke-direct {v11, p0}, Lcom/htc/android/epst/ListItemsActivity$17;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1689
    .local v0, alertdialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v9, Lcom/htc/android/epst/ListItemsActivity$19;

    invoke-direct {v9, p0}, Lcom/htc/android/epst/ListItemsActivity$19;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1696
    return-object v0

    .line 1614
    :array_0
    .array-data 0x4
        0x8t 0x0t 0x6t 0x7ft
        0x9t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method private makeEditingStringDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1839
    sget-boolean v8, Lcom/htc/android/epst/ListItemsActivity;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    sget-object v8, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    if-nez v8, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1840
    :cond_0
    sget-object v8, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    if-nez v8, :cond_1

    .line 1841
    new-instance v8, Lcom/htc/android/epst/SettingItem;

    const-string v9, ""

    invoke-direct {v8, v9}, Lcom/htc/android/epst/SettingItem;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    .line 1842
    sget-object v8, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    new-instance v9, Lcom/htc/android/epst/translator/NullTranslator;

    invoke-direct {v9}, Lcom/htc/android/epst/translator/NullTranslator;-><init>()V

    invoke-virtual {v8, v9}, Lcom/htc/android/epst/SettingItem;->setTranslator(Lcom/htc/android/epst/translator/Translator;)V

    .line 1845
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1846
    .local v3, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f020005

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1847
    .local v2, editItemView:Landroid/view/View;
    const v8, 0x7f06000a

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1848
    .local v5, value:Landroid/widget/EditText;
    sget-object v8, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1850
    sget-object v8, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v8}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/android/epst/translator/Translator;->getInputFilters()[Landroid/text/InputFilter;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1851
    sget-object v8, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v8}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/android/epst/translator/Translator;->getInputFilters()[Landroid/text/InputFilter;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1853
    :cond_2
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 1854
    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 1856
    new-instance v8, Lcom/htc/android/epst/ListItemsActivity$24;

    invoke-direct {v8, p0, v5}, Lcom/htc/android/epst/ListItemsActivity$24;-><init>(Lcom/htc/android/epst/ListItemsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1879
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->getItemTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "epst_scrtn"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->getItemTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "d_data_username"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->getItemTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "d_data_wimax"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_3
    move v1, v7

    .line 1888
    .local v1, bSecretCode:Z
    :goto_0
    iget-boolean v8, p0, Lcom/htc/android/epst/ListItemsActivity;->bmEncodeShareSecret:Z

    if-ne v8, v7, :cond_4

    if-ne v1, v7, :cond_4

    .line 1889
    sget-object v8, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v8}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0401b2

    invoke-virtual {p0, v9}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v7, :cond_7

    .line 1890
    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1898
    :cond_4
    :goto_1
    iget-boolean v8, p0, Lcom/htc/android/epst/ListItemsActivity;->LBSPDELOCK:Z

    if-ne v8, v7, :cond_5

    sget-object v8, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v8}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0400cb

    invoke-virtual {p0, v9}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1900
    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1903
    :cond_5
    const v8, 0x7f040009

    invoke-virtual {p0, v8}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v9, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v9}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1904
    .local v4, titleStr:Ljava/lang/String;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/htc/android/epst/ListItemsActivity$26;

    invoke-direct {v8, p0}, Lcom/htc/android/epst/ListItemsActivity$26;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    new-instance v8, Lcom/htc/android/epst/ListItemsActivity$25;

    invoke-direct {v8, p0}, Lcom/htc/android/epst/ListItemsActivity$25;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1934
    .local v0, alertdialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v6, Lcom/htc/android/epst/ListItemsActivity$27;

    invoke-direct {v6, p0}, Lcom/htc/android/epst/ListItemsActivity$27;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1941
    return-object v0

    .end local v0           #alertdialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v1           #bSecretCode:Z
    .end local v4           #titleStr:Ljava/lang/String;
    :cond_6
    move v1, v6

    .line 1879
    goto/16 :goto_0

    .line 1891
    .restart local v1       #bSecretCode:Z
    :cond_7
    sget-object v8, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v8}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0401b3

    invoke-virtual {p0, v9}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v7, :cond_4

    .line 1892
    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private modifyIPAddress(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "ipSrc"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1708
    const-string v2, ""

    .line 1709
    .local v2, ret:Ljava/lang/String;
    const-string v3, "\\."

    const/4 v4, 0x4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1710
    .local v1, ips:[Ljava/lang/String;
    aput-object p3, v1, p2

    .line 1711
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 1712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1713
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f04000e

    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1711
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1717
    :cond_1
    return-object v2
.end method

.method private modifySidNid(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "src"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1593
    const-string v1, ""

    .line 1594
    .local v1, ret:Ljava/lang/String;
    const-string v3, "/"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1595
    .local v2, sidnid:[Ljava/lang/String;
    aput-object p3, v2, p2

    .line 1596
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1598
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f04000f

    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1596
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1602
    :cond_1
    return-object v1
.end method

.method private showProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 881
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    .line 882
    sput v1, Lcom/htc/android/epst/ListItemsActivity;->sUpdatedItemCount:I

    .line 883
    sput v1, Lcom/htc/android/epst/ListItemsActivity;->sProgress:I

    .line 885
    sget-object v0, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    sget v1, Lcom/htc/android/epst/ListItemsActivity;->sProgress:I

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 886
    return-void
.end method

.method private startFileBrowserActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "iUpdateType"

    .prologue
    .line 750
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/android/epst/FileBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 751
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "ListItemsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nUpdateType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/epst/ListItemsActivity;->bLaunchActivity:Z

    .line 753
    const-string v1, "BROWSER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const-string v1, "KEY_SELECTED_FILE"

    sget-object v2, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/epst/ListItemsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 757
    return-void
.end method


# virtual methods
.method public authenticateResult(Z)V
    .locals 5
    .parameter "isSuccessful"

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 1484
    iget-boolean v0, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ListItemsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticateResult:isSuccessful:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_0
    sget-object v0, Lcom/htc/android/epst/ListItemsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 1486
    sget-object v0, Lcom/htc/android/epst/ListItemsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1489
    :cond_1
    if-eqz p1, :cond_4

    .line 1491
    iget-boolean v0, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "ListItemsActivity"

    const-string v1, "authenticateResult:start send refurish command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_2
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    .line 1531
    :cond_3
    :goto_0
    return-void

    .line 1498
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1500
    iget-boolean v0, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "ListItemsActivity"

    const-string v1, "authenticateResult:Still show password dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :cond_5
    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->removeDialog(I)V

    .line 1503
    iget-boolean v0, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "ListItemsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listitem-mUnlockRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/android/epst/ListItemsActivity;->mUnlockRetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_6
    sget v0, Lcom/htc/android/epst/ListItemsActivity;->mUnlockRetry:I

    if-ne v0, v3, :cond_9

    .line 1506
    sget-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SPRINT_PCS:Z

    if-eq v0, v3, :cond_7

    sget-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_ERRMSLCODE_RESET:Z

    if-ne v0, v3, :cond_9

    .line 1507
    :cond_7
    iget-boolean v0, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "ListItemsActivity"

    const-string v1, "start reboot device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_8
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/Port;->PortRebootDevice()V

    .line 1512
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->finish()V

    .line 1522
    :cond_9
    sget v0, Lcom/htc/android/epst/ListItemsActivity;->mUnlockRetry:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/htc/android/epst/ListItemsActivity;->mUnlockRetry:I

    .line 1526
    const v0, 0x7f040029

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1528
    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public finishEditItem()V
    .locals 1

    .prologue
    .line 1725
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    .line 1726
    return-void
.end method

.method public getItemTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public launchIME()V
    .locals 2

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mResultReceiver:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->retryCount:I

    .line 1430
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mResultReceiver:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    invoke-virtual {v0}, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;->relaunchIME()V

    .line 1431
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 775
    if-nez p1, :cond_0

    .line 780
    if-nez p2, :cond_1

    .line 781
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->finishEditItem()V

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-boolean v1, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "ListItemsActivity"

    const-string v2, "onActivityResult!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_2
    if-eqz p3, :cond_0

    .line 788
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, selectedFileName:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 790
    sget-object v1, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v1, v0}, Lcom/htc/android/epst/SettingItem;->setValue(Ljava/lang/String;)V

    .line 791
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->showProgress()V

    .line 792
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    sget-object v2, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-interface {v1, p0, v2}, Lcom/htc/android/epst/SettingValueUpdater;->setSettingValue(Lcom/htc/android/epst/ListItemsActivity;Lcom/htc/android/epst/SettingItem;)V

    .line 794
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->finishEditItem()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    .line 274
    sput-object p0, Lcom/htc/android/epst/ListItemsActivity;->mListItemsActivity:Lcom/htc/android/epst/ListItemsActivity;

    .line 277
    new-instance v0, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    iput-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mResultReceiver:Lcom/htc/android/epst/ListItemsActivity$LaunchIMEReceiver;

    .line 279
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/SettingGroup;

    iput-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    .line 281
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mMode:I

    .line 283
    const-string v0, "ListItemsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate ... group title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v2}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/epst/ListItemsActivity;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v2}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 290
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mServiceLooper:Landroid/os/Looper;

    .line 291
    new-instance v0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;-><init>(Lcom/htc/android/epst/ListItemsActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mAgentHandler:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    .line 292
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mAgentHandler:Lcom/htc/android/epst/ListItemsActivity$AgentHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->sendEmptyMessage(I)Z

    .line 294
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const v10, 0x104000a

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, 0x1080027

    .line 1128
    packed-switch p1, :pswitch_data_0

    .line 1409
    :goto_0
    :pswitch_0
    return-object v3

    .line 1131
    :pswitch_1
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v5, :cond_0

    .line 1132
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1134
    :cond_0
    new-instance v5, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v5, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1135
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5, v7}, Lcom/htc/app/HtcProgressDialog;->setIcon(I)V

    .line 1136
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v6, 0x7f040008

    invoke-virtual {v5, v6}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 1137
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5, v9}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 1138
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 1139
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5, v8}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1140
    sget-object v3, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 1144
    :pswitch_2
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v5, :cond_1

    .line 1145
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1147
    :cond_1
    new-instance v5, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v5, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/htc/android/epst/ListItemsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1148
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v6, 0x7f04004f

    invoke-virtual {p0, v6}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1149
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5, v9}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1150
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5, v8}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1151
    sget-object v3, Lcom/htc/android/epst/ListItemsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 1155
    :pswitch_3
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v5, :cond_2

    .line 1156
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1158
    :cond_2
    new-instance v5, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v5, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1159
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v6, 0x7f04004e

    invoke-virtual {p0, v6}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1160
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5, v9}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1161
    sget-object v5, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5, v8}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1162
    sget-object v3, Lcom/htc/android/epst/ListItemsActivity;->sProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto/16 :goto_0

    .line 1165
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->makeEditingStringDialog()Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1168
    :pswitch_5
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->makeEditingOptionDialog()Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1171
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->makeEditingIPDialog()Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1174
    :pswitch_7
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->makeEditingSidNidDialog()Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1178
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/ListItemsActivity;->removeDialog(I)V

    goto/16 :goto_0

    .line 1182
    :pswitch_9
    iget-object v5, p0, Lcom/htc/android/epst/ListItemsActivity;->mRebootDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v5, :cond_3

    .line 1183
    const/16 v5, 0x9

    invoke-virtual {p0, v5}, Lcom/htc/android/epst/ListItemsActivity;->removeDialog(I)V

    .line 1185
    :cond_3
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x7f04

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f040016

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/htc/android/epst/ListItemsActivity$7;

    invoke-direct {v6, p0}, Lcom/htc/android/epst/ListItemsActivity$7;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v5, v10, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/ListItemsActivity;->mRebootDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1196
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mRebootDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 1200
    :pswitch_a
    iget-boolean v5, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "ListItemsActivity"

    const-string v6, "onCreate:DIALOG_RESET_CANCEL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_4
    iget-object v5, p0, Lcom/htc/android/epst/ListItemsActivity;->mResetCancelDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v5, :cond_5

    .line 1202
    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/htc/android/epst/ListItemsActivity;->removeDialog(I)V

    .line 1208
    :cond_5
    const v1, 0x7f040023

    .line 1209
    .local v1, inlineMsg:I
    iget-object v5, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v5}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v5

    const-string v6, "epst_refurbish"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1210
    const v1, 0x7f040024

    .line 1213
    :cond_6
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x7f04

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/htc/android/epst/ListItemsActivity$9;

    invoke-direct {v6, p0}, Lcom/htc/android/epst/ListItemsActivity$9;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v5, v10, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/htc/android/epst/ListItemsActivity$8;

    invoke-direct {v7, p0}, Lcom/htc/android/epst/ListItemsActivity$8;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/ListItemsActivity;->mResetCancelDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1270
    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mResetCancelDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 1300
    .end local v1           #inlineMsg:I
    :pswitch_b
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1301
    .local v0, factory:Landroid/view/LayoutInflater;
    const/high16 v5, 0x7f02

    invoke-virtual {v0, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1302
    .local v4, textEntryView:Landroid/view/View;
    const v5, 0x7f060001

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1303
    .local v2, pwd:Landroid/widget/EditText;
    new-instance v5, Lcom/htc/android/epst/ListItemsActivity$10;

    invoke-direct {v5, p0}, Lcom/htc/android/epst/ListItemsActivity$10;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1314
    new-instance v5, Lcom/htc/android/epst/ListItemsActivity$11;

    invoke-direct {v5, p0}, Lcom/htc/android/epst/ListItemsActivity$11;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1323
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1324
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1325
    iput-object v2, p0, Lcom/htc/android/epst/ListItemsActivity;->targetView:Landroid/view/View;

    .line 1326
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->launchIME()V

    .line 1328
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f040028

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/htc/android/epst/ListItemsActivity$13;

    invoke-direct {v6, p0}, Lcom/htc/android/epst/ListItemsActivity$13;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v5, v10, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/htc/android/epst/ListItemsActivity$12;

    invoke-direct {v7, p0}, Lcom/htc/android/epst/ListItemsActivity$12;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    .line 1367
    .local v3, pwdDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v5, Lcom/htc/android/epst/ListItemsActivity$14;

    invoke-direct {v5, p0}, Lcom/htc/android/epst/ListItemsActivity$14;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1379
    new-instance v5, Lcom/htc/android/epst/ListItemsActivity$15;

    invoke-direct {v5, p0}, Lcom/htc/android/epst/ListItemsActivity$15;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 1128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 890
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 891
    iget v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 893
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v1

    const-string v2, "d_data_username"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 896
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 920
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 898
    :cond_1
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v1

    const-string v2, "epst_scrtn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 900
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 901
    .restart local v0       #inflater:Landroid/view/MenuInflater;
    const v1, 0x7f050004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 903
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_2
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v1

    const-string v2, "epst_refurbish"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 905
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 906
    .restart local v0       #inflater:Landroid/view/MenuInflater;
    const v1, 0x7f050002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 910
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 911
    .restart local v0       #inflater:Landroid/view/MenuInflater;
    const v1, 0x7f050001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 914
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_4
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v1

    const-string v2, "epst_rtn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v1

    const-string v2, "epst_clear"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 916
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 917
    .restart local v0       #inflater:Landroid/view/MenuInflater;
    const v1, 0x7f050003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 349
    const-string v3, "ListItemsActivity"

    const-string v4, "listen key!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 352
    invoke-static {}, Lcom/htc/android/epst/GroupTable;->getCurrentIndex()I

    move-result v0

    .line 353
    .local v0, currentIndex:I
    const-string v3, "ListItemsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resume HtcGroupEPST index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-eqz v0, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_1

    .line 361
    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 362
    const-string v2, "ListItemsActivity"

    const-string v3, "back key is pressed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/android/epst/HtcGroupEPST;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "mode"

    iget v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0, v1}, Lcom/htc/android/epst/ListItemsActivity;->startActivity(Landroid/content/Intent;)V

    .line 366
    const/4 v2, 0x1

    .line 368
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return v2
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 659
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 661
    iget-object v7, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v7}, Lcom/htc/android/epst/SettingGroup;->getItemBeginId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, p3

    invoke-direct {p0, v7}, Lcom/htc/android/epst/ListItemsActivity;->getItemById(I)Lcom/htc/android/epst/SettingItem;

    move-result-object v5

    .line 662
    .local v5, item:Lcom/htc/android/epst/SettingItem;
    invoke-virtual {v5}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 663
    const-string v7, "ListItemsActivity"

    const-string v8, "item.getName() is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    invoke-virtual {v5}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0401d2

    invoke-virtual {p0, v8}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 667
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 668
    .local v3, i:Landroid/content/Intent;
    const-string v7, "com.htc.streamplayer"

    const-string v8, "com.htc.streamplayer.ProxySettings"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const/high16 v7, 0x4100

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 670
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 671
    .local v0, b:Landroid/os/Bundle;
    iget v7, p0, Lcom/htc/android/epst/ListItemsActivity;->mMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_b

    .line 672
    const-string v7, "command"

    const-string v8, "EDIT_MODE"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-boolean v7, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "ListItemsActivity"

    const-string v8, "put command=EDIT_MODE"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_2
    :goto_1
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 679
    iget-boolean v7, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "ListItemsActivity"

    const-string v8, "call com.htc.streamplayer.ProxySettings"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_3
    const/4 v7, 0x1

    :try_start_0
    sput-boolean v7, Lcom/htc/android/epst/ListItemsActivity;->bLaunchActivity:Z

    .line 682
    invoke-virtual {p0, v3}, Lcom/htc/android/epst/ListItemsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .end local v0           #b:Landroid/os/Bundle;
    .end local v3           #i:Landroid/content/Intent;
    :cond_4
    :goto_2
    invoke-virtual {v5}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0401d4

    invoke-virtual {p0, v8}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 688
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 689
    .local v4, intent:Landroid/content/Intent;
    iget v7, p0, Lcom/htc/android/epst/ListItemsActivity;->mMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    .line 690
    const-string v7, "android.intent.action.EDIT"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    iget-boolean v7, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "ListItemsActivity"

    const-string v8, "put command=EDIT_MODE"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_5
    :goto_3
    const-string v7, "com.android.mms"

    const-string v8, "com.htc.messaging.ui.HtcCdmaMmsConnEditor"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    iget-boolean v7, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v7, :cond_6

    const-string v7, "ListItemsActivity"

    const-string v8, "call com.htc.messaging.ui.HtcCdmaMmsConnEditor"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_6
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 704
    .end local v4           #intent:Landroid/content/Intent;
    :cond_7
    :goto_4
    invoke-virtual {v5}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0401d3

    invoke-virtual {p0, v8}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 705
    iget-boolean v7, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v7, :cond_8

    const-string v7, "ListItemsActivity"

    const-string v8, "Launch Proxy/Gateway Activity"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .restart local v3       #i:Landroid/content/Intent;
    const-string v7, "com.android.browser"

    const-string v8, "com.android.browser.htc.ui.HTCBrowserProxySettings"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    const/high16 v7, 0x4100

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 710
    const/4 v7, 0x1

    :try_start_2
    sput-boolean v7, Lcom/htc/android/epst/ListItemsActivity;->bLaunchActivity:Z

    .line 711
    invoke-virtual {p0, v3}, Lcom/htc/android/epst/ListItemsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 716
    .end local v3           #i:Landroid/content/Intent;
    :cond_9
    :goto_5
    iget v7, p0, Lcom/htc/android/epst/ListItemsActivity;->mMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 722
    invoke-virtual {v5}, Lcom/htc/android/epst/SettingItem;->isEditable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 726
    invoke-direct {p0, v5}, Lcom/htc/android/epst/ListItemsActivity;->getDialogId(Lcom/htc/android/epst/SettingItem;)I

    move-result v1

    .line 727
    .local v1, dialogId:I
    const/4 v7, 0x5

    if-ne v1, v7, :cond_f

    .line 728
    sput-object v5, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    .line 729
    sget-object v7, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v7}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    .line 730
    const-string v6, ""

    .line 731
    .local v6, nUpdateType:Ljava/lang/String;
    sget-object v7, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v7}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0401d5

    invoke-virtual {p0, v8}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    .line 732
    const v7, 0x7f0401d5

    invoke-virtual {p0, v7}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 738
    :goto_6
    iget-boolean v7, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v7, :cond_a

    const-string v7, "ListItemsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nUpdateType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_a
    invoke-direct {p0, v6}, Lcom/htc/android/epst/ListItemsActivity;->startFileBrowserActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    .end local v1           #dialogId:I
    .end local v6           #nUpdateType:Ljava/lang/String;
    .restart local v0       #b:Landroid/os/Bundle;
    .restart local v3       #i:Landroid/content/Intent;
    :cond_b
    const-string v7, "command"

    const-string v8, "VIEW_MODE"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-boolean v7, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "ListItemsActivity"

    const-string v8, "put command=VIEW_MODE"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 684
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "ListItemsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity is not found!.ex:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 693
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #i:Landroid/content/Intent;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_c
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    iget-boolean v7, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "ListItemsActivity"

    const-string v8, "put command=VIEW_MODE"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 702
    :catch_1
    move-exception v2

    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v7, "ListItemsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity is not found!.ex:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 713
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v4           #intent:Landroid/content/Intent;
    .restart local v3       #i:Landroid/content/Intent;
    :catch_2
    move-exception v2

    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v7, "ListItemsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity is not found!.ex:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 733
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #i:Landroid/content/Intent;
    .restart local v1       #dialogId:I
    .restart local v6       #nUpdateType:Ljava/lang/String;
    :cond_d
    sget-object v7, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v7}, Lcom/htc/android/epst/SettingItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0401d6

    invoke-virtual {p0, v8}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    .line 734
    const v7, 0x7f0401d6

    invoke-virtual {p0, v7}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_6

    .line 736
    :cond_e
    const-string v7, "ListItemsActivity"

    const-string v8, "No support type!!Please check it!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 740
    .end local v6           #nUpdateType:Ljava/lang/String;
    :cond_f
    if-eqz v1, :cond_0

    const/4 v7, 0x6

    if-eq v1, v7, :cond_0

    .line 742
    sput-object v5, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    .line 743
    sget-object v7, Lcom/htc/android/epst/ListItemsActivity;->sEditingItem:Lcom/htc/android/epst/SettingItem;

    invoke-virtual {v7}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    .line 744
    invoke-virtual {p0, v1}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x1

    .line 925
    new-instance v0, Lcom/htc/android/epst/CdmaSettingUpdater;

    invoke-direct {v0}, Lcom/htc/android/epst/CdmaSettingUpdater;-><init>()V

    .line 926
    .local v0, updater:Lcom/htc/android/epst/SettingValueUpdater;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 980
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 929
    :pswitch_1
    invoke-interface {v0, p0}, Lcom/htc/android/epst/SettingValueUpdater;->commitChange(Lcom/htc/android/epst/CommitChangeObserver;)V

    .line 930
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    goto :goto_0

    .line 934
    :pswitch_2
    iget-boolean v2, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "ListItemsActivity"

    const-string v3, "rtn_reset IN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    sget-boolean v2, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_VM_BOOST_CLEAR:Z

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v2}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v2

    const-string v3, "epst_clear"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 936
    invoke-virtual {p0, v1}, Lcom/htc/android/epst/ListItemsActivity;->authenticateResult(Z)V

    goto :goto_0

    .line 939
    :cond_1
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    goto :goto_0

    .line 943
    :pswitch_3
    iget-boolean v2, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "ListItemsActivity"

    const-string v3, "rtn_cancel IN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->finish()V

    goto :goto_0

    .line 950
    :pswitch_4
    iget-boolean v2, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "ListItemsActivity"

    const-string v3, "data_restore IN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_3
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Port;->setUpdater(Lcom/htc/android/epst/SettingValueUpdater;)V

    .line 952
    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    goto :goto_0

    .line 960
    :pswitch_5
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Port;->setUpdater(Lcom/htc/android/epst/SettingValueUpdater;)V

    .line 961
    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    goto :goto_0

    .line 972
    :pswitch_6
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/Port;->setUpdater(Lcom/htc/android/epst/SettingValueUpdater;)V

    .line 973
    invoke-virtual {p0, v4}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    goto :goto_0

    .line 926
    :pswitch_data_0
    .packed-switch 0x7f06001a
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1542
    sget-boolean v1, Lcom/htc/android/epst/ListItemsActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/android/epst/ListItemsActivity;->sModifiedValue:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1544
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1589
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1590
    return-void

    .line 1546
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/ListItemsActivity;->removeDialog(I)V

    .line 1547
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->makeEditingStringDialog()Landroid/app/Dialog;

    move-result-object p2

    .line 1548
    goto :goto_0

    .line 1552
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/ListItemsActivity;->removeDialog(I)V

    .line 1553
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->makeEditingOptionDialog()Landroid/app/Dialog;

    move-result-object p2

    .line 1554
    goto :goto_0

    .line 1557
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/ListItemsActivity;->removeDialog(I)V

    .line 1558
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->makeEditingIPDialog()Landroid/app/Dialog;

    move-result-object p2

    .line 1559
    goto :goto_0

    .line 1561
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/ListItemsActivity;->removeDialog(I)V

    .line 1562
    invoke-direct {p0}, Lcom/htc/android/epst/ListItemsActivity;->makeEditingSidNidDialog()Landroid/app/Dialog;

    move-result-object p2

    .line 1563
    goto :goto_0

    .line 1565
    :pswitch_5
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mPassword:Ljava/lang/String;

    .line 1566
    const v1, 0x7f060001

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1567
    .local v0, pwd:Landroid/widget/EditText;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1571
    .end local v0           #pwd:Landroid/widget/EditText;
    :pswitch_6
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v1

    const-string v2, "epst_rtn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1572
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mResetCancelDialog:Lcom/htc/widget/HtcAlertDialog;

    const v2, 0x7f040023

    invoke-virtual {p0, v2}, Lcom/htc/android/epst/ListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1574
    :cond_2
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v1

    const-string v2, "epst_scrtn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1576
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mResetCancelDialog:Lcom/htc/widget/HtcAlertDialog;

    const v2, 0x7f040027

    invoke-virtual {p0, v2}, Lcom/htc/android/epst/ListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1578
    :cond_3
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v1

    const-string v2, "d_data_username"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1580
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mResetCancelDialog:Lcom/htc/widget/HtcAlertDialog;

    const v2, 0x7f040025

    invoke-virtual {p0, v2}, Lcom/htc/android/epst/ListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1582
    :cond_4
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v1

    const-string v2, "epst_clear"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1583
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mResetCancelDialog:Lcom/htc/widget/HtcAlertDialog;

    const v2, 0x7f040026

    invoke-virtual {p0, v2}, Lcom/htc/android/epst/ListItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1544
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 311
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 312
    sget-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_WIMAX_INFO_ENTRY:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "d_data_wimax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "epst_rtn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "epst_clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/epst/ListItemsActivity;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "ListItemsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiMaxController.startDc page title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v2}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_1
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/wimax/WiMaxController;->startDc()V

    .line 320
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 374
    sget-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_WIMAX_INFO_ENTRY:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "d_data_wimax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "epst_rtn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "epst_clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    :cond_0
    new-instance v0, Lcom/htc/android/epst/ListItemsActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/ListItemsActivity$2;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v0}, Lcom/htc/android/epst/ListItemsActivity$2;->start()V

    .line 388
    :cond_1
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 324
    invoke-super {p0}, Landroid/app/ListActivity;->onUserLeaveHint()V

    .line 325
    const-string v0, "ListItemsActivity"

    const-string v1, "onUserLeaveHint()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget-boolean v0, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_WIMAX_INFO_ENTRY:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "d_data_wimax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "epst_rtn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getItemXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "epst_clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    new-instance v0, Lcom/htc/android/epst/ListItemsActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/ListItemsActivity$1;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    invoke-virtual {v0}, Lcom/htc/android/epst/ListItemsActivity$1;->start()V

    .line 340
    :cond_1
    sget-boolean v0, Lcom/htc/android/epst/ListItemsActivity;->bLaunchActivity:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 341
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/epst/ListItemsActivity;->bLaunchActivity:Z

    .line 345
    :goto_0
    return-void

    .line 344
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/epst/ListItemsActivity;->finish()V

    goto :goto_0
.end method

.method public returnDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "iMessage"

    .prologue
    .line 984
    new-instance v0, Lcom/htc/android/epst/ListItemsActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/htc/android/epst/ListItemsActivity$3;-><init>(Lcom/htc/android/epst/ListItemsActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/ListItemsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 990
    return-void
.end method

.method public showRebootPrompt()V
    .locals 1

    .prologue
    .line 1048
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    .line 1049
    return-void
.end method

.method public updateAllSettingValues()V
    .locals 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;

    invoke-interface {v0, p0, v1}, Lcom/htc/android/epst/SettingValueUpdater;->getSettings(Lcom/htc/android/epst/ListItemsActivity;Lcom/htc/android/epst/SettingGroup;)V

    .line 1065
    return-void
.end method

.method public updateCommitResult(II)V
    .locals 1
    .parameter "successCount"
    .parameter "failedCount"

    .prologue
    .line 993
    new-instance v0, Lcom/htc/android/epst/ListItemsActivity$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/android/epst/ListItemsActivity$4;-><init>(Lcom/htc/android/epst/ListItemsActivity;II)V

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/ListItemsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1037
    return-void
.end method

.method public updateSettingValue(IILjava/lang/String;)V
    .locals 1
    .parameter "itemId"
    .parameter "status"
    .parameter "value"

    .prologue
    .line 1076
    new-instance v0, Lcom/htc/android/epst/ListItemsActivity$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/android/epst/ListItemsActivity$6;-><init>(Lcom/htc/android/epst/ListItemsActivity;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/ListItemsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1109
    return-void
.end method

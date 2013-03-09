.class public Lcom/htc/omadm/tool/OMADMTool;
.super Landroid/app/Activity;
.source "OMADMTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_TYPE_READ:I = 0x0

.field private static final ACTION_TYPE_READWRITE:I = 0x2

.field private static final ACTION_TYPE_WRITE:I = 0x1

.field private static final CMD_PREFIX:Ljava/lang/String; = "C8"

.field private static final DIALOG_AUTH_PROGRESS:I = 0x2

.field private static final DIALOG_COMMIT_PROGRESS:I = 0x3

.field private static final DIALOG_PASSWORD:I = 0x1

.field private static final DIALOG_PROGRESS:I = 0x7

.field private static final DIALOG_PROMPT_REBOOT:I = 0x4

.field private static final DIALOG_SELECT_MODE:I = 0x5

.field private static final DIALOG_TURNON_PHONE:I = 0x6

.field private static final D_PASSWORD_REQUESST_ERROR:Ljava/lang/String; = "unexpected password "

.field public static final EDIT_MODE:I = 0x2

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final EVENT_RIL_REQUEST_PASSWORD:I = 0x64

.field public static final FULL_MODE:I = 0x3

.field public static final GROUP:Ljava/lang/String; = "group"

.field private static final ID_CMD_MSL:Ljava/lang/String; = "41"

.field private static final ID_CMD_PREFIX:Ljava/lang/String; = "C8"

.field private static final LOG_TAG:Ljava/lang/String; = "OMADMTool"

.field public static final MODE:Ljava/lang/String; = "mode"

.field private static final MSG_INITIATE_OMADMTool:I = 0x1

.field private static final PREFIX_LENGTH:I = 0x2

.field private static final RESULT_MSL_CORRECT:Ljava/lang/String; = "01"

.field public static final STATUS_FAILED:I = 0x1

.field public static final STATUS_NOT_SUPPORT:I = 0x2

.field public static final STATUS_NO_RESPONSE:I = 0x5

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final SUFFIX_LENGTH:I = 0x4

.field public static final VIEW_MODE:I = 0x1

.field public static inNextBacking:Z

.field private static final isTestBuild:Z

.field public static mContext:Landroid/content/Context;

.field private static mPassword:Ljava/lang/String;

.field private static mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field public static mRebootTime:I

.field private static mUnlockRetry:I

.field private static sModeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DBG:Z

.field private gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field protected mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mResultReceiver:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

.field private targetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-string v0, ""

    sput-object v0, Lcom/htc/omadm/tool/OMADMTool;->mPassword:Ljava/lang/String;

    .line 91
    const/16 v0, 0xa

    sput v0, Lcom/htc/omadm/tool/OMADMTool;->mRebootTime:I

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/omadm/tool/OMADMTool;->sModeOptions:Ljava/util/List;

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/tool/OMADMTool;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->freezeNum()I

    move-result v0

    sput v0, Lcom/htc/omadm/tool/OMADMTool;->mUnlockRetry:I

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/omadm/tool/OMADMTool;->inNextBacking:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    iput-object v1, p0, Lcom/htc/omadm/tool/OMADMTool;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 103
    sget-boolean v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/omadm/tool/OMADMTool;->DBG:Z

    .line 122
    new-instance v0, Lcom/htc/omadm/tool/OMADMTool$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/tool/OMADMTool$1;-><init>(Lcom/htc/omadm/tool/OMADMTool;)V

    iput-object v0, p0, Lcom/htc/omadm/tool/OMADMTool;->mHandler:Landroid/os/Handler;

    .line 528
    iput-object v1, p0, Lcom/htc/omadm/tool/OMADMTool;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 529
    iput-object v1, p0, Lcom/htc/omadm/tool/OMADMTool;->mResultReceiver:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    .line 536
    return-void
.end method

.method static synthetic access$000(Lcom/htc/omadm/tool/OMADMTool;)Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool;->mResultReceiver:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/omadm/tool/OMADMTool;Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;)Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/omadm/tool/OMADMTool;->mResultReceiver:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/omadm/tool/OMADMTool;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/omadm/tool/OMADMTool;->isPhoneOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/omadm/tool/OMADMTool;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/omadm/tool/OMADMTool;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/omadm/tool/OMADMTool;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/omadm/tool/OMADMTool;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool;->targetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/omadm/tool/OMADMTool;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/omadm/tool/OMADMTool;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/omadm/tool/OMADMTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/omadm/tool/OMADMTool;->getActionType()I

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/omadm/tool/OMADMTool;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-object p0, Lcom/htc/omadm/tool/OMADMTool;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/omadm/tool/OMADMTool;->sModeOptions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/omadm/tool/OMADMTool;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/omadm/tool/OMADMTool;->authenticateAction()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/omadm/tool/OMADMTool;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/omadm/tool/OMADMTool;->DBG:Z

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/htc/omadm/tool/OMADMTool;->mUnlockRetry:I

    return v0
.end method

.method static synthetic access$810()I
    .locals 2

    .prologue
    .line 43
    sget v0, Lcom/htc/omadm/tool/OMADMTool;->mUnlockRetry:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/htc/omadm/tool/OMADMTool;->mUnlockRetry:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/omadm/tool/OMADMTool;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/omadm/tool/OMADMTool;->blockAllKeyboardKeyEvent()V

    return-void
.end method

.method private authenticateAction()V
    .locals 3

    .prologue
    .line 213
    invoke-static {}, Lcom/htc/omadm/tool/GroupTable;->getCurrentIndex()I

    move-result v0

    .line 214
    .local v0, currentIndex:I
    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    .line 215
    invoke-static {}, Lcom/htc/omadm/tool/GroupTable;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, pwd:Ljava/lang/String;
    invoke-virtual {p0, p0, v1}, Lcom/htc/omadm/tool/OMADMTool;->anthenticate(Lcom/htc/omadm/tool/OMADMTool;Ljava/lang/String;)V

    .line 225
    .end local v1           #pwd:Ljava/lang/String;
    :goto_0
    return-void

    .line 218
    :cond_0
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 219
    invoke-static {}, Lcom/htc/omadm/tool/GroupTable;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 221
    .restart local v1       #pwd:Ljava/lang/String;
    invoke-virtual {p0, p0, v1}, Lcom/htc/omadm/tool/OMADMTool;->anthenticateOTKSL(Lcom/htc/omadm/tool/OMADMTool;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    .end local v1           #pwd:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/omadm/tool/OMADMTool;->showDialog(I)V

    goto :goto_0
.end method

.method private blockAllKeyboardKeyEvent()V
    .locals 3

    .prologue
    .line 487
    const-string v1, "OMADMTool"

    const-string v2, "freeze device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.OMADMTool.freeze"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, freeze:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/omadm/tool/OMADMTool;->sendBroadcast(Landroid/content/Intent;)V

    .line 490
    return-void
.end method

.method private getActionType()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 157
    invoke-static {}, Lcom/htc/omadm/tool/GroupTable;->getCurrentIndex()I

    move-result v3

    invoke-static {v3}, Lcom/htc/omadm/tool/GroupTable;->getMode(I)I

    move-result v0

    .line 158
    .local v0, mode:I
    if-ne v0, v1, :cond_1

    .line 159
    const/4 v1, 0x0

    .line 163
    :cond_0
    :goto_0
    return v1

    .line 160
    :cond_1
    if-eq v0, v2, :cond_0

    move v1, v2

    .line 163
    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lcom/htc/omadm/tool/OMADMTool;->sModeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 203
    sget-object v1, Lcom/htc/omadm/tool/OMADMTool;->sModeOptions:Ljava/util/List;

    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/htc/omadm/tool/OMADMTool;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v1, Lcom/htc/omadm/tool/OMADMTool;->sModeOptions:Ljava/util/List;

    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/htc/omadm/tool/OMADMTool;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method private isPhoneOn()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public anthenticate(Lcom/htc/omadm/tool/OMADMTool;Ljava/lang/String;)V
    .locals 11
    .parameter "activity"
    .parameter "password"

    .prologue
    .line 579
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 580
    .local v5, len:I
    const-string v3, ""

    .line 581
    .local v3, commandToString:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 582
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 583
    .local v1, c:I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 584
    .local v7, tmp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    .line 585
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 587
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 581
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 590
    .end local v1           #c:I
    .end local v7           #tmp:Ljava/lang/String;
    :cond_1
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xc

    if-eq v8, v9, :cond_4

    .line 591
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/omadm/tool/OMADMTool;->authenticateResult(Z)V

    .line 630
    :cond_3
    :goto_2
    return-void

    .line 593
    :cond_4
    const-string v2, "C841"

    .line 594
    .local v2, command:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 597
    iget-boolean v8, p0, Lcom/htc/omadm/tool/OMADMTool;->DBG:Z

    if-eqz v8, :cond_5

    .line 598
    const-string v8, "OMADMTool"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendCmd:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_5
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->isSupportDMAgent()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 602
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->isDMConnectSuccess()Z

    move-result v8

    if-nez v8, :cond_6

    .line 603
    const-string v8, "OMADMTool"

    const-string v9, "DMAgent hasn\'t connected yet!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 607
    :cond_6
    iget-object v8, p0, Lcom/htc/omadm/tool/OMADMTool;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 608
    .local v6, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v0, v8, v9, v10}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 610
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-static {v2}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DMSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 611
    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 614
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    iget v8, v6, Landroid/os/Message;->what:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_8

    .line 617
    if-eqz v0, :cond_7

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v8, :cond_9

    .line 618
    :cond_7
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v2}, Lcom/htc/omadm/tool/OMADMTool;->receiveMSL(ZLjava/lang/String;)V

    .line 625
    :cond_8
    :goto_3
    iget-boolean v8, p0, Lcom/htc/omadm/tool/OMADMTool;->DBG:Z

    if-eqz v8, :cond_3

    .line 626
    const-string v8, "OMADMTool"

    const-string v9, "sendCmd.sendMessage"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 620
    :cond_9
    const/4 v8, 0x1

    invoke-virtual {p0, v8, v2}, Lcom/htc/omadm/tool/OMADMTool;->receiveMSL(ZLjava/lang/String;)V

    goto :goto_3
.end method

.method public anthenticateOTKSL(Lcom/htc/omadm/tool/OMADMTool;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "password"

    .prologue
    .line 678
    return-void
.end method

.method public authenticateResult(Z)V
    .locals 5
    .parameter "isSuccessful"

    .prologue
    .line 411
    iget-boolean v2, p0, Lcom/htc/omadm/tool/OMADMTool;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "OMADMTool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticat result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    sget-object v2, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v2, :cond_1

    .line 413
    sget-object v2, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 421
    :cond_1
    if-eqz p1, :cond_2

    .line 423
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/omadm/tool/OMADMActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    .local v1, intentOMADMInfo:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/htc/omadm/tool/OMADMTool;->startActivity(Landroid/content/Intent;)V

    .line 480
    .end local v1           #intentOMADMInfo:Landroid/content/Intent;
    :goto_0
    return-void

    .line 428
    :cond_2
    invoke-static {}, Lcom/htc/omadm/tool/GroupTable;->getCurrentIndex()I

    move-result v0

    .line 429
    .local v0, currentIndex:I
    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    .line 431
    :cond_3
    invoke-virtual {p0}, Lcom/htc/omadm/tool/OMADMTool;->finish()V

    goto :goto_0

    .line 434
    :cond_4
    iget-boolean v2, p0, Lcom/htc/omadm/tool/OMADMTool;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "OMADMTool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUnlockRetry-01:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/omadm/tool/OMADMTool;->mUnlockRetry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_5
    new-instance v2, Lcom/htc/omadm/tool/OMADMTool$10;

    invoke-direct {v2, p0}, Lcom/htc/omadm/tool/OMADMTool$10;-><init>(Lcom/htc/omadm/tool/OMADMTool;)V

    invoke-virtual {p0, v2}, Lcom/htc/omadm/tool/OMADMTool;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public launchIME()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool;->mResultReceiver:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;->retryCount:I

    .line 534
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool;->mResultReceiver:Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;

    invoke-virtual {v0}, Lcom/htc/omadm/tool/OMADMTool$LaunchIMEReceiver;->relaunchIME()V

    .line 535
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 174
    sput-object p0, Lcom/htc/omadm/tool/OMADMTool;->mContext:Landroid/content/Context;

    .line 175
    const-string v0, "OMADMTool"

    const-string v1, "OMADMTool: onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const v7, 0x1080027

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 243
    packed-switch p1, :pswitch_data_0

    .line 390
    :goto_0
    :pswitch_0
    return-object v3

    .line 245
    :pswitch_1
    sget-object v6, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v6, :cond_0

    .line 246
    sget-object v6, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 248
    :cond_0
    new-instance v6, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v6, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 249
    sget-object v6, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f03001f

    invoke-virtual {p0, v7}, Lcom/htc/omadm/tool/OMADMTool;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 250
    sget-object v6, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v8}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 251
    sget-object v6, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v11}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 252
    sget-object v3, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 255
    :pswitch_2
    sget-object v6, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v6, :cond_1

    .line 256
    sget-object v6, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 258
    :cond_1
    new-instance v6, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v6, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 259
    sget-object v6, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f03001e

    invoke-virtual {p0, v7}, Lcom/htc/omadm/tool/OMADMTool;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 260
    sget-object v6, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v8}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 261
    sget-object v6, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v11}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 262
    sget-object v3, Lcom/htc/omadm/tool/OMADMTool;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 265
    :pswitch_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 266
    .local v1, factory:Landroid/view/LayoutInflater;
    const/high16 v6, 0x7f02

    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 267
    .local v5, textEntryView:Landroid/view/View;
    const v6, 0x7f040001

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 268
    .local v2, pwd:Landroid/widget/EditText;
    new-instance v6, Lcom/htc/omadm/tool/OMADMTool$2;

    invoke-direct {v6, p0}, Lcom/htc/omadm/tool/OMADMTool$2;-><init>(Lcom/htc/omadm/tool/OMADMTool;)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 281
    new-instance v6, Lcom/htc/omadm/tool/OMADMTool$3;

    invoke-direct {v6, p0}, Lcom/htc/omadm/tool/OMADMTool$3;-><init>(Lcom/htc/omadm/tool/OMADMTool;)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 291
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 292
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 293
    iput-object v2, p0, Lcom/htc/omadm/tool/OMADMTool;->targetView:Landroid/view/View;

    .line 294
    invoke-virtual {p0}, Lcom/htc/omadm/tool/OMADMTool;->launchIME()V

    .line 296
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f030021

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/htc/omadm/tool/OMADMTool$5;

    invoke-direct {v8, p0}, Lcom/htc/omadm/tool/OMADMTool$5;-><init>(Lcom/htc/omadm/tool/OMADMTool;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    new-instance v8, Lcom/htc/omadm/tool/OMADMTool$4;

    invoke-direct {v8, p0}, Lcom/htc/omadm/tool/OMADMTool$4;-><init>(Lcom/htc/omadm/tool/OMADMTool;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    .line 323
    .local v3, pwdDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v6, Lcom/htc/omadm/tool/OMADMTool$6;

    invoke-direct {v6, p0}, Lcom/htc/omadm/tool/OMADMTool$6;-><init>(Lcom/htc/omadm/tool/OMADMTool;)V

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 336
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v2           #pwd:Landroid/widget/EditText;
    .end local v3           #pwdDialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v5           #textEntryView:Landroid/view/View;
    :pswitch_4
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f030023

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 341
    .local v0, alertdialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v6, Lcom/htc/omadm/tool/OMADMTool$7;

    invoke-direct {v6, p0}, Lcom/htc/omadm/tool/OMADMTool$7;-><init>(Lcom/htc/omadm/tool/OMADMTool;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v3, v0

    .line 346
    goto/16 :goto_0

    .line 350
    .end local v0           #alertdialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_5
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x7f03

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x7f020003

    const v9, 0x1020014

    sget-object v10, Lcom/htc/omadm/tool/OMADMTool;->sModeOptions:Ljava/util/List;

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v7, p0, v8, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    new-instance v8, Lcom/htc/omadm/tool/OMADMTool$8;

    invoke-direct {v8, p0}, Lcom/htc/omadm/tool/OMADMTool$8;-><init>(Lcom/htc/omadm/tool/OMADMTool;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    .line 371
    .local v4, selDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v6, Lcom/htc/omadm/tool/OMADMTool$9;

    invoke-direct {v6, p0}, Lcom/htc/omadm/tool/OMADMTool$9;-><init>(Lcom/htc/omadm/tool/OMADMTool;)V

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v3, v4

    .line 377
    goto/16 :goto_0

    .line 380
    .end local v4           #selDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_6
    iget-object v6, p0, Lcom/htc/omadm/tool/OMADMTool;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v6, :cond_2

    .line 381
    iget-object v6, p0, Lcom/htc/omadm/tool/OMADMTool;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 383
    :cond_2
    new-instance v6, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v6, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/omadm/tool/OMADMTool;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 384
    iget-object v6, p0, Lcom/htc/omadm/tool/OMADMTool;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f030026

    invoke-virtual {p0, v7}, Lcom/htc/omadm/tool/OMADMTool;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v6, p0, Lcom/htc/omadm/tool/OMADMTool;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v8}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 386
    iget-object v6, p0, Lcom/htc/omadm/tool/OMADMTool;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v11}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 387
    iget-object v3, p0, Lcom/htc/omadm/tool/OMADMTool;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto/16 :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 396
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 397
    const-string v0, "OMADMTool"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->closeDMAgent()V

    .line 399
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 230
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 232
    packed-switch p1, :pswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 234
    :pswitch_0
    const-string v1, ""

    sput-object v1, Lcom/htc/omadm/tool/OMADMTool;->mPassword:Ljava/lang/String;

    .line 235
    const v1, 0x7f040001

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 236
    .local v0, pwd:Landroid/widget/EditText;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 183
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/htc/omadm/tool/OMADMTool;->showDialog(I)V

    .line 185
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->freezeNum()I

    move-result v0

    sput v0, Lcom/htc/omadm/tool/OMADMTool;->mUnlockRetry:I

    .line 188
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 513
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 514
    invoke-virtual {p0}, Lcom/htc/omadm/tool/OMADMTool;->finish()V

    .line 516
    return-void
.end method

.method receiveMSL(ZLjava/lang/String;)V
    .locals 10
    .parameter "result"
    .parameter "responseCmd"

    .prologue
    const/4 v9, 0x0

    .line 635
    if-eqz p1, :cond_3

    .line 637
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 638
    .local v3, len:I
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, legency:Ljava/lang/String;
    const-string v6, "C8"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 640
    const/4 v6, 0x2

    invoke-virtual {p2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 643
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, id:Ljava/lang/String;
    const-string v4, ""

    .line 645
    .local v4, purecmd:Ljava/lang/String;
    const-string v6, "26"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "27"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 646
    :cond_1
    const/4 v6, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 653
    :goto_0
    const-string v6, "OMADMTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " >purecmd:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v6, "41"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 655
    iget-boolean v6, p0, Lcom/htc/omadm/tool/OMADMTool;->DBG:Z

    if-eqz v6, :cond_2

    .line 656
    const-string v6, "OMADMTool"

    const-string v7, "unexpected password "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_2
    const/4 p1, 0x0

    .line 658
    const-string v6, "OMADMTool"

    const-string v7, " >!mCurDmCmdId.equals(ID_CMD_MSL)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #legency:Ljava/lang/String;
    .end local v3           #len:I
    .end local v4           #purecmd:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/omadm/tool/OMADMTool;->authenticateResult(Z)V

    .line 675
    :goto_2
    return-void

    .line 649
    .restart local v1       #id:Ljava/lang/String;
    .restart local v2       #legency:Ljava/lang/String;
    .restart local v3       #len:I
    .restart local v4       #purecmd:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 660
    :cond_5
    const-string v6, "OMADMTool"

    const-string v7, " >mCurDmCmdId.equals(ID_CMD_MSL)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 662
    .local v5, pwResult:Ljava/lang/String;
    const-string v6, "01"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_6

    .line 663
    const/4 p1, 0x1

    goto :goto_1

    .line 665
    :cond_6
    const/4 p1, 0x0

    goto :goto_1

    .line 670
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #legency:Ljava/lang/String;
    .end local v3           #len:I
    .end local v4           #purecmd:Ljava/lang/String;
    .end local v5           #pwResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 671
    .local v0, ex:Ljava/lang/Exception;
    iget-boolean v6, p0, Lcom/htc/omadm/tool/OMADMTool;->DBG:Z

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 672
    const-string v6, "OMADMTool"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_7
    invoke-virtual {p0, v9}, Lcom/htc/omadm/tool/OMADMTool;->authenticateResult(Z)V

    goto :goto_2
.end method

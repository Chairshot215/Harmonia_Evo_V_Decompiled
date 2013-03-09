.class public Lcom/htc/android/fieldtrial/FieldTrial;
.super Landroid/app/Activity;
.source "FieldTrial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;
    }
.end annotation


# static fields
.field public static final ACTIVITY_LIST_GROUPS:I = 0x1

.field private static final CHECK_PASSWORD:Ljava/lang/String; = "checkPassword"

.field public static DBG:Z = false

.field private static final DIALOG_AUTH_PROGRESS:I = 0x1

.field private static final DIALOG_PROGRESS:I = 0x3

.field private static final DIALOG_TURNON_PHONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "FieldTrial"

.field private static final MSG_INITIATE_FIELDTRIAL:I = 0x2

.field private static final MSG_REMOVE_DIALOG:I = 0x3

.field private static final MSG_SHOW_TOAST:I = 0x1

.field public static final OPERATOR_GENERIC:I = 0x0

.field public static final OPERATOR_SPRINT:I = 0x3

.field public static OPERATOR_TYPE:I = 0x0

.field public static final OPERATOR_VZW:I = 0x2

.field public static final STATUS_FAILED:I = 0x1

.field public static final STATUS_NOT_SUPPORT:I = 0x2

.field public static final STATUS_SUCCESS:I

.field private static final isTestBuild:Z

.field private static mPassword:Ljava/lang/String;

.field private static mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private static result:Z


# instance fields
.field private gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field mAgentHandler:Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field mThread:Landroid/os/HandlerThread;

.field mThread_clearStorage:Ljava/lang/Thread;

.field msg:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/htc/android/fieldtrial/FieldTrial;->mPassword:Ljava/lang/String;

    .line 73
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/htc/android/fieldtrial/FieldTrial;->DBG:Z

    .line 74
    sput-boolean v1, Lcom/htc/android/fieldtrial/FieldTrial;->result:Z

    .line 78
    const/4 v0, -0x1

    sput v0, Lcom/htc/android/fieldtrial/FieldTrial;->OPERATOR_TYPE:I

    return-void

    :cond_0
    move v0, v1

    .line 73
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FieldTrial"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial;->mThread:Landroid/os/HandlerThread;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/fieldtrial/FieldTrial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/FieldTrial;->isPhoneOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/fieldtrial/FieldTrial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/FieldTrial;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/fieldtrial/FieldTrial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/FieldTrial;->isRequireAuthPwd()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/htc/android/fieldtrial/FieldTrial;->result:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/android/fieldtrial/FieldTrial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/FieldTrial;->startGroupListActivity()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/android/fieldtrial/FieldTrial;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-object p0, Lcom/htc/android/fieldtrial/FieldTrial;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public static getOperatorType(Ljava/lang/String;)V
    .locals 8
    .parameter "iCommand"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 81
    const-string v1, "FieldTrial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iCommand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "C8F8000000"

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 83
    const/16 v1, 0x8

    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, nOperator:Ljava/lang/String;
    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 85
    sput v6, Lcom/htc/android/fieldtrial/FieldTrial;->OPERATOR_TYPE:I

    .line 101
    :goto_0
    const-string v1, "FieldTrial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operator type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v0           #nOperator:Ljava/lang/String;
    :cond_0
    return-void

    .line 86
    .restart local v0       #nOperator:Ljava/lang/String;
    :cond_1
    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 87
    const/4 v1, 0x2

    sput v1, Lcom/htc/android/fieldtrial/FieldTrial;->OPERATOR_TYPE:I

    goto :goto_0

    .line 88
    :cond_2
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_3

    .line 89
    sput v5, Lcom/htc/android/fieldtrial/FieldTrial;->OPERATOR_TYPE:I

    goto :goto_0

    .line 90
    :cond_3
    const-string v1, "96"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v4, :cond_4

    const-string v1, "90"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v4, :cond_5

    .line 91
    :cond_4
    sput v6, Lcom/htc/android/fieldtrial/FieldTrial;->OPERATOR_TYPE:I

    goto :goto_0

    .line 98
    :cond_5
    const-string v1, "FieldTrial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no this operator type."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sput v5, Lcom/htc/android/fieldtrial/FieldTrial;->OPERATOR_TYPE:I

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/DataObject;->bCreateDMagent()Z

    .line 235
    const-string v0, "C8F8000000"

    invoke-static {v0}, Lcom/htc/android/fieldtrial/internal/DataObject;->sendCommandUI(Ljava/lang/String;)V

    .line 243
    invoke-static {p0}, Lcom/htc/android/fieldtrial/Utility;->initialize(Landroid/app/Activity;)V

    .line 245
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/DataObject;->getSingleton()Lcom/htc/android/fieldtrial/internal/DataObject;

    .line 247
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    .line 249
    return-void
.end method

.method private isAirplaneMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/FieldTrial;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    .line 401
    sget-boolean v0, Lcom/htc/android/fieldtrial/FieldTrial;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "FieldTrial"

    const-string v1, "Airplane mode now.No phone service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    const/4 v0, 0x1

    .line 404
    :cond_1
    return v0
.end method

.method private isPhoneOn()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method private isRequireAuthPwd()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/htc/android/fieldtrial/FieldTrial;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/fieldtrial/FieldTrial;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 198
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "checkPassword"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private populateFileds()V
    .locals 4

    .prologue
    .line 255
    const v3, 0x7f070004

    invoke-virtual {p0, v3}, Lcom/htc/android/fieldtrial/FieldTrial;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 256
    .local v2, pwd:Landroid/widget/EditText;
    new-instance v3, Lcom/htc/android/fieldtrial/FieldTrial$1;

    invoke-direct {v3, p0}, Lcom/htc/android/fieldtrial/FieldTrial$1;-><init>(Lcom/htc/android/fieldtrial/FieldTrial;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 269
    new-instance v3, Lcom/htc/android/fieldtrial/FieldTrial$2;

    invoke-direct {v3, p0}, Lcom/htc/android/fieldtrial/FieldTrial$2;-><init>(Lcom/htc/android/fieldtrial/FieldTrial;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 279
    const v3, 0x7f070005

    invoke-virtual {p0, v3}, Lcom/htc/android/fieldtrial/FieldTrial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 280
    .local v1, okBtn:Landroid/widget/Button;
    new-instance v3, Lcom/htc/android/fieldtrial/FieldTrial$3;

    invoke-direct {v3, p0}, Lcom/htc/android/fieldtrial/FieldTrial$3;-><init>(Lcom/htc/android/fieldtrial/FieldTrial;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    const v3, 0x7f070006

    invoke-virtual {p0, v3}, Lcom/htc/android/fieldtrial/FieldTrial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 290
    .local v0, cancelBtn:Landroid/widget/Button;
    new-instance v3, Lcom/htc/android/fieldtrial/FieldTrial$4;

    invoke-direct {v3, p0}, Lcom/htc/android/fieldtrial/FieldTrial$4;-><init>(Lcom/htc/android/fieldtrial/FieldTrial;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    return-void
.end method

.method private startGroupListActivity()V
    .locals 2

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/android/fieldtrial/ListGroupsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 306
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/fieldtrial/FieldTrial;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    return-void
.end method


# virtual methods
.method public onAuthenticateResult(Z)V
    .locals 4
    .parameter "isSuccessful"

    .prologue
    .line 366
    sget-object v0, Lcom/htc/android/fieldtrial/FieldTrial;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/htc/android/fieldtrial/FieldTrial;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 370
    :cond_0
    if-eqz p1, :cond_1

    .line 371
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/FieldTrial;->startGroupListActivity()V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial;->mAgentHandler:Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 206
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial;->mServiceLooper:Landroid/os/Looper;

    .line 207
    new-instance v0, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;

    iget-object v1, p0, Lcom/htc/android/fieldtrial/FieldTrial;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;-><init>(Lcom/htc/android/fieldtrial/FieldTrial;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial;->mAgentHandler:Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;

    .line 210
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/android/fieldtrial/FieldTrial;->showDialog(I)V

    .line 213
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial;->mAgentHandler:Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/fieldtrial/FieldTrial$AgentHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 311
    packed-switch p1, :pswitch_data_0

    .line 353
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 314
    :pswitch_0
    sget-object v1, Lcom/htc/android/fieldtrial/FieldTrial;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v1, :cond_0

    .line 315
    sget-object v1, Lcom/htc/android/fieldtrial/FieldTrial;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 317
    :cond_0
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/htc/android/fieldtrial/FieldTrial;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 318
    sget-object v1, Lcom/htc/android/fieldtrial/FieldTrial;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v2, 0x7f05000d

    invoke-virtual {p0, v2}, Lcom/htc/android/fieldtrial/FieldTrial;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 319
    sget-object v1, Lcom/htc/android/fieldtrial/FieldTrial;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 320
    sget-object v1, Lcom/htc/android/fieldtrial/FieldTrial;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 321
    sget-object v0, Lcom/htc/android/fieldtrial/FieldTrial;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 325
    :pswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 330
    .local v0, alertdialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v1, Lcom/htc/android/fieldtrial/FieldTrial$5;

    invoke-direct {v1, p0}, Lcom/htc/android/fieldtrial/FieldTrial$5;-><init>(Lcom/htc/android/fieldtrial/FieldTrial;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 340
    .end local v0           #alertdialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/fieldtrial/FieldTrial;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/htc/android/fieldtrial/FieldTrial;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 343
    :cond_1
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/fieldtrial/FieldTrial;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 344
    iget-object v1, p0, Lcom/htc/android/fieldtrial/FieldTrial;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v2, 0x7f05000e

    invoke-virtual {p0, v2}, Lcom/htc/android/fieldtrial/FieldTrial;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v1, p0, Lcom/htc/android/fieldtrial/FieldTrial;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 346
    iget-object v1, p0, Lcom/htc/android/fieldtrial/FieldTrial;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 347
    iget-object v0, p0, Lcom/htc/android/fieldtrial/FieldTrial;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 226
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 381
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 382
    const-string v0, "FieldTrial"

    const-string v1, "Begin onStop!!!!!! "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/Port;->clearStorage()V

    .line 395
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/FieldTrial;->finish()V

    .line 396
    const-string v0, "FieldTrial"

    const-string v1, "FieldTrial finish itself"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

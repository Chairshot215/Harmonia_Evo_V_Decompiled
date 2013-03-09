.class public Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;
.super Landroid/app/Activity;
.source "CSConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$DeleteAccountFromServer;,
        Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;,
        Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$RemoveAccount;
    }
.end annotation


# static fields
.field private static final DIALOG_ERROR_CONNECTING:I = 0xb

.field private static final DIALOG_ERROR_DELETING_ACCOUNT:I = 0xc

.field private static final DIALOG_ERROR_MISSING_DEVICE_DELETE_ACCOUNT:I = 0xe

.field private static final DIALOG_ERROR_NO_NETWORK:I = 0xd

.field private static final DIALOG_LEGAL_ACCEPT_ON_WEB:I = 0xa

.field private static final DIALOG_LOADING:I = 0x9

.field private static final DIALOG_SHOW_ACCOUNT_DISCONNECT:I = 0x6

.field private static final DIALOG_SHOW_CHANGE_SIM:I = 0x4

.field private static final DIALOG_SHOW_CONFIRM_ACCOUNT:I = 0x1

.field private static final DIALOG_SHOW_CONFIRM_ACCOUNT_FROM_SERVER:I = 0x4

.field private static final DIALOG_SHOW_DELETE_ACCOUNT:I = 0x8

.field private static final DIALOG_SHOW_NEW_PASSWORD:I = 0x5

.field private static final DIALOG_SHOW_REMOVE_SIM:I = 0x3

.field private static final DIALOG_SHOW_WAIT_CONFIRM_ACCOUNT:I = 0x2

.field private static final DIALOG_VIEW_TERM_SERVICE:I = 0x7

.field private static final MESSAGE_ACCOUNT_DELETED:I = 0x1f6

.field private static final MESSAGE_GET_LEGAL_UPDATE_STATUS:I = 0x1f4

.field private static final MESSAGE_SEND_DELETE_ACCOUNT:I = 0x1f5

.field private static final TAG:Ljava/lang/String; = "[CSConfirmDialog]"


# instance fields
.field TimezoneCityName:Ljava/lang/String;

.field TimezoneId:Ljava/lang/String;

.field private TosURL:Ljava/lang/String;

.field appData:Landroid/content/Intent;

.field private cancelled:Z

.field dialog:Lcom/htc/widget/HtcAlertDialog;

.field private fromApp:Z

.field private fromServerData:Ljava/lang/String;

.field private volatile mActivityState:I

.field private mHandler:Landroid/os/Handler;

.field termDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

.field termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

.field private final tosURLHost:Ljava/lang/String;

.field tvSummary:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;

.field private versionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const-string v0, "www.htcsense.com"

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->tosURLHost:Ljava/lang/String;

    .line 91
    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->mActivityState:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->versionList:Ljava/util/List;

    .line 684
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;

    invoke-direct {v0, p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$28;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->mHandler:Landroid/os/Handler;

    .line 891
    return-void
.end method

.method static synthetic access$000(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->activityDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->cancelled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->fromApp:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->TosURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->TosURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->versionList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->createTermDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getLegalDocumentUpdate(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->removeAccountfromServer(Landroid/content/Context;)V

    return-void
.end method

.method private activityDestroyed()Z
    .locals 2

    .prologue
    .line 771
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->mActivityState:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->mActivityState:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    .line 773
    :cond_0
    const/4 v0, 0x1

    .line 775
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createCSConfirmDialog(I)Landroid/app/Dialog;
    .locals 25
    .parameter "id"

    .prologue
    .line 111
    const-string v22, "MyHTC"

    const-string v23, "[CSConfirmDialog]createCSConfirmDialog"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    packed-switch p1, :pswitch_data_0

    .line 479
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v17, v0

    :goto_1
    return-object v17

    .line 116
    :pswitch_1
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090005

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09002c

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005b

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$1;

    invoke-direct/range {v24 .. v25}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$1;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v17

    goto :goto_1

    .line 129
    :pswitch_2
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090005

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09002c

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005b

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$3;

    invoke-direct/range {v24 .. v25}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$3;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005d

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$2;

    invoke-direct/range {v24 .. v25}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$2;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v17

    goto :goto_1

    .line 148
    :pswitch_3
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f090035

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090037

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005c

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$4;

    invoke-direct/range {v24 .. v25}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$4;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v17

    goto/16 :goto_1

    .line 161
    :pswitch_4
    move-object/from16 v3, p0

    .line 162
    .local v3, context:Landroid/content/Context;
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090005

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x20c009f

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f090057

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$6;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Landroid/content/Context;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005c

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$5;

    invoke-direct/range {v24 .. v25}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$5;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v17

    goto/16 :goto_1

    .line 186
    .end local v3           #context:Landroid/content/Context;
    :pswitch_5
    const/16 v17, 0x0

    .line 187
    .local v17, pdialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    new-instance v17, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;

    .end local v17           #pdialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;-><init>(Landroid/content/Context;)V

    .line 188
    .restart local v17       #pdialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f09000a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 189
    .local v14, msg6:Ljava/lang/CharSequence;
    sget-object v22, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->AUTO_DISCOVER:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setDialog(Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;)V

    .line 192
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 193
    new-instance v22, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$7;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 200
    new-instance v22, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$8;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_1

    .line 215
    .end local v14           #msg6:Ljava/lang/CharSequence;
    .end local v17           #pdialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    :pswitch_6
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, email:Ljava/lang/String;
    const v22, 0x7f090015

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v4, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, msg:Ljava/lang/CharSequence;
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f09000b

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    new-instance v23, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$11;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005b

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$10;

    invoke-direct/range {v24 .. v25}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$10;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/high16 v23, 0x104

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$9;

    invoke-direct/range {v24 .. v25}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$9;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 282
    .end local v4           #email:Ljava/lang/String;
    .end local v9           #msg:Ljava/lang/CharSequence;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090017

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 283
    .local v10, msg2:Ljava/lang/CharSequence;
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090016

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    new-instance v23, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$13;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$13;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005b

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$12;

    invoke-direct/range {v24 .. v25}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$12;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 310
    .end local v10           #msg2:Ljava/lang/CharSequence;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090019

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 311
    .local v11, msg3:Ljava/lang/CharSequence;
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090018

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    new-instance v23, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$16;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$16;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005b

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$15;

    invoke-direct/range {v24 .. v25}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$15;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005c

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$14;

    invoke-direct/range {v24 .. v25}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$14;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 349
    .end local v11           #msg3:Ljava/lang/CharSequence;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 350
    .local v8, mContext:Landroid/content/Context;
    const-string v22, "layout_inflater"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 351
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v23, 0x7f030006

    const v22, 0x7f0b0005

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    move/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 354
    .local v7, layout:Landroid/view/View;
    const v22, 0x7f0b000e

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 355
    .local v19, pw_changed:Landroid/widget/TextView;
    const v22, 0x7f09001d

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 357
    const v22, 0x7f0b000f

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 358
    .local v21, username:Landroid/widget/TextView;
    const v22, 0x7f09004a

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(I)V

    .line 360
    const v22, 0x7f0b0010

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 361
    .local v5, emailtv:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    const v22, 0x7f0b0011

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 364
    .local v16, password:Landroid/widget/TextView;
    const v22, 0x7f09004c

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 366
    const v22, 0x7f0b0007

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    .line 368
    .local v20, text:Landroid/widget/EditText;
    const v22, 0x80001

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 371
    new-instance v18, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    .local v18, pwNewDB:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v22, 0x7f09001c

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 373
    const v22, 0x1080027

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 374
    const v22, 0x7f09005b

    new-instance v23, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$17;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$17;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Landroid/widget/EditText;)V

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 386
    const v22, 0x7f09005c

    new-instance v23, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$18;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$18;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 396
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 397
    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 401
    .end local v5           #emailtv:Landroid/widget/TextView;
    .end local v6           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #layout:Landroid/view/View;
    .end local v8           #mContext:Landroid/content/Context;
    .end local v16           #password:Landroid/widget/TextView;
    .end local v18           #pwNewDB:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v19           #pw_changed:Landroid/widget/TextView;
    .end local v20           #text:Landroid/widget/EditText;
    .end local v21           #username:Landroid/widget/TextView;
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f09001f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 402
    .local v12, msg4:Ljava/lang/CharSequence;
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f09001e

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005b

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$19;

    invoke-direct/range {v24 .. v25}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$19;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 420
    .end local v12           #msg4:Ljava/lang/CharSequence;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090020

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 421
    .local v15, msgWeb:Ljava/lang/CharSequence;
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f09008a

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x108009b

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005b

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$20;

    invoke-direct/range {v24 .. v25}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$20;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 440
    .end local v15           #msgWeb:Ljava/lang/CharSequence;
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090022

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 441
    .local v13, msg5:Ljava/lang/CharSequence;
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090021

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    new-instance v23, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$23;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$23;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005e

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$22;

    invoke-direct/range {v24 .. v25}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$22;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005f

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$21;

    invoke-direct/range {v24 .. v25}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$21;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 476
    .end local v13           #msg5:Ljava/lang/CharSequence;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->termDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_5
        :pswitch_b
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private createTermDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 484
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    .line 489
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->webview:Landroid/webkit/WebView;

    .line 490
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 491
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 492
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->webview:Landroid/webkit/WebView;

    const-string v1, "www.htcsense.com"

    const-string v3, "Authentication Required"

    const-string v4, "sense01"

    const-string v5, "6wlM8i3ORT9s9Eqiufcc"

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$24;

    invoke-direct {v1, p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$24;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 541
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->TosURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    const v1, 0x7f090060

    new-instance v3, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$25;

    invoke-direct {v3, p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$25;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual {v0, v1, v3}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 564
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    invoke-virtual {v0, v2}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setPositiveButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 566
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    const v1, 0x7f090061

    new-instance v3, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$26;

    invoke-direct {v3, p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$26;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual {v0, v1, v3}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 574
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    new-instance v1, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$27;

    invoke-direct {v1, p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$27;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 588
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 589
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->webview:Landroid/webkit/WebView;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 590
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    invoke-virtual {v0, v6}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 591
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    invoke-virtual {v0, v2}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 592
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->create()Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    .line 593
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->create()Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->termDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    .line 594
    return-void
.end method

.method private getLegalDocumentUpdate(Landroid/content/Context;)Z
    .locals 15
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 833
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static/range {p1 .. p1}, Lcom/htc/cscore/util/CSUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/htc/cscore/util/CSUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Landroid/content/Context;)V

    .line 834
    .local v0, restProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    const/4 v12, 0x0

    .line 836
    .local v12, retry:I
    :cond_0
    :goto_0
    const/4 v1, 0x3

    if-ge v12, v1, :cond_2

    .line 838
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v6, p1

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lcom/htc/cscore/util/CSUtil;->handsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v9

    .line 844
    .local v9, devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    invoke-virtual {v0, v9}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    .line 845
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->getPendingLegalDoc(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;

    move-result-object v10

    .line 846
    .local v10, doc:Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getCSRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->getPendingLegalDocsID(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->versionList:Ljava/util/List;

    .line 847
    const-string v1, "CSFrameWork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getPendingLegalDocumentId versionList =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->versionList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v1, v10, Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;->EffectiveDate:Ljava/util/Date;
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_1

    .line 850
    const/4 v1, 0x1

    .line 887
    .end local v9           #devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .end local v10           #doc:Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    :goto_1
    return v1

    .line 852
    .restart local v9       #devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .restart local v10       #doc:Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 855
    .end local v9           #devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .end local v10           #doc:Lcom/htc/cscore/restapi/proxy/WebClasses$WPendingLegalDoc;
    :catch_0
    move-exception v11

    .line 857
    .local v11, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    invoke-virtual {v11}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v13

    .line 860
    .local v13, type:Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    .line 861
    const-string v1, "ClientNotAuthorizedException"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    const-string v1, "MyHTC"

    const-string v2, "[CSConfirmDialog]ClientNotAuthorizedException exceptions"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :try_start_1
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v6, p0

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lcom/htc/cscore/util/CSUtil;->renewToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 872
    :catch_1
    move-exception v8

    .line 874
    .local v8, csex:Lcom/htc/cscore/restapi/exceptions/CSException;
    invoke-virtual {v8}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v14

    .line 875
    .local v14, typeEx:Ljava/lang/String;
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CSConfirmDialog]Exception typeEx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 879
    .end local v8           #csex:Lcom/htc/cscore/restapi/exceptions/CSException;
    .end local v11           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    .end local v13           #type:Ljava/lang/String;
    .end local v14           #typeEx:Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 881
    .local v11, e:Ljava/lang/Exception;
    add-int/lit8 v12, v12, 0x1

    .line 882
    const/4 v1, 0x2

    if-le v12, v1, :cond_0

    .line 883
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "getLegalDocumentUpdate"

    invoke-direct {v1, v2, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 887
    .end local v11           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private removeAccountfromServer(Landroid/content/Context;)V
    .locals 8
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 935
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static {p1}, Lcom/htc/cscore/util/CSUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/cscore/util/CSUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Landroid/content/Context;)V

    .line 937
    .local v0, restProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    :try_start_0
    invoke-static {p1}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v6

    .line 944
    .local v6, devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    invoke-virtual {v0, v6}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    .line 945
    invoke-static {p1}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deleteCSAccount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    return-void

    .line 947
    .end local v6           #devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :catch_0
    move-exception v7

    .line 949
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CSConfirmDialog]removeAccountfromServer Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    throw v7
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 757
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 758
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 597
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 599
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 763
    const/4 v0, 0x0

    .line 768
    .local v0, resultCode:I
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const/16 v0, 0x21

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->mActivityState:I

    .line 103
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->createCSConfirmDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 733
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 734
    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->mActivityState:I

    .line 736
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 724
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 725
    const/16 v0, 0x24

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->mActivityState:I

    .line 729
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 741
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 605
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 606
    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->mActivityState:I

    .line 613
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 746
    return-void
.end method

.method protected onStart()V
    .locals 14

    .prologue
    const v13, 0x20200b6

    const v12, 0x20200b2

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 617
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 621
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 622
    .local v2, intent:Landroid/content/Intent;
    iput-boolean v9, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->fromApp:Z

    .line 623
    iput-boolean v9, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->cancelled:Z

    .line 624
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, action:Ljava/lang/String;
    const-string v6, "MyHTC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CSConfirmDialog]action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    if-nez v2, :cond_1

    .line 628
    const-string v6, "MyHTC"

    const-string v7, "[CSConfirmDialog]onStart(): intent == null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    if-nez v0, :cond_2

    .line 632
    const-string v6, "MyHTC"

    const-string v7, "[CSConfirmDialog]onStart(): action == null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 634
    :cond_2
    const-string v6, "ConfirmAccountNotification"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 636
    invoke-virtual {p0, v10}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    .line 637
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v6, :cond_0

    .line 639
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 640
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 641
    :cond_3
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 642
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    .line 645
    :cond_4
    const-string v6, "ConfirmAccountFromServer"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 647
    const-string v6, "data"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->fromServerData:Ljava/lang/String;

    .line 648
    invoke-virtual {p0, v11}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    goto :goto_0

    .line 650
    :cond_5
    const-string v6, "SimChangeRemoveAccount"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 652
    const-string v6, "SIM_CHANGE_TYPE"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 653
    .local v5, type:I
    if-nez v5, :cond_6

    .line 654
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    .line 655
    :cond_6
    if-ne v5, v10, :cond_0

    .line 656
    invoke-virtual {p0, v11}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    goto/16 :goto_0

    .line 658
    .end local v5           #type:I
    :cond_7
    const-string v6, "com.htc.cs.CSSyncWebExceptionDB.DeviceDisconnected"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 660
    new-instance v4, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$RemoveAccount;

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$RemoveAccount;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Landroid/content/Context;)V

    .line 661
    .local v4, removeAccount:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$RemoveAccount;
    invoke-virtual {v4}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$RemoveAccount;->start()V

    .line 662
    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    goto/16 :goto_0

    .line 664
    .end local v4           #removeAccount:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$RemoveAccount;
    :cond_8
    const-string v6, "com.htc.cs.CSSyncWebExceptionDB.RequireNewPassword"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 666
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    goto/16 :goto_0

    .line 668
    :cond_9
    const-string v6, "com.htc.cs.csconfirmdialog.showlegal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 670
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 671
    .local v3, msg:Landroid/os/Message;
    new-instance v1, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, p0, v6, v3}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;-><init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;Landroid/content/Context;Landroid/os/Message;)V

    .line 672
    .local v1, getLegalDocUpdate:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;
    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;->start()V

    .line 673
    const/16 v6, 0x9

    invoke-virtual {p0, v6}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    goto/16 :goto_0

    .line 677
    .end local v1           #getLegalDocUpdate:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$GetLegalDocUpdate;
    .end local v3           #msg:Landroid/os/Message;
    :cond_a
    const-string v6, "MyHTC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CSConfirmDialog]onStart(): Not define action ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 750
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 753
    return-void
.end method

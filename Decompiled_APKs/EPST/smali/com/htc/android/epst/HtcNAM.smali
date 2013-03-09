.class public Lcom/htc/android/epst/HtcNAM;
.super Landroid/app/Activity;
.source "HtcNAM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/HtcNAM$ValidationTask;
    }
.end annotation


# static fields
.field private static final DIALOG_AUTH_PROGRESS:I = 0x2

.field private static final DIALOG_PASSWORD:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HtcNAM"

.field public static final MODE:Ljava/lang/String; = "mode"

.field private static mPassword:Ljava/lang/String;

.field private static mProgressDialog:Lcom/htc/app/HtcProgressDialog;


# instance fields
.field private DBG:Z

.field private HOST_TYPE:Ljava/lang/String;

.field private mResultReceiver:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, ""

    sput-object v0, Lcom/htc/android/epst/HtcNAM;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/epst/HtcNAM;->DBG:Z

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/HtcNAM;->HOST_TYPE:Ljava/lang/String;

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/epst/HtcNAM;->mode:I

    .line 56
    invoke-static {}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->getSingleton()Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/HtcNAM;->mResultReceiver:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    .line 80
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/htc/android/epst/HtcNAM;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    sput-object p0, Lcom/htc/android/epst/HtcNAM;->mPassword:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public VerifyPassword()V
    .locals 3

    .prologue
    .line 183
    sget-object v1, Lcom/htc/android/epst/HtcNAM;->mPassword:Ljava/lang/String;

    const-string v2, "587846"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    new-instance v0, Lcom/htc/android/epst/CdmaSettingUpdater;

    invoke-direct {v0}, Lcom/htc/android/epst/CdmaSettingUpdater;-><init>()V

    .line 185
    .local v0, updater:Lcom/htc/android/epst/SettingValueUpdater;
    sget-object v1, Lcom/htc/android/epst/HtcNAM;->mPassword:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/htc/android/epst/SettingValueUpdater;->anthenticateOTKSL(Lcom/htc/android/epst/HtcNAM;Ljava/lang/String;)V

    .line 186
    iget-boolean v1, p0, Lcom/htc/android/epst/HtcNAM;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcNAM"

    const-string v2, "anthenticateOTKSL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v0           #updater:Lcom/htc/android/epst/SettingValueUpdater;
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    new-instance v1, Lcom/htc/android/epst/HtcNAM$ValidationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/android/epst/HtcNAM$ValidationTask;-><init>(Lcom/htc/android/epst/HtcNAM;Lcom/htc/android/epst/HtcNAM$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/htc/android/epst/HtcNAM$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public authenticateResult(Z)V
    .locals 8
    .parameter "isSuccessful"

    .prologue
    const v7, 0x7f0401e9

    .line 193
    iget-boolean v4, p0, Lcom/htc/android/epst/HtcNAM;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "HtcNAM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "authenticat result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    sget-object v4, Lcom/htc/android/epst/HtcNAM;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v4, :cond_1

    .line 195
    sget-object v4, Lcom/htc/android/epst/HtcNAM;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 196
    :cond_1
    if-eqz p1, :cond_6

    .line 197
    sget-object v4, Lcom/htc/android/epst/HtcNAM;->mPassword:Ljava/lang/String;

    const-string v5, "587846"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 198
    iget-boolean v4, p0, Lcom/htc/android/epst/HtcNAM;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "HtcNAM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "anthenticateOTKSL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    invoke-virtual {p0, v7}, Lcom/htc/android/epst/HtcNAM;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, name:Ljava/lang/String;
    new-instance v1, Lcom/htc/android/epst/SettingGroup;

    const-string v4, "NAM"

    invoke-direct {v1, v4}, Lcom/htc/android/epst/SettingGroup;-><init>(Ljava/lang/String;)V

    .line 201
    .local v1, group:Lcom/htc/android/epst/SettingGroup;
    const/16 v0, 0x8

    .line 202
    .local v0, currentIndex:I
    const-string v4, "epst_nam"

    invoke-virtual {v1, v4}, Lcom/htc/android/epst/SettingGroup;->setItemXML(Ljava/lang/String;)V

    .line 203
    invoke-static {v0}, Lcom/htc/android/epst/GroupTable;->setCurrentIndex(I)V

    .line 204
    const-string v4, "HtcNAM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingGroup;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-boolean v4, p0, Lcom/htc/android/epst/HtcNAM;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "HtcNAM"

    const-string v5, "call NAM items"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/htc/android/epst/ListItemsActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v2, i:Landroid/content/Intent;
    const-string v4, "group"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 208
    const-string v4, "mode"

    iget v5, p0, Lcom/htc/android/epst/HtcNAM;->mode:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v2}, Lcom/htc/android/epst/HtcNAM;->startActivity(Landroid/content/Intent;)V

    .line 210
    invoke-virtual {p0}, Lcom/htc/android/epst/HtcNAM;->finish()V

    .line 237
    .end local v0           #currentIndex:I
    .end local v1           #group:Lcom/htc/android/epst/SettingGroup;
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #name:Ljava/lang/String;
    :goto_0
    return-void

    .line 213
    :cond_4
    invoke-virtual {p0, v7}, Lcom/htc/android/epst/HtcNAM;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .restart local v3       #name:Ljava/lang/String;
    new-instance v1, Lcom/htc/android/epst/SettingGroup;

    invoke-direct {v1, v3}, Lcom/htc/android/epst/SettingGroup;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v1       #group:Lcom/htc/android/epst/SettingGroup;
    const/4 v0, 0x0

    .line 216
    .restart local v0       #currentIndex:I
    invoke-static {v0}, Lcom/htc/android/epst/GroupTable;->setCurrentIndex(I)V

    .line 217
    iget-boolean v4, p0, Lcom/htc/android/epst/HtcNAM;->DBG:Z

    if-eqz v4, :cond_5

    const-string v4, "HtcNAM"

    const-string v5, "call PST GROUP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/htc/android/epst/HtcGroupEPST;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .restart local v2       #i:Landroid/content/Intent;
    const-string v4, "mode"

    iget v5, p0, Lcom/htc/android/epst/HtcNAM;->mode:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v2}, Lcom/htc/android/epst/HtcNAM;->startActivity(Landroid/content/Intent;)V

    .line 221
    invoke-virtual {p0}, Lcom/htc/android/epst/HtcNAM;->finish()V

    goto :goto_0

    .line 226
    .end local v0           #currentIndex:I
    .end local v1           #group:Lcom/htc/android/epst/SettingGroup;
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #name:Ljava/lang/String;
    :cond_6
    new-instance v4, Lcom/htc/android/epst/HtcNAM$5;

    invoke-direct {v4, p0}, Lcom/htc/android/epst/HtcNAM$5;-><init>(Lcom/htc/android/epst/HtcNAM;)V

    invoke-virtual {p0, v4}, Lcom/htc/android/epst/HtcNAM;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public launchIME()V
    .locals 3

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/epst/HtcNAM;->mResultReceiver:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->retryCount:I

    .line 175
    iget-object v1, p0, Lcom/htc/android/epst/HtcNAM;->mResultReceiver:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    invoke-virtual {v1}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->relaunchIME()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->getSingleton()Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/HtcNAM;->mResultReceiver:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    .line 178
    const-string v1, "HtcNAM"

    const-string v2, "launchIME()renew IME"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/HtcNAM;->showDialog(I)V

    .line 62
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 95
    const-string v4, "HtcNAM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OoO onCreateDialog get id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 164
    :goto_0
    return-object v2

    .line 100
    :pswitch_0
    const-string v4, "HtcNAM"

    const-string v5, "OoO -> DIALOG_AUTH_PROGRESS"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v4, Lcom/htc/android/epst/HtcNAM;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v4, :cond_0

    .line 103
    sget-object v4, Lcom/htc/android/epst/HtcNAM;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 104
    sput-object v2, Lcom/htc/android/epst/HtcNAM;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 106
    :cond_0
    new-instance v4, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v4, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/htc/android/epst/HtcNAM;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 107
    sget-object v4, Lcom/htc/android/epst/HtcNAM;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v5, 0x7f04004f

    invoke-virtual {p0, v5}, Lcom/htc/android/epst/HtcNAM;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 108
    sget-object v4, Lcom/htc/android/epst/HtcNAM;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 109
    sget-object v4, Lcom/htc/android/epst/HtcNAM;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 110
    sget-object v2, Lcom/htc/android/epst/HtcNAM;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 112
    :pswitch_1
    const-string v4, "HtcNAM"

    const-string v5, "OoO -> DIALOG_PASSWORD"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 114
    .local v0, factory:Landroid/view/LayoutInflater;
    const/high16 v4, 0x7f02

    invoke-virtual {v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 115
    .local v3, textEntryView:Landroid/view/View;
    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 116
    .local v1, pwd:Landroid/widget/EditText;
    new-instance v4, Lcom/htc/android/epst/HtcNAM$1;

    invoke-direct {v4, p0}, Lcom/htc/android/epst/HtcNAM$1;-><init>(Lcom/htc/android/epst/HtcNAM;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    new-instance v4, Lcom/htc/android/epst/HtcNAM$2;

    invoke-direct {v4, p0}, Lcom/htc/android/epst/HtcNAM$2;-><init>(Lcom/htc/android/epst/HtcNAM;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 139
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 140
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 141
    invoke-virtual {p0}, Lcom/htc/android/epst/HtcNAM;->launchIME()V

    .line 143
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f040028

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/htc/android/epst/HtcNAM$4;

    invoke-direct {v6, p0}, Lcom/htc/android/epst/HtcNAM$4;-><init>(Lcom/htc/android/epst/HtcNAM;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    new-instance v6, Lcom/htc/android/epst/HtcNAM$3;

    invoke-direct {v6, p0}, Lcom/htc/android/epst/HtcNAM$3;-><init>(Lcom/htc/android/epst/HtcNAM;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 162
    .local v2, pwdDialog:Lcom/htc/widget/HtcAlertDialog;
    goto/16 :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 70
    :pswitch_0
    const-string v1, ""

    sput-object v1, Lcom/htc/android/epst/HtcNAM;->mPassword:Ljava/lang/String;

    .line 71
    const v1, 0x7f060001

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 72
    .local v0, pwd:Landroid/widget/EditText;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

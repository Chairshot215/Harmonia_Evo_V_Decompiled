.class public Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;
.super Landroid/app/Activity;
.source "CSErrorHandlingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$UpdateUserInfo;,
        Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$RemoveAccount;
    }
.end annotation


# static fields
.field private static final DIALOG_SHOW_ACCOUNT_DISCONNECT:I = 0x6

.field private static final DIALOG_SHOW_CHANGE_SIM:I = 0x4

.field private static final DIALOG_SHOW_CONFIRM_ACCOUNT:I = 0x1

.field private static final DIALOG_SHOW_CONFIRM_ACCOUNT_FROM_SERVER:I = 0x4

.field private static final DIALOG_SHOW_NEW_PASSWORD:I = 0x5

.field private static final DIALOG_SHOW_REMOVE_SIM:I = 0x3

.field private static final DIALOG_SHOW_WAIT_CONFIRM_ACCOUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[CSErrorHandlingDialog]"


# instance fields
.field TimezoneCityName:Ljava/lang/String;

.field TimezoneId:Ljava/lang/String;

.field appData:Landroid/content/Intent;

.field private cancelled:Z

.field dialog:Lcom/htc/widget/HtcAlertDialog;

.field private fromApp:Z

.field private fromServerData:Ljava/lang/String;

.field private volatile mActivityState:I

.field tvSummary:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->mActivityState:I

    .line 304
    return-void
.end method

.method static synthetic access$000(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->activityDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->cancelled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->fromApp:Z

    return v0
.end method

.method private activityDestroyed()Z
    .locals 2

    .prologue
    .line 283
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->mActivityState:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->mActivityState:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    .line 285
    :cond_0
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createCSErrorHandlingDialog(I)Landroid/app/Dialog;
    .locals 14
    .parameter "id"

    .prologue
    const v13, 0x7f09005b

    const v12, 0x1080027

    .line 77
    const-string v10, "MyHTC"

    const-string v11, "[CSErrorHandlingDialog]createCSErrorHandlingDialog"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    packed-switch p1, :pswitch_data_0

    .line 159
    :goto_0
    iget-object v10, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v10

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 84
    .local v3, mContext:Landroid/content/Context;
    const-string v10, "layout_inflater"

    invoke-virtual {v3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 85
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f030006

    const v10, 0x7f0b0005

    invoke-virtual {p0, v10}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v1, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, layout:Landroid/view/View;
    const v10, 0x7f0b000e

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 89
    .local v7, pw_changed:Landroid/widget/TextView;
    const v10, 0x7f09001d

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 91
    const v10, 0x7f0b000f

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 92
    .local v9, username:Landroid/widget/TextView;
    const v10, 0x7f09004a

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 94
    const v10, 0x7f0b0010

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    .local v0, emailtv:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v10, 0x7f0b0011

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 98
    .local v5, password:Landroid/widget/TextView;
    const v10, 0x7f09004c

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    .line 100
    const v10, 0x7f0b0007

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 102
    .local v8, text:Landroid/widget/EditText;
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v6, pwNewDB:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v10, 0x7f09001c

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 104
    invoke-virtual {v6, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 105
    new-instance v10, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$1;

    invoke-direct {v10, p0, v8}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$1;-><init>(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;Landroid/widget/EditText;)V

    invoke-virtual {v6, v13, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 116
    const v10, 0x7f09005c

    new-instance v11, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$2;

    invoke-direct {v11, p0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$2;-><init>(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;)V

    invoke-virtual {v6, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 126
    new-instance v10, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$3;

    invoke-direct {v10, p0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$3;-><init>(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;)V

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 134
    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 135
    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 139
    .end local v0           #emailtv:Landroid/widget/TextView;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    .end local v3           #mContext:Landroid/content/Context;
    .end local v5           #password:Landroid/widget/TextView;
    .end local v6           #pwNewDB:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v7           #pw_changed:Landroid/widget/TextView;
    .end local v8           #text:Landroid/widget/EditText;
    .end local v9           #username:Landroid/widget/TextView;
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09001f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 140
    .local v4, msg4:Ljava/lang/CharSequence;
    new-instance v10, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v10, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f09001e

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$4;

    invoke-direct {v11, p0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$4;-><init>(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;)V

    invoke-virtual {v10, v13, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->dialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 270
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 280
    .local v0, resultCode:I
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/16 v0, 0x21

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->mActivityState:I

    .line 69
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->createCSErrorHandlingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 246
    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->mActivityState:I

    .line 248
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 237
    const/16 v0, 0x24

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->mActivityState:I

    .line 241
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 253
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->mActivityState:I

    .line 180
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 258
    return-void
.end method

.method protected onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 188
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 189
    .local v1, intent:Landroid/content/Intent;
    iput-boolean v7, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->fromApp:Z

    .line 190
    iput-boolean v7, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->cancelled:Z

    .line 191
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, action:Ljava/lang/String;
    const-string v4, "MyHTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CSErrorHandlingDialog]action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-nez v1, :cond_0

    .line 195
    const-string v4, "MyHTC"

    const-string v5, "[CSErrorHandlingDialog]onStart(): intent == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_0
    return-void

    .line 197
    :cond_0
    if-nez v0, :cond_1

    .line 199
    const-string v4, "MyHTC"

    const-string v5, "[CSErrorHandlingDialog]onStart(): action == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_1
    const-string v4, "com.htc.cs.CSWebExceptionDB.DeviceDisconnected"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 203
    iput-boolean v8, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->fromApp:Z

    .line 204
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->appData:Landroid/content/Intent;

    .line 205
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    new-instance v2, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$RemoveAccount;

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$RemoveAccount;-><init>(Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;Landroid/content/Context;)V

    .line 207
    .local v2, removeAccount:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$RemoveAccount;
    invoke-virtual {v2}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$RemoveAccount;->start()V

    .line 208
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->showDialog(I)V

    goto :goto_0

    .line 211
    .end local v2           #removeAccount:Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog$RemoveAccount;
    :cond_2
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 212
    const-string v4, "Please sign in to HTC Sense Service"

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 214
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 216
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->finish()V

    goto :goto_0

    .line 220
    :cond_4
    const-string v4, "com.htc.cs.CSWebExceptionDB.RequireNewPassword"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 222
    iput-boolean v8, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->fromApp:Z

    .line 223
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->appData:Landroid/content/Intent;

    .line 224
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/htc/cs/activity/accountactivities/CSErrorHandlingDialog;->showDialog(I)V

    goto :goto_0

    .line 228
    :cond_5
    const-string v4, "MyHTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CSErrorHandlingDialog]onStart(): Not define action ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 265
    return-void
.end method

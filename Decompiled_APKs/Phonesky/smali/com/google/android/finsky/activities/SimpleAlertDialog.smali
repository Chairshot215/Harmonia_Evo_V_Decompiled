.class public Lcom/google/android/finsky/activities/SimpleAlertDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SimpleAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/SimpleAlertDialog$ConfigurableView;,
        Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/SimpleAlertDialog;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getListener()Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
    .locals 3

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 215
    .local v1, f:Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    if-eqz v2, :cond_0

    .line 216
    check-cast v1, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    .line 222
    .end local v1           #f:Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v1

    .line 218
    .restart local v1       #f:Landroid/support/v4/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 219
    .local v0, a:Landroid/app/Activity;
    instance-of v2, v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    if-eqz v2, :cond_1

    .line 220
    check-cast v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    .end local v0           #a:Landroid/app/Activity;
    move-object v1, v0

    goto :goto_0

    .line 222
    .restart local v0       #a:Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .locals 2
    .parameter "messageId"
    .parameter "positiveId"
    .parameter "negativeId"

    .prologue
    .line 64
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(ILjava/lang/String;III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(ILjava/lang/String;III)Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .locals 3
    .parameter "messageId"
    .parameter "message"
    .parameter "viewId"
    .parameter "positiveId"
    .parameter "negativeId"

    .prologue
    .line 87
    new-instance v1, Lcom/google/android/finsky/activities/SimpleAlertDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;-><init>()V

    .line 88
    .local v1, dialogFragment:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "message_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "layoutId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v2, "positive_id"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v2, "negative_id"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setArguments(Landroid/os/Bundle;)V

    .line 95
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;II)Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .locals 1
    .parameter "message"
    .parameter "positiveId"
    .parameter "negativeId"

    .prologue
    const/4 v0, -0x1

    .line 68
    invoke-static {v0, p0, v0, p1, p2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(ILjava/lang/String;III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceWithLayout(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .locals 2
    .parameter "layoutId"
    .parameter "positiveId"
    .parameter "negativeId"

    .prologue
    .line 82
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(ILjava/lang/String;III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 201
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getListener()Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    move-result-object v2

    .line 202
    .local v2, l:Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 204
    .local v0, arguments:Landroid/os/Bundle;
    const-string v4, "extra_arguments"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 205
    .local v1, extraArguments:Landroid/os/Bundle;
    const-string v4, "target_request_code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 206
    .local v3, requestCode:I
    invoke-interface {v2, v3, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;->onNegativeClick(ILandroid/os/Bundle;)V

    .line 208
    .end local v0           #arguments:Landroid/os/Bundle;
    .end local v1           #extraArguments:Landroid/os/Bundle;
    .end local v3           #requestCode:I
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 143
    .local v4, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 144
    .local v1, arguments:Landroid/os/Bundle;
    const-string v13, "message_id"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 145
    .local v8, messageId:I
    const-string v13, "message"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, message:Ljava/lang/String;
    const-string v13, "layoutId"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 147
    .local v6, layoutId:I
    const-string v13, "positive_id"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 148
    .local v10, positiveId:I
    const-string v13, "negative_id"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 149
    .local v9, negativeId:I
    const-string v13, "extra_arguments"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 150
    .local v5, extraArguments:Landroid/os/Bundle;
    const-string v13, "config_arguments"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 151
    .local v3, configArguments:Landroid/os/Bundle;
    const-string v13, "target_request_code"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 153
    .local v11, requestCode:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v2, b:Landroid/app/AlertDialog$Builder;
    const/4 v13, -0x1

    if-eq v8, v13, :cond_4

    .line 155
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 159
    :cond_0
    :goto_0
    const/4 v13, -0x1

    if-eq v10, v13, :cond_1

    .line 160
    new-instance v13, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;

    invoke-direct {v13, p0, v11, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;-><init>(Lcom/google/android/finsky/activities/SimpleAlertDialog;ILandroid/os/Bundle;)V

    invoke-virtual {v2, v10, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    :cond_1
    const/4 v13, -0x1

    if-eq v9, v13, :cond_2

    .line 173
    new-instance v13, Lcom/google/android/finsky/activities/SimpleAlertDialog$2;

    invoke-direct {v13, p0, v11, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog$2;-><init>(Lcom/google/android/finsky/activities/SimpleAlertDialog;ILandroid/os/Bundle;)V

    invoke-virtual {v2, v9, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    :cond_2
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 188
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const/4 v13, -0x1

    if-eq v6, v13, :cond_3

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v6, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 190
    .local v12, view:Landroid/view/View;
    invoke-virtual {v0, v12}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 191
    instance-of v13, v12, Lcom/google/android/finsky/activities/SimpleAlertDialog$ConfigurableView;

    if-eqz v13, :cond_3

    if-eqz v3, :cond_3

    .line 192
    check-cast v12, Lcom/google/android/finsky/activities/SimpleAlertDialog$ConfigurableView;

    .end local v12           #view:Landroid/view/View;
    invoke-interface {v12, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$ConfigurableView;->configureView(Landroid/os/Bundle;)V

    .line 195
    :cond_3
    return-object v0

    .line 156
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 157
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .locals 2
    .parameter "target"
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 114
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 116
    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, arguments:Landroid/os/Bundle;
    const-string v1, "extra_arguments"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 119
    const-string v1, "target_request_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setArguments(Landroid/os/Bundle;)V

    .line 123
    .end local v0           #arguments:Landroid/os/Bundle;
    :cond_1
    return-object p0
.end method

.method public setViewConfiguration(Landroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .locals 2
    .parameter "configArguments"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    .local v0, arguments:Landroid/os/Bundle;
    const-string v1, "config_arguments"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setArguments(Landroid/os/Bundle;)V

    .line 137
    return-object p0
.end method

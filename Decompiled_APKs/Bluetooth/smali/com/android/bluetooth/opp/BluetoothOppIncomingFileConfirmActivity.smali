.class public Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "BluetoothOppIncomingFileConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final D:Z = false

.field private static final DISMISS_TIMEOUT_DIALOG:I = 0x0

.field private static final DISMISS_TIMEOUT_DIALOG_VALUE:I = 0x7d0

.field private static final PREFERENCE_USER_TIMEOUT:Ljava/lang/String; = "user_timeout"

.field private static final TAG:Ljava/lang/String; = "BluetoothIncomingFileConfirmActivity"

.field private static final V:Z


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:Z

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

.field private mUpdateValues:Landroid/content/ContentValues;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 82
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 217
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V

    return-void
.end method

.method private onTimeout()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 204
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 207
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const v1, 0x7f040011

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 215
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 142
    packed-switch p2, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    .line 147
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    const-string v1, "confirm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    const v0, 0x7f04003a

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 157
    :pswitch_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    .line 158
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    const-string v1, "confirm"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    .line 98
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 99
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 100
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    if-nez v2, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    .line 126
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 108
    .local v1, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v2, 0x7f04000c

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 109
    const v2, 0x7f04000d

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v5, v5

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 112
    const v2, 0x7f04000f

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 113
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 114
    const v2, 0x7f04000e

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 115
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 116
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->setupAlert()V

    .line 118
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    if-eqz v2, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onDestroy()V

    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 169
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    .line 170
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    const-string v3, "visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    const v2, 0x7f04003b

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 174
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    .line 177
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 189
    const-string v0, "user_timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 191
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V

    .line 194
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 200
    const-string v0, "user_timeout"

    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    return-void
.end method

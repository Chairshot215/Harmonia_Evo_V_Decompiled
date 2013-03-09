.class public abstract Lcom/google/android/gm/GmailBaseActivity;
.super Landroid/app/Activity;
.source "GmailBaseActivity.java"

# interfaces
.implements Lcom/google/android/gm/MenuHandler$HelpCallback;
.implements Lcom/google/android/gm/RestrictedActivity;


# static fields
.field private static sForegroundInstance:Lcom/google/android/gm/GmailBaseActivity;


# instance fields
.field private mForegroundNdef:Landroid/nfc/NdefMessage;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field mOnMailEnginePrepared:Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;

.field private final mUiHandler:Lcom/google/android/gm/UiHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    new-instance v0, Lcom/google/android/gm/UiHandler;

    invoke-direct {v0}, Lcom/google/android/gm/UiHandler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/GmailBaseActivity;->mUiHandler:Lcom/google/android/gm/UiHandler;

    .line 121
    new-instance v0, Lcom/google/android/gm/GmailBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/GmailBaseActivity$1;-><init>(Lcom/google/android/gm/GmailBaseActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/GmailBaseActivity;->mOnMailEnginePrepared:Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;

    return-void
.end method

.method static getMailtoNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 9
    .parameter "account"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 170
    :try_start_0
    const-string v5, "UTF-8"

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    .local v0, accountBytes:[B
    :goto_0
    const/4 v3, 0x6

    .line 175
    .local v3, prefix:B
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [B

    .line 176
    .local v4, recordBytes:[B
    aput-byte v3, v4, v7

    .line 177
    array-length v5, v0

    invoke-static {v0, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v5, Landroid/nfc/NdefRecord;->RTD_URI:[B

    new-array v6, v7, [B

    invoke-direct {v2, v8, v5, v6, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 180
    .local v2, mailto:Landroid/nfc/NdefRecord;
    new-instance v5, Landroid/nfc/NdefMessage;

    new-array v6, v8, [Landroid/nfc/NdefRecord;

    aput-object v2, v6, v7

    invoke-direct {v5, v6}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v5

    .line 171
    .end local v0           #accountBytes:[B
    .end local v2           #mailto:Landroid/nfc/NdefRecord;
    .end local v3           #prefix:B
    .end local v4           #recordBytes:[B
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0       #accountBytes:[B
    goto :goto_0
.end method

.method static setForegroundNdef(Landroid/nfc/NdefMessage;)V
    .locals 3
    .parameter "ndef"

    .prologue
    .line 135
    sget-object v0, Lcom/google/android/gm/GmailBaseActivity;->sForegroundInstance:Lcom/google/android/gm/GmailBaseActivity;

    .line 136
    .local v0, foreground:Lcom/google/android/gm/GmailBaseActivity;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gm/GmailBaseActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_1

    .line 137
    monitor-enter v0

    .line 138
    :try_start_0
    iput-object p0, v0, Lcom/google/android/gm/GmailBaseActivity;->mForegroundNdef:Landroid/nfc/NdefMessage;

    .line 139
    sget-object v1, Lcom/google/android/gm/GmailBaseActivity;->sForegroundInstance:Lcom/google/android/gm/GmailBaseActivity;

    if-eqz v1, :cond_0

    .line 140
    if-eqz p0, :cond_2

    .line 141
    sget-object v1, Lcom/google/android/gm/GmailBaseActivity;->sForegroundInstance:Lcom/google/android/gm/GmailBaseActivity;

    iget-object v1, v1, Lcom/google/android/gm/GmailBaseActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    sget-object v2, Lcom/google/android/gm/GmailBaseActivity;->sForegroundInstance:Lcom/google/android/gm/GmailBaseActivity;

    invoke-virtual {v1, v2, p0}, Landroid/nfc/NfcAdapter;->enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    .line 148
    :cond_0
    :goto_0
    monitor-exit v0

    .line 150
    :cond_1
    return-void

    .line 144
    :cond_2
    sget-object v1, Lcom/google/android/gm/GmailBaseActivity;->sForegroundInstance:Lcom/google/android/gm/GmailBaseActivity;

    iget-object v1, v1, Lcom/google/android/gm/GmailBaseActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    sget-object v2, Lcom/google/android/gm/GmailBaseActivity;->sForegroundInstance:Lcom/google/android/gm/GmailBaseActivity;

    invoke-virtual {v1, v2}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPush(Landroid/app/Activity;)V

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 80
    return-object p0
.end method

.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "gm"

    return-object v0
.end method

.method public getUiHandler()Lcom/google/android/gm/UiHandler;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseActivity;->mUiHandler:Lcom/google/android/gm/UiHandler;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v6, 0x100

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gm/GmailBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 57
    .local v1, useHardwareAcceleration:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gm/GmailBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 66
    :goto_1
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gm/GmailBaseActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 67
    iget-object v3, p0, Lcom/google/android/gm/GmailBaseActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_0

    .line 69
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/gm/persistence/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, realAccount:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 71
    iget-object v3, p0, Lcom/google/android/gm/GmailBaseActivity;->mOnMailEnginePrepared:Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;

    invoke-static {p0, v0, v3}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineAsync(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;)V

    .line 75
    .end local v0           #realAccount:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/GmailBaseActivity;->mUiHandler:Lcom/google/android/gm/UiHandler;

    invoke-virtual {v3, v2}, Lcom/google/android/gm/UiHandler;->setEnabled(Z)V

    .line 76
    return-void

    .end local v1           #useHardwareAcceleration:Z
    :cond_1
    move v1, v3

    .line 55
    goto :goto_0

    .line 63
    .restart local v1       #useHardwareAcceleration:Z
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/GmailBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/GmailBaseActivity;->mForegroundNdef:Landroid/nfc/NdefMessage;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPush(Landroid/app/Activity;)V

    .line 104
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/GmailBaseActivity;->sForegroundInstance:Lcom/google/android/gm/GmailBaseActivity;

    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    sput-object p0, Lcom/google/android/gm/GmailBaseActivity;->sForegroundInstance:Lcom/google/android/gm/GmailBaseActivity;

    .line 113
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/GmailBaseActivity;->mForegroundNdef:Landroid/nfc/NdefMessage;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/google/android/gm/GmailBaseActivity;->mForegroundNdef:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, p0, v1}, Landroid/nfc/NfcAdapter;->enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    .line 116
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseActivity;->mUiHandler:Lcom/google/android/gm/UiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->setEnabled(Z)V

    .line 119
    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseActivity;->mUiHandler:Lcom/google/android/gm/UiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->setEnabled(Z)V

    .line 95
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 87
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseActivity;->mUiHandler:Lcom/google/android/gm/UiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->setEnabled(Z)V

    .line 88
    return-void
.end method

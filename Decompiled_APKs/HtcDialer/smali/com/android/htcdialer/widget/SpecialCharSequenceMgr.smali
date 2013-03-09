.class public Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$QueryHandler;,
        Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;
    }
.end annotation


# static fields
.field private static final ADN_NAME_COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final ADN_PHONE_NUMBER_COLUMN_NAME:Ljava/lang/String; = "number"

.field private static final ADN_QUERY_TOKEN:I = -0x1

.field private static final MMI_IMEI_DISPLAY:Ljava/lang/String; = "*#06#"

.field private static QUICK_START:Ljava/lang/String; = null

.field private static SECRETCODE_TTY:Ljava/lang/String; = null

.field private static final SECRET_CODE_PREFIX:Ljava/lang/String; = "##"

.field private static final SECRET_CODE_SUFFIX:Ljava/lang/String; = "#"

.field private static SETTINGS_TTY:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_IMEI_DISPLAY:Z = false

.field private static final TAG:Ljava/lang/String; = "SpecialCharSequenceMgr"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->SUPPORT_IMEI_DISPLAY:Z

    .line 184
    const-string v0, "shortcut"

    sput-object v0, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->QUICK_START:Ljava/lang/String;

    .line 185
    const-string v0, "TTY"

    sput-object v0, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->SETTINGS_TTY:Ljava/lang/String;

    .line 186
    const-string v0, "889"

    sput-object v0, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->SECRETCODE_TTY:Ljava/lang/String;

    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 15
    .parameter "context"
    .parameter "input"
    .parameter "textField"

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 203
    .local v9, config:Landroid/content/res/Configuration;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x10

    if-eq v2, v4, :cond_0

    .line 204
    invoke-static {v9}, Lcom/android/htcdialer/util/ConfigUtils;->isHardKeyboardHidden(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    const/4 v2, 0x0

    .line 287
    :goto_0
    return v2

    .line 214
    :cond_0
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/KeyguardManager;

    .line 216
    .local v11, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v11}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    const/4 v2, 0x0

    goto :goto_0

    .line 220
    :cond_1
    iget-object v13, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 221
    .local v13, locale:Ljava/util/Locale;
    iget-object v2, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->supportADN(Ljava/util/Locale;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 222
    const/4 v2, 0x0

    goto :goto_0

    .line 226
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v14

    .line 227
    .local v14, phoneType:I
    const/4 v2, 0x2

    if-ne v14, v2, :cond_3

    .line 228
    const-string v2, "SpecialCharSequenceMgr"

    const-string v4, "htcdialer, handleAdnEntry(), CDMA mode, return false."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v2, 0x0

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 234
    .local v12, len:I
    const/4 v2, 0x1

    if-le v12, v2, :cond_4

    const/4 v2, 0x5

    if-ge v12, v2, :cond_4

    const-string v2, "#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    const/4 v2, 0x0

    add-int/lit8 v4, v12, -0x1

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 247
    .local v10, index:I
    new-instance v1, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 250
    .local v1, handler:Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v10, -0x1

    const/4 v4, -0x1

    invoke-direct {v3, v2, v1, v4}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/htcdialer/widget/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 255
    .local v3, sc:Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;
    iput v10, v3, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 256
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 261
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 263
    iget-object v2, v3, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    const v4, 0x7f090029

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 264
    iget-object v2, v3, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    const v4, 0x7f090028

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v2, v3, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 266
    iget-object v2, v3, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 267
    iget-object v2, v3, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 268
    iget-object v2, v3, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 272
    iget-object v2, v3, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 278
    const/4 v2, -0x1

    const-string v4, "content://icc/phonebook"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 283
    .end local v1           #handler:Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$QueryHandler;
    .end local v3           #sc:Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v10           #index:I
    :catch_0
    move-exception v2

    .line 287
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "input"

    .prologue
    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 1
    .parameter "context"
    .parameter "input"
    .parameter "textField"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z
    .locals 2
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"
    .parameter "textField"

    .prologue
    .line 93
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0, p3}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    const/4 v1, 0x1

    .line 102
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"

    .prologue
    const/4 v0, 0x0

    .line 319
    sget-boolean v1, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->SUPPORT_IMEI_DISPLAY:Z

    if-eqz v1, :cond_0

    .line 320
    const-string v1, "*#06#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v0

    .line 331
    :cond_1
    invoke-static {p0, p2}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->showIMEIPanel(Landroid/content/Context;Z)V

    .line 332
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-nez v2, :cond_1

    .line 299
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "htcdialer, handlePinEntry(), No SIM card found, return false."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    :goto_0
    return v1

    .line 304
    :cond_1
    const-string v2, "**04"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "**05"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "Failed to handlePinMmi due to remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "input"

    .prologue
    const/high16 v10, 0x1000

    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v4, 0x1

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 122
    .local v1, len:I
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 124
    .local v2, nPhone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 127
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x30

    if-eq v6, v7, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x94

    if-eq v6, v7, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xa1

    if-eq v6, v7, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0xa

    if-eq v6, v7, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xa8

    if-eq v6, v7, :cond_3

    .line 133
    :cond_0
    const/4 v6, 0x3

    if-le v1, v6, :cond_3

    const-string v6, "##"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 135
    const-string v6, "SpecialCharSequenceMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OoO get input == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->SECRETCODE_TTY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_2

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 141
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v3, quickStartIntent:Landroid/content/Intent;
    sget-boolean v5, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v5, v4, :cond_1

    .line 143
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.CdmaCallOptions"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    :goto_0
    sget-object v5, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->QUICK_START:Ljava/lang/String;

    sget-object v6, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;->SETTINGS_TTY:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 181
    .end local v3           #quickStartIntent:Landroid/content/Intent;
    :goto_1
    return v4

    .line 145
    .restart local v3       #quickStartIntent:Landroid/content/Intent;
    :cond_1
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 155
    .end local v3           #quickStartIntent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://cdma"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 164
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const/16 v6, 0x8

    if-le v1, v6, :cond_4

    const-string v6, "*#*#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "#*#*"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    add-int/lit8 v8, v1, -0x4

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 167
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 172
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    sget-boolean v6, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x7

    if-ne v1, v6, :cond_5

    const-string v6, "*#0000#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 174
    const-string v5, "SpecialCharSequenceMgr"

    const-string v6, "Launch HtcAboutPhoneSettings"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.framework.activity.aboutphone.PhoneInformation_CT"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    move v4, v5

    .line 181
    goto/16 :goto_1
.end method

.method public static showIMEIPanel(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "useSystemWindow"

    .prologue
    .line 340
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, imeiStr:Ljava/lang/String;
    const v2, 0x7f090021

    .line 346
    .local v2, titleId:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 348
    sget-boolean v3, Lcom/android/htcdialer/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 349
    const-string v3, "SpecialCharSequenceMgr"

    const-string v4, "OoO get Imei For CDMA"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v3, "ro.gsm.imei"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    :cond_0
    :goto_0
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090037

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 365
    .local v0, alert:Lcom/htc/widget/HtcAlertDialog;
    return-void

    .line 352
    .end local v0           #alert:Lcom/htc/widget/HtcAlertDialog;
    :cond_1
    const v2, 0x7f09000b

    goto :goto_0
.end method

.method private static supportADN(Ljava/util/Locale;)Z
    .locals 4
    .parameter "currentLocale"

    .prologue
    .line 530
    const/4 v1, 0x1

    .line 535
    .local v1, support:Z
    if-eqz p0, :cond_1

    .line 537
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x33

    if-ne v2, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 541
    .local v0, isHKProject:Z
    :goto_0
    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 543
    const/4 v1, 0x0

    .line 551
    .end local v0           #isHKProject:Z
    :cond_1
    :goto_1
    return v1

    .line 537
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 544
    .restart local v0       #isHKProject:Z
    :cond_3
    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 545
    const/4 v1, 0x0

    goto :goto_1

    .line 546
    :cond_4
    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 547
    const/4 v1, 0x0

    goto :goto_1
.end method

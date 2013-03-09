.class public Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;
.super Landroid/app/Activity;
.source "HtcEnterBlacklistPwActivity.java"


# static fields
.field protected static final DEBUG:Z = false

.field static final MODE_CREATE_PASSWORD:I = 0x2

.field static final MODE_ENTER_PASSWORD:I = 0x1

.field static final MODE_MODIFY_PASSWORD:I = 0x3

.field static final TAG:Ljava/lang/String; = "HtcEnterBlacklistPwActivity"


# instance fields
.field private mBlackListPw:Ljava/lang/String;

.field private mBlacklistPasswordUri:Landroid/net/Uri;

.field mGoBack:Ljava/lang/Boolean;

.field private mInputLayout:Landroid/widget/LinearLayout;

.field private mIsBlackListPwSet:Z

.field private mMode:I

.field private mWM:Landroid/view/IWindowManager;

.field private showPwd:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private showPwdLayoutClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mGoBack:Ljava/lang/Boolean;

    .line 55
    iput-boolean v1, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mIsBlackListPwSet:Z

    .line 57
    sget-object v0, Lcom/htc/provider/HtcContactsContract$BLACKLIST_PASSWORD;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mBlacklistPasswordUri:Landroid/net/Uri;

    .line 442
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$3;-><init>(Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->showPwd:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 449
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$4;-><init>(Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->showPwdLayoutClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->doSaveAction()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->doRevertAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->showPassword(Z)V

    return-void
.end method

.method private checkCreatePassword(Z)Z
    .locals 6
    .parameter "isCreateOnly"

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, index:I
    if-nez p1, :cond_0

    .line 278
    add-int/lit8 v1, v1, 0x2

    .line 280
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mInputLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, password0:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mInputLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, v1, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, password1:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->setBlackListPw(Ljava/lang/String;)V

    .line 284
    const/4 v4, 0x1

    .line 295
    :goto_0
    return v4

    .line 288
    :cond_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v4, 0x7f0a02f8

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 291
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0308

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 292
    const v4, 0x7f0a00eb

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 293
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 295
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private checkEnterPassword()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 257
    iget-object v2, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, password:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->getBlackListPw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 270
    :goto_0
    return v2

    .line 263
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0a02f8

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 266
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0307

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 267
    const v2, 0x7f0a00eb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 268
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 270
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createEnterPwLayout()V
    .locals 3

    .prologue
    .line 216
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 217
    .local v1, inputHint:Landroid/widget/TextView;
    const v2, 0x7f0b001f

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 218
    const v2, 0x7f0a0303

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 219
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, inputField:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 222
    const/16 v2, 0x81

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 224
    iget-object v2, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    iget-object v2, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    return-void
.end method

.method private createModifyPwLayout()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->createEnterPwLayout()V

    .line 253
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->createNewPwLayout()V

    .line 254
    return-void
.end method

.method private createNewPwLayout()V
    .locals 7

    .prologue
    const v6, 0x7f0b001f

    const/16 v5, 0x81

    .line 229
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 230
    .local v3, newHint:Landroid/widget/TextView;
    invoke-virtual {v3, p0, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 231
    const v4, 0x7f0a0304

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 232
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 233
    .local v2, newField:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 235
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 237
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 238
    .local v1, newAgainHint:Landroid/widget/TextView;
    invoke-virtual {v1, p0, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 239
    const v4, 0x7f0a0305

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 240
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 241
    .local v0, newAgainField:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 243
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 245
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    return-void
.end method

.method public static decodePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "src"

    .prologue
    .line 417
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0x4

    rsub-int/lit8 v0, v6, 0x4

    .line 418
    .local v0, appendingLen:I
    const/4 v6, 0x4

    if-ge v0, v6, :cond_0

    .line 419
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 419
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    .end local v3           #i:I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    .line 424
    .local v1, encodeStr:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 425
    .end local v1           #encodeStr:Ljava/lang/String;
    .local v2, encodeStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 427
    .local v4, srcArray:[C
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_1

    .line 428
    aget-char v5, v4, v3

    .line 429
    .local v5, tmpChar:C
    add-int/lit8 v6, v3, 0x1

    aget-char v6, v4, v6

    aput-char v6, v4, v3

    .line 430
    add-int/lit8 v6, v3, 0x1

    aput-char v5, v4, v6

    .line 427
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 438
    .end local v5           #tmpChar:C
    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method

.method private doRevertAction()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 185
    iget v5, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mMode:I

    if-ne v5, v6, :cond_1

    .line 186
    const/4 v2, 0x0

    .line 188
    .local v2, isLocked:Z
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 191
    .local v4, pref:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_require_password"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    iget-object v5, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v5}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 198
    .end local v4           #pref:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 200
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    .local v3, mHomeIntent:Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const/high16 v5, 0x1020

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 206
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isLocked:Z
    .end local v3           #mHomeIntent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->finish()V

    .line 213
    return-void

    .line 194
    .restart local v2       #isLocked:Z
    :catch_0
    move-exception v0

    .line 195
    .local v0, ex:Landroid/os/RemoteException;
    const-string v5, "HtcEnterBlacklistPwActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doSaveAction()V
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 142
    :pswitch_0
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->checkEnterPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mGoBack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->setResult(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->finish()V

    goto :goto_0

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->goToBlacklistMainPage()V

    goto :goto_0

    .line 156
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->checkCreatePassword(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->goToBlacklistMainPage()V

    goto :goto_0

    .line 163
    :pswitch_2
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->checkEnterPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->checkCreatePassword(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->goToBlacklistMainPage()V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encodePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "src"

    .prologue
    .line 383
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 385
    .local v5, srcArray:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_0

    .line 386
    aget-char v6, v5, v3

    .line 387
    .local v6, tmpChar:C
    add-int/lit8 v7, v3, 0x1

    aget-char v7, v5, v7

    aput-char v7, v5, v3

    .line 388
    add-int/lit8 v7, v3, 0x1

    aput-char v6, v5, v7

    .line 385
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 390
    .end local v6           #tmpChar:C
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    .line 391
    .local v2, encodeStr:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    .line 392
    .local v0, base64Str:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    .line 393
    .end local v0           #base64Str:Ljava/lang/String;
    .local v1, base64Str:Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 394
    .local v4, index:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 399
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 406
    .end local v1           #base64Str:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private goToBlacklistMainPage()V
    .locals 2

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/htccontacts/blacklist/BlacklistLayerCarouselActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->finish()V

    .line 180
    return-void
.end method

.method private initUI()V
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->setTitleBar()V

    .line 107
    const v2, 0x7f070061

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mInputLayout:Landroid/widget/LinearLayout;

    .line 110
    const v2, 0x7f070017

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 111
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    new-instance v3, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$1;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$1;-><init>(Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    new-instance v3, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$2;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$2;-><init>(Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v2, 0x7f070063

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 126
    .local v1, chkShowPwd:Landroid/widget/ToggleButton;
    iget-object v2, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->showPwd:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    const v2, 0x7f070062

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->showPwdLayoutClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method private showPassword(Z)V
    .locals 4
    .parameter "showPass"

    .prologue
    .line 457
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mInputLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    .line 458
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 459
    .local v1, child_count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 460
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mInputLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 462
    .local v0, child:Landroid/widget/EditText;
    if-eqz p1, :cond_1

    .line 463
    const/16 v3, 0x91

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 469
    :goto_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 459
    .end local v0           #child:Landroid/widget/EditText;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    .restart local v0       #child:Landroid/widget/EditText;
    :cond_1
    const/16 v3, 0x81

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    .line 474
    .end local v0           #child:Landroid/widget/EditText;
    .end local v1           #child_count:I
    .end local v2           #i:I
    :cond_2
    return-void
.end method


# virtual methods
.method public getBlackListPw()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mBlacklistPasswordUri:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "password"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 355
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 356
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 358
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->decodePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mBlackListPw:Ljava/lang/String;

    .line 359
    iput-boolean v7, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mIsBlackListPwSet:Z

    .line 361
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 362
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mBlackListPw:Ljava/lang/String;

    .line 364
    :cond_1
    return-object v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->goToBlacklistMainPage()V

    .line 100
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 335
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 329
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 323
    return-void
.end method

.method public setBlackListPw(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    .line 369
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mIsBlackListPwSet:Z

    .line 371
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "password"

    invoke-static {p1}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->encodePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->mBlacklistPasswordUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 374
    return-void
.end method

.method protected setTitleBar()V
    .locals 2

    .prologue
    .line 131
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 132
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    if-eqz v0, :cond_0

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->buildHeaderBar(I)V

    .line 134
    const v1, 0x7f0a02f8

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setHeaderText(I)V

    .line 136
    :cond_0
    return-void
.end method

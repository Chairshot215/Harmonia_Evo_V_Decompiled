.class public abstract Lcom/htc/opensense/widget/BaseLoginActivity;
.super Landroid/app/Activity;
.source "BaseLoginActivity.java"

# interfaces
.implements Lcom/htc/socialnetwork/account/Constants;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaseLoginActivity"

.field static final account_uri:Landroid/net/Uri;

.field static final password_uri:Landroid/net/Uri;


# instance fields
.field private isLoginSuccess:Z

.field private mHtcContext:Landroid/content/Context;

.field mLoginButton:Landroid/widget/Button;

.field mPasswordInput:Landroid/widget/EditText;

.field public mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field mSSLCheckBox:Landroid/widget/CheckBox;

.field mShowPassword:Landroid/widget/CheckBox;

.field mUserInput:Landroid/widget/AutoCompleteTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "content://com.htc.accounts/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/BaseLoginActivity;->account_uri:Landroid/net/Uri;

    .line 86
    const-string v0, "content://com.htc.accounts/password"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/BaseLoginActivity;->password_uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->isLoginSuccess:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mHtcContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/widget/BaseLoginActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/BaseLoginActivity;->setShowPassword(Z)V

    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 668
    invoke-static {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->isNetworkAvailableExt(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailableExt(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 672
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 673
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 687
    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 675
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 676
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 677
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 678
    const-string v2, "BaseLoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.getType()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setShowPassword(Z)V
    .locals 2
    .parameter "showPassword"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 297
    :cond_0
    return-void

    .line 292
    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method


# virtual methods
.method getAccountList()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 494
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v7, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "_account"

    aput-object v0, v10, v1

    .line 496
    .local v10, projection:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 498
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/widget/BaseLoginActivity;->account_uri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "distinct _account"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_account asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 502
    if-eqz v8, :cond_1

    .line 503
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 508
    .local v6, account:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-nez v0, :cond_0

    .line 519
    .end local v6           #account:Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    .line 520
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 522
    :cond_2
    return-object v7

    .line 512
    :catch_0
    move-exception v9

    .line 513
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    if-eqz v8, :cond_2

    goto :goto_0

    .line 514
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v9

    .line 515
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    if-eqz v8, :cond_2

    goto :goto_0

    .line 516
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v9

    .line 517
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    if-eqz v8, :cond_2

    goto :goto_0

    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 520
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 519
    :cond_3
    throw v0
.end method

.method public getAuthenticateCallback()Landroid/accounts/AccountAuthenticatorResponse;
    .locals 3

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountAuthenticatorResponse"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 632
    .local v0, response:Landroid/os/Parcelable;
    if-nez v0, :cond_0

    .line 633
    const/4 v0, 0x0

    .line 634
    .end local v0           #response:Landroid/os/Parcelable;
    :goto_0
    return-object v0

    .restart local v0       #response:Landroid/os/Parcelable;
    :cond_0
    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    goto :goto_0
.end method

.method public abstract getLoginTextHint()Ljava/lang/CharSequence;
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getServiceTitle()Ljava/lang/String;
.end method

.method protected getShowPasswordValue()I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 526
    const/4 v8, 0x0

    .line 527
    .local v8, isShowPassword:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "show_password"

    aput-object v0, v2, v1

    .line 528
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 530
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/widget/BaseLoginActivity;->password_uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 535
    if-eqz v6, :cond_0

    .line 536
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v8

    .line 547
    :cond_0
    if-eqz v6, :cond_1

    .line 548
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 550
    :cond_1
    return v8

    .line 540
    :catch_0
    move-exception v7

    .line 541
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    if-eqz v6, :cond_1

    goto :goto_0

    .line 542
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v7

    .line 543
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    if-eqz v6, :cond_1

    goto :goto_0

    .line 544
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v7

    .line 545
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    if-eqz v6, :cond_1

    goto :goto_0

    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 548
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_2
    throw v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initLayout()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 210
    iget-object v5, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mHtcContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 212
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x20900a0

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 213
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/BaseLoginActivity;->setContentView(Landroid/view/View;)V

    .line 216
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "common_frame"

    const-string v7, "drawable"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, common_frame_res_id:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "login_layout"

    const-string v7, "id"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 221
    .local v3, login_layout_res_id:I
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 222
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 223
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 227
    .end local v0           #common_frame_res_id:I
    .end local v3           #login_layout_res_id:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getServiceTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/BaseLoginActivity;->setTitle(Ljava/lang/String;)V

    .line 228
    const v5, 0x2020170

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/AutoCompleteTextView;

    iput-object v5, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    .line 229
    iget-object v5, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    const/16 v6, 0x21

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 231
    iget-object v5, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getLoginTextHint()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 233
    new-instance v5, Lcom/htc/opensense/widget/BaseLoginActivity$3;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$3;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    new-array v6, v10, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/htc/opensense/widget/BaseLoginActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 252
    const v5, 0x2020171

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    .line 253
    iget-object v5, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    const v6, 0x20c0168

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 254
    const v5, 0x2020173

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    .line 256
    const v5, 0x2020172

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mShowPassword:Landroid/widget/CheckBox;

    .line 257
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getShowPasswordValue()I

    move-result v2

    .line 258
    .local v2, isShowPassword:I
    const-string v5, "BaseLoginActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isShowPassword = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-ne v2, v9, :cond_1

    .line 260
    invoke-direct {p0, v9}, Lcom/htc/opensense/widget/BaseLoginActivity;->setShowPassword(Z)V

    .line 261
    iget-object v5, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 263
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mShowPassword:Landroid/widget/CheckBox;

    new-instance v6, Lcom/htc/opensense/widget/BaseLoginActivity$4;

    invoke-direct {v6, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$4;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 275
    const v5, 0x2020174

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mSSLCheckBox:Landroid/widget/CheckBox;

    .line 276
    return-void
.end method

.method public isBlank()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSSLEnabled()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mSSLCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public abstract onClickRetry()V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 691
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 692
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "common_app_bkg"

    const-string v4, "drawable"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 694
    .local v0, bgkResId:I
    const-string v2, "common_app_bkg"

    invoke-static {p0, v2, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 696
    .local v1, bkgId:I
    if-eqz v1, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 698
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 700
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    :try_start_0
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->initLayout()V

    .line 97
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "common_app_bkg"

    const-string v4, "drawable"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, bgkResId:I
    const-string v2, "common_app_bkg"

    invoke-static {p0, v2, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, bkgId:I
    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 105
    :cond_0
    return-void

    .line 94
    .end local v0           #bgkResId:I
    .end local v1           #bkgId:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const v11, 0x20c0161

    const v10, 0x20c0160

    const v9, 0x20c015f

    const v8, 0x20c015d

    .line 327
    const/4 v1, 0x0

    .line 329
    .local v1, r:Landroid/content/res/Resources;
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mHtcContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 336
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "common_icon_dialog_alert"

    const-string v6, "drawable"

    const-string v7, "com.htc"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 341
    .local v2, resId:I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 482
    .end local v2           #resId:I
    :goto_1
    :pswitch_0
    return-object v3

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 339
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ic_dialog_alert"

    const-string v6, "drawable"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .restart local v2       #resId:I
    goto :goto_0

    .line 343
    :pswitch_1
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c0156

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c0162

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c0163

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/opensense/widget/BaseLoginActivity$7;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$7;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c0164

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/opensense/widget/BaseLoginActivity$6;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$6;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/opensense/widget/BaseLoginActivity$5;

    invoke-direct {v4, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$5;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto :goto_1

    .line 367
    :pswitch_2
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c0155

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/opensense/widget/BaseLoginActivity$9;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$9;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/opensense/widget/BaseLoginActivity$8;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$8;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_1

    .line 387
    :pswitch_3
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c0159

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c015a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/opensense/widget/BaseLoginActivity$10;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$10;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_1

    .line 399
    :pswitch_4
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c015b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c015c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/opensense/widget/BaseLoginActivity$11;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$11;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_1

    .line 411
    :pswitch_5
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c0166

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c0165

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/opensense/widget/BaseLoginActivity$12;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$12;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_1

    .line 424
    :pswitch_6
    new-instance v3, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v3, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 425
    iget-object v3, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v4, 0x20c0157

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v3, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v4, 0x108009b

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setIcon(I)V

    .line 428
    iget-object v3, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v4, Lcom/htc/opensense/widget/BaseLoginActivity$13;

    invoke-direct {v4, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$13;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 438
    iget-object v3, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto/16 :goto_1

    .line 440
    :pswitch_7
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c015e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/opensense/widget/BaseLoginActivity$16;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$16;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/opensense/widget/BaseLoginActivity$15;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$15;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/htc/opensense/widget/BaseLoginActivity$14;

    invoke-direct {v4, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$14;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_1

    .line 460
    :pswitch_8
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20c0158

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/opensense/widget/BaseLoginActivity$18;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$18;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/opensense/widget/BaseLoginActivity$17;

    invoke-direct {v5, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$17;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_1

    .line 341
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 659
    iget-boolean v1, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->isLoginSuccess:Z

    if-nez v1, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getAuthenticateCallback()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 661
    .local v0, callback:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    .line 662
    const/16 v1, 0x190

    const-string v2, "user cancel"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 664
    .end local v0           #callback:Landroid/accounts/AccountAuthenticatorResponse;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 665
    return-void
.end method

.method public abstract onForceQuitClick()V
.end method

.method public abstract onLoginButtonClick()V
.end method

.method public abstract onLogoutButtonClick()V
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 490
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 491
    return-void
.end method

.method public saveLoginData()V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, email:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/BaseLoginActivity;->writeAccount(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setLoginSuccessAndCallback(Landroid/accounts/Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 644
    if-eqz p1, :cond_1

    .line 645
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 646
    .local v1, result:Landroid/os/Bundle;
    const-string v2, "authAccount"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v2, "accountType"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getAuthenticateCallback()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 650
    .local v0, callback:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 652
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->isLoginSuccess:Z

    .line 656
    .end local v0           #callback:Landroid/accounts/AccountAuthenticatorResponse;
    .end local v1           #result:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 654
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->isLoginSuccess:Z

    goto :goto_0
.end method

.method public setLoginUI()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    const v1, 0x20c014e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    new-instance v1, Lcom/htc/opensense/widget/BaseLoginActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$2;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mSSLCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->showSSLOption()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mSSLCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mSSLCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLogoutUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "loginUserName"
    .parameter "loginUserPasswd"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    const v1, 0x20c014f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 153
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mLoginButton:Landroid/widget/Button;

    new-instance v1, Lcom/htc/opensense/widget/BaseLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/opensense/widget/BaseLoginActivity$1;-><init>(Lcom/htc/opensense/widget/BaseLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 162
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mUserInput:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 167
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mShowPassword:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mSSLCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4

    .line 173
    iget-object v0, p0, Lcom/htc/opensense/widget/BaseLoginActivity;->mSSLCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 175
    :cond_4
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 310
    const v2, 0x2020053

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 311
    .local v0, titleText:Landroid/widget/TextView;
    const v2, 0x2020054

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/BaseLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 312
    .local v1, title_shadowText:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showSSLOption()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method protected writeAccount(Ljava/lang/String;)V
    .locals 10
    .parameter "account"

    .prologue
    .line 555
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_account"

    aput-object v1, v2, v0

    .line 557
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_account=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 560
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/widget/BaseLoginActivity;->account_uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 564
    const/4 v6, 0x0

    .line 565
    .local v6, accountExist:Z
    if-eqz v7, :cond_0

    .line 566
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 567
    const/4 v6, 0x1

    .line 571
    :cond_0
    if-nez v6, :cond_1

    .line 572
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 573
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "_account"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/widget/BaseLoginActivity;->account_uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 584
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_1
    if-eqz v7, :cond_2

    .line 585
    .end local v6           #accountExist:Z
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_2
    return-void

    .line 577
    :catch_0
    move-exception v8

    .line 578
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    if-eqz v7, :cond_2

    goto :goto_0

    .line 579
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v8

    .line 580
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    if-eqz v7, :cond_2

    goto :goto_0

    .line 581
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v8

    .line 582
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    if-eqz v7, :cond_2

    goto :goto_0

    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 585
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 584
    :cond_3
    throw v0
.end method

.method protected writeShowPassword(I)V
    .locals 11
    .parameter "showPassword"

    .prologue
    .line 590
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "show_password"

    aput-object v1, v2, v0

    .line 591
    .local v2, projection:[Ljava/lang/String;
    const-string v10, "show_password"

    .line 593
    .local v10, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 595
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/widget/BaseLoginActivity;->password_uri:Landroid/net/Uri;

    const-string v3, "show_password"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 600
    const/4 v8, 0x0

    .line 601
    .local v8, isSet:Z
    if-eqz v6, :cond_0

    .line 602
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 603
    const/4 v8, 0x1

    .line 607
    :cond_0
    if-nez v8, :cond_2

    .line 608
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 609
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "show_password"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/widget/BaseLoginActivity;->password_uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 624
    :goto_0
    if-eqz v6, :cond_1

    .line 625
    .end local v8           #isSet:Z
    .end local v9           #values:Landroid/content/ContentValues;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_1
    return-void

    .line 613
    .restart local v8       #isSet:Z
    :cond_2
    :try_start_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 614
    .restart local v9       #values:Landroid/content/ContentValues;
    const-string v0, "show_password"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    invoke-virtual {p0}, Lcom/htc/opensense/widget/BaseLoginActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/widget/BaseLoginActivity;->password_uri:Landroid/net/Uri;

    const-string v3, "show_password"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 617
    .end local v8           #isSet:Z
    .end local v9           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 618
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    if-eqz v6, :cond_1

    goto :goto_1

    .line 619
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v7

    .line 620
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    if-eqz v6, :cond_1

    goto :goto_1

    .line 621
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v7

    .line 622
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "BaseLoginActivity"

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 624
    if-eqz v6, :cond_1

    goto :goto_1

    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 625
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 624
    :cond_3
    throw v0
.end method

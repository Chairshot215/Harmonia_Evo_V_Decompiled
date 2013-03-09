.class public Lcom/android/phone/SipCallOptionHandler;
.super Landroid/app/Activity;
.source "SipCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final DIALOG_NO_INTERNET_ERROR:I = 0x3

.field static final DIALOG_NO_VOIP:I = 0x4

.field static final DIALOG_SELECT_OUTGOING_SIP_PHONE:I = 0x1

.field static final DIALOG_SELECT_PHONE_TYPE:I = 0x0

.field static final DIALOG_SIZE:I = 0x5

.field static final DIALOG_START_SIP_SETTINGS:I = 0x2

.field static final TAG:Ljava/lang/String; = "SipCallOptionHandler"


# instance fields
.field private mCallOption:Ljava/lang/String;

.field private mDialogs:[Landroid/app/Dialog;

.field private mIntent:Landroid/content/Intent;

.field private mMakePrimary:Z

.field private mNumber:Ljava/lang/String;

.field private mOutgoingSipProfile:Landroid/net/sip/SipProfile;

.field private mProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mUnsetPriamryHint:Landroid/widget/TextView;

.field private mUseSipPhone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    .line 86
    iput-boolean v1, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SipCallOptionHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/SipCallOptionHandler;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/SipCallOptionHandler;->createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SipCallOptionHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/SipCallOptionHandler;)Lcom/android/phone/sip/SipSharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/SipCallOptionHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/SipCallOptionHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->getPrimarySipPhone()V

    return-void
.end method

.method private addMakeDefaultCheckBox(Landroid/app/Dialog;)V
    .locals 5
    .parameter "dialog"

    .prologue
    .line 299
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/phone/SipCallOptionHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 301
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090026

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 303
    .local v2, view:Landroid/view/View;
    const v3, 0x1020245

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 305
    .local v1, makePrimaryCheckBox:Landroid/widget/CheckBox;
    const v3, 0x7f0e0427

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 306
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 307
    const v3, 0x1020246

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    .line 309
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const v4, 0x7f0e0428

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    check-cast p1, Lcom/htc/widget/HtcAlertDialog;

    .end local p1
    invoke-virtual {p1, v2}, Lcom/htc/widget/HtcAlertDialog;->setView(Landroid/view/View;)V

    .line 312
    return-void
.end method

.method private createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V
    .locals 6
    .parameter "p"

    .prologue
    .line 370
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 371
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 385
    :goto_0
    return-void

    .line 375
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;)V

    .line 376
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v2

    .line 377
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v1

    .line 383
    .local v1, e:Landroid/net/sip/SipException;
    const-string v3, "SipCallOptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot open sip profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 380
    .end local v1           #e:Landroid/net/sip/SipException;
    .restart local v2       #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    :try_start_1
    const-string v3, "SipCallOptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot make sipphone profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/net/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getPrimaryFromExistingProfiles(Ljava/lang/String;)Landroid/net/sip/SipProfile;
    .locals 4
    .parameter "primarySipUri"

    .prologue
    const/4 v2, 0x0

    .line 456
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v3}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    .line 457
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 461
    :goto_0
    return-object v1

    .line 458
    :cond_0
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    .line 459
    .local v1, p:Landroid/net/sip/SipProfile;
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v1           #p:Landroid/net/sip/SipProfile;
    :cond_2
    move-object v1, v2

    .line 461
    goto :goto_0
.end method

.method private getPrimarySipPhone()V
    .locals 2

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, primarySipUri:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->getPrimaryFromExistingProfiles(Ljava/lang/String;)Landroid/net/sip/SipProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    .line 442
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 444
    new-instance v1, Lcom/android/phone/SipCallOptionHandler$3;

    invoke-direct {v1, p0}, Lcom/android/phone/SipCallOptionHandler$3;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/SipCallOptionHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 453
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto :goto_0
.end method

.method private getProfileNameArray()[Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 315
    iget-object v5, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 316
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 317
    .local v1, i:I
    iget-object v5, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/SipProfile;

    .line 318
    .local v4, p:Landroid/net/sip/SipProfile;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 320
    .end local v4           #p:Landroid/net/sip/SipProfile;
    :cond_0
    return-object v0
.end method

.method private isNetworkConnected()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 418
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/phone/SipCallOptionHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 420
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 422
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 427
    .end local v1           #ni:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 424
    .restart local v1       #ni:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v3, :cond_2

    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private setResultAndFinish()V
    .locals 1

    .prologue
    .line 388
    new-instance v0, Lcom/android/phone/SipCallOptionHandler$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SipCallOptionHandler$1;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method

.method private startGetPrimarySipPhoneThread()V
    .locals 2

    .prologue
    .line 431
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/SipCallOptionHandler$2;

    invoke-direct {v1, p0}, Lcom/android/phone/SipCallOptionHandler$2;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 436
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 358
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 361
    iput-boolean p2, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    .line 362
    if-eqz p2, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 324
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 354
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, p2

    .line 331
    .local v1, selection:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "SipCallOptionHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User pick phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1
    const v2, 0x7f0e042a

    invoke-virtual {p0, v2}, Lcom/android/phone/SipCallOptionHandler;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 333
    iput-boolean v5, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 334
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->startGetPrimarySipPhoneThread()V

    goto :goto_0

    .line 337
    .end local v1           #selection:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    aget-object v2, v2, v5

    if-ne p1, v2, :cond_4

    .line 338
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    iput-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    .line 353
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto :goto_0

    .line 339
    :cond_4
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_6

    .line 341
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_0

    .line 344
    :cond_6
    const/4 v2, -0x1

    if-ne p2, v2, :cond_7

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/sip/SipSettings;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->startActivity(Landroid/content/Intent;)V

    .line 350
    .end local v0           #newIntent:Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 94
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, action:Ljava/lang/String;
    const-string v8, "com.android.phone.SIP_SELECT_PHONE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 99
    const-string v8, "SipCallOptionHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate: got intent action \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\', expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "com.android.phone.SIP_SELECT_PHONE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 225
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v8, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    .line 110
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    if-nez v8, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/view/Window;->addFlags(I)V

    .line 142
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v7

    .line 143
    .local v7, voipSupported:Z
    sget-boolean v8, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "SipCallOptionHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "voipSupported: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2
    new-instance v8, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v8, p0}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 145
    new-instance v8, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v8, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 146
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v8}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    .line 147
    sget-boolean v8, Lcom/android/phone/SipCallOptionHandler;->DBG:Z

    if-eqz v8, :cond_3

    const-string v8, "SipCallOptionHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Call option: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_3
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 149
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, scheme:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v8, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v8}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOn()Z

    move-result v2

    .line 152
    .local v2, isInCellNetwork:Z
    const-string v8, "tel"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "sip"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    move v3, v10

    .line 156
    .local v3, isKnownCallScheme:Z
    :goto_1
    const-string v8, "sip"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    move v4, v10

    .line 176
    .local v4, isRegularCall:Z
    :goto_2
    if-nez v7, :cond_8

    .line 177
    if-nez v4, :cond_7

    .line 178
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_0

    .end local v3           #isKnownCallScheme:Z
    .end local v4           #isRegularCall:Z
    :cond_5
    move v3, v9

    .line 152
    goto :goto_1

    .restart local v3       #isKnownCallScheme:Z
    :cond_6
    move v4, v9

    .line 156
    goto :goto_2

    .line 180
    .restart local v4       #isRegularCall:Z
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_0

    .line 192
    :cond_8
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 193
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z

    move-result v8

    if-nez v8, :cond_9

    .line 194
    if-nez v4, :cond_c

    .line 195
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_0

    .line 200
    :cond_9
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    const-string v11, "SIP_ASK_ME_EACH_TIME"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    if-eqz v2, :cond_a

    .line 202
    invoke-virtual {p0, v9}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_0

    .line 207
    :cond_a
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    const-string v11, "SIP_ADDRESS_ONLY"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-nez v4, :cond_c

    .line 209
    :cond_b
    iput-boolean v10, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 214
    :cond_c
    iget-boolean v8, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    if-eqz v8, :cond_f

    .line 217
    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v8}, Lcom/android/phone/sip/SipProfileDb;->getProfilesCount()I

    move-result v8

    if-gtz v8, :cond_d

    if-nez v4, :cond_e

    .line 218
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->startGetPrimarySipPhoneThread()V

    goto/16 :goto_0

    .line 221
    :cond_e
    iput-boolean v9, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 224
    :cond_f
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x104000a

    const/4 v6, -0x1

    const/high16 v5, 0x104

    const v4, 0x1080027

    .line 239
    packed-switch p1, :pswitch_data_0

    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, dialog:Landroid/app/Dialog;
    :goto_0
    if-eqz v0, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    aput-object v0, v2, p1

    .line 295
    :cond_0
    return-object v0

    .line 241
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0425

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070005

    invoke-virtual {v2, v3, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 248
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 250
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0426

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->getProfileNameArray()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3, v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 257
    .restart local v0       #dialog:Landroid/app/Dialog;
    invoke-direct {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->addMakeDefaultCheckBox(Landroid/app/Dialog;)V

    goto :goto_0

    .line 260
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_2
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e042b

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e042c

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e042d

    invoke-virtual {v2, v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 268
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 270
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_3
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v1

    .line 271
    .local v1, wifiOnly:Z
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_1

    const v2, 0x7f0e0465

    :goto_1
    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    if-eqz v1, :cond_2

    const v2, 0x7f0e0467

    :goto_2
    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 280
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 271
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    const v2, 0x7f0e0464

    goto :goto_1

    :cond_2
    const v2, 0x7f0e0466

    goto :goto_2

    .line 282
    .end local v1           #wifiOnly:Z
    :pswitch_4
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0468

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 288
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 230
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    .local v0, arr$:[Landroid/app/Dialog;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 232
    .local v1, dialog:Landroid/app/Dialog;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 231
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    .end local v1           #dialog:Landroid/app/Dialog;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_0
.end method

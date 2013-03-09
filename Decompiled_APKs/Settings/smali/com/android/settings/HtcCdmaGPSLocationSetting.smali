.class public Lcom/android/settings/HtcCdmaGPSLocationSetting;
.super Landroid/app/Activity;
.source "HtcCdmaGPSLocationSetting.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HtcCdmaGPSLocationSetting$MyHandler;
    }
.end annotation


# static fields
.field private static final INTENT_GPSONE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.GPSONE_MODE_CHANGED"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaGPSLocationSetting"

.field public static final SHOW_DISCLAIMER_KEY:Ljava/lang/String; = "show_disclaimer_key_usc"

.field protected static ans:I

.field protected static choice:I

.field protected static mRadioGroup:Landroid/widget/RadioGroup;


# instance fields
.field private final DBG:Z

.field dialogForDoubleConfirm:Lcom/htc/widget/HtcAlertDialog;

.field private doubleConfirmFromExtraValue:Z

.field private enableChangeValue:Z

.field private mCbDoNotShowAgain:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRadioButton_1:Landroid/widget/RadioButton;

.field private mRadioButton_2:Landroid/widget/RadioButton;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field radio_listener:Landroid/view/View$OnClickListener;

.field private settings:Landroid/content/SharedPreferences;

.field private showGPSONEforWarning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->ans:I

    .line 58
    const/4 v0, -0x2

    sput v0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->choice:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->DBG:Z

    .line 64
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_1:Landroid/widget/RadioButton;

    .line 65
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_2:Landroid/widget/RadioButton;

    .line 67
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 70
    iput-boolean v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->enableChangeValue:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->doubleConfirmFromExtraValue:Z

    .line 142
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->dialogForDoubleConfirm:Lcom/htc/widget/HtcAlertDialog;

    .line 144
    new-instance v0, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;

    invoke-direct {v0, p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting$3;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSetting;)V

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->radio_listener:Landroid/view/View$OnClickListener;

    .line 197
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 198
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mContext:Landroid/content/Context;

    .line 292
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mCbDoNotShowAgain:Landroid/widget/CheckBox;

    .line 342
    iput-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->settings:Landroid/content/SharedPreferences;

    .line 354
    iput-boolean v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->showGPSONEforWarning:Z

    .line 467
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_2:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/HtcCdmaGPSLocationSetting;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->setGPSONEenable(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/HtcCdmaGPSLocationSetting;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->allowChangeRadio(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mCbDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/HtcCdmaGPSLocationSetting;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->setShowEuraEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private allowChangeRadio(Z)V
    .locals 3
    .parameter "allowed"

    .prologue
    .line 74
    const-string v0, "HtcCdmaGPSLocationSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO allowChange ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-boolean p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->enableChangeValue:Z

    .line 76
    return-void
.end method

.method public static isShowDiscliamerEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 299
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 300
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "show_disclaimer_key_usc"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 302
    .local v0, ret:Z
    const-string v2, "HtcCdmaGPSLocationSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO Current isShowDiscliamerEnabled("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return v0
.end method

.method private setGPSONEenable(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, valueOfSetting:I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GPSONE_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 323
    const/4 v1, 0x1

    .line 324
    const-string v2, "MtGpsSetting"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 331
    const-string v2, "HtcCdmaGPSLocationSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO setGPSONE enable ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gpsone_allowed"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    const-string v2, "HtcCdmaGPSLocationSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO setGPS enable ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 338
    return-void

    .line 325
    :cond_1
    if-nez p1, :cond_0

    .line 326
    const/4 v1, 0x0

    .line 327
    const-string v2, "MtGpsSetting"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setShowEuraEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 308
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_disclaimer_key_usc"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 311
    const-string v0, "HtcCdmaGPSLocationSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OoO setShowEuraEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method

.method private showWarningMessageOnBoot()V
    .locals 3

    .prologue
    .line 448
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c03f8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c03f3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/HtcCdmaGPSLocationSetting$6;

    invoke-direct {v2, p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting$6;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSetting;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c03fa

    new-instance v2, Lcom/android/settings/HtcCdmaGPSLocationSetting$5;

    invoke-direct {v2, p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting$5;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSetting;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 463
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .parameter "arg0"
    .parameter "checkedId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 79
    sput p2, Lcom/android/settings/HtcCdmaGPSLocationSetting;->choice:I

    .line 81
    iget-boolean v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->enableChangeValue:Z

    if-nez v0, :cond_1

    .line 82
    const-string v0, "HtcCdmaGPSLocationSetting"

    const-string v1, "OoO enable change Radio button again"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0, v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->allowChangeRadio(Z)V

    .line 87
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    if-ne v0, v3, :cond_0

    .line 88
    sget v0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->choice:I

    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_1:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->showGPSONEforWarning:Z

    if-ne v0, v3, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->showWarningMessageOnBoot()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    sget v0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->choice:I

    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_1:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 99
    iget-boolean v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->doubleConfirmFromExtraValue:Z

    if-ne v0, v3, :cond_2

    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    if-ne v0, v3, :cond_2

    .line 101
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 102
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c03f8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c03f2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/HtcCdmaGPSLocationSetting$2;

    invoke-direct {v2, p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting$2;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSetting;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/HtcCdmaGPSLocationSetting$1;

    invoke-direct {v2, p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting$1;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSetting;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->dialogForDoubleConfirm:Lcom/htc/widget/HtcAlertDialog;

    .line 123
    iput-boolean v4, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->doubleConfirmFromExtraValue:Z

    .line 126
    :cond_2
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0, v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->setGPSONEenable(Z)V

    goto :goto_0

    .line 130
    :cond_3
    sget v0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->choice:I

    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_2:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 131
    const-string v0, "HtcCdmaGPSLocationSetting"

    const-string v1, "OoO onClick Radio 2"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0, v4}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->setGPSONEenable(Z)V

    .line 136
    sget-boolean v0, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    if-ne v0, v3, :cond_0

    .line 137
    invoke-virtual {p0, v4}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->setshowGPSONEforWarning(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const v9, 0x7f0c03f1

    const v8, 0x7f0c03ef

    const/4 v7, 0x0

    const v6, 0x7f080095

    const/4 v5, 0x1

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 206
    iput-object p0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mContext:Landroid/content/Context;

    .line 211
    const-string v3, "HTC_CDMA_FEATURE"

    invoke-virtual {p0, v3, v7}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->settings:Landroid/content/SharedPreferences;

    .line 213
    const v3, 0x7f04003a

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->setContentView(I)V

    .line 215
    const v3, 0x7f080097

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    sput-object v3, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 216
    const v3, 0x7f080098

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_1:Landroid/widget/RadioButton;

    .line 217
    const v3, 0x7f080099

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_2:Landroid/widget/RadioButton;

    .line 218
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_1:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_2:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->radio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v3, 0x7f080028

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 226
    .local v1, headerTextForUSC:Landroid/widget/TextView;
    const v3, 0x7f080096

    invoke-virtual {p0, v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mCbDoNotShowAgain:Landroid/widget/CheckBox;

    .line 227
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_USC:Z

    if-ne v3, v5, :cond_5

    .line 228
    if-nez v1, :cond_3

    .line 229
    const-string v3, "HtcCdmaGPSLocationSetting"

    const-string v4, "OoO null ponter of object (headerText)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 235
    .local v2, tv:Landroid/widget/TextView;
    if-nez v2, :cond_4

    .line 236
    const-string v3, "HtcCdmaGPSLocationSetting"

    const-string v4, "OoO null ponter of object (feature_description)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_1
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mCbDoNotShowAgain:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/settings/HtcCdmaGPSLocationSetting$4;

    invoke-direct {v4, p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting$4;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSetting;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    .end local v2           #tv:Landroid/widget/TextView;
    :goto_2
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_SP:Z

    if-ne v3, v5, :cond_0

    .line 260
    invoke-virtual {p0, v6}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 261
    .restart local v2       #tv:Landroid/widget/TextView;
    if-nez v2, :cond_6

    .line 262
    const-string v3, "HtcCdmaGPSLocationSetting"

    const-string v4, "OoO null ponter of object (feature_description)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_3
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_1:Landroid/widget/RadioButton;

    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setText(I)V

    .line 267
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_2:Landroid/widget/RadioButton;

    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setText(I)V

    .line 272
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_0
    const-string v3, "ro.cid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, cid:Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_ACG_OR_PLS:Z

    if-eq v3, v5, :cond_1

    const-string v3, "UTSI_040"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 276
    .restart local v2       #tv:Landroid/widget/TextView;
    if-nez v2, :cond_7

    .line 277
    const-string v3, "HtcCdmaGPSLocationSetting"

    const-string v4, "OoO null ponter of object (feature_description)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_4
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_1:Landroid/widget/RadioButton;

    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setText(I)V

    .line 282
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_2:Landroid/widget/RadioButton;

    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setText(I)V

    .line 287
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_2
    sget-object v3, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 288
    return-void

    .line 231
    .end local v0           #cid:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    const v3, 0x7f0c03fb

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 238
    .restart local v2       #tv:Landroid/widget/TextView;
    :cond_4
    const v3, 0x7f0c03ed

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 252
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mCbDoNotShowAgain:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 253
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mCbDoNotShowAgain:Landroid/widget/CheckBox;

    goto :goto_2

    .line 264
    .restart local v2       #tv:Landroid/widget/TextView;
    :cond_6
    const v3, 0x7f0c03ec

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 279
    .restart local v0       #cid:Ljava/lang/String;
    :cond_7
    const v3, 0x7f0c03eb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 442
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->finish()V

    .line 444
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 358
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 360
    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mCbDoNotShowAgain:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    .line 361
    iget-object v5, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mCbDoNotShowAgain:Landroid/widget/CheckBox;

    invoke-static {p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->isShowDiscliamerEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 364
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->doubleConfirmFromExtraValue:Z

    .line 365
    iput-boolean v4, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->enableChangeValue:Z

    .line 367
    sget-boolean v2, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    if-ne v2, v3, :cond_2

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "GPSONE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, mShortCutOfSecrectCode:Ljava/lang/String;
    const-string v2, "HtcCdmaGPSLocationSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OoO getExtra ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 371
    iput-boolean v4, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->showGPSONEforWarning:Z

    .line 377
    :cond_1
    :goto_1
    const-string v2, "HtcCdmaGPSLocationSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OoO showGPSONEforWarning ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->showGPSONEforWarning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v1           #mShortCutOfSecrectCode:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "GPSONE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .restart local v1       #mShortCutOfSecrectCode:Ljava/lang/String;
    const-string v2, "HtcCdmaGPSLocationSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OoO getExtra ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v2, "HtcCdmaGPSLocationSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OoO showGPSONEforWarning ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->showGPSONEforWarning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 409
    .end local v1           #mShortCutOfSecrectCode:Ljava/lang/String;
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "gps"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_9

    .line 412
    const-string v2, "HtcCdmaGPSLocationSetting"

    const-string v3, "OoO checkButton(1"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_1:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_2
    return-void

    :cond_4
    move v2, v4

    .line 361
    goto/16 :goto_0

    .line 373
    .restart local v1       #mShortCutOfSecrectCode:Ljava/lang/String;
    :cond_5
    const-string v2, "GPSONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    iput-boolean v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->showGPSONEforWarning:Z

    goto/16 :goto_1

    .line 386
    :cond_6
    const-string v2, "DoubleConfirm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 387
    invoke-direct {p0, v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->allowChangeRadio(Z)V

    .line 388
    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->dialogForDoubleConfirm:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_7

    .line 389
    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->dialogForDoubleConfirm:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 390
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->dialogForDoubleConfirm:Lcom/htc/widget/HtcAlertDialog;

    .line 392
    :cond_7
    iput-boolean v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->doubleConfirmFromExtraValue:Z

    .line 393
    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_1:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 395
    :cond_8
    const-string v2, "OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 396
    invoke-direct {p0, v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->allowChangeRadio(Z)V

    .line 397
    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_2:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 415
    .end local v1           #mShortCutOfSecrectCode:Ljava/lang/String;
    :cond_9
    :try_start_1
    const-string v2, "HtcCdmaGPSLocationSetting"

    const-string v3, "OoO checkButton(2"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v2, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_2:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 417
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->allowChangeRadio(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcCdmaGPSLocationSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO excpetion occurred ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method setshowGPSONEforWarning(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 347
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "SHOW_GPSONE_WARNING"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 348
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    const-string v1, "HtcCdmaGPSLocationSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OoO set showWarningMsg on boot ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting;->settings:Landroid/content/SharedPreferences;

    const-string v4, "SHOW_GPSONE_WARNING"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void
.end method

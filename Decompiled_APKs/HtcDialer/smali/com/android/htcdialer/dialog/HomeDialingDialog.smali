.class public Lcom/android/htcdialer/dialog/HomeDialingDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "HomeDialingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;
    }
.end annotation


# static fields
.field private static final COUNTRY_LABEL_FORMATE:Ljava/lang/String; = "%s (+%s)"

.field private static final DEBUG:Z = false

.field private static final KEY_INTENT:Ljava/lang/String; = "intent"

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final MSG_PLAY_TONE:I = 0x1

.field private static final MSG_STOP_TONE:I = 0x2

.field private static final SAMPLE_PHONE_NUMBER:Ljava/lang/String; = "0289124138"

.field private static final TAG:Ljava/lang/String; = "HomeDialingDialog"


# instance fields
.field private mAgree:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

.field private mBundle:Landroid/os/Bundle;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mChoice:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

.field public mCountry:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCountryLabel:Landroid/widget/TextView;

.field private mDisagree:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

.field private mDropdown:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

.field private mNumber:Ljava/lang/String;

.field private mTable:Lcom/android/htcdialer/assist/CountryTable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 452
    new-instance v0, Lcom/android/htcdialer/dialog/HomeDialingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog$1;-><init>(Lcom/android/htcdialer/dialog/HomeDialingDialog;)V

    iput-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p2, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mBundle:Landroid/os/Bundle;

    .line 116
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mBundle:Landroid/os/Bundle;

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mBundle:Landroid/os/Bundle;

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mNumber:Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->init()V

    .line 118
    return-void

    .line 116
    :cond_0
    const-string v0, "0289124138"

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/android/htcdialer/dialog/HomeDialingDialog;)Lcom/android/htcdialer/util/KeypadUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    return-object v0
.end method

.method private appendCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "number"

    .prologue
    const/4 v9, 0x0

    .line 405
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    if-nez v8, :cond_1

    .line 433
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 409
    .restart local p1
    :cond_1
    iget-object v8, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    const-string v10, "cc"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    const-string v10, "cc"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v2, v8

    .line 411
    .local v2, cc:Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    const-string v10, "tc"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    const-string v9, "tc"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v7, v8

    .line 413
    .local v7, tc:Ljava/lang/String;
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    aput-object v7, v8, v9

    invoke-direct {p0, v8}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->calcBuilderLength([Ljava/lang/String;)I

    move-result v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 415
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 416
    const/16 v8, 0x2b

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_2
    const/4 v3, 0x0

    .line 420
    .local v3, hasTc:Z
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 421
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3
    if-ge v4, v5, :cond_3

    aget-object v6, v0, v4

    .line 422
    .local v6, prefix:Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 423
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const/4 v3, 0x1

    .line 429
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #prefix:Ljava/lang/String;
    :cond_3
    if-nez v3, :cond_4

    .line 430
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #cc:Ljava/lang/String;
    .end local v3           #hasTc:Z
    .end local v7           #tc:Ljava/lang/String;
    :cond_5
    move-object v2, v9

    .line 409
    goto :goto_1

    .restart local v2       #cc:Ljava/lang/String;
    :cond_6
    move-object v7, v9

    .line 411
    goto :goto_2

    .line 421
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v3       #hasTc:Z
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #prefix:Ljava/lang/String;
    .restart local v7       #tc:Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private varargs calcBuilderLength([Ljava/lang/String;)I
    .locals 6
    .parameter "strings"

    .prologue
    .line 437
    const/4 v3, 0x0

    .line 439
    .local v3, length:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 440
    .local v4, string:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_1
    add-int/2addr v3, v5

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1

    .line 443
    .end local v4           #string:Ljava/lang/String;
    :cond_1
    return v3
.end method

.method private callOut(I)V
    .locals 6
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-object v3, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mBundle:Landroid/os/Bundle;

    const-string v4, "number"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mBundle:Landroid/os/Bundle;

    const-string v4, "number"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, number:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    :goto_1
    return-void

    .end local v1           #number:Ljava/lang/String;
    :cond_0
    move-object v1, v2

    .line 382
    goto :goto_0

    .line 387
    .restart local v1       #number:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 388
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mBundle:Landroid/os/Bundle;

    const-string v4, "intent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 389
    iget-object v3, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mBundle:Landroid/os/Bundle;

    const-string v4, "intent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #intent:Landroid/content/Intent;
    check-cast v0, Landroid/content/Intent;

    .line 394
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_2
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mChoice:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    iget-object v4, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mAgree:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 395
    invoke-direct {p0, v1}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->appendCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    :cond_2
    const-string v3, "number"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "home_dialing"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tel"

    invoke-static {v4, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 400
    invoke-static {v0}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    goto :goto_1

    .line 391
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method private getCheckedState()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 123
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "home_dialing_pref"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 125
    .local v0, checked:Z
    if-nez v0, :cond_0

    .line 126
    const-string v3, "home_dialing_should_check"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 128
    .local v2, shouldChecke:Z
    if-eqz v2, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 130
    const-string v3, "home_dialing_should_check"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 133
    .end local v2           #shouldChecke:Z
    :cond_0
    return v0
.end method

.method private getDefaultCountry()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, mcc:Ljava/lang/String;
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_0

    .line 142
    const-string v1, "460"

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->mnc:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, mnc:Ljava/lang/String;
    const-string v3, "ro.cid"

    const-string v4, "11111111"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "GLOBA001"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "222"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "01"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "88"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    :cond_1
    const-string v1, "302"

    .line 163
    :cond_2
    iget-object v3, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mTable:Lcom/android/htcdialer/assist/CountryTable;

    const-string v4, "mcc"

    invoke-virtual {v3, v4, v1}, Lcom/android/htcdialer/assist/CountryTable;->queryCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 164
    .local v0, country:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_3

    .line 165
    const-string v3, "HomeDialingDialog"

    const-string v4, "getDefaultCountry() country = null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_3
    return-object v0
.end method

.method private getSavedCountry()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 174
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 175
    .local v1, country:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "home_dialing_country_code"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, cc:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mTable:Lcom/android/htcdialer/assist/CountryTable;

    const-string v4, "cc"

    invoke-virtual {v3, v4, v0}, Lcom/android/htcdialer/assist/CountryTable;->queryCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 179
    if-nez v1, :cond_0

    .line 180
    const-string v3, "HomeDialingDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSavedCountry() operatorCountry = null, cc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    return-object v1
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 211
    .local v6, res:Landroid/content/res/Resources;
    new-instance v0, Lcom/android/htcdialer/assist/CountryTable;

    invoke-direct {v0, v6}, Lcom/android/htcdialer/assist/CountryTable;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mTable:Lcom/android/htcdialer/assist/CountryTable;

    .line 213
    invoke-virtual {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030009

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, layout:Landroid/view/View;
    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 214
    invoke-virtual/range {v0 .. v5}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->setView(Landroid/view/View;IIII)V

    .line 216
    const v0, 0x7f090093

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->setTitle(I)V

    .line 217
    invoke-virtual {p0, p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 221
    const v0, 0x7f090030

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v7, v0, p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 228
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->initItems(Landroid/view/View;)V

    .line 230
    invoke-direct {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->restore()V

    .line 231
    return-void

    .line 224
    :cond_0
    const v0, 0x7f090039

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v7, v0, p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 225
    const/4 v0, -0x2

    const v2, 0x7f09003a

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private initCheckedTextView(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;II)V
    .locals 1
    .parameter "ctv"
    .parameter "color"
    .parameter "textId"

    .prologue
    .line 234
    #getter for: Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->txt1:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->access$000(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 235
    #getter for: Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->txt2:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->access$100(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    #getter for: Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->view:Landroid/view/View;
    invoke-static {p1}, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->access$200(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    return-void
.end method

.method private initItems(Landroid/view/View;)V
    .locals 12
    .parameter "layout"

    .prologue
    const v11, 0x7f0b0045

    const v10, 0x20804c5

    const v9, 0x20200fc

    const v8, 0x2020010

    const/4 v7, 0x0

    .line 240
    const-string v5, "initItems() ... "

    invoke-direct {p0, v5}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->log(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20a0016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 244
    .local v2, color:I
    new-instance v5, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;-><init>(Lcom/android/htcdialer/dialog/HomeDialingDialog;Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mAgree:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    .line 245
    iget-object v5, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mAgree:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    const v6, 0x7f090095

    invoke-direct {p0, v5, v2, v6}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->initCheckedTextView(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;II)V

    .line 246
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 247
    .local v3, radiobutton:Landroid/widget/RadioButton;
    const-string v5, "common_radiobutton"

    const-string v6, "drawable"

    invoke-static {v5, v6, v10}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 248
    .local v4, resid:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   Yes radio button set button drawable to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->log(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 253
    new-instance v5, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    const v6, 0x7f0b0046

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;-><init>(Lcom/android/htcdialer/dialog/HomeDialingDialog;Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mDisagree:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    .line 254
    iget-object v5, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mDisagree:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    const v6, 0x7f090096

    invoke-direct {p0, v5, v2, v6}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->initCheckedTextView(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;II)V

    .line 255
    const v5, 0x7f0b0046

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #radiobutton:Landroid/widget/RadioButton;
    check-cast v3, Landroid/widget/RadioButton;

    .line 256
    .restart local v3       #radiobutton:Landroid/widget/RadioButton;
    const-string v5, "common_radiobutton"

    const-string v6, "drawable"

    invoke-static {v5, v6, v10}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   No radio button set button drawable to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->log(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 260
    iget-object v5, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mDisagree:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    #getter for: Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->txt2:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->access$100(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const v5, 0x7f0b0044

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 264
    .local v1, SelectItem:Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090094

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 266
    const v5, 0x2020014

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mDropdown:Landroid/widget/TextView;

    .line 267
    iget-object v5, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mDropdown:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v5, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mDropdown:Landroid/widget/TextView;

    const-string v6, "common_pulldown"

    invoke-static {v5, v6}, Lcom/android/htcdialer/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 271
    const v5, 0x7f0b0047

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, CheckItem:Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090099

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 274
    const v5, 0x202001f

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 275
    iget-object v5, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 276
    iget-object v5, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 277
    const-string v5, "btn_check"

    const-string v6, "drawable"

    invoke-static {v5, v6, v7}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 278
    if-eqz v4, :cond_0

    .line 279
    iget-object v5, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 281
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 449
    return-void
.end method

.method private onCountrySelected()V
    .locals 6

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 318
    const-string v1, "%s (+%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    const-string v5, "cc"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, label:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mDropdown:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mAgree:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    #getter for: Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->txt2:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->access$100(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->appendCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    .end local v0           #label:Ljava/lang/String;
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mDropdown:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private restore()V
    .locals 2

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getSavedCountry()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    .line 339
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getDefaultCountry()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    .line 341
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mDisagree:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    iput-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mChoice:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mChoice:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    #getter for: Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->cb:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->access$300(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 346
    invoke-direct {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->onCountrySelected()V

    .line 348
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getCheckedState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 349
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mAgree:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    iput-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mChoice:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    goto :goto_0
.end method

.method private save()V
    .locals 5

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 355
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "home_dialing_pref"

    iget-object v4, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 359
    const-string v0, ""

    .line 360
    .local v0, cc:Ljava/lang/String;
    const-string v2, ""

    .line 362
    .local v2, tc:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mChoice:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    iget-object v4, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mAgree:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    const-string v4, "cc"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    const-string v4, "cc"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 364
    :goto_0
    iget-object v3, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    const-string v4, "tc"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    const-string v4, "tc"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    .line 366
    :cond_0
    :goto_1
    const-string v3, "home_dialing_country_code"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 368
    const-string v3, "home_dialing_trunk_code"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 371
    return-void

    .line 363
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 364
    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method private startCountryCodePickerForResult()V
    .locals 3

    .prologue
    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/htcdialer/HtcCountryCodePicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 377
    invoke-virtual {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->dismiss()V

    .line 378
    return-void
.end method


# virtual methods
.method public OnOwnActvityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 328
    if-nez p1, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 330
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 331
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, code:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mTable:Lcom/android/htcdialer/assist/CountryTable;

    const-string v3, "code"

    invoke-virtual {v2, v3, v1}, Lcom/android/htcdialer/assist/CountryTable;->queryCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mCountry:Ljava/util/HashMap;

    .line 333
    invoke-direct {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->onCountrySelected()V

    .line 335
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #code:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->cancel()V

    .line 287
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 290
    packed-switch p2, :pswitch_data_0

    .line 300
    :goto_0
    return-void

    .line 292
    :pswitch_0
    invoke-direct {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->save()V

    .line 294
    :pswitch_1
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0, p2}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->callOut(I)V

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->cancel()V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mDropdown:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->startCountryCodePickerForResult()V

    .line 314
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    .line 308
    .local v0, ctv:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;
    iget-object v1, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mChoice:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    if-eq v1, v0, :cond_1

    .line 309
    iget-object v1, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mChoice:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    #getter for: Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->cb:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->access$300(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;)Landroid/widget/RadioButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 311
    :cond_1
    iput-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mChoice:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    .line 312
    iget-object v1, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mChoice:Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;

    #getter for: Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->cb:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;->access$300(Lcom/android/htcdialer/dialog/HomeDialingDialog$CheckedTextView;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 190
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 192
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 195
    new-instance v0, Lcom/android/htcdialer/util/KeypadUtils;

    invoke-direct {v0}, Lcom/android/htcdialer/util/KeypadUtils;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    .line 196
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {v0, v3}, Lcom/android/htcdialer/util/KeypadUtils;->setToneEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {p0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/util/KeypadUtils;->update(Landroid/content/ContentResolver;)V

    .line 199
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;

    invoke-virtual {v0}, Lcom/android/htcdialer/util/KeypadUtils;->vibrate()V

    .line 201
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 202
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 206
    :cond_0
    return-void
.end method

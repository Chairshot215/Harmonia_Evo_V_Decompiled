.class public Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;
.super Lcom/htc/preference/HtcPreference;
.source "SingleSpellCheckerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DISABLED_ALPHA:F = 0.4f

.field private static final TAG:Ljava/lang/String;

.field private static sSIE_LOCAL_MAP:Ljava/util/HashMap;
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


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private final mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

.field private mPrefAll:Landroid/view/View;

.field private mPrefLeftButton:Landroid/view/View;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRes:Landroid/content/res/Resources;

.field private mSelected:Z

.field private mSettingsButton:Landroid/view/View;

.field private mSettingsIntent:Landroid/content/Intent;

.field private final mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

.field private mSubtypeButton:Landroid/view/View;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private final mTsm:Landroid/view/textservice/TextServicesManager;

.field private sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

.field private showL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->TAG:Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/content/Intent;Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/TextServicesManager;)V
    .locals 4
    .parameter "fragment"
    .parameter "settingsIntent"
    .parameter "sci"
    .parameter "tsm"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, v3, v2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-object v3, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 259
    iput-boolean v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->showL:Z

    .line 261
    new-instance v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    .line 69
    iput-object p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .line 70
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    .line 71
    iput-object p4, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 72
    const v1, 0x7f04006e

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->setLayoutResource(I)V

    .line 73
    iput-object p3, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    .line 79
    iput-boolean v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    .line 80
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, settingsActivity:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    :goto_0
    const-string v1, "com.htc.android.htcime/.spellcheck.HTCSpellCheckerService"

    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->loadHTCIMESIE(Landroid/content/Context;)V

    .line 92
    :cond_0
    return-void

    .line 85
    :cond_1
    iput-object v3, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onLeftButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onSubtypeButtonClicked_HTC(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onSubtypeButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onSettingsButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    return-object v0
.end method

.method private enableButtons(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/16 v2, 0x8

    const v1, 0x3ecccccd

    .line 225
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_1
    :goto_1
    return-void

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 232
    if-nez p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 244
    if-nez p1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method private loadHTCIMESIE(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 266
    sget-object v8, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    if-nez v8, :cond_0

    .line 267
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    .line 271
    :cond_0
    sget-object v8, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-eqz v8, :cond_2

    .line 340
    :cond_1
    return-void

    .line 274
    :cond_2
    new-instance v3, Lcom/android/settings/inputmethod/CIDCustomizeUtil;

    const-string v8, "system_InputMethod"

    invoke-direct {v3, p1, v8}, Lcom/android/settings/inputmethod/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    .local v3, customUtil:Lcom/android/settings/inputmethod/CIDCustomizeUtil;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 278
    .local v4, r:Landroid/content/res/Resources;
    const v8, 0x7f070085

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, SIELocaleMap:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, t:I
    :goto_0
    array-length v8, v0

    if-ge v6, v8, :cond_4

    .line 282
    aget-object v8, v0, v6

    if-eqz v8, :cond_3

    .line 283
    aget-object v8, v0, v6

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, s:[Ljava/lang/String;
    sget-object v8, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .end local v5           #s:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 297
    :cond_4
    iget-boolean v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->showL:Z

    if-nez v8, :cond_1

    .line 302
    invoke-virtual {v3}, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "IME_language_set"

    const-string v10, "English"

    invoke-virtual {v3, v8, v9, v10}, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    .line 305
    :cond_5
    sget-object v8, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 306
    .local v2, cid:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 307
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 308
    .local v1, c:Ljava/lang/String;
    const-string v8, "English"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 310
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 315
    .end local v1           #c:Ljava/lang/String;
    .end local v2           #cid:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    sget-object v8, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 316
    .restart local v2       #cid:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 317
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    .restart local v1       #c:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "IME_language_set"

    invoke-virtual {v3, v8, v9, v1}, Lcom/android/settings/inputmethod/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 324
    .local v7, tmp:Ljava/lang/String;
    if-eqz v7, :cond_9

    const-string v8, "yes"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 326
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2
.end method

.method private onLeftButtonClicked(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z

    .line 152
    return-void
.end method

.method private onSettingsButtonClicked(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->startActivity(Landroid/content/Intent;)V

    .line 222
    :cond_0
    return-void
.end method

.method private onSubtypeButtonClicked(Landroid/view/View;)V
    .locals 12
    .parameter "arg0"

    .prologue
    const/4 v11, 0x0

    .line 171
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 172
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 174
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v8}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v8, 0x7f0c0b4b

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 176
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v6

    .line 177
    .local v6, size:I
    add-int/lit8 v8, v6, 0x1

    new-array v4, v8, [Ljava/lang/CharSequence;

    .line 178
    .local v4, items:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0c0b7f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v11

    .line 179
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 180
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 181
    .local v7, subtype:Landroid/view/textservice/SpellCheckerSubtype;
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v8}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 184
    .local v5, label:Ljava/lang/CharSequence;
    add-int/lit8 v8, v3, 0x1

    aput-object v5, v4, v8

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v5           #label:Ljava/lang/CharSequence;
    .end local v7           #subtype:Landroid/view/textservice/SpellCheckerSubtype;
    :cond_1
    const/4 v1, 0x0

    .line 189
    .local v1, checkedItem:I
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8, v11}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    .line 190
    .local v2, currentScs:Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v2, :cond_2

    .line 191
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_2

    .line 192
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 193
    add-int/lit8 v1, v3, 0x1

    .line 198
    :cond_2
    new-instance v8, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$4;

    invoke-direct {v8, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$4;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v0, v4, v1, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 214
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 215
    iget-object v8, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 216
    return-void

    .line 191
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private onSubtypeButtonClicked_HTC(Landroid/view/View;)V
    .locals 18
    .parameter "arg0"

    .prologue
    .line 344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 345
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 347
    :cond_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v14}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v14, 0x7f0c0b4b

    invoke-virtual {v1, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 350
    sget-object v14, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v11

    .line 351
    .local v11, size:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    iget-object v14, v14, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;->label:[Ljava/lang/CharSequence;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    iget-object v14, v14, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;->label:[Ljava/lang/CharSequence;

    array-length v14, v14

    if-nez v14, :cond_4

    .line 354
    :cond_1
    new-array v7, v11, [Ljava/lang/CharSequence;

    .line 355
    .local v7, label:[Ljava/lang/CharSequence;
    new-array v10, v11, [Landroid/view/textservice/SpellCheckerSubtype;

    .line 357
    .local v10, scs:[Landroid/view/textservice/SpellCheckerSubtype;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v14}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v9

    .line 359
    .local v9, sci_size:I
    const/4 v13, 0x0

    .line 360
    .local v13, t_size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v9, :cond_3

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v14, v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v12

    .line 362
    .local v12, subtype:Landroid/view/textservice/SpellCheckerSubtype;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mFragment:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v14}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v15}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 364
    .local v6, l:Ljava/lang/CharSequence;
    sget-object v14, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSIE_LOCAL_MAP:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 365
    aput-object v6, v7, v13

    .line 366
    aput-object v12, v10, v13

    .line 367
    add-int/lit8 v13, v13, 0x1

    .line 360
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 372
    .end local v6           #l:Ljava/lang/CharSequence;
    .end local v12           #subtype:Landroid/view/textservice/SpellCheckerSubtype;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    add-int/lit8 v15, v13, 0x1

    new-array v15, v15, [Ljava/lang/CharSequence;

    iput-object v15, v14, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;->label:[Ljava/lang/CharSequence;

    .line 373
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    add-int/lit8 v15, v13, 0x1

    new-array v15, v15, [Landroid/view/textservice/SpellCheckerSubtype;

    iput-object v15, v14, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;->scs:[Landroid/view/textservice/SpellCheckerSubtype;

    .line 374
    add-int/lit8 v4, v13, 0x1

    .line 376
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    iget-object v14, v14, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;->label:[Ljava/lang/CharSequence;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRes:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    const v17, 0x7f0c0b7f

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 377
    const/4 v5, 0x1

    .local v5, k:I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 378
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    iget-object v14, v14, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;->label:[Ljava/lang/CharSequence;

    add-int/lit8 v15, v5, -0x1

    aget-object v15, v7, v15

    aput-object v15, v14, v5

    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    iget-object v14, v14, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;->scs:[Landroid/view/textservice/SpellCheckerSubtype;

    add-int/lit8 v15, v5, -0x1

    aget-object v15, v10, v15

    aput-object v15, v14, v5

    .line 377
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 383
    .end local v4           #i:I
    .end local v5           #k:I
    .end local v7           #label:[Ljava/lang/CharSequence;
    .end local v9           #sci_size:I
    .end local v10           #scs:[Landroid/view/textservice/SpellCheckerSubtype;
    .end local v13           #t_size:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    iget-object v14, v14, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;->label:[Ljava/lang/CharSequence;

    array-length v8, v14

    .line 392
    .local v8, real_size:I
    const/4 v2, 0x0

    .line 394
    .local v2, checkedItem:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v3

    .line 395
    .local v3, currentScs:Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v3, :cond_5

    .line 396
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    if-ge v4, v8, :cond_5

    .line 397
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    iget-object v14, v14, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;->scs:[Landroid/view/textservice/SpellCheckerSubtype;

    aget-object v14, v14, v4

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    iget-object v14, v14, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;->scs:[Landroid/view/textservice/SpellCheckerSubtype;

    aget-object v14, v14, v4

    invoke-virtual {v14, v3}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 398
    move v2, v4

    .line 405
    .end local v4           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    iget-object v14, v14, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;->label:[Ljava/lang/CharSequence;

    new-instance v15, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$5;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v1, v14, v2, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 419
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 421
    return-void

    .line 396
    .restart local v4       #i:I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private updateSelectedState(Z)V
    .locals 1
    .parameter "selected"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefAll:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 161
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->enableButtons(Z)V

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 97
    const v2, 0x7f0800fa

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefAll:Landroid/view/View;

    .line 98
    const v2, 0x7f080119

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 99
    const v2, 0x7f0800fb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    .line 100
    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    new-instance v3, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "item_background_holo_dark"

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, resId1:I
    if-eqz v0, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mPrefLeftButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    :cond_0
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTitleText:Landroid/widget/TextView;

    .line 115
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSummaryText:Landroid/widget/TextView;

    .line 117
    const v2, 0x7f08011c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/view/View;

    .line 118
    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/view/View;

    new-instance v3, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;

    invoke-direct {v3, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$2;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "item_background_holo_dark"

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, resId2:I
    if-eqz v1, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSubtypeButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    :cond_1
    const v2, 0x7f08011a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    .line 140
    iget-object v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSettingsButton:Landroid/view/View;

    new-instance v3, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$3;

    invoke-direct {v3, p0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$3;-><init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-boolean v2, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    invoke-direct {p0, v2}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->updateSelectedState(Z)V

    .line 148
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mSelected:Z

    .line 167
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->updateSelectedState(Z)V

    .line 168
    return-void
.end method

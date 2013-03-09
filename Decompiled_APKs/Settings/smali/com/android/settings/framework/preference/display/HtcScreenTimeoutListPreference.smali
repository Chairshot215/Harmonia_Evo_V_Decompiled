.class public final Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcScreenTimeoutListPreference.java"


# static fields
.field private static final DEFAULT_SCREEN_TIMEOUT_VALUE:I = 0xea60

.field public static final KEY:Ljava/lang/String; = "SCREEN_TIMEOUT"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInitialized:Z

.field private mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

.field private mTimeValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mInitialized:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mInitialized:Z

    .line 78
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 412
    sget-object v0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void
.end method


# virtual methods
.method protected getEntryText(I)Ljava/lang/String;
    .locals 2
    .parameter "milliseconds"

    .prologue
    .line 402
    if-gez p1, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    div-int/lit16 v1, p1, 0x3e8

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcFormatter;->formatTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected initialize()V
    .locals 2

    .prologue
    const v1, 0x7f0c09c8

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "SCREEN_TIMEOUT"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setKey(Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setTitle(I)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setDialogTitle(I)V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setPersistent(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->step1_loadTimeValueList()V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->step2_applyExchangePolicy()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->step3_bindData()V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->step4_bindDefaultOption()V

    .line 124
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mInitialized:Z

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->initialize()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mInitialized:Z

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onBindView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 345
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 347
    if-gez p2, :cond_0

    .line 394
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 353
    .local v0, selectedValue:I
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->isInsertionMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 385
    :cond_1
    const-string v1, "screen_off_timeout"

    invoke-static {p0, v1, v0}, Lcom/android/settings/framework/storage/HtcStorage$Local;->putInt(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V

    .line 393
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 338
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 341
    return-void
.end method

.method protected step1_loadTimeValueList()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/storage/customize/HtcCustomizedScreenTimeout;->getEntries(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    .line 147
    return-void
.end method

.method protected step2_applyExchangePolicy()V
    .locals 6

    .prologue
    .line 158
    new-instance v3, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-direct {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;-><init>()V

    iput-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    .line 160
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->applyGooglePolicy(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 164
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v1

    .line 167
    .local v1, indexOfPolicyItem:I
    new-instance v2, Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .local v2, newTimeValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    iput-object v2, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    .line 183
    .end local v0           #i:I
    .end local v1           #indexOfPolicyItem:I
    .end local v2           #newTimeValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method protected step3_bindData()V
    .locals 8

    .prologue
    .line 193
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 196
    .local v4, size:I
    new-array v1, v4, [Ljava/lang/String;

    .line 197
    .local v1, entries:[Ljava/lang/String;
    new-array v5, v4, [Ljava/lang/String;

    .line 198
    .local v5, values:[Ljava/lang/String;
    new-array v0, v4, [Z

    .line 202
    .local v0, enabled:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 203
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getEntryText(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 204
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 205
    const/4 v6, 0x1

    aput-boolean v6, v0, v2

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_0
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 211
    iget-object v6, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v3

    .line 216
    .local v3, indexOfPolicyItem:I
    add-int/lit8 v2, v3, 0x1

    :goto_1
    if-ge v2, v4, :cond_1

    .line 217
    const/4 v6, 0x0

    aput-boolean v6, v0, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 221
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v7}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getPolicyHintText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 233
    .end local v3           #indexOfPolicyItem:I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method protected step4_bindDefaultOption()V
    .locals 7

    .prologue
    const v6, 0xea60

    const/4 v5, -0x1

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 260
    .local v0, defaultValue:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 275
    .local v1, findIndex:I
    if-ne v1, v5, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v6}, Lcom/android/settings/framework/storage/HtcStorage$Local;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v2

    .line 302
    .local v2, indexOfPolicyItem:I
    if-ne v0, v5, :cond_2

    .line 307
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 327
    .end local v2           #indexOfPolicyItem:I
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    return-void

    .line 312
    .restart local v2       #indexOfPolicyItem:I
    :cond_2
    iget-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

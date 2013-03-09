.class public Lcom/android/phone/HtcGsmUmtsCallBarringOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "HtcGsmUmtsCallBarringOptions.java"

# interfaces
.implements Lcom/android/phone/HtcCallBarringEditPreference$Parrent;


# static fields
.field private static final CB_ALL_INCOMING:Ljava/lang/String; = "cb_all_incoming"

.field private static final CB_ALL_OUTGOING:Ljava/lang/String; = "cb_all_outgoing"

.field private static final CB_CHANGE_PASSWD:Ljava/lang/String; = "cb_change_passwd"

.field private static final CB_DEATIVE_ALL:Ljava/lang/String; = "cb_deactive_all"

.field private static final CB_INCOMING_ROAM:Ljava/lang/String; = "cb_incoming_roaming"

.field private static final CB_OUTGOING_INTL:Ljava/lang/String; = "cb_outgoing_intl"

.field private static final CB_OUTGOING_INTL_ROAM:Ljava/lang/String; = "cb_outgoing_intl_roam"

.field private static final DBG:Z = false

.field private static final KEY_CHECK:Ljava/lang/String; = "check"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcGsmUmtsCallBarringOptions"


# instance fields
.field private mButtonCBAI:Lcom/android/phone/HtcCallBarringEditPreference;

.field private mButtonCBAO:Lcom/android/phone/HtcCallBarringEditPreference;

.field private mButtonCBCP:Lcom/android/phone/HtcChangeCBPwdPreference;

.field private mButtonCBDA:Lcom/android/phone/HtcDeactiveAllCallBarring;

.field private mButtonCBIR:Lcom/android/phone/HtcCallBarringEditPreference;

.field private mButtonCBOI:Lcom/android/phone/HtcCallBarringEditPreference;

.field private mButtonCBOX:Lcom/android/phone/HtcCallBarringEditPreference;

.field private mInitIndex:I

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/HtcCallBarringEditPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mInitIndex:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 160
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->finish()V

    .line 163
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 74
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v4, 0x7f050011

    invoke-virtual {p0, v4}, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->addPreferencesFromResource(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 79
    .local v3, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v4, "cb_all_outgoing"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/HtcCallBarringEditPreference;

    iput-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBAO:Lcom/android/phone/HtcCallBarringEditPreference;

    .line 80
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBAO:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-virtual {v4, p0}, Lcom/android/phone/HtcCallBarringEditPreference;->setParrent(Lcom/android/phone/HtcCallBarringEditPreference$Parrent;)V

    .line 81
    const-string v4, "cb_outgoing_intl"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/HtcCallBarringEditPreference;

    iput-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBOI:Lcom/android/phone/HtcCallBarringEditPreference;

    .line 82
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBOI:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-virtual {v4, p0}, Lcom/android/phone/HtcCallBarringEditPreference;->setParrent(Lcom/android/phone/HtcCallBarringEditPreference$Parrent;)V

    .line 83
    const-string v4, "cb_outgoing_intl_roam"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/HtcCallBarringEditPreference;

    iput-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBOX:Lcom/android/phone/HtcCallBarringEditPreference;

    .line 84
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBOX:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-virtual {v4, p0}, Lcom/android/phone/HtcCallBarringEditPreference;->setParrent(Lcom/android/phone/HtcCallBarringEditPreference$Parrent;)V

    .line 85
    const-string v4, "cb_all_incoming"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/HtcCallBarringEditPreference;

    iput-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBAI:Lcom/android/phone/HtcCallBarringEditPreference;

    .line 86
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBAI:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-virtual {v4, p0}, Lcom/android/phone/HtcCallBarringEditPreference;->setParrent(Lcom/android/phone/HtcCallBarringEditPreference$Parrent;)V

    .line 87
    const-string v4, "cb_incoming_roaming"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/HtcCallBarringEditPreference;

    iput-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBIR:Lcom/android/phone/HtcCallBarringEditPreference;

    .line 88
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBIR:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-virtual {v4, p0}, Lcom/android/phone/HtcCallBarringEditPreference;->setParrent(Lcom/android/phone/HtcCallBarringEditPreference$Parrent;)V

    .line 89
    const-string v4, "cb_deactive_all"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/HtcDeactiveAllCallBarring;

    iput-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBDA:Lcom/android/phone/HtcDeactiveAllCallBarring;

    .line 90
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBDA:Lcom/android/phone/HtcDeactiveAllCallBarring;

    invoke-virtual {v4, p0}, Lcom/android/phone/HtcDeactiveAllCallBarring;->setParrent(Lcom/android/phone/HtcCallBarringEditPreference$Parrent;)V

    .line 91
    const-string v4, "cb_change_passwd"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/HtcChangeCBPwdPreference;

    iput-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBCP:Lcom/android/phone/HtcChangeCBPwdPreference;

    .line 92
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBCP:Lcom/android/phone/HtcChangeCBPwdPreference;

    invoke-virtual {v4, p0}, Lcom/android/phone/HtcChangeCBPwdPreference;->setTcpListener(Lcom/android/phone/TimeConsumingPreferenceListener;)V

    .line 95
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xd1

    if-ne v4, v5, :cond_0

    .line 96
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBCP:Lcom/android/phone/HtcChangeCBPwdPreference;

    if-eqz v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBCP:Lcom/android/phone/HtcChangeCBPwdPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 98
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBCP:Lcom/android/phone/HtcChangeCBPwdPreference;

    .line 103
    :cond_0
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBAO:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBOI:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBOX:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBAI:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBIR:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    if-nez p1, :cond_1

    .line 112
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mInitIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/HtcCallBarringEditPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lcom/android/phone/HtcCallBarringEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 124
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mInitIndex:I

    .line 116
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/HtcCallBarringEditPreference;

    .line 117
    .local v2, pref:Lcom/android/phone/HtcCallBarringEditPreference;
    invoke-virtual {v2}, Lcom/android/phone/HtcCallBarringEditPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 118
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "check"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/phone/HtcCallBarringEditPreference;->setEnabled(Z)V

    .line 119
    invoke-virtual {v2, p0, v6}, Lcom/android/phone/HtcCallBarringEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_1

    .line 122
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #pref:Lcom/android/phone/HtcCallBarringEditPreference;
    :cond_2
    iget-object v4, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBDA:Lcom/android/phone/HtcDeactiveAllCallBarring;

    invoke-virtual {v4, p0, v6}, Lcom/android/phone/HtcDeactiveAllCallBarring;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_0
.end method

.method public onFinished(Lcom/htc/preference/HtcPreference;Z)V
    .locals 3
    .parameter "preference"
    .parameter "reading"

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget v0, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mInitIndex:I

    iget-object v1, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 144
    iget v0, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mInitIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mInitIndex:I

    .line 146
    iget-object v0, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mInitIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-virtual {v0, p0, v2}, Lcom/android/phone/HtcCallBarringEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 153
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Lcom/htc/preference/HtcPreference;Z)V

    .line 154
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mButtonCBDA:Lcom/android/phone/HtcDeactiveAllCallBarring;

    invoke-virtual {v0, p0, v2}, Lcom/android/phone/HtcDeactiveAllCallBarring;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    iget-object v3, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/HtcCallBarringEditPreference;

    .line 131
    .local v2, pref:Lcom/android/phone/HtcCallBarringEditPreference;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "check"

    invoke-virtual {v2}, Lcom/android/phone/HtcCallBarringEditPreference;->isEnabled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    invoke-virtual {v2}, Lcom/android/phone/HtcCallBarringEditPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 136
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #pref:Lcom/android/phone/HtcCallBarringEditPreference;
    :cond_0
    return-void
.end method

.method public queryAll(Z)V
    .locals 4
    .parameter "isReading"

    .prologue
    .line 168
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mInitIndex:I

    .line 170
    iget-object v2, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mInitIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-virtual {v2, p0, p1}, Lcom/android/phone/HtcCallBarringEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 177
    :cond_0
    return-void

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/android/phone/HtcGsmUmtsCallBarringOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/HtcCallBarringEditPreference;

    .line 173
    .local v1, pref:Lcom/android/phone/HtcCallBarringEditPreference;
    invoke-virtual {v1, p0, p1}, Lcom/android/phone/HtcCallBarringEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_0
.end method

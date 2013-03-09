.class public Lcom/android/phone/HtcCdmaCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "HtcCdmaCallForwardOptions.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static final BUTTON_CFB_KEY:Ljava/lang/String; = "button_cfb_key"

.field private static final BUTTON_CFNRC_KEY:Ljava/lang/String; = "button_cfnrc_key"

.field private static final BUTTON_CFNRY_KEY:Ljava/lang/String; = "button_cfnry_key"

.field private static final BUTTON_CFU_KEY:Ljava/lang/String; = "button_cfu_key"

.field private static final BUTTON_CF_CANCEL_ALL_KEY:Ljava/lang/String; = "button_cfcaf_key"

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_TOGGLE:Ljava/lang/String; = "toggle"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaCallForwardOptions"

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final DBG:Z

.field private mButtonCFB:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

.field private mButtonCFCancelAll:Lcom/htc/preference/HtcPreferenceScreen;

.field private mButtonCFNRc:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

.field private mContext:Landroid/content/Context;

.field private mInitIndex:I

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/HtcCdmaCallForwardEditPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/HtcCdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->DBG:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    .line 54
    iput v1, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mInitIndex:I

    return-void
.end method

.method private dialNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 219
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 140
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/HtcCdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 146
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_1
    if-eqz v6, :cond_0

    .line 169
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 132
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaCallForwardOptions;->finish()V

    .line 135
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iput-object p0, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mContext:Landroid/content/Context;

    .line 61
    const v4, 0x7f050013

    invoke-virtual {p0, v4}, Lcom/android/phone/HtcCdmaCallForwardOptions;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaCallForwardOptions;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 64
    .local v3, prefSet:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v4, "button_cfu_key"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    iput-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    .line 65
    const-string v4, "button_cfb_key"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    iput-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    .line 66
    const-string v4, "button_cfnry_key"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    iput-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    .line 67
    const-string v4, "button_cfnrc_key"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    iput-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    .line 68
    const-string v4, "button_cfcaf_key"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFCancelAll:Lcom/htc/preference/HtcPreferenceScreen;

    .line 70
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    iget v5, v5, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v5}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 71
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    iget v5, v5, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v5}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 72
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    iget v5, v5, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v5}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 73
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    iget v5, v5, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v5}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 74
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFCancelAll:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v4, p0}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 76
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    sget-boolean v4, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_CALL_FORWARDING:Z

    if-eqz v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFCancelAll:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 90
    :cond_0
    if-nez p1, :cond_2

    .line 92
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mInitIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    invoke-virtual {v4, p0, v6}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 102
    :cond_1
    return-void

    .line 94
    :cond_2
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mInitIndex:I

    .line 96
    iget-object v4, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    .line 97
    .local v2, pref:Lcom/android/phone/HtcCdmaCallForwardEditPreference;
    invoke-virtual {v2}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 98
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "toggle"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 99
    invoke-virtual {v2, p0, v6}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_0
.end method

.method public onFinished(Lcom/htc/preference/HtcPreference;Z)V
    .locals 2
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mInitIndex:I

    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/HtcCdmaCallForwardOptions;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget v0, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mInitIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mInitIndex:I

    .line 123
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mInitIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 126
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Lcom/htc/preference/HtcPreference;Z)V

    .line 127
    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mButtonCFCancelAll:Lcom/htc/preference/HtcPreferenceScreen;

    if-ne p1, v0, :cond_0

    .line 177
    const-string v0, "HtcCdmaCallForwardOptions"

    const-string v1, "BUTTON_CF_CANCEL_ALL_KEY !"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v0, "*730"

    invoke-direct {p0, v0}, Lcom/android/phone/HtcCdmaCallForwardOptions;->dialNumber(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    iget-object v3, p0, Lcom/android/phone/HtcCdmaCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    .line 109
    .local v2, pref:Lcom/android/phone/HtcCdmaCallForwardEditPreference;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "toggle"

    invoke-virtual {v2}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->isToggled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    iget-object v3, v2, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_0

    .line 112
    const-string v3, "number"

    iget-object v4, v2, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "status"

    iget-object v4, v2, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    :cond_0
    invoke-virtual {v2}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 117
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #pref:Lcom/android/phone/HtcCdmaCallForwardEditPreference;
    :cond_1
    return-void
.end method

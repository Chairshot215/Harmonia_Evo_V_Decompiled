.class public Lcom/android/settings/tts/TtsEnginePreference;
.super Lcom/htc/preference/HtcPreference;
.source "TtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;
    }
.end annotation


# static fields
.field static final FRAGMENT_ARGS_LABEL:Ljava/lang/String; = "label"

.field static final FRAGMENT_ARGS_NAME:Ljava/lang/String; = "name"

.field static final FRAGMENT_ARGS_VOICES:Ljava/lang/String; = "voices"


# instance fields
.field private final mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private final mPreferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSettingsIcon:Landroid/view/View;

.field private final mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

.field private mVoiceCheckData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;Lcom/htc/preference/HtcPreferenceActivity;)V
    .locals 1
    .parameter "context"
    .parameter "info"
    .parameter "state"
    .parameter "prefActivity"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lcom/android/settings/tts/TtsEnginePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEnginePreference$1;-><init>(Lcom/android/settings/tts/TtsEnginePreference;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 94
    const v0, 0x7f04006f

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;->setLayoutResource(I)V

    .line 96
    iput-object p3, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    .line 97
    iput-object p4, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;

    .line 98
    iput-object p2, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 101
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;->setKey(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/tts/TtsEnginePreference;)Lcom/htc/preference/HtcPreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;

    return-object v0
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 192
    :cond_0
    if-eqz p2, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 107
    iget-object v8, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    if-nez v8, :cond_0

    .line 108
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 113
    .local v5, view:Landroid/view/View;
    const v8, 0x7f08011f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 114
    .local v2, rb:Landroid/widget/RadioButton;
    iget-object v8, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v8}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v9}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    .local v0, isChecked:Z
    if-eqz v0, :cond_1

    .line 118
    iget-object v8, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v8, v2}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 121
    :cond_1
    iput-boolean v6, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 122
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 123
    iput-boolean v7, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 125
    iput-object v2, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 127
    const v8, 0x7f08011e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 128
    .local v1, layout:Landroid/view/View;
    new-instance v8, Lcom/android/settings/tts/TtsEnginePreference$2;

    invoke-direct {v8, p0, v2}, Lcom/android/settings/tts/TtsEnginePreference$2;-><init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/RadioButton;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "item_background_holo_dark"

    invoke-static {v8, v9, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 143
    .local v3, resId1:I
    if-eqz v3, :cond_2

    .line 144
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 148
    :cond_2
    const v8, 0x7f080121

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    .line 151
    iget-object v8, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v9, p0, Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v9, :cond_4

    :goto_0
    invoke-virtual {v8, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 152
    iget-object v6, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    new-instance v8, Lcom/android/settings/tts/TtsEnginePreference$3;

    invoke-direct {v8, p0}, Lcom/android/settings/tts/TtsEnginePreference$3;-><init>(Lcom/android/settings/tts/TtsEnginePreference;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "item_background_holo_dark"

    invoke-static {v6, v8, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 175
    .local v4, resId2:I
    if-eqz v4, :cond_3

    .line 176
    iget-object v6, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 179
    :cond_3
    return-object v5

    .end local v4           #resId2:I
    :cond_4
    move v6, v7

    .line 151
    goto :goto_0
.end method

.method public setVoiceDataDetails(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    .line 184
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    return-void
.end method

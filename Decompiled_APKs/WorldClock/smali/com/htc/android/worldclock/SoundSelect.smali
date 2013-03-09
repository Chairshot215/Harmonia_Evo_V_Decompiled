.class public Lcom/htc/android/worldclock/SoundSelect;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "SoundSelect.java"


# static fields
.field public static final FunctionAlarm:Ljava/lang/String; = "Alarm"

.field public static final FunctionAlert:Ljava/lang/String; = "Alert"

.field public static final FunctionType:Ljava/lang/String; = "FunctionType"

.field public static final PREFERENCE_ITEM_COUNT:I = 0x3

.field static final REQUEST_ALERT_ALARM_SOUND:I = 0x0

.field static final REQUEST_ALERT_MUSIC:I = 0x2

.field static final REQUEST_ALERT_RINGTONE:I = 0x1


# instance fields
.field private mAlertSound:Landroid/net/Uri;

.field private mAlertSoundTitle:Ljava/lang/String;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIslaunchRingToneDialogActivity:Z

.field protected mListItem:[Ljava/lang/CharSequence;

.field private mMediaChanged:Z

.field private mResultChanged:Z

.field protected mRingtoneIndex:I

.field protected mTempRingtoneIndex:I

.field private preferenceItem:[Lcom/htc/preference/HtcPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 23
    iput v1, p0, Lcom/htc/android/worldclock/SoundSelect;->mRingtoneIndex:I

    .line 24
    iput v1, p0, Lcom/htc/android/worldclock/SoundSelect;->mTempRingtoneIndex:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/SoundSelect;->mArrayList:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/SoundSelect;->mMediaChanged:Z

    .line 31
    iput-boolean v1, p0, Lcom/htc/android/worldclock/SoundSelect;->mResultChanged:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/SoundSelect;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/android/worldclock/SoundSelect;->mAlertSound:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/SoundSelect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/htc/android/worldclock/SoundSelect;->mIslaunchRingToneDialogActivity:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/android/worldclock/SoundSelect;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/htc/android/worldclock/SoundSelect;->mIslaunchRingToneDialogActivity:Z

    return p1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 197
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 198
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SoundSelect;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 199
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "FunctionType"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, Name:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iput-boolean v4, p0, Lcom/htc/android/worldclock/SoundSelect;->mIslaunchRingToneDialogActivity:Z

    .line 204
    if-eqz p3, :cond_0

    if-ne p2, v6, :cond_0

    .line 205
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 206
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://settings/system/ringtone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    const-string v3, "Alert"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlertSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    :cond_1
    :goto_1
    iput-boolean v5, p0, Lcom/htc/android/worldclock/SoundSelect;->mResultChanged:Z

    .line 216
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SoundSelect;->finish()V

    goto :goto_0

    .line 212
    :cond_2
    const-string v3, "Alarm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlarmSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 221
    .end local v2           #uri:Landroid/net/Uri;
    :pswitch_1
    iput-boolean v4, p0, Lcom/htc/android/worldclock/SoundSelect;->mIslaunchRingToneDialogActivity:Z

    .line 222
    if-eqz p3, :cond_0

    if-ne p2, v6, :cond_0

    .line 223
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 224
    .restart local v2       #uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://settings/system/ringtone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    const-string v3, "Alert"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 229
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlertSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    :cond_3
    :goto_2
    iput-boolean v5, p0, Lcom/htc/android/worldclock/SoundSelect;->mResultChanged:Z

    .line 234
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SoundSelect;->finish()V

    goto :goto_0

    .line 230
    :cond_4
    const-string v3, "Alarm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlarmSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 239
    .end local v2           #uri:Landroid/net/Uri;
    :pswitch_2
    iput-boolean v4, p0, Lcom/htc/android/worldclock/SoundSelect;->mIslaunchRingToneDialogActivity:Z

    .line 240
    if-eqz p3, :cond_0

    .line 241
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 242
    .restart local v2       #uri:Landroid/net/Uri;
    if-nez v2, :cond_5

    .line 243
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #uri:Landroid/net/Uri;
    check-cast v2, Landroid/net/Uri;

    .line 245
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_5
    const-string v3, "Alert"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 246
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlertSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    :cond_6
    :goto_3
    iput-boolean v5, p0, Lcom/htc/android/worldclock/SoundSelect;->mResultChanged:Z

    .line 251
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SoundSelect;->finish()V

    goto/16 :goto_0

    .line 247
    :cond_7
    const-string v3, "Alarm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 248
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/android/worldclock/PreferencesUtil;->setAlarmSoundUri(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 41
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/SoundSelect;->addPreferencesFromResource(I)V

    .line 45
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SoundSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->mListItem:[Ljava/lang/CharSequence;

    .line 47
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/htc/preference/HtcPreference;

    iput-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->preferenceItem:[Lcom/htc/preference/HtcPreference;

    .line 48
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->mListItem:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->preferenceItem:[Lcom/htc/preference/HtcPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/SoundSelect;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    aput-object v2, v1, v0

    .line 50
    iget-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->preferenceItem:[Lcom/htc/preference/HtcPreference;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/android/worldclock/SoundSelect;->mListItem:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getAlertSoundTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->mAlertSoundTitle:Ljava/lang/String;

    .line 54
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 129
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 130
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-nez v1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SoundSelect;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 132
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->mAlertSound:Landroid/net/Uri;

    .line 135
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/worldclock/SoundSelect$4;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/SoundSelect$4;-><init>(Lcom/htc/android/worldclock/SoundSelect;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 193
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const-wide/16 v1, 0x1

    cmp-long v1, p4, v1

    if-nez v1, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SoundSelect;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 152
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->mAlertSound:Landroid/net/Uri;

    .line 155
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/worldclock/SoundSelect$5;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/SoundSelect$5;-><init>(Lcom/htc/android/worldclock/SoundSelect;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 170
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const-wide/16 v1, 0x2

    cmp-long v1, p4, v1

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SoundSelect;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->mAlertSound:Landroid/net/Uri;

    .line 175
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/worldclock/SoundSelect$6;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/SoundSelect$6;-><init>(Lcom/htc/android/worldclock/SoundSelect;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 59
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 60
    iget-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->preferenceItem:[Lcom/htc/preference/HtcPreference;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-ne p2, v1, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SoundSelect;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->mAlertSound:Landroid/net/Uri;

    .line 65
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/worldclock/SoundSelect$1;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/SoundSelect$1;-><init>(Lcom/htc/android/worldclock/SoundSelect;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 124
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v1

    return v1

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->preferenceItem:[Lcom/htc/preference/HtcPreference;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-ne p2, v1, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SoundSelect;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->mAlertSound:Landroid/net/Uri;

    .line 85
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/worldclock/SoundSelect$2;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/SoundSelect$2;-><init>(Lcom/htc/android/worldclock/SoundSelect;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 100
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->preferenceItem:[Lcom/htc/preference/HtcPreference;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-ne p2, v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/htc/android/worldclock/SoundSelect;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/SoundSelect;->mAlertSound:Landroid/net/Uri;

    .line 105
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/worldclock/SoundSelect$3;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/SoundSelect$3;-><init>(Lcom/htc/android/worldclock/SoundSelect;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

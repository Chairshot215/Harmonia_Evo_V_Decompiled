.class public Lcom/google/android/gm/LabelSettingsFragment;
.super Landroid/app/ListFragment;
.source "LabelSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/gm/LabelSettingsObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;,
        Lcom/google/android/gm/LabelSettingsFragment$Pair;
    }
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/LabelSettingsFragment$Pair;",
            ">;"
        }
    .end annotation
.end field

.field private mCanVibrate:Z

.field private mContext:Landroid/content/Context;

.field private mIsOn:Z

.field private mLabel:Ljava/lang/String;

.field private mNotifyOnce:Z

.field private mPersistence:Lcom/google/android/gm/persistence/Persistence;

.field private mResources:Landroid/content/res/Resources;

.field public mRingtone:Landroid/media/Ringtone;

.field public mRingtoneUri:Ljava/lang/String;

.field private mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

.field private mVibrate:Ljava/lang/String;

.field private mVibrateSettingDisplayValues:[Ljava/lang/String;

.field private mVibrateSettingValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 352
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/LabelSettingsFragment;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mVibrateSettingValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/gm/LabelSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mCanVibrate:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/gm/LabelSettingsFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mVibrate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gm/LabelSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mNotifyOnce:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/gm/LabelSettingsFragment;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mVibrateSettingDisplayValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/LabelSettingsFragment;Lcom/google/android/gm/LabelSettingsFragment$Pair;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/LabelSettingsFragment;->saveVibrateSetting(Lcom/google/android/gm/LabelSettingsFragment$Pair;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gm/LabelSettingsFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAttributeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/LabelSettingsFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/LabelSettingsFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gm/LabelSettingsFragment;)Lcom/google/android/gm/LabelSettingsObservable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gm/LabelSettingsFragment;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gm/LabelSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mIsOn:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/gm/LabelSettingsFragment;Landroid/media/Ringtone;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelSettingsFragment;->getRingtoneString(Landroid/media/Ringtone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRingtoneString(Landroid/media/Ringtone;)Ljava/lang/String;
    .locals 2
    .parameter "tone"

    .prologue
    .line 330
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadInitialSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 142
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/LabelSettingsFragment;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gm/persistence/Persistence;->getNotificationLabelInformation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 144
    .local v0, attributes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mIsOn:Z

    .line 145
    iput-boolean v5, p0, Lcom/google/android/gm/LabelSettingsFragment;->mNotifyOnce:Z

    .line 146
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtoneUri:Ljava/lang/String;

    .line 147
    iget-boolean v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mCanVibrate:Z

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c00d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mVibrate:Ljava/lang/String;

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/LabelSettingsFragment;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gm/persistence/Persistence;->shouldNotifyForLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    iput-boolean v5, p0, Lcom/google/android/gm/LabelSettingsFragment;->mIsOn:Z

    .line 153
    iget-boolean v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mCanVibrate:Z

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gm/persistence/Persistence;->extractVibrateSetting(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mVibrate:Ljava/lang/String;

    .line 156
    :cond_1
    sget v1, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ONCE:I

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/Persistence;->extract(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mNotifyOnce:Z

    .line 158
    sget v1, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/Persistence;->extract(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtoneUri:Ljava/lang/String;

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtoneUri:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtoneUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    .line 163
    :cond_3
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3
    .parameter "account"
    .parameter "label"

    .prologue
    .line 81
    new-instance v1, Lcom/google/android/gm/LabelSettingsFragment;

    invoke-direct {v1}, Lcom/google/android/gm/LabelSettingsFragment;-><init>()V

    .line 82
    .local v1, fragment:Landroid/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    return-object v1
.end method

.method private saveSettings()V
    .locals 7

    .prologue
    .line 193
    iget-boolean v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mIsOn:Z

    if-eqz v3, :cond_1

    .line 194
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 195
    .local v0, attributes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAttributeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/LabelSettingsFragment$Pair;

    .line 196
    .local v2, item:Lcom/google/android/gm/LabelSettingsFragment$Pair;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gm/LabelSettingsFragment$Pair;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    .end local v2           #item:Lcom/google/android/gm/LabelSettingsFragment$Pair;
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    iget-object v4, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAccount:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gm/LabelSettingsFragment;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/gm/persistence/Persistence;->addNotificationLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 204
    .end local v0           #attributes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 200
    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    iget-object v4, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAccount:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gm/LabelSettingsFragment;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gm/persistence/Persistence;->removeNotificationLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAccount:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gm/preference/PreferenceUtils;->validateNotificationsForAccount(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveVibrateSetting(Lcom/google/android/gm/LabelSettingsFragment$Pair;Ljava/lang/String;)V
    .locals 1
    .parameter "item"
    .parameter "newValue"

    .prologue
    .line 299
    iput-object p2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mVibrate:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mVibrate:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gm/LabelSettingsFragment$Pair;->value:Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSettingsFragment;->onChanged()V

    .line 302
    invoke-direct {p0}, Lcom/google/android/gm/LabelSettingsFragment;->saveSettings()V

    .line 303
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    invoke-interface {v0}, Lcom/google/android/gm/LabelSettingsObservable;->notifyChanged()V

    .line 304
    return-void
.end method

.method private setRingtone(Landroid/net/Uri;)V
    .locals 4
    .parameter "ringtone"

    .prologue
    .line 310
    if-eqz p1, :cond_2

    .line 311
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtoneUri:Ljava/lang/String;

    .line 312
    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    .line 318
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAttributeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/LabelSettingsFragment$Pair;

    .line 319
    .local v1, item:Lcom/google/android/gm/LabelSettingsFragment$Pair;
    iget v2, v1, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v3, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    if-ne v2, v3, :cond_0

    .line 320
    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtoneUri:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gm/LabelSettingsFragment$Pair;->value:Ljava/lang/String;

    .line 324
    .end local v1           #item:Lcom/google/android/gm/LabelSettingsFragment$Pair;
    :cond_1
    return-void

    .line 315
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtoneUri:Ljava/lang/String;

    .line 316
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    goto :goto_0
.end method

.method private showRingtonePicker()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtoneUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtoneUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    :cond_0
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/LabelSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
    return-void
.end method

.method private showSynchronizationSettings()V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/gm/LabelSynchronizationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "label"

    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "included-labels"

    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    invoke-interface {v2}, Lcom/google/android/gm/LabelSettingsObservable;->getIncludedLabels()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 215
    const-string v1, "partial-labels"

    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    invoke-interface {v2}, Lcom/google/android/gm/LabelSettingsObservable;->getPartialLabels()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 217
    const-string v1, "num-of-sync-days"

    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    invoke-interface {v2}, Lcom/google/android/gm/LabelSettingsObservable;->getNumberOfSyncDays()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/LabelSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    return-void
.end method

.method private showVibrateSettingsDialog(Lcom/google/android/gm/LabelSettingsFragment$Pair;)V
    .locals 8
    .parameter "item"

    .prologue
    .line 262
    iget-object v6, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 264
    .local v5, res:Landroid/content/res/Resources;
    const/4 v1, 0x2

    .line 265
    .local v1, currentIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/google/android/gm/LabelSettingsFragment;->mVibrateSettingValues:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 266
    iget-object v6, p0, Lcom/google/android/gm/LabelSettingsFragment;->mVibrateSettingValues:[Ljava/lang/String;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/google/android/gm/LabelSettingsFragment;->mVibrate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 267
    move v1, v2

    .line 271
    :cond_0
    move v3, v1

    .line 272
    .local v3, initialIndex:I
    new-instance v4, Lcom/google/android/gm/LabelSettingsFragment$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gm/LabelSettingsFragment$1;-><init>(Lcom/google/android/gm/LabelSettingsFragment;Lcom/google/android/gm/LabelSettingsFragment$Pair;)V

    .line 284
    .local v4, listClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/google/android/gm/LabelSettingsFragment$2;

    invoke-direct {v0, p0, p1, v3}, Lcom/google/android/gm/LabelSettingsFragment$2;-><init>(Lcom/google/android/gm/LabelSettingsFragment;Lcom/google/android/gm/LabelSettingsFragment$Pair;I)V

    .line 293
    .local v0, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c00df

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gm/LabelSettingsFragment;->mVibrateSettingDisplayValues:[Ljava/lang/String;

    invoke-virtual {v6, v7, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c0038

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 296
    return-void

    .line 265
    .end local v0           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v3           #initialIndex:I
    .end local v4           #listClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 100
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    .line 103
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mResources:Landroid/content/res/Resources;

    .line 104
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    .line 105
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 106
    .local v0, vibrator:Landroid/os/Vibrator;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mCanVibrate:Z

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/LabelSettingsObservable;

    iput-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    .line 108
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    invoke-interface {v1, p0}, Lcom/google/android/gm/LabelSettingsObservable;->registerObserver(Lcom/google/android/gm/LabelSettingsObserver;)V

    .line 111
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/LabelSettingsFragment;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c00e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c00e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c00e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mVibrateSettingDisplayValues:[Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mVibrateSettingValues:[Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Lcom/google/android/gm/LabelSettingsFragment;->loadInitialSettings()V

    .line 118
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAttributeList:Ljava/util/List;

    .line 119
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAttributeList:Ljava/util/List;

    new-instance v2, Lcom/google/android/gm/LabelSettingsFragment$Pair;

    sget v3, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ON:I

    iget-boolean v4, p0, Lcom/google/android/gm/LabelSettingsFragment;->mIsOn:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/gm/LabelSettingsFragment$Pair;-><init>(Lcom/google/android/gm/LabelSettingsFragment;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAttributeList:Ljava/util/List;

    new-instance v2, Lcom/google/android/gm/LabelSettingsFragment$Pair;

    sget v3, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    iget-object v4, p0, Lcom/google/android/gm/LabelSettingsFragment;->mRingtoneUri:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/gm/LabelSettingsFragment$Pair;-><init>(Lcom/google/android/gm/LabelSettingsFragment;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-boolean v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mCanVibrate:Z

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAttributeList:Ljava/util/List;

    new-instance v2, Lcom/google/android/gm/LabelSettingsFragment$Pair;

    sget v3, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_VIBRATE:I

    iget-object v4, p0, Lcom/google/android/gm/LabelSettingsFragment;->mVibrate:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/gm/LabelSettingsFragment$Pair;-><init>(Lcom/google/android/gm/LabelSettingsFragment;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAttributeList:Ljava/util/List;

    new-instance v2, Lcom/google/android/gm/LabelSettingsFragment$Pair;

    sget v3, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ONCE:I

    iget-boolean v4, p0, Lcom/google/android/gm/LabelSettingsFragment;->mNotifyOnce:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/gm/LabelSettingsFragment$Pair;-><init>(Lcom/google/android/gm/LabelSettingsFragment;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;-><init>(Lcom/google/android/gm/LabelSettingsFragment;Lcom/google/android/gm/LabelSettingsFragment$1;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelSettingsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    return-void

    :cond_1
    move v1, v3

    .line 106
    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 240
    if-nez p1, :cond_0

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    .line 242
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 243
    .local v0, uri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/google/android/gm/LabelSettingsFragment;->setRingtone(Landroid/net/Uri;)V

    .line 246
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    if-eqz p3, :cond_1

    .line 248
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    const-string v2, "included-labels"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gm/LabelSettingsObservable;->setIncludedLabels(Ljava/util/ArrayList;)V

    .line 250
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    const-string v2, "partial-labels"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gm/LabelSettingsObservable;->setPartialLabels(Ljava/util/ArrayList;)V

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/LabelSettingsFragment;->saveSettings()V

    .line 255
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    invoke-interface {v1}, Lcom/google/android/gm/LabelSettingsObservable;->notifyChanged()V

    .line 256
    return-void
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSettingsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->notifyDataSetChanged()V

    .line 337
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mAccount:Ljava/lang/String;

    .line 95
    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mLabel:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    invoke-interface {v0, p0}, Lcom/google/android/gm/LabelSettingsObservable;->unregisterObserver(Lcom/google/android/gm/LabelSettingsObserver;)V

    .line 135
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 136
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSettingsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/LabelSettingsFragment$Pair;

    .line 174
    .local v0, item:Lcom/google/android/gm/LabelSettingsFragment$Pair;
    iget v3, v0, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v4, Lcom/google/android/gm/persistence/Persistence;->LABEL_SYNCHRONIZATION:I

    if-ne v3, v4, :cond_2

    .line 175
    invoke-direct {p0}, Lcom/google/android/gm/LabelSettingsFragment;->showSynchronizationSettings()V

    .line 188
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gm/LabelSettingsFragment;->saveSettings()V

    .line 189
    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    invoke-interface {v1}, Lcom/google/android/gm/LabelSettingsObservable;->notifyChanged()V

    goto :goto_0

    .line 176
    :cond_2
    iget v3, v0, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v4, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ON:I

    if-ne v3, v4, :cond_4

    .line 177
    iget-boolean v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mIsOn:Z

    if-nez v3, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mIsOn:Z

    .line 178
    iget-boolean v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mIsOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/LabelSettingsFragment$Pair;->value:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v1, v2

    .line 177
    goto :goto_2

    .line 179
    :cond_4
    iget-boolean v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mIsOn:Z

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v4, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    if-ne v3, v4, :cond_5

    .line 180
    invoke-direct {p0}, Lcom/google/android/gm/LabelSettingsFragment;->showRingtonePicker()V

    goto :goto_1

    .line 181
    :cond_5
    iget-boolean v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mIsOn:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mCanVibrate:Z

    if-eqz v3, :cond_6

    iget v3, v0, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v4, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_VIBRATE:I

    if-ne v3, v4, :cond_6

    .line 182
    invoke-direct {p0, v0}, Lcom/google/android/gm/LabelSettingsFragment;->showVibrateSettingsDialog(Lcom/google/android/gm/LabelSettingsFragment$Pair;)V

    goto :goto_1

    .line 183
    :cond_6
    iget-boolean v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mIsOn:Z

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v4, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ONCE:I

    if-ne v3, v4, :cond_1

    .line 184
    iget-boolean v3, p0, Lcom/google/android/gm/LabelSettingsFragment;->mNotifyOnce:Z

    if-nez v3, :cond_7

    :goto_3
    iput-boolean v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mNotifyOnce:Z

    .line 185
    iget-boolean v1, p0, Lcom/google/android/gm/LabelSettingsFragment;->mNotifyOnce:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/LabelSettingsFragment$Pair;->value:Ljava/lang/String;

    goto :goto_1

    :cond_7
    move v1, v2

    .line 184
    goto :goto_3
.end method

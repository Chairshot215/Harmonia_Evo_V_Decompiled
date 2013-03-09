.class public Lcom/google/android/talk/ImRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "ImRingtonePreference.java"


# instance fields
.field private isTalkPreference:Z

.field private mAccountId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 61
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/talk/ImRingtonePreference;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v1

    .line 63
    .local v1, settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    iget-boolean v3, p0, Lcom/google/android/talk/ImRingtonePreference;->isTalkPreference:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextRingtoneURI()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, uri:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/google/android/talk/TalkApp;->queryDebugLevel()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 67
    const-string v3, "talk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRestoreRingtone() finds uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/talk/ImRingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    const/4 v0, 0x0

    .line 76
    :goto_1
    return-object v0

    .line 63
    .end local v2           #uri:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoRingtoneURI()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 74
    .restart local v2       #uri:Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 76
    .local v0, result:Landroid/net/Uri;
    goto :goto_1
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 5
    .parameter "ringtoneUri"

    .prologue
    .line 81
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/talk/ImRingtonePreference;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v1

    .line 84
    .local v1, settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    invoke-static {}, Lcom/google/android/talk/TalkApp;->queryDebugLevel()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 85
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSaveRingtone("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    if-nez p1, :cond_1

    const-string v0, ""

    .line 90
    .local v0, ringtoneUriStr:Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/talk/ImRingtonePreference;->isTalkPreference:Z

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {v1, v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setTextRingtoneURI(Ljava/lang/String;)V

    .line 95
    :goto_1
    return-void

    .line 89
    .end local v0           #ringtoneUriStr:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    .restart local v0       #ringtoneUriStr:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setVideoRingtoneURI(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restorePersistedValue"
    .parameter "defaultValueObj"

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-super {p0, v0, p2}, Landroid/preference/RingtonePreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 48
    return-void
.end method

.method public setAccountId(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/google/android/talk/ImRingtonePreference;->mAccountId:J

    .line 52
    return-void
.end method

.method public setIMRingtoneType(Ljava/lang/String;)V
    .locals 1
    .parameter "ringtoneType"

    .prologue
    .line 56
    const-string v0, "ringtone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/ImRingtonePreference;->isTalkPreference:Z

    .line 57
    return-void
.end method

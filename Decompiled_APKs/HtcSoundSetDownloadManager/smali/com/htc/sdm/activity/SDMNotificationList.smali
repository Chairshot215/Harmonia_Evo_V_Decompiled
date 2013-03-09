.class public Lcom/htc/sdm/activity/SDMNotificationList;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "SDMNotificationList.java"


# static fields
.field private static final KEY_CALENDAR:Ljava/lang/String; = "calendar"

.field private static final KEY_CATEGORY:Ljava/lang/String; = "sound_group"

.field private static final KEY_DEFAULT:Ljava/lang/String; = "default"

.field private static final KEY_MAIL:Ljava/lang/String; = "email"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_TASK:Ljava/lang/String; = "task"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SDMNotificationList] "


# instance fields
.field private mCalendar:Lcom/htc/preference/HtcPreference;

.field private mDefault:Lcom/htc/preference/HtcPreference;

.field private mEmail:Lcom/htc/preference/HtcPreference;

.field private mMessage:Lcom/htc/preference/HtcPreference;

.field private mTask:Lcom/htc/preference/HtcPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/htc/sdm/activity/SDMNotificationList;->addPreferencesFromResource(I)V

    .line 45
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/htc/sdm/activity/SDMNotificationList;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mDefault:Lcom/htc/preference/HtcPreference;

    .line 46
    const-string v0, "message"

    invoke-virtual {p0, v0}, Lcom/htc/sdm/activity/SDMNotificationList;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mMessage:Lcom/htc/preference/HtcPreference;

    .line 47
    const-string v0, "calendar"

    invoke-virtual {p0, v0}, Lcom/htc/sdm/activity/SDMNotificationList;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mCalendar:Lcom/htc/preference/HtcPreference;

    .line 48
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/htc/sdm/activity/SDMNotificationList;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mEmail:Lcom/htc/preference/HtcPreference;

    .line 49
    const-string v0, "task"

    invoke-virtual {p0, v0}, Lcom/htc/sdm/activity/SDMNotificationList;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mTask:Lcom/htc/preference/HtcPreference;

    .line 51
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mDefault:Lcom/htc/preference/HtcPreference;

    new-instance v1, Lcom/htc/sdm/activity/SDMNotificationList$1;

    invoke-direct {v1, p0}, Lcom/htc/sdm/activity/SDMNotificationList$1;-><init>(Lcom/htc/sdm/activity/SDMNotificationList;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mMessage:Lcom/htc/preference/HtcPreference;

    new-instance v1, Lcom/htc/sdm/activity/SDMNotificationList$2;

    invoke-direct {v1, p0}, Lcom/htc/sdm/activity/SDMNotificationList$2;-><init>(Lcom/htc/sdm/activity/SDMNotificationList;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mCalendar:Lcom/htc/preference/HtcPreference;

    new-instance v1, Lcom/htc/sdm/activity/SDMNotificationList$3;

    invoke-direct {v1, p0}, Lcom/htc/sdm/activity/SDMNotificationList$3;-><init>(Lcom/htc/sdm/activity/SDMNotificationList;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mEmail:Lcom/htc/preference/HtcPreference;

    new-instance v1, Lcom/htc/sdm/activity/SDMNotificationList$4;

    invoke-direct {v1, p0}, Lcom/htc/sdm/activity/SDMNotificationList$4;-><init>(Lcom/htc/sdm/activity/SDMNotificationList;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mTask:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mTask:Lcom/htc/preference/HtcPreference;

    new-instance v1, Lcom/htc/sdm/activity/SDMNotificationList$5;

    invoke-direct {v1, p0}, Lcom/htc/sdm/activity/SDMNotificationList$5;-><init>(Lcom/htc/sdm/activity/SDMNotificationList;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 140
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    .line 145
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, defaultNofityName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 149
    .local v5, messageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 150
    .local v0, calendarName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 151
    .local v4, emailName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 154
    .local v7, taskName:Ljava/lang/String;
    const/4 v8, 0x2

    :try_start_0
    invoke-static {p0, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 155
    .local v1, defUri:Landroid/net/Uri;
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    .line 156
    .local v6, ring:Landroid/media/Ringtone;
    if-eqz v6, :cond_0

    .line 157
    invoke-virtual {v6, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 159
    :cond_0
    if-eqz v2, :cond_1

    .line 160
    iget-object v8, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mDefault:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    :cond_1
    const/4 v8, 0x6

    invoke-static {p0, v8}, Lcom/htc/sdm/util/SDMDBUtil;->QueryCurSound(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {p0, v8}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    .line 163
    if-eqz v6, :cond_2

    .line 164
    invoke-virtual {v6, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 165
    :cond_2
    if-eqz v5, :cond_3

    .line 166
    iget-object v8, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mMessage:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v5}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    :cond_3
    const/4 v8, 0x5

    invoke-static {p0, v8}, Lcom/htc/sdm/util/SDMDBUtil;->QueryCurSound(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {p0, v8}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    .line 169
    if-eqz v6, :cond_4

    .line 170
    invoke-virtual {v6, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_4
    if-eqz v0, :cond_5

    .line 172
    iget-object v8, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mCalendar:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    :cond_5
    const/4 v8, 0x7

    invoke-static {p0, v8}, Lcom/htc/sdm/util/SDMDBUtil;->QueryCurSound(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {p0, v8}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    .line 175
    if-eqz v6, :cond_6

    .line 176
    invoke-virtual {v6, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 177
    :cond_6
    if-eqz v4, :cond_7

    .line 178
    iget-object v8, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mEmail:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    :cond_7
    const/16 v8, 0xa

    invoke-static {p0, v8}, Lcom/htc/sdm/util/SDMDBUtil;->QueryCurSound(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {p0, v8}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    .line 181
    if-eqz v6, :cond_8

    .line 182
    invoke-virtual {v6, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 183
    :cond_8
    if-eqz v7, :cond_9

    iget-object v8, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mTask:Lcom/htc/preference/HtcPreference;

    if-eqz v8, :cond_9

    .line 184
    iget-object v8, p0, Lcom/htc/sdm/activity/SDMNotificationList;->mTask:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v8, v7}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1           #defUri:Landroid/net/Uri;
    .end local v6           #ring:Landroid/media/Ringtone;
    :cond_9
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v3

    .line 186
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

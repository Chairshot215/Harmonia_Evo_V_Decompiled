.class public final Lcom/android/htccontacts/util/SNUtils;
.super Ljava/lang/Object;
.source "SNUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final FACEBOOK_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field private static final FACEBOOK_PROFILE_LINK:Ljava/lang/String; = "http://touch.facebook.com/profile.php?id=%s"

.field public static final FDMID_ENDING_TOKEN:Ljava/lang/String; = "</FDMID>"

.field public static final FDMID_STARTING_TOKEN:Ljava/lang/String; = "<FDMID>"

.field public static final FLICKR_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.socialnetwork.flickr"

.field public static final HTC_DATA_ENDING_TOKEN:Ljava/lang/String; = "</HTCData>"

.field public static final HTC_DATA_STARTING_TOKEN:Ljava/lang/String; = "<HTCData>"

.field public static final LINK_DATA_ENDING_TOKEN:Ljava/lang/String; = "</sn>"

.field public static final LINK_DATA_STARTING_TOKEN:Ljava/lang/String; = "<sn>"

.field public static final SN_SERVICE_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final SN_SERVICE_FLICKR:Ljava/lang/String; = "flickr"

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/htccontacts/util/SNUtils;


# instance fields
.field private mEventDisplaySettingsDays:I

.field private mIsEventDisplaySettingsDirty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/htccontacts/util/SNUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/SNUtils;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/htccontacts/util/SNUtils;->mEventDisplaySettingsDays:I

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/util/SNUtils;->mIsEventDisplaySettingsDirty:Z

    .line 48
    return-void
.end method

.method public static extractNoteText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/htccontacts/util/SNUtils;->extractNoteText(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractNoteText(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3
    .parameter "text"
    .parameter "tagString"

    .prologue
    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    .end local p0
    :goto_0
    return-object p0

    .line 79
    .restart local p0
    :cond_0
    move-object v0, p0

    .line 80
    .local v0, sText:Ljava/lang/String;
    const-string v1, "<HTCData>"

    const-string v2, "</HTCData>"

    invoke-static {v0, v1, v2, p1}, Lcom/android/htccontacts/util/SNUtils;->removeTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "<FDMID>"

    const-string v2, "</FDMID>"

    invoke-static {v0, v1, v2, p1}, Lcom/android/htccontacts/util/SNUtils;->removeTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "<sn>"

    const-string v2, "</sn>"

    invoke-static {v0, v1, v2, p1}, Lcom/android/htccontacts/util/SNUtils;->removeTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    .line 83
    goto :goto_0
.end method

.method public static getEventDaysTimeBySettings(Landroid/content/Context;J)J
    .locals 8
    .parameter "context"
    .parameter "currentTime"

    .prologue
    const/16 v7, 0x3b

    .line 117
    sget-object v3, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-nez v3, :cond_0

    .line 118
    invoke-static {p0}, Lcom/android/htccontacts/util/SNUtils;->initUtils(Landroid/content/Context;)V

    .line 120
    :cond_0
    const/4 v3, 0x1

    sget-object v4, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget-boolean v4, v4, Lcom/android/htccontacts/util/SNUtils;->mIsEventDisplaySettingsDirty:Z

    if-ne v3, v4, :cond_1

    .line 121
    sget-object v3, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_events_within_days"

    sget-object v6, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget v6, v6, Lcom/android/htccontacts/util/SNUtils;->mEventDisplaySettingsDays:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/htccontacts/util/SNUtils;->mEventDisplaySettingsDays:I

    .line 122
    sget-object v3, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/htccontacts/util/SNUtils;->mIsEventDisplaySettingsDirty:Z

    .line 124
    :cond_1
    const-wide/32 v3, 0x5265c00

    sget-object v5, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    iget v5, v5, Lcom/android/htccontacts/util/SNUtils;->mEventDisplaySettingsDays:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    add-long v1, p1, v3

    .line 125
    .local v1, endTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 126
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 127
    const/16 v3, 0xb

    const/16 v4, 0x17

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 128
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 129
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 130
    const/16 v3, 0xe

    const/16 v4, 0x3e7

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 131
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    return-wide v3
.end method

.method public static declared-synchronized initUtils(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    const-class v1, Lcom/android/htccontacts/util/SNUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/htccontacts/util/SNUtils;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/util/SNUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit v1

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static removeTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5
    .parameter "s"
    .parameter "sBeginTag"
    .parameter "sEndTag"
    .parameter "tagString"

    .prologue
    const/4 v4, -0x1

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 90
    .restart local p0
    :cond_1
    const/4 v2, -0x1

    .line 91
    .local v2, startingIndex:I
    const/4 v0, -0x1

    .line 92
    .local v0, endingIndex:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, sbText:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v4, v3, :cond_3

    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 95
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 96
    if-eq v4, v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gt v0, v3, :cond_3

    .line 97
    if-eq v4, v2, :cond_3

    if-eq v4, v0, :cond_3

    if-ge v2, v0, :cond_3

    .line 98
    if-eqz p3, :cond_2

    .line 99
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_2
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static setEventDaysTimeSettingsDirty(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 135
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    if-nez v0, :cond_0

    .line 136
    invoke-static {p0}, Lcom/android/htccontacts/util/SNUtils;->initUtils(Landroid/content/Context;)V

    .line 138
    :cond_0
    sget-object v0, Lcom/android/htccontacts/util/SNUtils;->mInstance:Lcom/android/htccontacts/util/SNUtils;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/htccontacts/util/SNUtils;->mIsEventDisplaySettingsDirty:Z

    .line 139
    return-void
.end method

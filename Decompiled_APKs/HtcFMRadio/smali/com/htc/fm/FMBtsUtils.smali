.class public Lcom/htc/fm/FMBtsUtils;
.super Ljava/lang/Object;
.source "FMBtsUtils.java"

# interfaces
.implements Lcom/htc/fm/IFMBtsUtils;


# static fields
.field private static final TAG:Ljava/lang/String; = "FMBtsUtils"

.field public static mEndFreq:I

.field public static mStartFreq:I


# instance fields
.field private mPreset:Lcom/htc/fm/Preset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    const v0, 0x155cc

    sput v0, Lcom/htc/fm/FMBtsUtils;->mStartFreq:I

    .line 185
    const v0, 0x1a5e0

    sput v0, Lcom/htc/fm/FMBtsUtils;->mEndFreq:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/FMBtsUtils;->mPreset:Lcom/htc/fm/Preset;

    return-void
.end method

.method private static getFreq(J)Ljava/lang/String;
    .locals 10
    .parameter "freq"

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v8, 0x64

    .line 175
    div-long v0, p0, v4

    .line 176
    .local v0, p1:J
    rem-long v2, p0, v4

    .line 177
    .local v2, r:J
    rem-long v4, v2, v8

    const-wide/16 v6, 0x32

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-long v5, v2, v8

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    :goto_0
    return-object v4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-long v5, v2, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static setEndFreq(I)V
    .locals 0
    .parameter "endFreq"

    .prologue
    .line 192
    sput p0, Lcom/htc/fm/FMBtsUtils;->mEndFreq:I

    .line 193
    return-void
.end method

.method public static setStartFreq(I)V
    .locals 0
    .parameter "startFreq"

    .prologue
    .line 188
    sput p0, Lcom/htc/fm/FMBtsUtils;->mStartFreq:I

    .line 189
    return-void
.end method

.method public static updateStatusBar(Landroid/content/Context;Lcom/htc/fm/Preset;)V
    .locals 14
    .parameter "context"
    .parameter "preset"

    .prologue
    const v13, 0x7f090011

    const v12, 0x7f02006e

    const/4 v11, 0x0

    .line 62
    sget-boolean v7, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v7, :cond_1

    .line 63
    const-string v7, "FMBtsUtils"

    const-string v8, "!!!! @@@@@@ updateNotification() failed due to Headset unplugged!"

    invoke-static {v7, v8}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    if-eqz p1, :cond_0

    .line 70
    iget v7, p1, Lcom/htc/fm/Preset;->freq:I

    sput v7, Lcom/htc/fm/FMDef;->Frequency:I

    .line 72
    const-string v7, "FMBtsUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!!!! @@@@@@@@ mNowFreq("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/htc/fm/FMDef;->Frequency:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") freq("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 76
    .local v6, nm:Landroid/app/NotificationManager;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030007

    invoke-direct {v4, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 77
    .local v4, mRemoteViews:Landroid/widget/RemoteViews;
    const v7, 0x7f040033

    invoke-virtual {v4, v7, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 78
    const v7, 0x7f040034

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 80
    iget-object v0, p1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 81
    .local v0, channelName:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 82
    const-string v0, ""

    .line 83
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_3
    const v7, 0x7f040035

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Lcom/htc/fm/Preset;->freq:I

    int-to-long v9, v9

    invoke-static {v9, v10}, Lcom/htc/fm/FMBtsUtils;->getFreq(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " MHz"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 88
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.htc.fm.TUNNER_VIEWER"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v5, mStatusintent:Landroid/content/Intent;
    const/high16 v7, 0x400

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 93
    .local v3, mNotifyStatus:Landroid/app/Notification;
    iget v7, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 94
    iput v12, v3, Landroid/app/Notification;->icon:I

    .line 96
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.htc.fm.TUNNER_VIEWER"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "channel"

    iget v8, p1, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-static {p0, v11, v2, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 101
    .local v1, contentIntent:Landroid/app/PendingIntent;
    const-wide/16 v7, 0x0

    iput-wide v7, v3, Landroid/app/Notification;->when:J

    .line 102
    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Lcom/htc/fm/Preset;->freq:I

    int-to-long v9, v9

    invoke-static {v9, v10}, Lcom/htc/fm/FMBtsUtils;->getFreq(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " MHz"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, p0, v7, v8, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 105
    const/4 v7, 0x1

    invoke-virtual {v6, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelNotification(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 169
    const-string v1, "FMBtsUtils"

    const-string v2, "[FMBtsUtils][FMTuner] cancelNotification()"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 171
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 172
    return-void
.end method

.method public getEndFreq()I
    .locals 1

    .prologue
    .line 200
    sget v0, Lcom/htc/fm/FMBtsUtils;->mEndFreq:I

    return v0
.end method

.method public getStartFreq()I
    .locals 1

    .prologue
    .line 196
    sget v0, Lcom/htc/fm/FMBtsUtils;->mStartFreq:I

    return v0
.end method

.method public resetAudioPath(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 44
    const-string v5, "FMBtsUtils"

    const-string v6, "[FMBtsUtils] resetAudioPath()"

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/htc/fm/FMUtils;->isHeadsetPlugged()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 47
    .local v3, st:J
    invoke-static {p1}, Lcom/htc/fm/FMUtils;->getAudioPath(Landroid/content/Context;)I

    move-result v0

    .line 48
    .local v0, audioPath:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 49
    .local v1, et:J
    const-string v5, "FMBtsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    [FM]!!!! @@@@ get audio path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v1, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 51
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 52
    const-string v5, "FMBtsUtils"

    const-string v6, "[FMBtsUtils] [AudioHardware] FMUtils.setAudioPath(FMDef.AUDIO_PATH_HEADSET)()"

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v5, 0x0

    invoke-static {v5, p1}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    .line 55
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 56
    const-string v5, "FMBtsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    [FM]!!!! @@@@ set audio path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v1, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v0           #audioPath:I
    .end local v1           #et:J
    .end local v3           #st:J
    :cond_1
    return-void
.end method

.method public startBts(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public stopBts(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public updateNotification(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "freq"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/fm/FMBtsUtils;->mPreset:Lcom/htc/fm/Preset;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/htc/fm/Preset;

    invoke-direct {v0}, Lcom/htc/fm/Preset;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/FMBtsUtils;->mPreset:Lcom/htc/fm/Preset;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMBtsUtils;->mPreset:Lcom/htc/fm/Preset;

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/htc/fm/FMBtsUtils;->mPreset:Lcom/htc/fm/Preset;

    iput p2, v0, Lcom/htc/fm/Preset;->freq:I

    .line 164
    const-string v0, "FMBtsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMBtsUtils][FMTuner] mNowFreq("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/fm/FMDef;->Frequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") freq("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") #2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/htc/fm/FMBtsUtils;->mPreset:Lcom/htc/fm/Preset;

    invoke-virtual {p0, p1, v0}, Lcom/htc/fm/FMBtsUtils;->updateNotification(Landroid/content/Context;Lcom/htc/fm/Preset;)V

    .line 166
    return-void
.end method

.method public updateNotification(Landroid/content/Context;Lcom/htc/fm/Preset;)V
    .locals 11
    .parameter "context"
    .parameter "preset"

    .prologue
    .line 116
    if-nez p2, :cond_0

    .line 155
    :goto_0
    return-void

    .line 119
    :cond_0
    iget v7, p2, Lcom/htc/fm/Preset;->freq:I

    sput v7, Lcom/htc/fm/FMDef;->Frequency:I

    .line 121
    const-string v7, "FMBtsUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[FMBtsUtils][FMTuner] updateNotification() mNowFreq("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/htc/fm/FMDef;->Frequency:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 125
    .local v6, nm:Landroid/app/NotificationManager;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030007

    invoke-direct {v4, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 126
    .local v4, mRemoteViews:Landroid/widget/RemoteViews;
    const v7, 0x7f040033

    const v8, 0x7f02006e

    invoke-virtual {v4, v7, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 127
    const v7, 0x7f040034

    const v8, 0x7f090011

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 129
    iget-object v0, p2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 130
    .local v0, channelName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 131
    const-string v0, ""

    .line 132
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_2
    const v7, 0x7f040035

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p2, Lcom/htc/fm/Preset;->freq:I

    int-to-long v9, v9

    invoke-static {v9, v10}, Lcom/htc/fm/FMBtsUtils;->getFreq(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " MHz"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 137
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.htc.fm.TUNNER_VIEWER"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v5, mStatusintent:Landroid/content/Intent;
    const/high16 v7, 0x400

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 142
    .local v3, mNotifyStatus:Landroid/app/Notification;
    iget v7, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 143
    const v7, 0x7f02006e

    iput v7, v3, Landroid/app/Notification;->icon:I

    .line 145
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.htc.fm.TUNNER_VIEWER"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "channel"

    iget v8, p2, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p1, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 150
    .local v1, contentIntent:Landroid/app/PendingIntent;
    const-wide/16 v7, 0x0

    iput-wide v7, v3, Landroid/app/Notification;->when:J

    .line 151
    const v7, 0x7f090011

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p2, Lcom/htc/fm/Preset;->freq:I

    int-to-long v9, v9

    invoke-static {v9, v10}, Lcom/htc/fm/FMBtsUtils;->getFreq(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " MHz"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, p1, v7, v8, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 154
    const/4 v7, 0x1

    invoke-virtual {v6, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

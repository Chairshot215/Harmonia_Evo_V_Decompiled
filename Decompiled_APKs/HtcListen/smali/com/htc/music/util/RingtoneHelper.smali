.class public Lcom/htc/music/util/RingtoneHelper;
.super Ljava/lang/Object;
.source "RingtoneHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[RingtoneHelper]"


# instance fields
.field private mAudioId:I

.field private mAudioPath:Ljava/lang/String;

.field private mAudioType:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    iput-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public activityPopup(Z)V
    .locals 0

    return-void
.end method

.method public canUseAsRingtone(Z)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/music/util/RingtoneHelper;->checkRingtoneSizeLimit()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p1, :cond_0

    const v4, 0x7f0700a3

    invoke-virtual {p0, v4}, Lcom/htc/music/util/RingtoneHelper;->showToast(I)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    invoke-static {v5, v6}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "mime_type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget v5, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    if-ne v5, v4, :cond_7

    :cond_4
    move v0, v4

    :goto_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    const-string v5, "audio/x-wma-drm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v0, v4

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    const v3, 0x7f0700a4

    invoke-virtual {p0, v3}, Lcom/htc/music/util/RingtoneHelper;->showToast(I)V

    :cond_6
    move v3, v0

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_2
.end method

.method public checkRingtoneSizeLimit()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/music/util/ProjectSettings;->getMaxRingtoneSize(Landroid/content/Context;)I

    move-result v4

    mul-int/lit16 v0, v4, 0x400

    if-lez v0, :cond_0

    iget-object v4, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/music/util/MusicUtils;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/MusicUtils;->getDrmTrackSize(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    if-le v4, v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    :goto_1
    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    invoke-static {v4, v5}, Lcom/htc/music/util/MusicUtils;->getTrackSize(Landroid/content/Context;I)I

    move-result v4

    if-le v4, v0, :cond_3

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method public createSetAsRingtoneDialog([Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog;
    .locals 3

    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07004c

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/util/RingtoneHelper$1;

    invoke-direct {v2, p0, p2}, Lcom/htc/music/util/RingtoneHelper$1;-><init>(Lcom/htc/music/util/RingtoneHelper;I)V

    invoke-virtual {v1, p1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()I
    .locals 1

    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    return v0
.end method

.method public getAudioPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioType()I
    .locals 1

    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    return v0
.end method

.method public hadnleContactRingtoneResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/util/RingtoneHelper;->hadnleContactRingtoneResult(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public hadnleContactRingtoneResult(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "[RingtoneHelper]"

    const-string v1, "hadnleContactRingtoneResult++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/htc/music/util/MusicUtils;->setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Z)V

    :goto_0
    const-string v0, "[RingtoneHelper]"

    const-string v1, "hadnleContactRingtoneResult--"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/music/util/ShowMeHelper;->notifySetAsRingtone(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2, p1, p2}, Lcom/htc/music/util/MusicUtils;->setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method public setAsContactRingtone(I)V
    .locals 3

    const/4 v2, 0x1

    iget v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/music/util/RingtoneHelper;->canUseAsRingtone(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/music/util/RingtoneHelper;->activityPopup(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_PICK_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "filter_account_mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, v1, p1}, Lcom/htc/music/util/RingtoneHelper;->startContactActivity(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public setAsNotificationRingtone()V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/music/util/RingtoneHelper;->canUseAsRingtone(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMNotificationRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_1
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/music/util/ShowMeHelper;->notifySetAsRingtone(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->setNotificationRingtone(Landroid/content/Context;J)V

    goto :goto_1
.end method

.method public setAsPhoneRingtone()V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/music/util/RingtoneHelper;->canUseAsRingtone(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_1
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/music/util/ShowMeHelper;->notifySetAsRingtone(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    goto :goto_1
.end method

.method public setAudioId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    return-void
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    return-void
.end method

.method public setAudioType(I)V
    .locals 0

    iput p1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    return-void
.end method

.method public showContactRingtoneToast()V
    .locals 3

    iget v0, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->showDRMContactRingtoneToast(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->showContactRingtoneToast(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public showNoNotificationRingtoneDialog()V
    .locals 0

    return-void
.end method

.method public showRingtoneDialog()V
    .locals 0

    return-void
.end method

.method public showToast(I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public startContactActivity(Landroid/app/Activity;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_PICK_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "filter_account_mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public useAsRingtone(Z)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lcom/htc/music/util/RingtoneHelper;->canUseAsRingtone(Z)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/music/util/ProjectSettings;->getEnableUseAsNotificationRingtone(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/util/RingtoneHelper;->showRingtoneDialog()V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.htc.ringtonetrimmer"

    const-string v3, "com.htc.ringtonetrimmer.RingtoneSetAs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "audio_id"

    iget v3, p0, Lcom/htc/music/util/RingtoneHelper;->mAudioId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/htc/music/util/MusicUtils;->appExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v4}, Lcom/htc/music/util/RingtoneHelper;->activityPopup(Z)V

    iget-object v2, p0, Lcom/htc/music/util/RingtoneHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/music/util/ShowMeHelper;->notifySetAsRingtone(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/util/RingtoneHelper;->showNoNotificationRingtoneDialog()V

    goto :goto_0
.end method

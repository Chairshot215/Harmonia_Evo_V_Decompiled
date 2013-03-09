.class public Lcom/htc/android/mail/account/AccountBinder;
.super Lcom/htc/android/mail/account/IAccount$Stub;
.source "AccountBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/account/AccountBinder$1;,
        Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AccountBinder"


# instance fields
.field private alwaysbccMyself:I

.field private askBeforeDelete:I

.field private checkFreq:I

.field private colorGroupIdx:I

.field private colorIdx:I

.field private defaultFolderId:J

.field private defaultaccount:I

.field private del:I

.field private deleteFromServer:I

.field private desc:Ljava/lang/String;

.field private draftFolderId:J

.field private easDomain:Ljava/lang/String;

.field private easSvrProtocol:Ljava/lang/String;

.field private emailAddress:Ljava/lang/String;

.field private enableSDsave:I

.field private fetchMailDaysIndex:I

.field private fetchMailNumIndex:I

.field private fetchMailType:I

.field private fontsize:I

.field private id:J

.field private inPort:I

.field private inServer:Ljava/lang/String;

.field private isIMAP4:Z

.field private lastupdatetime:J

.field private mContactGroup:Ljava/lang/String;

.field private mContentValues:Landroid/content/ContentValues;

.field private mContext:Landroid/content/Context;

.field private mDownloadMessageWhenScroll:Z

.field private mEmailNotifications:I

.field private mMailboxContentValues:Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;

.field private mMailboxLock:Ljava/lang/Object;

.field private mMailboxs:Lcom/htc/android/mail/Mailboxs;

.field private mNotifySettingChanged:Z

.field private mPollMinutes:J

.field private mPreviewLineNum:I

.field private mRefreshMailOpenFolder:Z

.field private mSortBy:I

.field private name:Ljava/lang/String;

.field private outFolderId:J

.field private outPort:I

.field private outServer:Ljava/lang/String;

.field private outpassword:Ljava/lang/String;

.field private outuserName:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private peakDays:I

.field private peakTimeEnd:I

.field private peakTimeStart:I

.field private protocol:I

.field private provider:Ljava/lang/String;

.field private providerGroup:Ljava/lang/String;

.field private providerid:I

.field private replyWithText:I

.field private sentFolderId:J

.field private signature:Ljava/lang/String;

.field private sizeLimitIndex:I

.field private smtpauth:I

.field private sortColumn:Ljava/lang/String;

.field private sortOrder:Ljava/lang/String;

.field private sound:I

.field private syncSchedulePeakOff:I

.field private syncSchedulePeakOn:I

.field private syncWithServer:I

.field private trashFolderId:J

.field private useSSLin:I

.field private useSSLout:I

.field private useSignature:I

.field private userName:Ljava/lang/String;

.field private vibrate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 327
    invoke-direct {p0}, Lcom/htc/android/mail/account/IAccount$Stub;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxLock:Ljava/lang/Object;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->easDomain:Ljava/lang/String;

    .line 78
    iput-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->mPollMinutes:J

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->provider:Ljava/lang/String;

    .line 80
    iput v6, p0, Lcom/htc/android/mail/account/AccountBinder;->providerid:I

    .line 81
    iput v5, p0, Lcom/htc/android/mail/account/AccountBinder;->mEmailNotifications:I

    .line 83
    iput-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->defaultFolderId:J

    .line 84
    iput-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->trashFolderId:J

    .line 85
    iput-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->sentFolderId:J

    .line 86
    iput-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->draftFolderId:J

    .line 87
    iput-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->outFolderId:J

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->lastupdatetime:J

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->desc:Ljava/lang/String;

    .line 90
    iput v5, p0, Lcom/htc/android/mail/account/AccountBinder;->sound:I

    .line 91
    iput v5, p0, Lcom/htc/android/mail/account/AccountBinder;->vibrate:I

    .line 92
    iput v5, p0, Lcom/htc/android/mail/account/AccountBinder;->smtpauth:I

    .line 93
    iput v6, p0, Lcom/htc/android/mail/account/AccountBinder;->mSortBy:I

    .line 94
    iput-boolean v2, p0, Lcom/htc/android/mail/account/AccountBinder;->isIMAP4:Z

    .line 95
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->defaultaccount:I

    .line 96
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->fontsize:I

    .line 97
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->alwaysbccMyself:I

    .line 98
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->replyWithText:I

    .line 99
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->mPreviewLineNum:I

    .line 100
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailNumIndex:I

    .line 101
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailDaysIndex:I

    .line 102
    iput v6, p0, Lcom/htc/android/mail/account/AccountBinder;->del:I

    .line 103
    const-string v0, "_internaldate"

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sortColumn:Ljava/lang/String;

    .line 104
    const-string v0, "desc"

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sortOrder:Ljava/lang/String;

    .line 106
    iput-boolean v5, p0, Lcom/htc/android/mail/account/AccountBinder;->mDownloadMessageWhenScroll:Z

    .line 108
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakDays:I

    .line 109
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOn:I

    .line 110
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOff:I

    .line 111
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeStart:I

    .line 112
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeEnd:I

    .line 114
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->colorGroupIdx:I

    .line 115
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->colorIdx:I

    .line 116
    iput-object v7, p0, Lcom/htc/android/mail/account/AccountBinder;->providerGroup:Ljava/lang/String;

    .line 118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    .line 119
    new-instance v0, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;

    invoke-direct {v0, v7}, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;-><init>(Lcom/htc/android/mail/account/AccountBinder$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxContentValues:Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;

    .line 121
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->easSvrProtocol:Ljava/lang/String;

    .line 123
    iput-boolean v2, p0, Lcom/htc/android/mail/account/AccountBinder;->mNotifySettingChanged:Z

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    .line 329
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 8
    .parameter "context"
    .parameter "c"
    .parameter "initMailboxs"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 331
    invoke-direct {p0}, Lcom/htc/android/mail/account/IAccount$Stub;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxLock:Ljava/lang/Object;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->easDomain:Ljava/lang/String;

    .line 78
    iput-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->mPollMinutes:J

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->provider:Ljava/lang/String;

    .line 80
    iput v6, p0, Lcom/htc/android/mail/account/AccountBinder;->providerid:I

    .line 81
    iput v5, p0, Lcom/htc/android/mail/account/AccountBinder;->mEmailNotifications:I

    .line 83
    iput-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->defaultFolderId:J

    .line 84
    iput-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->trashFolderId:J

    .line 85
    iput-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->sentFolderId:J

    .line 86
    iput-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->draftFolderId:J

    .line 87
    iput-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->outFolderId:J

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->lastupdatetime:J

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->desc:Ljava/lang/String;

    .line 90
    iput v5, p0, Lcom/htc/android/mail/account/AccountBinder;->sound:I

    .line 91
    iput v5, p0, Lcom/htc/android/mail/account/AccountBinder;->vibrate:I

    .line 92
    iput v5, p0, Lcom/htc/android/mail/account/AccountBinder;->smtpauth:I

    .line 93
    iput v6, p0, Lcom/htc/android/mail/account/AccountBinder;->mSortBy:I

    .line 94
    iput-boolean v2, p0, Lcom/htc/android/mail/account/AccountBinder;->isIMAP4:Z

    .line 95
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->defaultaccount:I

    .line 96
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->fontsize:I

    .line 97
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->alwaysbccMyself:I

    .line 98
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->replyWithText:I

    .line 99
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->mPreviewLineNum:I

    .line 100
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailNumIndex:I

    .line 101
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailDaysIndex:I

    .line 102
    iput v6, p0, Lcom/htc/android/mail/account/AccountBinder;->del:I

    .line 103
    const-string v0, "_internaldate"

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sortColumn:Ljava/lang/String;

    .line 104
    const-string v0, "desc"

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sortOrder:Ljava/lang/String;

    .line 106
    iput-boolean v5, p0, Lcom/htc/android/mail/account/AccountBinder;->mDownloadMessageWhenScroll:Z

    .line 108
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakDays:I

    .line 109
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOn:I

    .line 110
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOff:I

    .line 111
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeStart:I

    .line 112
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeEnd:I

    .line 114
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->colorGroupIdx:I

    .line 115
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->colorIdx:I

    .line 116
    iput-object v7, p0, Lcom/htc/android/mail/account/AccountBinder;->providerGroup:Ljava/lang/String;

    .line 118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    .line 119
    new-instance v0, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;

    invoke-direct {v0, v7}, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;-><init>(Lcom/htc/android/mail/account/AccountBinder$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxContentValues:Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;

    .line 121
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->easSvrProtocol:Ljava/lang/String;

    .line 123
    iput-boolean v2, p0, Lcom/htc/android/mail/account/AccountBinder;->mNotifySettingChanged:Z

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    .line 333
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/account/AccountBinder;->init(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 334
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9
    .parameter "context"
    .parameter "b"

    .prologue
    const/4 v8, 0x3

    const/4 v7, -0x1

    const-wide/16 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 336
    invoke-direct {p0}, Lcom/htc/android/mail/account/IAccount$Stub;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxLock:Ljava/lang/Object;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->easDomain:Ljava/lang/String;

    .line 78
    iput-wide v5, p0, Lcom/htc/android/mail/account/AccountBinder;->mPollMinutes:J

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->provider:Ljava/lang/String;

    .line 80
    iput v7, p0, Lcom/htc/android/mail/account/AccountBinder;->providerid:I

    .line 81
    iput v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mEmailNotifications:I

    .line 83
    iput-wide v5, p0, Lcom/htc/android/mail/account/AccountBinder;->defaultFolderId:J

    .line 84
    iput-wide v5, p0, Lcom/htc/android/mail/account/AccountBinder;->trashFolderId:J

    .line 85
    iput-wide v5, p0, Lcom/htc/android/mail/account/AccountBinder;->sentFolderId:J

    .line 86
    iput-wide v5, p0, Lcom/htc/android/mail/account/AccountBinder;->draftFolderId:J

    .line 87
    iput-wide v5, p0, Lcom/htc/android/mail/account/AccountBinder;->outFolderId:J

    .line 88
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->lastupdatetime:J

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->desc:Ljava/lang/String;

    .line 90
    iput v1, p0, Lcom/htc/android/mail/account/AccountBinder;->sound:I

    .line 91
    iput v1, p0, Lcom/htc/android/mail/account/AccountBinder;->vibrate:I

    .line 92
    iput v1, p0, Lcom/htc/android/mail/account/AccountBinder;->smtpauth:I

    .line 93
    iput v7, p0, Lcom/htc/android/mail/account/AccountBinder;->mSortBy:I

    .line 94
    iput-boolean v2, p0, Lcom/htc/android/mail/account/AccountBinder;->isIMAP4:Z

    .line 95
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->defaultaccount:I

    .line 96
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->fontsize:I

    .line 97
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->alwaysbccMyself:I

    .line 98
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->replyWithText:I

    .line 99
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->mPreviewLineNum:I

    .line 100
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailNumIndex:I

    .line 101
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailDaysIndex:I

    .line 102
    iput v7, p0, Lcom/htc/android/mail/account/AccountBinder;->del:I

    .line 103
    const-string v0, "_internaldate"

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sortColumn:Ljava/lang/String;

    .line 104
    const-string v0, "desc"

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sortOrder:Ljava/lang/String;

    .line 106
    iput-boolean v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mDownloadMessageWhenScroll:Z

    .line 108
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakDays:I

    .line 109
    iput v8, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOn:I

    .line 110
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOff:I

    .line 111
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeStart:I

    .line 112
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeEnd:I

    .line 114
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->colorGroupIdx:I

    .line 115
    iput v2, p0, Lcom/htc/android/mail/account/AccountBinder;->colorIdx:I

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->providerGroup:Ljava/lang/String;

    .line 118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    .line 119
    new-instance v0, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;-><init>(Lcom/htc/android/mail/account/AccountBinder$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxContentValues:Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;

    .line 121
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->easSvrProtocol:Ljava/lang/String;

    .line 123
    iput-boolean v2, p0, Lcom/htc/android/mail/account/AccountBinder;->mNotifySettingChanged:Z

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    .line 338
    iput-wide v5, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    .line 339
    const-string v0, "_emailaddress"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->emailAddress:Ljava/lang/String;

    .line 340
    const-string v0, "_username"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->userName:Ljava/lang/String;

    .line 341
    const-string v0, "_password"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->password:Ljava/lang/String;

    .line 342
    const-string v0, "_outusername"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outuserName:Ljava/lang/String;

    .line 343
    const-string v0, "_outpassword"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outpassword:Ljava/lang/String;

    .line 344
    const-string v0, "_protocol"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    .line 345
    const-string v0, "_inserver"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->inServer:Ljava/lang/String;

    .line 346
    const-string v0, "_inport"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->inPort:I

    .line 347
    const-string v0, "_outserver"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outServer:Ljava/lang/String;

    .line 348
    const-string v0, "_outport"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outPort:I

    .line 349
    const-string v0, "_useSSLin"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->useSSLin:I

    .line 350
    const-string v0, "_useSSLout"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->useSSLout:I

    .line 351
    const-string v0, "_useSignature"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->useSignature:I

    .line 352
    const-string v0, "_fetchMailNum"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailNumIndex:I

    .line 353
    const-string v0, "_enableSDsave"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->enableSDsave:I

    .line 354
    const-string v0, "_deleteFromServer"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->deleteFromServer:I

    .line 355
    const-string v0, "_poll_frequency_number"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->checkFreq:I

    .line 356
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->checkFreq:I

    invoke-static {v0}, Lcom/htc/android/mail/account/AccountBinder;->getPollValue(I)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->mPollMinutes:J

    .line 357
    const-string v0, "_askBeforeDelete"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->askBeforeDelete:I

    .line 358
    const-string v0, "_refreshMailWhenOpenFolder"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mRefreshMailOpenFolder:Z

    .line 359
    const-string v0, "_downloadMessageWhenScroll"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/htc/android/mail/account/AccountBinder;->mDownloadMessageWhenScroll:Z

    .line 360
    const-string v0, "_provider"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->provider:Ljava/lang/String;

    .line 361
    const-string v0, "_smtpauth"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->smtpauth:I

    .line 362
    const-string v0, "_peakdays"

    const/16 v1, 0x1f

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakDays:I

    .line 363
    const-string v0, "_peaktimestart"

    const/16 v1, 0x1e0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeStart:I

    .line 364
    const-string v0, "_peaktimeend"

    const/16 v1, 0x4b0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeEnd:I

    .line 365
    const-string v0, "_peakonfrequency"

    invoke-virtual {p2, v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOn:I

    .line 366
    const-string v0, "_peakofffrequency"

    const/4 v1, 0x5

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOff:I

    .line 367
    const-string v0, "_easSvrProtocol"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->easSvrProtocol:Ljava/lang/String;

    .line 368
    return-void

    :cond_1
    move v0, v2

    .line 358
    goto :goto_0
.end method

.method private static createMimeViewerAccount(Landroid/content/Context;)Lcom/htc/android/mail/Account;
    .locals 3
    .parameter "context"

    .prologue
    .line 267
    new-instance v0, Lcom/htc/android/mail/account/AccountBinder;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/account/AccountBinder;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    const-wide v1, 0x7ffffffffffffffeL

    iput-wide v1, v0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    .line 269
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    .line 270
    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/android/mail/account/AccountBinder;->replyWithText:I

    .line 271
    new-instance v1, Lcom/htc/android/mail/Account;

    invoke-direct {v1, v0}, Lcom/htc/android/mail/Account;-><init>(Lcom/htc/android/mail/account/IAccount;)V

    return-object v1
.end method

.method public static getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;
    .locals 11
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v10, 0x0

    .line 239
    const-wide v0, 0x7ffffffffffffffeL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 240
    invoke-static {p0}, Lcom/htc/android/mail/account/AccountBinder;->createMimeViewerAccount(Landroid/content/Context;)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 263
    :cond_0
    :goto_0
    return-object v0

    .line 243
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    move-object v0, v10

    .line 244
    goto :goto_0

    .line 246
    :cond_2
    const/4 v6, 0x0

    .line 247
    .local v6, accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    const/4 v8, 0x0

    .line 249
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mail/accounts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "_del <> 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 250
    if-eqz v8, :cond_3

    .line 251
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    new-instance v7, Lcom/htc/android/mail/account/AccountBinder;

    const/4 v0, 0x1

    invoke-direct {v7, p0, v8, v0}, Lcom/htc/android/mail/account/AccountBinder;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v6           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .local v7, accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    :try_start_1
    new-instance v0, Lcom/htc/android/mail/Account;

    invoke-direct {v0, v7}, Lcom/htc/android/mail/Account;-><init>(Lcom/htc/android/mail/account/IAccount;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 259
    .end local v7           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v6       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v0, v10

    .line 263
    goto :goto_0

    .line 256
    :catch_0
    move-exception v9

    .line 257
    .local v9, e:Landroid/os/RemoteException;
    :goto_2
    :try_start_2
    const-string v0, "AccountBinder"

    const-string v1, " catch remote exception"

    invoke-static {v0, v1, v9}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 259
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 259
    .end local v6           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v7       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v6       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    goto :goto_3

    .line 256
    .end local v6           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v7       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    :catch_1
    move-exception v9

    move-object v6, v7

    .end local v7           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v6       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    goto :goto_2
.end method

.method public static getAccount(Landroid/content/Context;Landroid/accounts/Account;)Lcom/htc/android/mail/Account;
    .locals 11
    .parameter "context"
    .parameter "syncAccount"

    .prologue
    const/4 v10, 0x0

    .line 275
    const/4 v6, 0x0

    .line 276
    .local v6, accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    const/4 v8, 0x0

    .line 279
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_emailAddress = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND _del <> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, where:Ljava/lang/String;
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.htc.android.mail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_protocol IN (1, 0, 2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    :goto_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    const-string v1, "content://mail/accounts/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 288
    if-eqz v8, :cond_4

    .line 289
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 290
    new-instance v7, Lcom/htc/android/mail/account/AccountBinder;

    const/4 v0, 0x1

    invoke-direct {v7, p0, v8, v0}, Lcom/htc/android/mail/account/AccountBinder;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v6           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .local v7, accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    :try_start_1
    new-instance v0, Lcom/htc/android/mail/Account;

    invoke-direct {v0, v7}, Lcom/htc/android/mail/Account;-><init>(Lcom/htc/android/mail/account/IAccount;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v6, v7

    .line 301
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v6       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    :goto_1
    return-object v0

    .line 282
    .restart local v3       #where:Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.htc.android.mail.eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_protocol IN (4, 10)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_0

    .line 297
    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 298
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v10

    goto :goto_1

    .line 297
    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 298
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v3           #where:Ljava/lang/String;
    :cond_5
    :goto_2
    move-object v0, v10

    .line 301
    goto :goto_1

    .line 294
    :catch_0
    move-exception v9

    .line 295
    .local v9, e:Landroid/os/RemoteException;
    :goto_3
    :try_start_3
    const-string v0, "AccountBinder"

    const-string v1, " catch remote exception"

    invoke-static {v0, v1, v9}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 298
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 297
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 298
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 297
    .end local v6           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v7       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v6       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    goto :goto_4

    .line 294
    .end local v6           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v7       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    :catch_1
    move-exception v9

    move-object v6, v7

    .end local v7           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v6       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    goto :goto_3
.end method

.method public static getAccountByEmail(Landroid/content/Context;Ljava/lang/String;I)Lcom/htc/android/mail/Account;
    .locals 11
    .parameter "context"
    .parameter "emailAddress"
    .parameter "protocol"

    .prologue
    const/4 v10, 0x0

    .line 305
    const/4 v6, 0x0

    .line 306
    .local v6, accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    const/4 v8, 0x0

    .line 309
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_emailAddress like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND _del <> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _protocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    const-string v1, "content://mail/accounts/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 311
    if-eqz v8, :cond_1

    .line 312
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    new-instance v7, Lcom/htc/android/mail/account/AccountBinder;

    const/4 v0, 0x1

    invoke-direct {v7, p0, v8, v0}, Lcom/htc/android/mail/account/AccountBinder;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v6           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .local v7, accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    :try_start_1
    new-instance v0, Lcom/htc/android/mail/Account;

    invoke-direct {v0, v7}, Lcom/htc/android/mail/Account;-><init>(Lcom/htc/android/mail/account/IAccount;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 320
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v6, v7

    .line 324
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v6       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    :goto_0
    return-object v0

    .line 320
    .restart local v3       #where:Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v3           #where:Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v0, v10

    .line 324
    goto :goto_0

    .line 317
    :catch_0
    move-exception v9

    .line 318
    .local v9, e:Landroid/os/RemoteException;
    :goto_2
    :try_start_2
    const-string v0, "AccountBinder"

    const-string v1, " catch remote exception"

    invoke-static {v0, v1, v9}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 320
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 321
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 320
    .end local v6           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v7       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v6       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    goto :goto_3

    .line 317
    .end local v6           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v7       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    :catch_1
    move-exception v9

    move-object v6, v7

    .end local v7           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .restart local v6       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    goto :goto_2
.end method

.method public static getCombinedAccount(Landroid/content/Context;Lcom/htc/android/mail/AccountPool$AccountStore;)Lcom/htc/android/mail/Account;
    .locals 3
    .parameter "context"
    .parameter "accountStore"

    .prologue
    .line 126
    new-instance v0, Lcom/htc/android/mail/account/AccountBinder;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/account/AccountBinder;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    .line 128
    const v1, 0x7f0b02d7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/account/AccountBinder;->name:Ljava/lang/String;

    .line 129
    const v1, 0x7f0b02d8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/account/AccountBinder;->desc:Ljava/lang/String;

    .line 130
    const-string v1, "combinedAccount"

    iput-object v1, v0, Lcom/htc/android/mail/account/AccountBinder;->emailAddress:Ljava/lang/String;

    .line 131
    invoke-static {p0}, Lcom/htc/android/mail/Mailboxs;->getCombinedMailboxs(Landroid/content/Context;)Lcom/htc/android/mail/Mailboxs;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxs:Lcom/htc/android/mail/Mailboxs;

    .line 132
    const/4 v1, 0x5

    iput v1, v0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    .line 133
    invoke-static {p0, v0}, Lcom/htc/android/mail/account/AccountBinder;->initCombinedAccount(Landroid/content/Context;Lcom/htc/android/mail/account/AccountBinder;)V

    .line 134
    invoke-static {p0, p1}, Lcom/htc/android/mail/account/AccountBinder;->initAllAccount(Landroid/content/Context;Lcom/htc/android/mail/AccountPool$AccountStore;)V

    .line 135
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/htc/android/mail/account/AccountBinder;->initHuxUnifiedAccount(Landroid/content/Context;Lcom/htc/android/mail/AccountPool$AccountStore;)V

    .line 136
    :cond_0
    new-instance v1, Lcom/htc/android/mail/Account;

    invoke-direct {v1, v0}, Lcom/htc/android/mail/Account;-><init>(Lcom/htc/android/mail/account/IAccount;)V

    return-object v1
.end method

.method public static getHuxUnifiedAccount(Landroid/content/Context;)Lcom/htc/android/mail/Account;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 140
    new-instance v6, Lcom/htc/android/mail/account/AccountBinder;

    invoke-direct {v6, p0}, Lcom/htc/android/mail/account/AccountBinder;-><init>(Landroid/content/Context;)V

    .line 141
    .local v6, accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    const-wide v4, 0x7ffffffffffffffdL

    iput-wide v4, v6, Lcom/htc/android/mail/account/AccountBinder;->id:J

    .line 142
    const-string v1, "HUX"

    iput-object v1, v6, Lcom/htc/android/mail/account/AccountBinder;->name:Ljava/lang/String;

    .line 143
    const-string v1, "HUX"

    iput-object v1, v6, Lcom/htc/android/mail/account/AccountBinder;->desc:Ljava/lang/String;

    .line 144
    const-string v1, "HUX"

    iput-object v1, v6, Lcom/htc/android/mail/account/AccountBinder;->emailAddress:Ljava/lang/String;

    .line 146
    const/4 v1, 0x6

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    .line 147
    const-string v1, "inserver"

    invoke-static {p0, v1}, Lcom/htc/android/mail/Account$HuxServerInfo;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/htc/android/mail/account/AccountBinder;->inServer:Ljava/lang/String;

    .line 148
    const-string v1, "inport"

    invoke-static {p0, v1}, Lcom/htc/android/mail/Account$HuxServerInfo;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->inPort:I

    .line 149
    const-string v1, "outserver"

    invoke-static {p0, v1}, Lcom/htc/android/mail/Account$HuxServerInfo;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/htc/android/mail/account/AccountBinder;->outServer:Ljava/lang/String;

    .line 150
    const-string v1, "outport"

    invoke-static {p0, v1}, Lcom/htc/android/mail/Account$HuxServerInfo;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->outPort:I

    .line 151
    const-string v1, "useSSLin"

    invoke-static {p0, v1}, Lcom/htc/android/mail/Account$HuxServerInfo;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->useSSLin:I

    .line 152
    const-string v1, "useSSLout"

    invoke-static {p0, v1}, Lcom/htc/android/mail/Account$HuxServerInfo;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->useSSLout:I

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "_del <> 1 AND _protocol = 6 limit 1"

    .line 157
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 158
    .local v7, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 159
    .local v8, huxExist:Z
    if-eqz v7, :cond_1

    .line 160
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const-string v1, "_sizelimit"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->sizeLimitIndex:I

    .line 162
    const-string v1, "_fetchMailType"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->fetchMailType:I

    .line 163
    const-string v1, "_fetchMailDays"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->fetchMailDaysIndex:I

    .line 164
    const-string v1, "_fetchMailNum"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->fetchMailNumIndex:I

    .line 165
    const-string v1, "_poll_frequency_number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->checkFreq:I

    .line 166
    const-string v1, "_peakdays"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->peakDays:I

    .line 167
    const-string v1, "_peaktimeend"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->peakTimeEnd:I

    .line 168
    const-string v1, "_peaktimestart"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->peakTimeStart:I

    .line 169
    const-string v1, "_peakonfrequency"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOn:I

    .line 170
    const-string v1, "_peakofffrequency"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOff:I

    .line 171
    const/4 v8, 0x1

    .line 173
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_1
    if-eqz v8, :cond_2

    .line 177
    new-instance v2, Lcom/htc/android/mail/Account;

    invoke-direct {v2, v6}, Lcom/htc/android/mail/Account;-><init>(Lcom/htc/android/mail/account/IAccount;)V

    .line 179
    :cond_2
    return-object v2
.end method

.method private getMailDays(I)I
    .locals 1
    .parameter "maildaysIndex"

    .prologue
    .line 486
    packed-switch p1, :pswitch_data_0

    .line 506
    const/4 v0, 0x6

    .line 510
    .local v0, num:I
    :goto_0
    return v0

    .line 488
    .end local v0           #num:I
    :pswitch_0
    const/4 v0, 0x0

    .line 489
    .restart local v0       #num:I
    goto :goto_0

    .line 491
    .end local v0           #num:I
    :pswitch_1
    const/4 v0, 0x2

    .line 492
    .restart local v0       #num:I
    goto :goto_0

    .line 494
    .end local v0           #num:I
    :pswitch_2
    const/4 v0, 0x6

    .line 495
    .restart local v0       #num:I
    goto :goto_0

    .line 497
    .end local v0           #num:I
    :pswitch_3
    const/16 v0, 0xe

    .line 498
    .restart local v0       #num:I
    goto :goto_0

    .line 500
    .end local v0           #num:I
    :pswitch_4
    const/16 v0, 0x1d

    .line 501
    .restart local v0       #num:I
    goto :goto_0

    .line 503
    .end local v0           #num:I
    :pswitch_5
    const/4 v0, -0x1

    .line 504
    .restart local v0       #num:I
    goto :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getMailNum(I)I
    .locals 1
    .parameter "mailnumIndex"

    .prologue
    .line 454
    const/16 v0, 0x14

    .line 456
    .local v0, num:I
    packed-switch p1, :pswitch_data_0

    .line 476
    const/16 v0, 0x14

    .line 480
    :goto_0
    return v0

    .line 458
    :pswitch_0
    const/16 v0, 0x14

    .line 459
    goto :goto_0

    .line 461
    :pswitch_1
    const/16 v0, 0x28

    .line 462
    goto :goto_0

    .line 464
    :pswitch_2
    const/16 v0, 0x3c

    .line 465
    goto :goto_0

    .line 467
    :pswitch_3
    const/16 v0, 0x50

    .line 468
    goto :goto_0

    .line 470
    :pswitch_4
    const/16 v0, 0x64

    .line 471
    goto :goto_0

    .line 473
    :pswitch_5
    const/16 v0, 0xc8

    .line 474
    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getPollValue(I)I
    .locals 1
    .parameter "index"

    .prologue
    const/4 v0, -0x1

    .line 514
    packed-switch p0, :pswitch_data_0

    .line 534
    :goto_0
    :pswitch_0
    return v0

    .line 518
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 520
    :pswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 522
    :pswitch_3
    const/16 v0, 0xf

    goto :goto_0

    .line 524
    :pswitch_4
    const/16 v0, 0x1e

    goto :goto_0

    .line 526
    :pswitch_5
    const/16 v0, 0x3c

    goto :goto_0

    .line 528
    :pswitch_6
    const/16 v0, 0x78

    goto :goto_0

    .line 530
    :pswitch_7
    const/16 v0, 0xf0

    goto :goto_0

    .line 532
    :pswitch_8
    const/16 v0, 0x5a0

    goto :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private final getSizeLimit(I)I
    .locals 1
    .parameter "sizeLimitIndex"

    .prologue
    .line 1118
    const/4 v0, -0x1

    .line 1119
    .local v0, sizeLimit:I
    packed-switch p1, :pswitch_data_0

    .line 1151
    const/4 v0, -0x1

    .line 1155
    :goto_0
    return v0

    .line 1121
    :pswitch_0
    const/4 v0, 0x0

    .line 1122
    goto :goto_0

    .line 1125
    :pswitch_1
    const/4 v0, 0x1

    .line 1126
    goto :goto_0

    .line 1129
    :pswitch_2
    const/4 v0, 0x5

    .line 1130
    goto :goto_0

    .line 1133
    :pswitch_3
    const/16 v0, 0x19

    .line 1134
    goto :goto_0

    .line 1137
    :pswitch_4
    const/16 v0, 0x32

    .line 1138
    goto :goto_0

    .line 1141
    :pswitch_5
    const/16 v0, 0x64

    .line 1142
    goto :goto_0

    .line 1145
    :pswitch_6
    const/16 v0, 0x3e8

    .line 1146
    goto :goto_0

    .line 1148
    :pswitch_7
    const/4 v0, -0x1

    .line 1149
    goto :goto_0

    .line 1119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 10
    .parameter "context"
    .parameter "c"
    .parameter "initMailboxs"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 371
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    .line 372
    const-string v0, "_name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->name:Ljava/lang/String;

    .line 373
    const-string v0, "_inserver"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->inServer:Ljava/lang/String;

    .line 374
    const-string v0, "_providerGroup"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->providerGroup:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->providerGroup:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->providerGroup:Ljava/lang/String;

    const-string v1, "Yahoo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    invoke-static {p1}, Lcom/htc/android/mail/MailCommon;->getEncryptKey(Landroid/content/Context;)[B

    move-result-object v6

    .line 377
    .local v6, byteKey:[B
    const-string v0, "_emailaddress"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/htc/android/mail/MailCommon;->decryptContent([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->emailAddress:Ljava/lang/String;

    .line 378
    const-string v0, "_username"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/htc/android/mail/MailCommon;->decryptContent([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->userName:Ljava/lang/String;

    .line 379
    const-string v0, "_password"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/htc/android/mail/MailCommon;->decryptContent([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->password:Ljava/lang/String;

    .line 380
    const-string v0, "_outusername"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/htc/android/mail/MailCommon;->decryptContent([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outuserName:Ljava/lang/String;

    .line 381
    const-string v0, "_outpassword"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/htc/android/mail/MailCommon;->decryptContent([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outpassword:Ljava/lang/String;

    .line 389
    .end local v6           #byteKey:[B
    :goto_0
    const-string v0, "_protocol"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    .line 390
    const-string v0, "_easDomain"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->easDomain:Ljava/lang/String;

    .line 391
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    invoke-static {v0}, Lcom/htc/android/mail/Mail;->isIMAP4(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/mail/account/AccountBinder;->isIMAP4:Z

    .line 392
    const-string v0, "_inport"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->inPort:I

    .line 393
    const-string v0, "_outserver"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outServer:Ljava/lang/String;

    .line 394
    const-string v0, "_outport"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outPort:I

    .line 395
    const-string v0, "_useSSLin"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->useSSLin:I

    .line 396
    const-string v0, "_useSSLout"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->useSSLout:I

    .line 397
    const-string v0, "_useSignature"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->useSignature:I

    .line 399
    const-string v0, "_signature"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->signature:Ljava/lang/String;

    .line 400
    const-string v0, "_sizelimit"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sizeLimitIndex:I

    .line 401
    const-string v0, "_fetchMailType"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailType:I

    .line 403
    const-string v0, "_fetchMailNum"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailNumIndex:I

    .line 404
    const-string v0, "_fetchMailDays"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailDaysIndex:I

    .line 405
    const-string v0, "_enableSDsave"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->enableSDsave:I

    .line 406
    const-string v0, "_deleteFromServer"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->deleteFromServer:I

    .line 407
    const-string v0, "_poll_frequency_number"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->checkFreq:I

    .line 408
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->checkFreq:I

    invoke-static {v0}, Lcom/htc/android/mail/account/AccountBinder;->getPollValue(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mPollMinutes:J

    .line 409
    const-string v0, "_askBeforeDelete"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->askBeforeDelete:I

    .line 410
    const-string v0, "_refreshMailWhenOpenFolder"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v8

    :goto_1
    iput-boolean v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mRefreshMailOpenFolder:Z

    .line 411
    const-string v0, "_provider"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->provider:Ljava/lang/String;

    .line 412
    iget-object v2, p0, Lcom/htc/android/mail/account/AccountBinder;->emailAddress:Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    iget-boolean v4, p0, Lcom/htc/android/mail/account/AccountBinder;->mRefreshMailOpenFolder:Z

    iget-object v5, p0, Lcom/htc/android/mail/account/AccountBinder;->provider:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/account/AccountBinder;->initialRefreshMailOpenFilder(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;)V

    .line 413
    const-string v0, "_downloadMessageWhenScroll"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v8

    :goto_2
    iput-boolean v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mDownloadMessageWhenScroll:Z

    .line 414
    const-string v0, "_defaultfolderId"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->defaultFolderId:J

    .line 415
    const-string v0, "_draftfolderId"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->draftFolderId:J

    .line 416
    const-string v0, "_trashfolderId"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->trashFolderId:J

    .line 417
    const-string v0, "_sentfolderId"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sentFolderId:J

    .line 418
    const-string v0, "_outfolderId"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outFolderId:J

    .line 419
    const-string v0, "_providerid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->providerid:I

    .line 420
    const-string v0, "_emailnotifications"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mEmailNotifications:I

    .line 421
    const-string v0, "_lastupdatetime"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->lastupdatetime:J

    .line 422
    const-string v0, "_desc"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->desc:Ljava/lang/String;

    .line 423
    const-string v0, "_sound"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sound:I

    .line 424
    const-string v0, "_vibrate"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->vibrate:I

    .line 425
    const-string v0, "_smtpauth"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->smtpauth:I

    .line 426
    const-string v0, "_sortby"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mSortBy:I

    .line 428
    const-string v0, "_defaultaccount"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->defaultaccount:I

    .line 429
    const-string v0, "_fontSize"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fontsize:I

    .line 430
    const-string v0, "_alwaysBccMyself"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->alwaysbccMyself:I

    .line 431
    const-string v0, "_replyWithText"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->replyWithText:I

    .line 432
    const-string v0, "_previewLinesNumber"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mPreviewLineNum:I

    .line 434
    const-string v0, "_del"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->del:I

    .line 435
    const-string v0, "_peakdays"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakDays:I

    .line 436
    const-string v0, "_peaktimestart"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeStart:I

    .line 437
    const-string v0, "_peaktimeend"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeEnd:I

    .line 438
    const-string v0, "_peakonfrequency"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOn:I

    .line 439
    const-string v0, "_peakofffrequency"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOff:I

    .line 440
    const-string v0, "_easSvrProtocol"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->easSvrProtocol:Ljava/lang/String;

    .line 441
    const-string v0, "_contactGroup"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContactGroup:Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContactGroup:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContactGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Favorite_8656150684447252476_6727701920173350445"

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContactGroup:Ljava/lang/String;

    .line 443
    :cond_1
    const-string v0, "_colorIdx"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/htc/android/mail/Account;->getDecodedColorIdx(I)[I

    move-result-object v7

    .line 444
    .local v7, encodedColorIdx:[I
    aget v0, v7, v9

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->colorGroupIdx:I

    .line 445
    aget v0, v7, v8

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->colorIdx:I

    .line 446
    const-string v0, "_syncWithServer"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncWithServer:I

    .line 448
    if-eqz p3, :cond_2

    .line 449
    invoke-direct {p0}, Lcom/htc/android/mail/account/AccountBinder;->initMailboxs()V

    .line 451
    :cond_2
    return-void

    .line 383
    .end local v7           #encodedColorIdx:[I
    :cond_3
    const-string v0, "_emailaddress"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->emailAddress:Ljava/lang/String;

    .line 384
    const-string v0, "_username"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->userName:Ljava/lang/String;

    .line 385
    const-string v0, "_password"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/Account;->decodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->password:Ljava/lang/String;

    .line 386
    const-string v0, "_outusername"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outuserName:Ljava/lang/String;

    .line 387
    const-string v0, "_outpassword"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/Account;->decodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outpassword:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    move v0, v9

    .line 410
    goto/16 :goto_1

    :cond_5
    move v0, v9

    .line 413
    goto/16 :goto_2
.end method

.method private static initAllAccount(Landroid/content/Context;Lcom/htc/android/mail/AccountPool$AccountStore;)V
    .locals 12
    .parameter "context"
    .parameter "accountStore"

    .prologue
    const/4 v2, 0x0

    .line 195
    const-string v11, "_account, _defaultfolder desc , _decodename collate nocase asc"

    .line 196
    .local v11, sortBy:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const-string v3, "_del <> 1"

    const-string v5, "_id"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 198
    .local v7, accountCursor:Landroid/database/Cursor;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    const-string v3, "_noselect=0 AND _haschild=0"

    move-object v4, v2

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 199
    .local v10, mailboxCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 200
    const/4 v6, 0x0

    .line 201
    .local v6, accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 203
    .local v8, accountId:J
    invoke-virtual {p1, v8, v9}, Lcom/htc/android/mail/AccountPool$AccountStore;->containsKey(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    new-instance v6, Lcom/htc/android/mail/account/AccountBinder;

    .end local v6           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    const/4 v1, 0x0

    invoke-direct {v6, p0, v7, v1}, Lcom/htc/android/mail/account/AccountBinder;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 205
    .restart local v6       #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    invoke-static {v8, v9, v10}, Lcom/htc/android/mail/account/AccountBinder;->moveToCorrectAccountPosition(JLandroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v6, p0, v10}, Lcom/htc/android/mail/account/AccountBinder;->initMailboxs(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 207
    new-instance v1, Lcom/htc/android/mail/Account;

    invoke-direct {v1, v6}, Lcom/htc/android/mail/Account;-><init>(Lcom/htc/android/mail/account/IAccount;)V

    invoke-virtual {p1, v8, v9, v1}, Lcom/htc/android/mail/AccountPool$AccountStore;->put(JLcom/htc/android/mail/Account;)V

    goto :goto_0

    .line 213
    .end local v6           #accountBinder:Lcom/htc/android/mail/account/AccountBinder;
    .end local v8           #accountId:J
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_3
    return-void
.end method

.method private static initCombinedAccount(Landroid/content/Context;Lcom/htc/android/mail/account/AccountBinder;)V
    .locals 3
    .parameter "context"
    .parameter "accountBinder"

    .prologue
    .line 184
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "combinedAccount__contactGroup"

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/htc/android/mail/account/AccountBinder;->mContactGroup:Ljava/lang/String;

    .line 187
    return-void
.end method

.method private static initHuxUnifiedAccount(Landroid/content/Context;Lcom/htc/android/mail/AccountPool$AccountStore;)V
    .locals 3
    .parameter "context"
    .parameter "accountStore"

    .prologue
    .line 190
    invoke-static {p0}, Lcom/htc/android/mail/account/AccountBinder;->getHuxUnifiedAccount(Landroid/content/Context;)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 191
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    const-wide v1, 0x7ffffffffffffffdL

    invoke-virtual {p1, v1, v2, v0}, Lcom/htc/android/mail/AccountPool$AccountStore;->put(JLcom/htc/android/mail/Account;)V

    .line 192
    :cond_0
    return-void
.end method

.method private initMailboxs()V
    .locals 10

    .prologue
    .line 698
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/account/AccountBinder;->commitMailboxChanges()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 703
    :goto_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    .line 704
    .local v0, cp:Landroid/content/IContentProvider;
    const/4 v6, 0x0

    .line 705
    .local v6, cursor:Landroid/database/Cursor;
    const-string v5, "_defaultfolder desc , _decodename collate nocase asc"

    .line 708
    .local v5, sortBy:Ljava/lang/String;
    :try_start_1
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sEASMailBoxURI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND _noselect=0 AND _haschild=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 709
    if-eqz v6, :cond_0

    .line 711
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 712
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v6}, Lcom/htc/android/mail/account/AccountBinder;->initMailboxs(Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 717
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 718
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 721
    :cond_1
    :goto_1
    return-void

    .line 714
    :catch_0
    move-exception v7

    .line 715
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "AccountBinder"

    const-string v2, "initMailboxs"

    invoke-static {v1, v2, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 717
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 718
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 717
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 718
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 699
    .end local v0           #cp:Landroid/content/IContentProvider;
    .end local v5           #sortBy:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private initialRefreshMailOpenFilder(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "protocl"
    .parameter "valueInMailDB"
    .parameter "provider"

    .prologue
    .line 667
    iget v1, p0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 668
    :cond_0
    iput-boolean p4, p0, Lcom/htc/android/mail/account/AccountBinder;->mRefreshMailOpenFolder:Z

    .line 689
    :goto_0
    return-void

    .line 669
    :cond_1
    iget v1, p0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 673
    const-string v1, "Yahoo"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 674
    sget-object v0, Lcom/htc/android/mail/Mail;->HUX_YAHOO_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    .line 685
    .local v0, accountType:Ljava/lang/String;
    :goto_1
    invoke-static {p1, v0, p2}, Lcom/htc/opensense/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mRefreshMailOpenFolder:Z

    goto :goto_0

    .line 675
    .end local v0           #accountType:Ljava/lang/String;
    :cond_2
    const-string v1, "AOL"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 676
    sget-object v0, Lcom/htc/android/mail/Mail;->HUX_AOL_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    .restart local v0       #accountType:Ljava/lang/String;
    goto :goto_1

    .line 677
    .end local v0           #accountType:Ljava/lang/String;
    :cond_3
    const-string v1, "MSN"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 678
    sget-object v0, Lcom/htc/android/mail/Mail;->HUX_MSN_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    .restart local v0       #accountType:Ljava/lang/String;
    goto :goto_1

    .line 679
    .end local v0           #accountType:Ljava/lang/String;
    :cond_4
    const-string v1, "Google"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 680
    sget-object v0, Lcom/htc/android/mail/Mail;->HUX_GOOGLE_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    .restart local v0       #accountType:Ljava/lang/String;
    goto :goto_1

    .line 682
    .end local v0           #accountType:Ljava/lang/String;
    :cond_5
    const-string v0, "com.htc.android.mail"

    .restart local v0       #accountType:Ljava/lang/String;
    goto :goto_1

    .line 687
    .end local v0           #accountType:Ljava/lang/String;
    :cond_6
    const-string v1, "com.htc.android.mail"

    invoke-static {p1, v1, p2}, Lcom/htc/opensense/sync/SyncSettingUtil;->isRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mRefreshMailOpenFolder:Z

    goto :goto_0
.end method

.method private static moveToCorrectAccountPosition(JLandroid/database/Cursor;)Z
    .locals 5
    .parameter "accountId"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 218
    if-nez p2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v2

    .line 219
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    const-string v4, "_account"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 221
    .local v0, account:J
    cmp-long v4, v0, p0

    if-nez v4, :cond_2

    .line 222
    invoke-interface {p2}, Landroid/database/Cursor;->moveToPrevious()Z

    move v2, v3

    .line 223
    goto :goto_0

    .line 225
    :cond_2
    const/4 v4, -0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 226
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    const-string v4, "_account"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 228
    cmp-long v4, v0, p0

    if-nez v4, :cond_3

    .line 229
    invoke-interface {p2}, Landroid/database/Cursor;->moveToPrevious()Z

    move v2, v3

    .line 230
    goto :goto_0
.end method

.method private removeFetchLongerDateFromSharedPreference(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 577
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 578
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch_longer_date_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 579
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 580
    return-void
.end method

.method private removeLastFechTagsTime()V
    .locals 4

    .prologue
    .line 540
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    const-string v2, "account"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 541
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "vzw_hux_last_fetch_tags_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 542
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 543
    return-void
.end method

.method private updateAccountDeleted()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 654
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 655
    .local v1, v:Landroid/content/ContentValues;
    const-string v3, "_del"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    const/4 v3, 0x1

    :try_start_0
    iput v3, p0, Lcom/htc/android/mail/account/AccountBinder;->del:I

    .line 658
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v1, v5, v6}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_0
    return v2

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 661
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public alwaysbccMyself()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 789
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->alwaysbccMyself:I

    return v0
.end method

.method public askBeforeDelete()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 800
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->askBeforeDelete:I

    return v0
.end method

.method public clearMails()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 810
    iget v1, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailType:I

    shr-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized commit()V
    .locals 12

    .prologue
    .line 734
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v8}, Landroid/content/ContentValues;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    .line 759
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 736
    :cond_1
    :try_start_1
    iget-wide v8, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 737
    iget-object v8, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    const-string v9, "account"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 738
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v8, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v8}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    .line 739
    .local v3, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 740
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 741
    .local v5, key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 742
    .local v6, value:Ljava/lang/Object;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "combinedAccount_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 734
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/Object;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 744
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v3       #entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 754
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :goto_2
    iget-object v8, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 755
    iget-boolean v8, p0, Lcom/htc/android/mail/account/AccountBinder;->mNotifySettingChanged:Z

    if-eqz v8, :cond_0

    .line 756
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/android/mail/account/AccountBinder;->mNotifySettingChanged:Z

    .line 757
    sget-object v8, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v9, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    iget-wide v10, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->sendSettingChangedIntent(Landroid/content/Context;J)V

    goto :goto_0

    .line 745
    :cond_3
    iget-wide v8, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    const-wide v10, 0x7ffffffffffffffdL

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 746
    iget-object v8, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 747
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v7, "_protocol = 6"

    .line 748
    .local v7, where:Ljava/lang/String;
    sget-object v8, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v7, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 750
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #where:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 751
    .restart local v0       #cr:Landroid/content/ContentResolver;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 752
    .restart local v7       #where:Ljava/lang/String;
    sget-object v8, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v7, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public commitMailboxChanges()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxContentValues:Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;

    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;->commit(Landroid/content/Context;)V

    .line 1418
    return-void
.end method

.method public declared-synchronized delete()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 584
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/MailCommon;->removeLastAccountEnter(Landroid/content/Context;J)V

    .line 585
    iget-object v2, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/htc/android/mail/account/AccountBinder;->removeFetchLongerDateFromSharedPreference(Landroid/content/Context;)V

    .line 588
    invoke-direct {p0}, Lcom/htc/android/mail/account/AccountBinder;->updateAccountDeleted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 650
    :goto_0
    monitor-exit p0

    return v1

    .line 592
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->setMailShortcutState(Landroid/content/Context;)V

    .line 594
    const/4 v5, 0x1

    .line 595
    .local v5, isLastOne:Z
    invoke-virtual {p0}, Lcom/htc/android/mail/account/AccountBinder;->getProtocol()I

    move-result v1

    if-ne v1, v9, :cond_1

    .line 596
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v0

    .line 597
    .local v0, accountPool:Lcom/htc/android/mail/AccountPool;
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;I)[Lcom/htc/android/mail/Account;

    move-result-object v6

    .line 598
    .local v6, accounts:[Lcom/htc/android/mail/Account;
    array-length v1, v6

    if-le v1, v8, :cond_1

    const/4 v5, 0x0

    .line 601
    .end local v0           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v6           #accounts:[Lcom/htc/android/mail/Account;
    :cond_1
    if-eqz v5, :cond_2

    .line 602
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/account/AccountBinder;->setAdditionalSyncWhenErrorEnabled(Z)V

    .line 603
    invoke-direct {p0}, Lcom/htc/android/mail/account/AccountBinder;->removeLastFechTagsTime()V

    .line 607
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/account/AccountBinder;->getCheckFreq()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 608
    if-eqz v5, :cond_3

    .line 609
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/account/AccountBinder;->setCheckFreq(I)V

    .line 610
    invoke-virtual {p0}, Lcom/htc/android/mail/account/AccountBinder;->commit()V

    .line 611
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/android/mail/account/AccountBinder;->getId()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->stopDp(Landroid/content/Context;JZ)V

    .line 617
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/Account;->notifyAccountChanged(Landroid/content/Context;J)V

    .line 621
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/Account;->clearAllNotification(Landroid/content/Context;J)V

    .line 624
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v0

    .line 625
    .restart local v0       #accountPool:Lcom/htc/android/mail/AccountPool;
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    iget v4, p0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/AccountPool;->removeAccount(Landroid/content/Context;JIZ)V

    .line 628
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/Account;->forceDefaultAccount(Landroid/content/Context;)V

    .line 631
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/Mail;->setServicesEnabled(Landroid/content/Context;)V

    .line 634
    const-string v1, "Exchange"

    iget-object v2, p0, Lcom/htc/android/mail/account/AccountBinder;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    .line 636
    :try_start_2
    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-wide v2, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    invoke-interface {v1, v2, v3}, Lcom/htc/android/mail/eassvc/pim/IEASService;->deleteExchangeAccount(J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 647
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/MailShortcut;->clearMailShortcut(Landroid/content/Context;J)V

    move v1, v8

    .line 650
    goto/16 :goto_0

    .line 637
    :catch_0
    move-exception v7

    .line 638
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 584
    .end local v0           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v5           #isLastOne:Z
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 641
    .restart local v0       #accountPool:Lcom/htc/android/mail/AccountPool;
    .restart local v5       #isLastOne:Z
    :cond_4
    :try_start_4
    iget-wide v1, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/MailProvider;->deleteAccountById(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public deleteFromServer()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 820
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->deleteFromServer:I

    return v0
.end method

.method public enableSDsave()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 842
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->enableSDsave:I

    return v0
.end method

.method public getCheckFreq()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 854
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->checkFreq:I

    return v0
.end method

.method public getColorGroupIdx()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 858
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->colorGroupIdx:I

    return v0
.end method

.method public getColorIdx()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 862
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->colorIdx:I

    return v0
.end method

.method public getContactGroup()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 873
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContactGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFolderId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 877
    iget-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->defaultFolderId:J

    return-wide v0
.end method

.method public getDelStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 885
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->del:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 889
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadMessageWhenScroll()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mDownloadMessageWhenScroll:Z

    return v0
.end method

.method public getDraftFolderId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 893
    iget-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->draftFolderId:J

    return-wide v0
.end method

.method public getEASDomain()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->easDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getEasSvrProtocol()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 897
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->easSvrProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 901
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFetchMailDays()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 905
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailDaysIndex:I

    invoke-direct {p0, v0}, Lcom/htc/android/mail/account/AccountBinder;->getMailDays(I)I

    move-result v0

    return v0
.end method

.method public getFetchMailDaysIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 915
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailDaysIndex:I

    return v0
.end method

.method public getFetchMailNum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 919
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailNumIndex:I

    invoke-direct {p0, v0}, Lcom/htc/android/mail/account/AccountBinder;->getMailNum(I)I

    move-result v0

    return v0
.end method

.method public getFetchMailNumIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 929
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailNumIndex:I

    return v0
.end method

.method public getFetchMailType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 939
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailType:I

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getFontsize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 949
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fontsize:I

    return v0
.end method

.method public getId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 953
    iget-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    return-wide v0
.end method

.method public getInPort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 957
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->inPort:I

    return v0
.end method

.method public getInServer()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 961
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->inServer:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFetchTagsTime()J
    .locals 6

    .prologue
    .line 546
    iget-object v3, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    const-string v4, "account"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 547
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "vzw_hux_last_fetch_tags_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 548
    .local v0, lastTime:J
    return-wide v0
.end method

.method public getLastupdatetime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 969
    iget-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->lastupdatetime:J

    return-wide v0
.end method

.method public getMailboxs()Lcom/htc/android/mail/Mailboxs;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 973
    iget-wide v3, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    const-wide v5, 0x7ffffffffffffffdL

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 974
    iget-object v3, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v0

    .line 975
    .local v0, accountPool:Lcom/htc/android/mail/AccountPool;
    iget-object v3, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    const/4 v4, 0x6

    invoke-virtual {v0, v3, v4}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;I)[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 976
    .local v1, accounts:[Lcom/htc/android/mail/Account;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 996
    .end local v0           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    :goto_0
    return-object v3

    .line 977
    .restart local v0       #accountPool:Lcom/htc/android/mail/AccountPool;
    .restart local v1       #accounts:[Lcom/htc/android/mail/Account;
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    goto :goto_0

    .line 980
    .end local v0           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v1           #accounts:[Lcom/htc/android/mail/Account;
    :cond_2
    const/4 v2, 0x0

    .line 981
    .local v2, tryToInit:Z
    iget-object v4, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxLock:Ljava/lang/Object;

    monitor-enter v4

    .line 982
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxs:Lcom/htc/android/mail/Mailboxs;

    if-nez v3, :cond_3

    .line 983
    const/4 v2, 0x1

    .line 984
    const-string v3, "AccountBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMailboxs, mailboxs is null, try to init, accountId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 988
    if-eqz v2, :cond_4

    .line 989
    invoke-direct {p0}, Lcom/htc/android/mail/account/AccountBinder;->initMailboxs()V

    .line 990
    iget-object v3, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxs:Lcom/htc/android/mail/Mailboxs;

    if-nez v3, :cond_4

    .line 991
    const-string v3, "AccountBinder"

    const-string v4, "mailboxs is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    :cond_4
    iget-object v4, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxLock:Ljava/lang/Object;

    monitor-enter v4

    .line 996
    :try_start_1
    iget-object v3, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxs:Lcom/htc/android/mail/Mailboxs;

    monitor-exit v4

    goto :goto_0

    .line 997
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 986
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutFolderId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1005
    iget-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outFolderId:J

    return-wide v0
.end method

.method public getOutPort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1013
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outPort:I

    return v0
.end method

.method public getOutServer()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outServer:Ljava/lang/String;

    return-object v0
.end method

.method public getOutpassword()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outpassword:Ljava/lang/String;

    return-object v0
.end method

.method public getOutuserName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->outuserName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPeakDays()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1043
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakDays:I

    return v0
.end method

.method public getPeakTimeEnd()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1053
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeEnd:I

    return v0
.end method

.method public getPeakTimeStart()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1063
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeStart:I

    return v0
.end method

.method public getPollQuantum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1071
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->checkFreq:I

    invoke-static {v0}, Lcom/htc/android/mail/account/AccountBinder;->getPollValue(I)I

    move-result v0

    return v0
.end method

.method public getPreviewLineNum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1396
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mPreviewLineNum:I

    return v0
.end method

.method public getProtocol()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1075
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderGroup()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->providerGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1091
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->providerid:I

    return v0
.end method

.method public getSentFolderId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1095
    iget-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sentFolderId:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeLimit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1114
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sizeLimitIndex:I

    invoke-direct {p0, v0}, Lcom/htc/android/mail/account/AccountBinder;->getSizeLimit(I)I

    move-result v0

    return v0
.end method

.method public getSizeLimitIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1166
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sizeLimitIndex:I

    return v0
.end method

.method public getSortBy()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1176
    iget-wide v1, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1177
    const/4 v1, -0x1

    iget v2, p0, Lcom/htc/android/mail/account/AccountBinder;->mSortBy:I

    if-ne v1, v2, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    const-string v2, "account"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1179
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "combinedAccount__sortby"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mSortBy:I

    .line 1183
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    iget v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mSortBy:I

    return v1
.end method

.method public getSortColumn()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sortColumn:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncSchedulePeakOff()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1209
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOff:I

    return v0
.end method

.method public getSyncSchedulePeakOn()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1219
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOn:I

    return v0
.end method

.method public getTrashFolderId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1223
    iget-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->trashFolderId:J

    return-wide v0
.end method

.method public getUseSSLin()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1249
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->useSSLin:I

    return v0
.end method

.method public getUseSSLout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1227
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->useSSLout:I

    return v0
.end method

.method public getUseSignature()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1237
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->useSignature:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public initMailboxs(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "context"
    .parameter "c"

    .prologue
    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 725
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 726
    new-instance v1, Lcom/htc/android/mail/Mailboxs;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/android/mail/account/AccountBinder;->defaultFolderId:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/android/mail/account/AccountBinder;->trashFolderId:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/htc/android/mail/account/AccountBinder;->sentFolderId:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/android/mail/account/AccountBinder;->draftFolderId:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/htc/android/mail/account/AccountBinder;->outFolderId:J

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v16}, Lcom/htc/android/mail/Mailboxs;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZJJJJJJ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxs:Lcom/htc/android/mail/Mailboxs;

    .line 730
    :goto_0
    monitor-exit v17

    .line 731
    return-void

    .line 728
    :cond_0
    new-instance v1, Lcom/htc/android/mail/Mailboxs;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/android/mail/account/AccountBinder;->defaultFolderId:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/android/mail/account/AccountBinder;->trashFolderId:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/htc/android/mail/account/AccountBinder;->sentFolderId:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/android/mail/account/AccountBinder;->draftFolderId:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/htc/android/mail/account/AccountBinder;->outFolderId:J

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v16}, Lcom/htc/android/mail/Mailboxs;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZJJJJJJ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxs:Lcom/htc/android/mail/Mailboxs;

    goto :goto_0

    .line 730
    :catchall_0
    move-exception v1

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAdditionalSyncWhenErrorEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 572
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    const-string v2, "account"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 573
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalSyncWhenErrorEnabled_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/mail/account/AccountBinder;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isChanged()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultaccount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1257
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->defaultaccount:I

    return v0
.end method

.method public isIMAP4()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1261
    iget-boolean v0, p0, Lcom/htc/android/mail/account/AccountBinder;->isIMAP4:Z

    return v0
.end method

.method public needSmtpauth()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1265
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->smtpauth:I

    return v0
.end method

.method public declared-synchronized refresh()V
    .locals 8

    .prologue
    .line 764
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/account/AccountBinder;->commit()V

    .line 766
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 767
    .local v0, cp:Landroid/content/IContentProvider;
    const/4 v6, 0x0

    .line 769
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 770
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v6, v2}, Lcom/htc/android/mail/account/AccountBinder;->init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 776
    :cond_0
    if-eqz v6, :cond_1

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 777
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 780
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 773
    :catch_0
    move-exception v7

    .line 774
    .local v7, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "AccountBinder"

    const-string v2, "refresh"

    invoke-static {v1, v2, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 776
    if-eqz v6, :cond_1

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 777
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 764
    .end local v0           #cp:Landroid/content/IContentProvider;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 776
    .restart local v0       #cp:Landroid/content/IContentProvider;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    if-eqz v6, :cond_2

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 777
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public refreshMailOpenFolder()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1294
    iget-boolean v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mRefreshMailOpenFolder:Z

    return v0
.end method

.method public reloadMailboxs()V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/htc/android/mail/account/AccountBinder;->initMailboxs()V

    .line 693
    return-void
.end method

.method public replyWithText()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1304
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->replyWithText:I

    return v0
.end method

.method public final declared-synchronized resetSyncAlarm()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1352
    monitor-enter p0

    :try_start_0
    iget-wide v5, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 1353
    iget-object v5, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;)[Lcom/htc/android/mail/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1354
    .local v1, allAccounts:[Lcom/htc/android/mail/Account;
    if-nez v1, :cond_1

    .line 1364
    .end local v1           #allAccounts:[Lcom/htc/android/mail/Account;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1355
    .restart local v1       #allAccounts:[Lcom/htc/android/mail/Account;
    :cond_1
    move-object v2, v1

    .local v2, arr$:[Lcom/htc/android/mail/Account;
    :try_start_1
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v0, v2, v3

    .line 1356
    .local v0, a:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->isExchange()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1355
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1357
    :cond_3
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->updateFetchTime()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1352
    .end local v0           #a:Lcom/htc/android/mail/Account;
    .end local v1           #allAccounts:[Lcom/htc/android/mail/Account;
    .end local v2           #arr$:[Lcom/htc/android/mail/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1360
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/android/mail/account/AccountBinder;->updateFetchTime()V

    .line 1363
    :cond_5
    iget-object v5, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/android/mail/mailservice/MailService;->actionReschedule(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setAdditionalSyncWhenErrorEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 558
    iget-wide v1, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    .line 559
    .local v1, localId:J
    iget v3, p0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 560
    const-wide v1, 0x7ffffffffffffffdL

    .line 562
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    const-string v4, "account"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 563
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1

    .line 564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "additionalSyncWhenErrorEnabled_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 568
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 569
    return-void

    .line 566
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "additionalSyncWhenErrorEnabled_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setAlwaysbccMyself(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 783
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->alwaysbccMyself:I

    if-ne v0, p1, :cond_0

    .line 786
    :goto_0
    return-void

    .line 784
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->alwaysbccMyself:I

    .line 785
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_alwaysBccMyself"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setAskBeforeDelete(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 793
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->askBeforeDelete:I

    if-ne v0, p1, :cond_0

    .line 797
    :goto_0
    return-void

    .line 794
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->askBeforeDelete:I

    .line 795
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_askBeforeDelete"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mNotifySettingChanged:Z

    goto :goto_0
.end method

.method public setCheckFreq(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 846
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->checkFreq:I

    if-ne v0, p1, :cond_0

    .line 851
    :goto_0
    return-void

    .line 847
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->checkFreq:I

    .line 848
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_poll_frequency_number"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    invoke-static {v0, v1, v2, p1}, Lcom/htc/android/mail/MailCommon;->setUpdateSyncSettingIntervalSecs(Landroid/content/Context;JI)V

    .line 850
    invoke-virtual {p0}, Lcom/htc/android/mail/account/AccountBinder;->updateFetchTime()V

    goto :goto_0
.end method

.method public setClearMails(Z)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 805
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailType:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailType:I

    .line 806
    iget v1, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailType:I

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    xor-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailType:I

    .line 807
    return-void

    .line 806
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setContactGroup(Ljava/lang/String;)V
    .locals 2
    .parameter "contactGroup"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 866
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContactGroup:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    .line 870
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 867
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContactGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    :cond_2
    iput-object p1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContactGroup:Ljava/lang/String;

    .line 869
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_contactGroup"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 866
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultaccount(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1253
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->defaultaccount:I

    .line 1254
    return-void
.end method

.method public setDelStatus(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 881
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->del:I

    .line 882
    return-void
.end method

.method public setDeleteFromServer(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 814
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->deleteFromServer:I

    if-ne v0, p1, :cond_0

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->deleteFromServer:I

    .line 816
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_deleteFromServer"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setDownloadMessageWhenScroll(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 825
    iget-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mDownloadMessageWhenScroll:Z

    if-eq v0, p1, :cond_0

    .line 827
    iput-boolean p1, p0, Lcom/htc/android/mail/account/AccountBinder;->mDownloadMessageWhenScroll:Z

    .line 828
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v2, "_downloadMessageWhenScroll"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setEASDomain(Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/htc/android/mail/account/AccountBinder;->easDomain:Ljava/lang/String;

    .line 1100
    return-void
.end method

.method public setEmailNotifications(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1308
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mEmailNotifications:I

    if-ne v0, p1, :cond_0

    .line 1311
    :goto_0
    return-void

    .line 1309
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->mEmailNotifications:I

    .line 1310
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_emailnotifications"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setEnableSDsave(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 836
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->enableSDsave:I

    if-ne v0, p1, :cond_0

    .line 839
    :goto_0
    return-void

    .line 837
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->enableSDsave:I

    .line 838
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_enableSDsave"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setFetchMailDaysIndex(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 909
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailDaysIndex:I

    if-ne v0, p1, :cond_0

    .line 912
    :goto_0
    return-void

    .line 910
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailDaysIndex:I

    .line 911
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_fetchMailDays"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setFetchMailNumIndex(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 923
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailNumIndex:I

    if-ne v0, p1, :cond_0

    .line 926
    :goto_0
    return-void

    .line 924
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailNumIndex:I

    .line 925
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_fetchMailNum"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setFetchMailType(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 933
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailType:I

    if-ne v0, p1, :cond_0

    .line 936
    :goto_0
    return-void

    .line 934
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->fetchMailType:I

    .line 935
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_fetchMailType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setFontsize(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 943
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->fontsize:I

    if-ne v0, p1, :cond_0

    .line 946
    :goto_0
    return-void

    .line 944
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->fontsize:I

    .line 945
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_fontSize"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setLastFetchTagsTime(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 552
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    const-string v2, "account"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 553
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "vzw_hux_last_fetch_tags_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 554
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 555
    return-void
.end method

.method public setLastupdatetime(J)V
    .locals 0
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 965
    iput-wide p1, p0, Lcom/htc/android/mail/account/AccountBinder;->lastupdatetime:J

    .line 966
    return-void
.end method

.method public setMailboxDefaultSyncEnabled(JZ)V
    .locals 7
    .parameter "mailboxId"
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1400
    iget-object v4, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1401
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxs:Lcom/htc/android/mail/Mailboxs;

    invoke-virtual {v5, p1, p2}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v1

    .line 1402
    .local v1, mailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v1, :cond_0

    monitor-exit v4

    .line 1414
    :goto_0
    return-void

    .line 1403
    :cond_0
    invoke-virtual {v1, p3}, Lcom/htc/android/mail/Mailbox;->setDefaultSyncEnabled(Z)V

    .line 1404
    iget-object v5, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxContentValues:Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;

    invoke-virtual {v5, p1, p2}, Lcom/htc/android/mail/account/AccountBinder$MailboxContentValues;->getContentValues(J)Landroid/content/ContentValues;

    move-result-object v2

    .line 1405
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "_default_sync"

    if-ne p3, v3, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1407
    iget-object v3, p0, Lcom/htc/android/mail/account/AccountBinder;->mMailboxs:Lcom/htc/android/mail/Mailboxs;

    const-wide v5, 0x7ffffffffffffffaL

    invoke-virtual {v3, v5, v6}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v0

    .line 1408
    .local v0, combinedMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz p3, :cond_2

    .line 1409
    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/Mailbox;->addMailboxId(J)V

    .line 1413
    :goto_2
    monitor-exit v4

    goto :goto_0

    .end local v0           #combinedMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v1           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1405
    .restart local v1       #mailbox:Lcom/htc/android/mail/Mailbox;
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1411
    .restart local v0       #combinedMailbox:Lcom/htc/android/mail/Mailbox;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/Mailbox;->removeMailboxId(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public setOutPort(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1009
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->outPort:I

    .line 1010
    return-void
.end method

.method public setOutuserName(Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/htc/android/mail/account/AccountBinder;->outuserName:Ljava/lang/String;

    .line 1026
    return-void
.end method

.method public setPeakDays(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1037
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakDays:I

    if-ne v0, p1, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1038
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->peakDays:I

    .line 1039
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_peakdays"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setPeakTimeEnd(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1047
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeEnd:I

    if-ne v0, p1, :cond_0

    .line 1050
    :goto_0
    return-void

    .line 1048
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeEnd:I

    .line 1049
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_peaktimeend"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setPeakTimeStart(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1057
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeStart:I

    if-ne v0, p1, :cond_0

    .line 1060
    :goto_0
    return-void

    .line 1058
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->peakTimeStart:I

    .line 1059
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_peaktimestart"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public final setPollQuantum()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1067
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->checkFreq:I

    invoke-static {v0}, Lcom/htc/android/mail/account/AccountBinder;->getPollValue(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mPollMinutes:J

    .line 1068
    return-void
.end method

.method public setPreviewLineNum(I)V
    .locals 4
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1383
    iget-wide v0, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1393
    :goto_0
    return-void

    .line 1384
    :cond_0
    if-gez p1, :cond_1

    .line 1385
    const/4 p1, 0x0

    .line 1387
    :cond_1
    const/4 v0, 0x5

    if-le p1, v0, :cond_2

    .line 1388
    const/4 p1, 0x5

    .line 1390
    :cond_2
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->mPreviewLineNum:I

    .line 1391
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_previewLinesNumber"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mNotifySettingChanged:Z

    goto :goto_0
.end method

.method public setRefreshMailOpenFolder(Z)V
    .locals 5
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1269
    iget-wide v1, p0, Lcom/htc/android/mail/account/AccountBinder;->id:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    iput-boolean p1, p0, Lcom/htc/android/mail/account/AccountBinder;->mRefreshMailOpenFolder:Z

    .line 1271
    iget-object v2, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v3, "_refreshMailWhenOpenFolder"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1272
    iget v1, p0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 1274
    iget v1, p0, Lcom/htc/android/mail/account/AccountBinder;->protocol:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 1275
    const-string v1, "Yahoo"

    iget-object v2, p0, Lcom/htc/android/mail/account/AccountBinder;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1276
    sget-object v0, Lcom/htc/android/mail/Mail;->HUX_YAHOO_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    .line 1289
    .local v0, accountType:Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Lcom/htc/android/mail/account/AccountBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/account/AccountBinder;->emailAddress:Ljava/lang/String;

    invoke-static {v1, v0, v2, p1}, Lcom/htc/opensense/sync/SyncSettingUtil;->setRefreshWhenOpen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1271
    .end local v0           #accountType:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1277
    :cond_3
    const-string v1, "AOL"

    iget-object v2, p0, Lcom/htc/android/mail/account/AccountBinder;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1278
    sget-object v0, Lcom/htc/android/mail/Mail;->HUX_AOL_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    .restart local v0       #accountType:Ljava/lang/String;
    goto :goto_2

    .line 1279
    .end local v0           #accountType:Ljava/lang/String;
    :cond_4
    const-string v1, "MSN"

    iget-object v2, p0, Lcom/htc/android/mail/account/AccountBinder;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1280
    sget-object v0, Lcom/htc/android/mail/Mail;->HUX_MSN_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    .restart local v0       #accountType:Ljava/lang/String;
    goto :goto_2

    .line 1281
    .end local v0           #accountType:Ljava/lang/String;
    :cond_5
    const-string v1, "Google"

    iget-object v2, p0, Lcom/htc/android/mail/account/AccountBinder;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1282
    sget-object v0, Lcom/htc/android/mail/Mail;->HUX_GOOGLE_ACCOUNT_MANAGER_TYPE:Ljava/lang/String;

    .restart local v0       #accountType:Ljava/lang/String;
    goto :goto_2

    .line 1284
    .end local v0           #accountType:Ljava/lang/String;
    :cond_6
    const-string v0, "com.htc.android.mail"

    .restart local v0       #accountType:Ljava/lang/String;
    goto :goto_2

    .line 1287
    .end local v0           #accountType:Ljava/lang/String;
    :cond_7
    const-string v0, "com.htc.android.mail"

    .restart local v0       #accountType:Ljava/lang/String;
    goto :goto_2
.end method

.method public setReplyWithText(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1298
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->replyWithText:I

    if-ne v0, p1, :cond_0

    .line 1301
    :goto_0
    return-void

    .line 1299
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->replyWithText:I

    .line 1300
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_replyWithText"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->signature:Ljava/lang/String;

    if-ne v0, p1, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    :cond_2
    iput-object p1, p0, Lcom/htc/android/mail/account/AccountBinder;->signature:Ljava/lang/String;

    .line 1106
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_signature"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSizeLimitIndex(I)V
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1159
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sizeLimitIndex:I

    if-ne v0, p1, :cond_0

    .line 1163
    :goto_0
    return-void

    .line 1160
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->sizeLimitIndex:I

    .line 1161
    invoke-direct {p0, p1}, Lcom/htc/android/mail/account/AccountBinder;->getSizeLimit(I)I

    .line 1162
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_sizelimit"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public declared-synchronized setSortBy(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1170
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mSortBy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 1173
    :goto_0
    monitor-exit p0

    return-void

    .line 1171
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->mSortBy:I

    .line 1172
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_sortby"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSortColumn(Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/htc/android/mail/account/AccountBinder;->sortColumn:Ljava/lang/String;

    .line 1188
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/htc/android/mail/account/AccountBinder;->sortOrder:Ljava/lang/String;

    .line 1196
    return-void
.end method

.method public setSound(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1318
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sound:I

    if-ne v0, p1, :cond_0

    .line 1321
    :goto_0
    return-void

    .line 1319
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->sound:I

    .line 1320
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_sound"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setSyncSchedulePeakOff(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1203
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOff:I

    if-ne v0, p1, :cond_0

    .line 1206
    :goto_0
    return-void

    .line 1204
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOff:I

    .line 1205
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_peakofffrequency"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setSyncSchedulePeakOn(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1213
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOn:I

    if-ne v0, p1, :cond_0

    .line 1216
    :goto_0
    return-void

    .line 1214
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->syncSchedulePeakOn:I

    .line 1215
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_peakonfrequency"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setSyncWithServer(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1328
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncWithServer:I

    if-ne v0, p1, :cond_0

    .line 1331
    :goto_0
    return-void

    .line 1329
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->syncWithServer:I

    .line 1330
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_syncWithServer"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setUseSignature(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1231
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->useSignature:I

    if-ne v0, p1, :cond_0

    .line 1234
    :goto_0
    return-void

    .line 1232
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->useSignature:I

    .line 1233
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_useSignature"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/htc/android/mail/account/AccountBinder;->userName:Ljava/lang/String;

    .line 1242
    return-void
.end method

.method public setVibrate(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1338
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->vibrate:I

    if-ne v0, p1, :cond_0

    .line 1341
    :goto_0
    return-void

    .line 1339
    :cond_0
    iput p1, p0, Lcom/htc/android/mail/account/AccountBinder;->vibrate:I

    .line 1340
    iget-object v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_vibrate"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public showEmailNotifications()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1314
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->mEmailNotifications:I

    return v0
.end method

.method public sound()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1324
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->sound:I

    return v0
.end method

.method public syncWithServer()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1334
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->syncWithServer:I

    return v0
.end method

.method public final updateFetchTime()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/htc/android/mail/account/AccountBinder;->setPollQuantum()V

    .line 1371
    invoke-virtual {p0}, Lcom/htc/android/mail/account/AccountBinder;->getPollQuantum()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1372
    const-wide v2, 0x7fffffffffffffffL

    .line 1379
    .local v2, nonce:J
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/mail/account/AccountBinder;->getId()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lcom/htc/android/mail/MailProvider;->updateAccountPollTime(JJ)I

    .line 1380
    return-void

    .line 1374
    .end local v2           #nonce:J
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/account/AccountBinder;->getPollQuantum()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    .line 1375
    .local v0, delta:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v2, v4, v0

    .line 1376
    .restart local v2       #nonce:J
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "updateFetchTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " nonce is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", delta is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPollMinutes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/android/mail/account/AccountBinder;->getPollQuantum()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public vibrate()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1344
    iget v0, p0, Lcom/htc/android/mail/account/AccountBinder;->vibrate:I

    return v0
.end method

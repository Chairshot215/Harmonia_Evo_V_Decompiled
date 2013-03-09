.class public Lcom/htc/android/mail/eassvc/mail/MailItem;
.super Ljava/lang/Object;
.source "MailItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static TAG:Ljava/lang/String;


# instance fields
.field public mAccount:Ljava/lang/String;

.field public mAllDayEvent:Ljava/lang/String;

.field public mBcc:Ljava/lang/String;

.field public mCategory:Ljava/lang/String;

.field public mCc:Ljava/lang/String;

.field public mDate:Ljava/lang/String;

.field public mDownloadTotalSize:Ljava/lang/String;

.field public mDtStamp:Ljava/lang/String;

.field public mEndTime:Ljava/lang/String;

.field public mFrom:Ljava/lang/String;

.field public mFromemail:Ljava/lang/String;

.field public mGlobalObjId:Ljava/lang/String;

.field public mGroup:Ljava/lang/String;

.field public mHeaders:Ljava/lang/String;

.field public mImportance:Ljava/lang/String;

.field public mIncattachment:Ljava/lang/String;

.field public mInstanceType:Ljava/lang/String;

.field public mIntDBusyStatus:Ljava/lang/String;

.field public mInternalDate:Ljava/lang/String;

.field public mLocation:Ljava/lang/String;

.field public mMailbox:Ljava/lang/String;

.field public mMailbox_Id:Ljava/lang/String;

.field public mMessage:Ljava/lang/String;

.field public mMessageClass:Ljava/lang/String;

.field public mMessageClassInt:I

.field public mMessageSize:Ljava/lang/String;

.field public mMessages_Flags:Ljava/lang/String;

.field public mMimetype:Ljava/lang/String;

.field public mNativeBodyType:Ljava/lang/String;

.field public mOrganizer:Ljava/lang/String;

.field public mParts_Flags:Ljava/lang/String;

.field public mPreview:Ljava/lang/String;

.field public mPsuedoGroupId:J

.field public mRead:Ljava/lang/String;

.field public mReadTotalsize:Ljava/lang/String;

.field public mReadsize:Ljava/lang/String;

.field public mRecurrenceId:Ljava/lang/String;

.field public mRecurrence_DayOfMonth:Ljava/lang/String;

.field public mRecurrence_DayOfWeek:Ljava/lang/String;

.field public mRecurrence_Interval:Ljava/lang/String;

.field public mRecurrence_MonthOfYear:Ljava/lang/String;

.field public mRecurrence_Occurrences:Ljava/lang/String;

.field public mRecurrence_Type:Ljava/lang/String;

.field public mRecurrence_Until:Ljava/lang/String;

.field public mRecurrence_WeekOfMonth:Ljava/lang/String;

.field public mReference:Ljava/lang/String;

.field public mReminder:Ljava/lang/String;

.field public mReplyTo:Ljava/lang/String;

.field public mResponseRequested:Ljava/lang/String;

.field public mSensitivity:Ljava/lang/String;

.field public mStartTime:Ljava/lang/String;

.field public mSubjType:Ljava/lang/String;

.field public mSubject:Ljava/lang/String;

.field public mTag:Ljava/lang/String;

.field public mText:Ljava/lang/String;

.field public mThreadindex:Ljava/lang/String;

.field public mThreadtopic:Ljava/lang/String;

.field public mTimezone:Ljava/lang/String;

.field public mTo:Ljava/lang/String;

.field public mUid:Ljava/lang/String;

.field public mailAttach:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "MailItem"

    sput-object v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->TAG:Ljava/lang/String;

    .line 15
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mailAttach:Ljava/util/ArrayList;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mSubject:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mSubjType:Ljava/lang/String;

    .line 102
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mDate:Ljava/lang/String;

    .line 103
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mInternalDate:Ljava/lang/String;

    .line 104
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRead:Ljava/lang/String;

    .line 105
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadsize:Ljava/lang/String;

    .line 106
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadTotalsize:Ljava/lang/String;

    .line 107
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mDownloadTotalSize:Ljava/lang/String;

    .line 108
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageSize:Ljava/lang/String;

    .line 109
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mIncattachment:Ljava/lang/String;

    .line 110
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mTag:Ljava/lang/String;

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mPsuedoGroupId:J

    .line 112
    const-string v0, "1"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mImportance:Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageClassInt:I

    .line 114
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mAllDayEvent:Ljava/lang/String;

    .line 115
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mResponseRequested:Ljava/lang/String;

    .line 116
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mSensitivity:Ljava/lang/String;

    .line 117
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_Type:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "fileName"

    .prologue
    const/4 v3, 0x0

    .line 333
    const/16 v4, 0x2e

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 334
    .local v0, dot:I
    if-gez v0, :cond_1

    .line 340
    .end local v0           #dot:I
    :cond_0
    :goto_0
    return-object v3

    .line 335
    .restart local v0       #dot:I
    :cond_1
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, ext:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 337
    const-string v4, "\\W"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 338
    .end local v0           #dot:I
    .end local v2           #ext:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 339
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAttachmentSize()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mailAttach:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMessagesCV()Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mAccount:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 126
    sget-object v3, Lcom/htc/android/mail/eassvc/mail/MailItem;->TAG:Ljava/lang/String;

    const-string v4, "get messages content value: account is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-object v2

    .line 130
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 131
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "_uid"

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v3, "_from"

    const-string v4, ""

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFrom:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "_fromEmail"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFromemail:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v2, "_replyTo"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReplyTo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "_subject"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "_subjtype"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mSubjType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v2, "_to"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "_cc"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "_bcc"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "_threadindex"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mThreadindex:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "_threadtopic"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mThreadtopic:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v2, "_headers"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mHeaders:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "_date"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mInternalDate:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mInternalDate:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    :cond_1
    const-string v2, "_internaldate"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_2
    const-string v2, "_preview"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mPreview:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v2, "_flags"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessages_Flags:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "_read"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRead:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v2, "_readsize"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadsize:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "_readtotalsize"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadTotalsize:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v2, "_downloadtotalsize"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mDownloadTotalSize:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v2, "_messagesize"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageSize:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v2, "_incAttachment"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mIncattachment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "_account"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "_mailbox"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMailbox:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "_tag"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v2, "_mailboxId"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMailbox_Id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v2, "_references"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReference:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v2, "_group"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "_groupPseudo"

    iget-wide v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mPsuedoGroupId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    const-string v2, "_messageClass"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageClass:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "_messageClassInt"

    iget v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageClassInt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v2, "_allDayEvent"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mAllDayEvent:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v2, "_startTime"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mStartTime:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "_dtstamp"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mDtStamp:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "_endTime"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mEndTime:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "_instanceType"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mInstanceType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v2, "_location"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "_organizer"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v2, "_recurrenceId"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrenceId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "_reminder"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReminder:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "_responseRequested"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mResponseRequested:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v2, "_sensitivity"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mSensitivity:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "_IntdBusyStatus"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mIntDBusyStatus:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v2, "_timezone"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v2, "_globalObjId"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mGlobalObjId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v2, "_category"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v2, "_recurrence_type"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_Type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v2, "_recurrence_occurrences"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_Occurrences:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v2, "_recurrence_interval"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_Interval:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v2, "_recurrence_dayofweek"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_DayOfWeek:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v2, "_recurrence_dayofmonth"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_DayOfMonth:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v2, "_recurrence_weekofmonth"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_WeekOfMonth:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v2, "_recurrence_monthofyear"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_MonthOfYear:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v2, "_flags"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessages_Flags:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v2, "_recurrence_until"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_Until:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :try_start_0
    const-string v2, "_importance"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mImportance:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_3
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 245
    const-string v2, "_text"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_4
    move-object v2, v0

    .line 255
    goto/16 :goto_0

    .line 133
    :cond_3
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFrom:Ljava/lang/String;

    goto/16 :goto_1

    .line 160
    :cond_4
    const-string v2, "_internaldate"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mInternalDate:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v2, "_importance"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 246
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 248
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailItem;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/htc/android/mail/eassvc/mail/MailItem;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mAccount:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, "!! getEasmessagesCV(): add empty plain text body"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 249
    :cond_6
    const-string v2, "_text"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 251
    :cond_7
    const-string v2, "_text"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public getPartsAttachCV(I)Landroid/content/ContentValues;
    .locals 11
    .parameter "index"

    .prologue
    const/4 v6, 0x0

    .line 275
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mAccount:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 276
    sget-object v7, Lcom/htc/android/mail/eassvc/mail/MailItem;->TAG:Ljava/lang/String;

    const-string v8, "get parts attach: account is null"

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v6

    .line 327
    :cond_0
    :goto_0
    return-object v2

    .line 279
    :cond_1
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mailAttach:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;

    .line 280
    .local v0, attachItem:Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;
    if-nez v0, :cond_2

    .line 281
    sget-object v7, Lcom/htc/android/mail/eassvc/mail/MailItem;->TAG:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mAccount:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string v10, "getEaspartsAttachCV(): attach is null"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    move-object v2, v6

    .line 282
    goto :goto_0

    .line 284
    :cond_2
    const/4 v1, 0x0

    .line 286
    .local v1, cv:Landroid/content/ContentValues;
    :try_start_0
    iget-object v7, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilename:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/android/mail/eassvc/mail/MailItem;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, mimeType:Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_4

    .line 291
    :cond_3
    const-string v5, "application/octet-stream"

    .line 293
    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 294
    .end local v1           #cv:Landroid/content/ContentValues;
    .local v2, cv:Landroid/content/ContentValues;
    :try_start_1
    const-string v7, "_mimetype"

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v7, "_account"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v7, "_flags"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mParts_Flags:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v7, "_filename"

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v7, "_filesize"

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFileSize:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v7, "_contentid"

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mContentId:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v7, "_cid"

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mContentId:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v7, "_filereference"

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilereference:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v7, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 304
    const-string v7, "_inline"

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_1
    iget-object v7, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageClass:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageClass:Ljava/lang/String;

    const-string v8, "IPM.Schedule.Meeting.Request"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 311
    const-string v7, "_contenttype"

    const-string v8, "2"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_2
    iget-object v7, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilepath:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 317
    const-string v7, "_filepath"

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilepath:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 319
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 320
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v4           #extension:Ljava/lang/String;
    .end local v5           #mimeType:Ljava/lang/String;
    .restart local v1       #cv:Landroid/content/ContentValues;
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_3
    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    move-object v2, v6

    .line 321
    goto/16 :goto_0

    .line 306
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #cv:Landroid/content/ContentValues;
    .restart local v4       #extension:Ljava/lang/String;
    .restart local v5       #mimeType:Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v7, "_inline"

    const-string v8, "0"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 322
    :catch_1
    move-exception v3

    move-object v1, v2

    .line 323
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v4           #extension:Ljava/lang/String;
    .end local v5           #mimeType:Ljava/lang/String;
    .restart local v1       #cv:Landroid/content/ContentValues;
    .local v3, e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v6

    .line 324
    goto/16 :goto_0

    .line 313
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #cv:Landroid/content/ContentValues;
    .restart local v4       #extension:Ljava/lang/String;
    .restart local v5       #mimeType:Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string v7, "_contenttype"

    const-string v8, "1"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 322
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v4           #extension:Ljava/lang/String;
    .end local v5           #mimeType:Ljava/lang/String;
    .restart local v1       #cv:Landroid/content/ContentValues;
    :catch_2
    move-exception v3

    goto :goto_4

    .line 319
    :catch_3
    move-exception v3

    goto :goto_3
.end method

.method public getPartsBodyCV()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 259
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mAccount:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 260
    sget-object v1, Lcom/htc/android/mail/eassvc/mail/MailItem;->TAG:Ljava/lang/String;

    const-string v2, "get parts mail body: account is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    .line 264
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_mimetype"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "_nativeType"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mNativeBodyType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "_text"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v1, "_account"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "_flags"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mParts_Flags:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

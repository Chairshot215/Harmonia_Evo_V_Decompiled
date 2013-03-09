.class public Lcom/android/mms/ui/ConversationHeader;
.super Ljava/lang/Object;
.source "ConversationHeader.java"


# instance fields
.field public mBlock:Z

.field public mBsending:Z

.field public mDate:Ljava/lang/String;

.field public mDateMillisec:J

.field public mFrom:Ljava/lang/String;

.field public mGroupView:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

.field public mHasAttachment:Z

.field public mHasDraft:Z

.field public mHasError:Z

.field public mHtcThreadId:J

.field public mIsMms:Z

.field public mIsRead:Z

.field public mIsSms:Z

.field public mIsValidAddress:Z

.field public mIsVvm:Z

.field public mMessageCount:I

.field public mMsgBox:I

.field public mMsgType:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mPriority:I

.field public mPrivate:Z

.field public mSubject:Ljava/lang/String;

.field public mThreadId:J

.field public mThreadType:I

.field public mUnreadCount:I

.field public mUrgent:Z


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;)V
    .locals 5
    .parameter "group"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide v3, p0, Lcom/android/mms/ui/ConversationHeader;->mHtcThreadId:J

    .line 46
    iput-object v2, p0, Lcom/android/mms/ui/ConversationHeader;->mMsgType:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mPrivate:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mUrgent:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mBlock:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mBsending:Z

    .line 54
    iput-object v2, p0, Lcom/android/mms/ui/ConversationHeader;->mName:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mIsValidAddress:Z

    .line 56
    iput-wide v3, p0, Lcom/android/mms/ui/ConversationHeader;->mDateMillisec:J

    .line 57
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mIsSms:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mIsMms:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mIsVvm:Z

    .line 60
    iput-object v2, p0, Lcom/android/mms/ui/ConversationHeader;->mGroupView:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 64
    iput-object p1, p0, Lcom/android/mms/ui/ConversationHeader;->mGroupView:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 65
    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getLockStatus()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mBlock:Z

    return v0
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/android/mms/ui/ConversationHeader;->mMessageCount:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/android/mms/ui/ConversationHeader;->mPriority:I

    return v0
.end method

.method public getSendingStatus()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mBsending:Z

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadBroadcastType()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/android/mms/ui/ConversationHeader;->mThreadType:I

    return v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationHeader;->mThreadId:J

    return-wide v0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/android/mms/ui/ConversationHeader;->mUnreadCount:I

    return v0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mHasAttachment:Z

    return v0
.end method

.method public hasDraft()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mHasDraft:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mHasError:Z

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mIsRead:Z

    return v0
.end method

.method public isThreadBroadcastType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 202
    iget v1, p0, Lcom/android/mms/ui/ConversationHeader;->mThreadType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 69
    iput-wide v2, p0, Lcom/android/mms/ui/ConversationHeader;->mThreadId:J

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ConversationHeader;->mDate:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mHasAttachment:Z

    .line 74
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationHeader;->mIsRead:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mHasError:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mHasDraft:Z

    .line 77
    iput v1, p0, Lcom/android/mms/ui/ConversationHeader;->mMessageCount:I

    .line 78
    iput v1, p0, Lcom/android/mms/ui/ConversationHeader;->mUnreadCount:I

    .line 79
    iput v1, p0, Lcom/android/mms/ui/ConversationHeader;->mPriority:I

    .line 80
    iput v1, p0, Lcom/android/mms/ui/ConversationHeader;->mThreadType:I

    .line 81
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mBlock:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mBsending:Z

    .line 83
    iput-object v5, p0, Lcom/android/mms/ui/ConversationHeader;->mMsgType:Ljava/lang/String;

    .line 84
    iput-wide v2, p0, Lcom/android/mms/ui/ConversationHeader;->mHtcThreadId:J

    .line 85
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mPrivate:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mUrgent:Z

    .line 87
    iput-object v5, p0, Lcom/android/mms/ui/ConversationHeader;->mName:Ljava/lang/String;

    .line 88
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationHeader;->mIsValidAddress:Z

    .line 89
    iput-wide v2, p0, Lcom/android/mms/ui/ConversationHeader;->mDateMillisec:J

    .line 90
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mIsSms:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mIsMms:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationHeader;->mIsVvm:Z

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationHeader;->mMsgBox:I

    .line 94
    return-void
.end method

.method public setData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIIIIZZ)V
    .locals 0
    .parameter "threadId"
    .parameter "from"
    .parameter "subject"
    .parameter "date"
    .parameter "isRead"
    .parameter "hasError"
    .parameter "hasDraft"
    .parameter "messageCount"
    .parameter "unreadCount"
    .parameter "priority"
    .parameter "btype"
    .parameter "block"
    .parameter "bsending"

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/android/mms/ui/ConversationHeader;->mThreadId:J

    .line 116
    iput-object p3, p0, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    .line 117
    iput-object p4, p0, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/android/mms/ui/ConversationHeader;->mDate:Ljava/lang/String;

    .line 119
    iput-boolean p6, p0, Lcom/android/mms/ui/ConversationHeader;->mIsRead:Z

    .line 120
    iput-boolean p7, p0, Lcom/android/mms/ui/ConversationHeader;->mHasError:Z

    .line 121
    iput-boolean p8, p0, Lcom/android/mms/ui/ConversationHeader;->mHasDraft:Z

    .line 122
    iput p9, p0, Lcom/android/mms/ui/ConversationHeader;->mMessageCount:I

    .line 124
    iput p10, p0, Lcom/android/mms/ui/ConversationHeader;->mUnreadCount:I

    .line 126
    iput p11, p0, Lcom/android/mms/ui/ConversationHeader;->mPriority:I

    .line 128
    iput p12, p0, Lcom/android/mms/ui/ConversationHeader;->mThreadType:I

    .line 129
    iput-boolean p13, p0, Lcom/android/mms/ui/ConversationHeader;->mBlock:Z

    .line 130
    iput-boolean p14, p0, Lcom/android/mms/ui/ConversationHeader;->mBsending:Z

    .line 131
    return-void
.end method

.method public setData(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIIIZZIZZ)V
    .locals 1
    .parameter "msgType"
    .parameter "htcThreadId"
    .parameter "threadId"
    .parameter "from"
    .parameter "subject"
    .parameter "date"
    .parameter "isRead"
    .parameter "hasError"
    .parameter "hasDraft"
    .parameter "messageCount"
    .parameter "unreadCount"
    .parameter "priority"
    .parameter "_private"
    .parameter "urgent"
    .parameter "threadType"
    .parameter "block"
    .parameter "bsending"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/mms/ui/ConversationHeader;->mMsgType:Ljava/lang/String;

    .line 144
    iput-wide p2, p0, Lcom/android/mms/ui/ConversationHeader;->mHtcThreadId:J

    .line 145
    iput-wide p4, p0, Lcom/android/mms/ui/ConversationHeader;->mThreadId:J

    .line 146
    iput-object p6, p0, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    .line 147
    iput-object p7, p0, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 148
    iput-object p8, p0, Lcom/android/mms/ui/ConversationHeader;->mDate:Ljava/lang/String;

    .line 149
    iput-boolean p9, p0, Lcom/android/mms/ui/ConversationHeader;->mIsRead:Z

    .line 150
    iput-boolean p10, p0, Lcom/android/mms/ui/ConversationHeader;->mHasError:Z

    .line 151
    iput-boolean p11, p0, Lcom/android/mms/ui/ConversationHeader;->mHasDraft:Z

    .line 152
    iput p12, p0, Lcom/android/mms/ui/ConversationHeader;->mMessageCount:I

    .line 153
    iput p13, p0, Lcom/android/mms/ui/ConversationHeader;->mUnreadCount:I

    .line 154
    iput p14, p0, Lcom/android/mms/ui/ConversationHeader;->mPriority:I

    .line 155
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mPrivate:Z

    .line 156
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mUrgent:Z

    .line 157
    move/from16 v0, p17

    iput v0, p0, Lcom/android/mms/ui/ConversationHeader;->mThreadType:I

    .line 158
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mBlock:Z

    .line 159
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationHeader;->mBsending:Z

    .line 160
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/mms/ui/ConversationHeader;->mDate:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setHasAttachment(Z)V
    .locals 0
    .parameter "hasAttachment"

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationHeader;->mHasAttachment:Z

    .line 230
    return-void
.end method

.method public setRead(Z)V
    .locals 0
    .parameter "isRead"

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationHeader;->mIsRead:Z

    .line 244
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setThreadId(J)V
    .locals 0
    .parameter "threadId"

    .prologue
    .line 171
    iput-wide p1, p0, Lcom/android/mms/ui/ConversationHeader;->mThreadId:J

    .line 172
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ConversationHeader from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationHeader;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

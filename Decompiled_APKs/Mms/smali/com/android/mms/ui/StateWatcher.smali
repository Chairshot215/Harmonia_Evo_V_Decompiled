.class public Lcom/android/mms/ui/StateWatcher;
.super Ljava/lang/Object;
.source "StateWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;
    }
.end annotation


# instance fields
.field private mHasAttachment:Z

.field private mHasHugeText:Z

.field private mHasNonSmsRecipients:Z

.field private mHasRecipients:Z

.field private mHasRecipientsEditor:Z

.field private mHasSmsVcard:Z

.field private mHasSubject:Z

.field private mHasSubjectEditor:Z

.field private mHasText:Z

.field private mHasupdateGroupConversation:Z

.field private mIsGroupConversation:Z

.field private mMsgContentChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

.field private mMsgTypeChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

.field private mTopPanelStateChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private notifyListenerIfNeeded(ZZLcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V
    .locals 1
    .parameter "oldState"
    .parameter "newState"
    .parameter "l"

    .prologue
    .line 106
    if-eqz p3, :cond_0

    xor-int v0, p1, p2

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {p3, p2}, Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;->onStateChanged(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method private testTopPanelState()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasSubjectEditor:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasRecipientsEditor:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public HasupdateGroupConversation()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasupdateGroupConversation:Z

    return v0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasAttachment:Z

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasText:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasAttachment:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNonSmsRecipients()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasNonSmsRecipients:Z

    return v0
.end method

.method public hasRecipients()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasRecipients:Z

    return v0
.end method

.method public hasRescipientEditor()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasRecipientsEditor:Z

    return v0
.end method

.method public hasSmsVcard()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasSmsVcard:Z

    return v0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasSubject:Z

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasText:Z

    return v0
.end method

.method public isEmptyMessage()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasText:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasSubject:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasAttachment:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasSmsVcard:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyMessageWithoutSubject()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasText:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasSubject:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasAttachment:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasSmsVcard:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupConversation()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mIsGroupConversation:Z

    return v0
.end method

.method public isMultimediaMessage()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 74
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSSubject()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    iget-boolean v2, p0, Lcom/android/mms/ui/StateWatcher;->mHasNonSmsRecipients:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/StateWatcher;->mHasHugeText:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/StateWatcher;->mHasAttachment:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/StateWatcher;->mIsGroupConversation:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 77
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/ui/StateWatcher;->mHasNonSmsRecipients:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/mms/ui/StateWatcher;->mHasSubject:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/mms/ui/StateWatcher;->mHasHugeText:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/mms/ui/StateWatcher;->mHasAttachment:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/mms/ui/StateWatcher;->mIsGroupConversation:Z

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isSlideshowMessage()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasSubject:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasAttachment:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextOnlyMMS()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasAttachment:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetContentStates()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->testMessageIntegrity()Z

    move-result v0

    .line 189
    .local v0, oldMessageIntegrity:Z
    iput-boolean v1, p0, Lcom/android/mms/ui/StateWatcher;->mHasSubject:Z

    .line 190
    iput-boolean v1, p0, Lcom/android/mms/ui/StateWatcher;->mHasAttachment:Z

    .line 191
    iput-boolean v1, p0, Lcom/android/mms/ui/StateWatcher;->mHasText:Z

    .line 193
    iput-boolean v1, p0, Lcom/android/mms/ui/StateWatcher;->mHasHugeText:Z

    .line 195
    iput-boolean v1, p0, Lcom/android/mms/ui/StateWatcher;->mHasSmsVcard:Z

    .line 197
    iput-boolean v1, p0, Lcom/android/mms/ui/StateWatcher;->mHasupdateGroupConversation:Z

    .line 198
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->testMessageIntegrity()Z

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/StateWatcher;->mMsgContentChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/StateWatcher;->notifyListenerIfNeeded(ZZLcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V

    .line 200
    return-void
.end method

.method public setMessageContentChangeListener(Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/mms/ui/StateWatcher;->mMsgContentChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    .line 54
    return-void
.end method

.method public setMessageTypeChangeListener(Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/mms/ui/StateWatcher;->mMsgTypeChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    .line 50
    return-void
.end method

.method public setMmsTag(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/android/mms/ui/StateWatcher;->mHasAttachment:Z

    .line 205
    return-void
.end method

.method public setTopPanelStateChangeListener(Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/mms/ui/StateWatcher;->mTopPanelStateChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    .line 58
    return-void
.end method

.method public testMessageIntegrity()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasRecipients:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasText:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasAttachment:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/StateWatcher;->mHasSmsVcard:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateHasAttachment(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v1

    .line 129
    .local v1, oldMessageType:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->testMessageIntegrity()Z

    move-result v0

    .line 130
    .local v0, oldMessageIntegrity:Z
    iput-boolean p1, p0, Lcom/android/mms/ui/StateWatcher;->mHasAttachment:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/StateWatcher;->mMsgTypeChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/ui/StateWatcher;->notifyListenerIfNeeded(ZZLcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->testMessageIntegrity()Z

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/StateWatcher;->mMsgContentChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/mms/ui/StateWatcher;->notifyListenerIfNeeded(ZZLcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V

    .line 134
    return-void
.end method

.method public updateHasHugeText(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v0

    .line 138
    .local v0, oldMessageType:Z
    iput-boolean p1, p0, Lcom/android/mms/ui/StateWatcher;->mHasHugeText:Z

    .line 140
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/StateWatcher;->mMsgTypeChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/StateWatcher;->notifyListenerIfNeeded(ZZLcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V

    .line 141
    return-void
.end method

.method public updateHasNonSmsRecipients(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v0

    .line 113
    .local v0, oldMessageType:Z
    iput-boolean p1, p0, Lcom/android/mms/ui/StateWatcher;->mHasNonSmsRecipients:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/StateWatcher;->mMsgTypeChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/StateWatcher;->notifyListenerIfNeeded(ZZLcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V

    .line 116
    return-void
.end method

.method public updateHasRecipients(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->testMessageIntegrity()Z

    move-result v0

    .line 145
    .local v0, oldMessageIntegrity:Z
    iput-boolean p1, p0, Lcom/android/mms/ui/StateWatcher;->mHasRecipients:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->testMessageIntegrity()Z

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/StateWatcher;->mMsgContentChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/StateWatcher;->notifyListenerIfNeeded(ZZLcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V

    .line 148
    return-void
.end method

.method public updateHasRecipientsEditor(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/mms/ui/StateWatcher;->testTopPanelState()Z

    move-result v0

    .line 159
    .local v0, oldTopPanelState:Z
    iput-boolean p1, p0, Lcom/android/mms/ui/StateWatcher;->mHasRecipientsEditor:Z

    .line 161
    invoke-direct {p0}, Lcom/android/mms/ui/StateWatcher;->testTopPanelState()Z

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/StateWatcher;->mTopPanelStateChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/StateWatcher;->notifyListenerIfNeeded(ZZLcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V

    .line 162
    return-void
.end method

.method public updateHasSmsVcard(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->testMessageIntegrity()Z

    move-result v0

    .line 177
    .local v0, oldMessageIntegrity:Z
    iput-boolean p1, p0, Lcom/android/mms/ui/StateWatcher;->mHasSmsVcard:Z

    .line 179
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->testMessageIntegrity()Z

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/StateWatcher;->mMsgContentChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/StateWatcher;->notifyListenerIfNeeded(ZZLcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V

    .line 180
    return-void
.end method

.method public updateHasSubject(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/mms/ui/StateWatcher;->testTopPanelState()Z

    move-result v1

    .line 120
    .local v1, oldTopPanelState:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v0

    .line 121
    .local v0, oldMessageType:Z
    iput-boolean p1, p0, Lcom/android/mms/ui/StateWatcher;->mHasSubject:Z

    .line 123
    invoke-direct {p0}, Lcom/android/mms/ui/StateWatcher;->testTopPanelState()Z

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/StateWatcher;->mTopPanelStateChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/ui/StateWatcher;->notifyListenerIfNeeded(ZZLcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/StateWatcher;->mMsgTypeChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/mms/ui/StateWatcher;->notifyListenerIfNeeded(ZZLcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V

    .line 125
    return-void
.end method

.method public updateHasSubjectEditor(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/mms/ui/StateWatcher;->testTopPanelState()Z

    move-result v0

    .line 152
    .local v0, oldTopPanelState:Z
    iput-boolean p1, p0, Lcom/android/mms/ui/StateWatcher;->mHasSubjectEditor:Z

    .line 154
    invoke-direct {p0}, Lcom/android/mms/ui/StateWatcher;->testTopPanelState()Z

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/StateWatcher;->mTopPanelStateChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/StateWatcher;->notifyListenerIfNeeded(ZZLcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V

    .line 155
    return-void
.end method

.method public updateHasText(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->testMessageIntegrity()Z

    move-result v0

    .line 170
    .local v0, oldMessageIntegrity:Z
    iput-boolean p1, p0, Lcom/android/mms/ui/StateWatcher;->mHasText:Z

    .line 172
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->testMessageIntegrity()Z

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/StateWatcher;->mMsgContentChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/StateWatcher;->notifyListenerIfNeeded(ZZLcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V

    .line 173
    return-void
.end method

.method public updateIsGroupConversation(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 240
    const-string v1, "NGM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update GroupConversation to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/StateWatcher;->mHasupdateGroupConversation:Z

    .line 242
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v0

    .line 243
    .local v0, oldMessageType:Z
    iput-boolean p1, p0, Lcom/android/mms/ui/StateWatcher;->mIsGroupConversation:Z

    .line 244
    invoke-virtual {p0}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/StateWatcher;->mMsgTypeChangeListener:Lcom/android/mms/ui/StateWatcher$OnStateChangeListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/StateWatcher;->notifyListenerIfNeeded(ZZLcom/android/mms/ui/StateWatcher$OnStateChangeListener;)V

    .line 245
    return-void
.end method

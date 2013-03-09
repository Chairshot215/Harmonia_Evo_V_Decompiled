.class public interface abstract Lcom/google/android/gm/provider/MailStore;
.super Ljava/lang/Object;
.source "MailStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/MailStore$OperationSink;,
        Lcom/google/android/gm/provider/MailStore$CustomFromPreference;,
        Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;,
        Lcom/google/android/gm/provider/MailStore$LabelInfo;
    }
.end annotation


# virtual methods
.method public abstract addOrUpdateMessage(Lcom/google/android/gm/provider/MailSync$Message;J)V
.end method

.method public abstract addSendWithoutSyncConversationInfoToCheck(JJ)V
.end method

.method public abstract addSyncedConversationInfoToCheck(JJ)V
.end method

.method public abstract commit()V
.end method

.method public abstract delayConversationSync(J)V
.end method

.method public abstract deleteCorruptedMessage(JJ)V
.end method

.method public abstract deleteLabel(Lcom/google/android/gm/provider/MailCore$Label;)V
.end method

.method public abstract expungeMessages(JLjava/util/List;Lcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getAccount()Ljava/lang/String;
.end method

.method public abstract getConversationInfosToFetch(Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/MailEngine$SyncInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/MailSync$ConversationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDirtyConversations()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputStreamForUploadedAttachment(JLcom/google/android/gm/provider/Gmail$Attachment;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract getLabelCanonicalNameOrNull(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;
.end method

.method public abstract getLabelOrNull(J)Lcom/google/android/gm/provider/MailCore$Label;
.end method

.method public abstract getMessageCursorForConversationId([Ljava/lang/String;J)Landroid/database/Cursor;
.end method

.method public abstract getMessageIdsToFetch()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;
.end method

.method public abstract getOrAddLabel(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;
.end method

.method public abstract handleConversation(Lcom/google/android/gm/provider/MailSync$Conversation;)V
.end method

.method public abstract markConversationDirty(J)V
.end method

.method public abstract notifyConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V
.end method

.method public abstract notifyConversationLoaded(JLcom/google/android/gm/provider/MailSync$SyncRationale;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V
.end method

.method public abstract notifyLabelChanges(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyMessageDoesNotExist(J)V
.end method

.method public abstract notifyMessageNotUpdated(JLjava/lang/String;)V
.end method

.method public abstract prepare()V
.end method

.method public abstract provideOperations(Lcom/google/android/gm/provider/MailStore$OperationSink;Lcom/google/android/gm/provider/MailEngine$SyncInfo;J)V
.end method

.method public abstract removeCustomFromPreference(Ljava/lang/String;)V
.end method

.method public abstract removeOperationByMessageId(J)V
.end method

.method public abstract removeOperations(J)V
.end method

.method public abstract renameLabel(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract setCustomFromPreference(Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailStore$CustomFromPreference;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setCustomLabelColorPreference(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setInfoOverloadArrowsOffPreference(Ljava/lang/String;)V
.end method

.method public abstract setInfoOverloadEnabledPreference(Ljava/lang/String;)V
.end method

.method public abstract setLabelCounts(Lcom/google/android/gm/provider/MailCore$Label;IIILjava/lang/String;)V
.end method

.method public abstract setLabelOnMessages(JLjava/util/List;Lcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/MailCore$Label;",
            "Z",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setLabels(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailStore$LabelInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setServerPreferences(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSettings(Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract updateNotificationLabels()V
.end method

.method public abstract updateSentOrSavedMessage(JJJ)V
.end method

.method public abstract wipeAndResync(Ljava/lang/String;)V
.end method

.method public abstract yieldForContention()Z
.end method

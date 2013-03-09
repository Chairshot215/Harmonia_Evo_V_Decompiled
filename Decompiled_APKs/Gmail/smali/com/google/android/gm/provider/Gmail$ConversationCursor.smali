.class public Lcom/google/android/gm/provider/Gmail$ConversationCursor;
.super Lcom/google/android/gm/provider/Gmail$MailCursor;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationCursor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mConversationIdIndex:I

.field private final mDateIndex:I

.field private final mForceAllUnreadIndex:I

.field private final mFromIndex:I

.field private final mHasAttachmentsIndex:I

.field private final mHasMessagesWithErrorsIndex:I

.field private final mLabelsIndex:I

.field private final mMaxMessageIdIndex:I

.field private final mNumMessagesIndex:I

.field private final mParsedLabels:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPersonalLevelIndex:I

.field private final mSnippetIndex:I

.field private final mSubjectIndex:I

.field private final mSyncedIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3695
    const-class v0, Lcom/google/android/gm/provider/Gmail;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 2
    .parameter "handler"
    .parameter "gmail"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 3719
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gm/provider/Gmail$MailCursor;-><init>(Landroid/os/Handler;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 3709
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mParsedLabels:Landroid/util/LruCache;

    .line 3721
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mConversationIdIndex:I

    .line 3723
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "subject"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mSubjectIndex:I

    .line 3724
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "snippet"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mSnippetIndex:I

    .line 3725
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "fromAddress"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mFromIndex:I

    .line 3726
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mDateIndex:I

    .line 3727
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "personalLevel"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mPersonalLevelIndex:I

    .line 3729
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "numMessages"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mNumMessagesIndex:I

    .line 3730
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "maxMessageId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mMaxMessageIdIndex:I

    .line 3731
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "hasAttachments"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mHasAttachmentsIndex:I

    .line 3733
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "hasMessagesWithErrors"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mHasMessagesWithErrorsIndex:I

    .line 3735
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "forceAllUnread"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mForceAllUnreadIndex:I

    .line 3737
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "synced"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mSyncedIndex:I

    .line 3738
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "conversationLabels"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mLabelsIndex:I

    .line 3740
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/gm/provider/Gmail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 3695
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;-><init>(Landroid/os/Handler;Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .parameter "gmail"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 3714
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;-><init>(Landroid/os/Handler;Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 3715
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/gm/provider/Gmail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 3695
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;-><init>(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public becomeActiveNetworkCursor()V
    .locals 5

    .prologue
    .line 3763
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3764
    .local v0, input:Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "activate"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3765
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3766
    .local v1, output:Landroid/os/Bundle;
    const-string v3, "commandResponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3767
    .local v2, response:Ljava/lang/String;
    sget-boolean v3, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 3768
    :cond_0
    return-void
.end method

.method public becomeInactiveNetworkCursor()Z
    .locals 5

    .prologue
    .line 3776
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3777
    .local v0, input:Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "deactivate"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3778
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3779
    .local v1, output:Landroid/os/Bundle;
    const-string v3, "commandResponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3780
    .local v2, response:Ljava/lang/String;
    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public getConversationId()J
    .locals 2

    .prologue
    .line 3810
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mConversationIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateMs()J
    .locals 2

    .prologue
    .line 3881
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mDateIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getForceAllUnread()Z
    .locals 2

    .prologue
    .line 3894
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mForceAllUnreadIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mForceAllUnreadIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFromSnippetInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3819
    iget v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mFromIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasDraftMessage()Z
    .locals 2

    .prologue
    .line 3922
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getRawLabels()Ljava/lang/String;

    move-result-object v0

    .line 3923
    .local v0, rawLabels:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "^*^^r^*^"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHasUnreadMessage()Z
    .locals 2

    .prologue
    .line 3938
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getRawLabels()Ljava/lang/String;

    move-result-object v0

    .line 3939
    .local v0, rawLabels:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "^*^^u^*^"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getLabelIds()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3859
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 3860
    .local v1, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getLabels()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/Label;

    .line 3861
    .local v2, label:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3863
    .end local v2           #label:Lcom/google/android/gm/provider/Label;
    :cond_0
    return-object v1
.end method

.method public getLabels()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3906
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v0

    .line 3908
    .local v0, id:J
    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mParsedLabels:Landroid/util/LruCache;

    monitor-enter v4

    .line 3909
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mParsedLabels:Landroid/util/LruCache;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 3910
    .local v2, parsedLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    if-nez v2, :cond_0

    .line 3911
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mAccount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getRawLabels()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gm/provider/LabelManager;->parseLabelQueryResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 3912
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mParsedLabels:Landroid/util/LruCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3914
    :cond_0
    monitor-exit v4

    .line 3915
    return-object v2

    .line 3914
    .end local v2           #parsedLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getLogic()Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    .locals 1

    .prologue
    .line 3952
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    return-object v0
.end method

.method public getMaxServerMessageId()J
    .locals 2

    .prologue
    .line 3877
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mMaxMessageIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumMessages()I
    .locals 2

    .prologue
    .line 3870
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mNumMessagesIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getPersonalLevel()Lcom/google/android/gm/provider/Gmail$PersonalLevel;
    .locals 3

    .prologue
    .line 3846
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mPersonalLevelIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3847
    .local v0, personalLevelInt:I
    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->fromInt(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v1

    return-object v1
.end method

.method public getRawLabels()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3947
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mLabelsIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3837
    iget v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mSnippetIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3828
    iget v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mSubjectIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAttachments()Z
    .locals 2

    .prologue
    .line 3885
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mHasAttachmentsIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSynced()Z
    .locals 2

    .prologue
    .line 3902
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mSyncedIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCursorPositionChanged()V
    .locals 0

    .prologue
    .line 3744
    invoke-super {p0}, Lcom/google/android/gm/provider/Gmail$MailCursor;->onCursorPositionChanged()V

    .line 3745
    return-void
.end method

.method public retry()V
    .locals 5

    .prologue
    .line 3749
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3750
    .local v0, input:Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "retry"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3751
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3752
    .local v1, output:Landroid/os/Bundle;
    const-string v3, "commandResponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3753
    .local v2, response:Ljava/lang/String;
    sget-boolean v3, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 3754
    :cond_0
    return-void
.end method

.method public setContentsVisibleToUser(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    .line 3795
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3796
    .local v0, input:Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "setVisible"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3797
    const-string v3, "visible"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3798
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3799
    .local v1, output:Landroid/os/Bundle;
    const-string v3, "commandResponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3800
    .local v2, response:Ljava/lang/String;
    sget-boolean v3, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 3801
    :cond_0
    return-void
.end method

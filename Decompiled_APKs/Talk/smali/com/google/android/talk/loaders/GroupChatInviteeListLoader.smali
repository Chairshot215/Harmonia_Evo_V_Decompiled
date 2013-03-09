.class public Lcom/google/android/talk/loaders/GroupChatInviteeListLoader;
.super Lcom/google/android/talk/loaders/RosterListLoader;
.source "GroupChatInviteeListLoader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;J)V
    .locals 0
    .parameter "context"
    .parameter "participants"
    .parameter "accountId"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/talk/loaders/RosterListLoader;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/talk/loaders/GroupChatInviteeListLoader;->setSelection([Ljava/lang/String;J)V

    .line 29
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 64
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GroupChatInviteeListLoader] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method private setSelection([Ljava/lang/String;J)V
    .locals 8
    .parameter "participants"
    .parameter "accountId"

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v4, "account=%s AND mode>0 AND type!=2 AND type!=3 AND (subscriptionType=2 OR subscriptionType=4)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    array-length v2, p1

    .line 37
    .local v2, len:I
    new-array v3, v2, [Ljava/lang/String;

    .line 40
    .local v3, selectionArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 41
    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "username"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    aget-object v4, p1, v1

    aput-object v4, v3, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    iget v4, p0, Lcom/google/android/talk/loaders/GroupChatInviteeListLoader;->mLogLevel:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareQueryParameters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/talk/loaders/GroupChatInviteeListLoader;->log(Ljava/lang/String;)V

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectionArgs: (length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/talk/loaders/GroupChatInviteeListLoader;->log(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/talk/loaders/GroupChatInviteeListLoader;->log(Ljava/lang/String;)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/talk/loaders/GroupChatInviteeListLoader;->setSelection(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, v3}, Lcom/google/android/talk/loaders/GroupChatInviteeListLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected prepareSelectionClause()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

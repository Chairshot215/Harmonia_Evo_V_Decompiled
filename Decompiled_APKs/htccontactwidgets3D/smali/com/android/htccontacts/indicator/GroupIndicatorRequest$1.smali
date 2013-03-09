.class Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;
.super Ljava/lang/Object;
.source "GroupIndicatorRequest.java"

# interfaces
.implements Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 13
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 89
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 90
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 92
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberIdSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://com.android.contacts/groups"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v3, v3, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupName:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "simpledata"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 99
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 100
    const-string v0, "mimetype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 101
    .local v10, idxMimetype:I
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 102
    .local v8, idxData:I
    const-string v0, "raw_contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 103
    .local v11, idxRawContactId:I
    const-string v0, "contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 104
    .local v7, idxContactId:I
    const-string v0, "data_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 106
    .local v9, idxDataId:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 112
    .local v12, mimetype:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 128
    .end local v12           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 116
    .restart local v12       #mimetype:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_2
    const-string v0, "vnd.android.cursor.item/htc_event_v2"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdSet:Ljava/util/HashSet;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_3
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberIdSet:Ljava/util/HashSet;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    .end local v12           #mimetype:Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 131
    .end local v7           #idxContactId:I
    .end local v8           #idxData:I
    .end local v9           #idxDataId:I
    .end local v10           #idxMimetype:I
    .end local v11           #idxRawContactId:I
    :cond_5
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #calls: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildRawContactIdArray()V
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$000(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    .line 132
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #calls: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildEmailArray()V
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$100(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    .line 133
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #calls: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildPhoneArray()V
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$200(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    .line 134
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #calls: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildContactIdArray()V
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$300(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    .line 135
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #calls: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildMemberContactIdArray()V
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$400(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    .line 137
    const-string v0, "MEMBER_COUNT"

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v2, v2, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/android/htccontacts/indicator/IndicatorResult;->addPublishResult(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    return-object p1
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

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
    .line 84
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

    .line 86
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 87
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 88
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 89
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 90
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberIdSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 91
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "GroupIndicatorRequest"

    const-string v2, "The mGroupName is empty and the indicator will not work for this group!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v0, "MEMBER_COUNT"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v2}, Lcom/android/htccontacts/indicator/IndicatorResult;->addPublishResult(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    :goto_0
    return-object p1

    .line 97
    :cond_0
    const-string v0, "content://com.android.contacts/groups"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v3, v3, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupName:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "simpledata"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 98
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 104
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 105
    const-string v0, "mimetype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 106
    .local v10, idxMimetype:I
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 107
    .local v8, idxData:I
    const-string v0, "raw_contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 108
    .local v11, idxRawContactId:I
    const-string v0, "contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 109
    .local v7, idxContactId:I
    const-string v0, "data_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 111
    .local v9, idxDataId:I
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 117
    .local v12, mimetype:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 133
    .end local v12           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 121
    .restart local v12       #mimetype:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    :cond_3
    const-string v0, "vnd.android.cursor.item/htc_event_v2"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdSet:Ljava/util/HashSet;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_4
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberIdSet:Ljava/util/HashSet;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 133
    .end local v12           #mimetype:Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 136
    .end local v7           #idxContactId:I
    .end local v8           #idxData:I
    .end local v9           #idxDataId:I
    .end local v10           #idxMimetype:I
    .end local v11           #idxRawContactId:I
    :cond_6
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #calls: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildRawContactIdArray()V
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$000(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    .line 137
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #calls: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildEmailArray()V
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$100(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    .line 138
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #calls: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildPhoneArray()V
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$200(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    .line 139
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #calls: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildContactIdArray()V
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$300(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    .line 140
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #calls: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildMemberContactIdArray()V
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$400(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    .line 142
    const-string v0, "MEMBER_COUNT"

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v3, v3, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberIdSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v2}, Lcom/android/htccontacts/indicator/IndicatorResult;->addPublishResult(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

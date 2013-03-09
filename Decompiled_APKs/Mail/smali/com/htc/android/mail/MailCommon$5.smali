.class Lcom/htc/android/mail/MailCommon$5;
.super Ljava/lang/Object;
.source "MailCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailCommon;->downloadAttachmentThread(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailCommon;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailCommon;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon$5;->this$0:Lcom/htc/android/mail/MailCommon;

    iput-object p2, p0, Lcom/htc/android/mail/MailCommon$5;->val$view:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 1148
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailCommon"

    const-string v5, "downloadAttachmentThread>"

    invoke-static {v0, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_0
    const/4 v1, 0x0

    .line 1152
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$5;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/Attachment;

    .line 1153
    .local v10, attach:Lcom/htc/android/mail/Attachment;
    if-nez v10, :cond_2

    .line 1154
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MailCommon"

    const-string v4, "attach null>"

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    :cond_1
    :goto_0
    return-void

    .line 1157
    :cond_2
    iget-boolean v0, v10, Lcom/htc/android/mail/Attachment;->globalAttach:Z

    if-eqz v0, :cond_4

    .line 1158
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$700()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MailCommon"

    const-string v5, "globalAttach>"

    invoke-static {v0, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    :cond_3
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    .line 1163
    :goto_1
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_mailboxId"

    aput-object v5, v2, v0

    const/4 v0, 0x1

    const-string v5, "_uid"

    aput-object v5, v2, v0

    const/4 v0, 0x2

    const-string v5, "_readtotalsize"

    aput-object v5, v2, v0

    .line 1164
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/htc/android/mail/MailCommon$5;->this$0:Lcom/htc/android/mail/MailCommon;

    #getter for: Lcom/htc/android/mail/MailCommon;->mMessageId:J
    invoke-static {v5}, Lcom/htc/android/mail/MailCommon;->access$800(Lcom/htc/android/mail/MailCommon;)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1165
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$5;->this$0:Lcom/htc/android/mail/MailCommon;

    #calls: Lcom/htc/android/mail/MailCommon;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/android/mail/MailCommon;->access$900(Lcom/htc/android/mail/MailCommon;)Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1166
    .local v11, messagesTable:Landroid/database/Cursor;
    if-nez v11, :cond_5

    .line 1167
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MailCommon"

    const-string v4, "messagesTable null>"

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1161
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v11           #messagesTable:Landroid/database/Cursor;
    :cond_4
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    goto :goto_1

    .line 1170
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v11       #messagesTable:Landroid/database/Cursor;
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1171
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$700()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "MailCommon"

    const-string v4, "messagesTable move first fail>"

    invoke-static {v0, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1175
    :cond_7
    const-string v0, "_mailboxId"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1176
    .local v6, mailBoxId:J
    const-string v0, "_uid"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1177
    .local v8, mUid:Ljava/lang/String;
    const-string v0, "_readtotalsize"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1178
    .local v9, mTotalSize:I
    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1179
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1180
    :cond_8
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$5;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v0, v0, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v4, Lcom/htc/android/mail/MailCommon$5$1;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/htc/android/mail/MailCommon$5$1;-><init>(Lcom/htc/android/mail/MailCommon$5;JLjava/lang/String;I)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

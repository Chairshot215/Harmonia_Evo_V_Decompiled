.class Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;
.super Ljava/lang/Object;
.source "MimeViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/mimemessage/MimeViewer$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mimemessage/MimeViewer$2;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 124
    const/4 v8, 0x0

    .line 126
    .local v8, bis:Ljava/io/BufferedInputStream;
    const-wide/16 v6, -0x1

    .line 127
    .local v6, accountId:J
    const/4 v10, 0x0

    .line 130
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v0, v0, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #getter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$100(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.htc.android.mail.attachmentprovider/parts/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v0, v0, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v2, v2, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #getter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$100(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$102(Lcom/htc/android/mail/mimemessage/MimeViewer;Landroid/net/Uri;)Landroid/net/Uri;

    .line 133
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v0, v0, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    invoke-virtual {v0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v1, v1, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #getter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$100(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_account"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 134
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "_account"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 136
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MimeViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use account id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v2, v2, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #getter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$100(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    if-eqz v10, :cond_1

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_1
    :goto_0
    new-instance v13, Lcom/htc/android/mail/mimemessage/MimeMessage;

    invoke-direct {v13}, Lcom/htc/android/mail/mimemessage/MimeMessage;-><init>()V

    .line 148
    .local v13, message:Lcom/htc/android/mail/mimemessage/MimeMessage;
    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v0, v0, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    invoke-virtual {v0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v1, v1, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #getter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$100(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    .end local v8           #bis:Ljava/io/BufferedInputStream;
    .local v9, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-virtual {v13, v9}, Lcom/htc/android/mail/mimemessage/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 150
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v0, v0, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v1, v1, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #calls: Lcom/htc/android/mail/mimemessage/MimeViewer;->insertToProvider(Lcom/htc/android/mail/mimemessage/MimeMessage;)Landroid/net/Uri;
    invoke-static {v1, v13}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$200(Lcom/htc/android/mail/mimemessage/MimeViewer;Lcom/htc/android/mail/mimemessage/MimeMessage;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$002(Lcom/htc/android/mail/mimemessage/MimeViewer;Landroid/net/Uri;)Landroid/net/Uri;

    .line 151
    const/4 v13, 0x0

    .line 152
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v0, v0, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #getter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$000(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    if-eqz v0, :cond_4

    .line 154
    :try_start_3
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v0, v0, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    invoke-virtual {v0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v1, v1, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #getter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$000(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/Util;->writeKeepTempMessage(Landroid/content/Context;Ljava/lang/String;I)V

    .line 156
    new-instance v12, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v1, v1, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    #getter for: Lcom/htc/android/mail/mimemessage/MimeViewer;->mMessageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/android/mail/mimemessage/MimeViewer;->access$000(Lcom/htc/android/mail/mimemessage/MimeViewer;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    .local v12, i:Landroid/content/Intent;
    const-string v0, "singleItem"

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    const-string v0, "fromViewer"

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_9

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v0, v0, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    invoke-virtual {v0}, Lcom/htc/android/mail/mimemessage/MimeViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/Util;->getUsingAccountPref(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 162
    const-string v0, "accountID"

    iget-object v1, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v1, v1, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    invoke-virtual {v1}, Lcom/htc/android/mail/mimemessage/MimeViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/Util;->getUsingAccountPref(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 167
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/mimemessage/MimeViewer$2$1;->this$1:Lcom/htc/android/mail/mimemessage/MimeViewer$2;

    iget-object v0, v0, Lcom/htc/android/mail/mimemessage/MimeViewer$2;->this$0:Lcom/htc/android/mail/mimemessage/MimeViewer;

    const/4 v1, 0x1

    invoke-virtual {v0, v12, v1}, Lcom/htc/android/mail/mimemessage/MimeViewer;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 176
    .end local v12           #i:Landroid/content/Intent;
    :cond_4
    :goto_2
    if-eqz v9, :cond_5

    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_5
    :goto_3
    move-object v8, v9

    .line 181
    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .end local v13           #message:Lcom/htc/android/mail/mimemessage/MimeMessage;
    .restart local v8       #bis:Ljava/io/BufferedInputStream;
    :cond_6
    :goto_4
    return-void

    .line 139
    :catch_0
    move-exception v11

    .line 140
    .local v11, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    if-eqz v10, :cond_1

    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 172
    .end local v11           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 173
    .restart local v11       #e:Ljava/lang/Exception;
    :goto_5
    :try_start_7
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 176
    if-eqz v8, :cond_6

    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 177
    :catch_2
    move-exception v11

    .line 178
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 142
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_7

    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    .line 143
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_7
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 175
    :catchall_1
    move-exception v0

    .line 176
    :goto_6
    if-eqz v8, :cond_8

    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 175
    :cond_8
    :goto_7
    throw v0

    .line 165
    .end local v8           #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    .restart local v12       #i:Landroid/content/Intent;
    .restart local v13       #message:Lcom/htc/android/mail/mimemessage/MimeMessage;
    :cond_9
    :try_start_b
    const-string v0, "accountID"

    invoke-virtual {v12, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_1

    .line 168
    .end local v12           #i:Landroid/content/Intent;
    :catch_3
    move-exception v11

    .line 169
    .restart local v11       #e:Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_2

    .line 172
    .end local v11           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v11

    move-object v8, v9

    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .restart local v8       #bis:Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 177
    .end local v13           #message:Lcom/htc/android/mail/mimemessage/MimeMessage;
    :catch_5
    move-exception v11

    .line 178
    .restart local v11       #e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 177
    .end local v8           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    .restart local v13       #message:Lcom/htc/android/mail/mimemessage/MimeMessage;
    :catch_6
    move-exception v11

    .line 178
    .restart local v11       #e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 175
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    move-object v8, v9

    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .restart local v8       #bis:Ljava/io/BufferedInputStream;
    goto :goto_6
.end method

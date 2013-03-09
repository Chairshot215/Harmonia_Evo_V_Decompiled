.class Lcom/htc/android/mail/ReadScreen$42$1;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen$42;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/ReadScreen$42;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen$42;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5814
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$42$1;->this$1:Lcom/htc/android/mail/ReadScreen$42;

    iput-object p2, p0, Lcom/htc/android/mail/ReadScreen$42$1;->val$userName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 5816
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 5817
    .local v6, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$42$1;->this$1:Lcom/htc/android/mail/ReadScreen$42;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$42;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-wide v0, v0, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5818
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$42$1;->this$1:Lcom/htc/android/mail/ReadScreen$42;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$42;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "_globalObjId"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5821
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5822
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5823
    .local v9, mailGUID:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$42$1;->val$userName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$42$1;->this$1:Lcom/htc/android/mail/ReadScreen$42;

    iget-object v1, v1, Lcom/htc/android/mail/ReadScreen$42;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->myContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen;->access$1300(Lcom/htc/android/mail/ReadScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/htc/android/mail/meeting/MeetingUtil;->deleteCalendarEvent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5830
    .end local v9           #mailGUID:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5831
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5836
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$42$1;->this$1:Lcom/htc/android/mail/ReadScreen$42;

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreen$42;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->deleteMail(Z)V
    invoke-static {v0, v10}, Lcom/htc/android/mail/ReadScreen;->access$10400(Lcom/htc/android/mail/ReadScreen;Z)V

    .line 5837
    return-void

    .line 5825
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    const-string v1, "removeMeetingFromCalendarListener: cursor null"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5827
    :catch_0
    move-exception v8

    .line 5828
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5830
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5831
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5830
    :cond_3
    throw v0
.end method

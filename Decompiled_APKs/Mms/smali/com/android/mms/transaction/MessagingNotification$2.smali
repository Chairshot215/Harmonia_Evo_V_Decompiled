.class final Lcom/android/mms/transaction/MessagingNotification$2;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->removeNotificationByID(Landroid/content/Context;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$threadID:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$threadID:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x321

    const/4 v2, 0x0

    .line 1224
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1226
    const-string v0, "content://mms-sms-v2/get-threadID-from-contactID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1227
    .local v7, threadIdUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$threadID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1230
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1231
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1232
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1233
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1234
    .local v8, tid:J
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$context:Landroid/content/Context;

    #calls: Lcom/android/mms/transaction/MessagingNotification;->removeNotificationByThreadID(Landroid/content/Context;JLandroid/app/NotificationManager;I)Z
    invoke-static {v0, v8, v9, v2, v10}, Lcom/android/mms/transaction/MessagingNotification;->access$300(Landroid/content/Context;JLandroid/app/NotificationManager;I)Z

    .line 1236
    .end local v8           #tid:J
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1241
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #threadIdUri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 1239
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$context:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$threadID:J

    #calls: Lcom/android/mms/transaction/MessagingNotification;->removeNotificationByThreadID(Landroid/content/Context;JLandroid/app/NotificationManager;I)Z
    invoke-static {v0, v3, v4, v2, v10}, Lcom/android/mms/transaction/MessagingNotification;->access$300(Landroid/content/Context;JLandroid/app/NotificationManager;I)Z

    goto :goto_0
.end method

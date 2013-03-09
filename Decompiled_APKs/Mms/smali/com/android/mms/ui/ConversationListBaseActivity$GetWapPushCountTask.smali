.class Lcom/android/mms/ui/ConversationListBaseActivity$GetWapPushCountTask;
.super Landroid/os/AsyncTask;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetWapPushCountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2997
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$GetWapPushCountTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;Lcom/android/mms/ui/ConversationListBaseActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2997
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity$GetWapPushCountTask;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10
    .parameter "v"

    .prologue
    .line 3000
    const/4 v8, 0x0

    .line 3001
    .local v8, count:I
    const/4 v7, 0x0

    .line 3003
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/push/PushMessage;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, " _id limit 1"

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3005
    if-eqz v7, :cond_0

    .line 3006
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 3010
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3011
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3014
    :cond_1
    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 3007
    :catch_0
    move-exception v9

    .line 3008
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3010
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3011
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3010
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3011
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2997
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity$GetWapPushCountTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 3017
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$GetWapPushCountTask;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->bShowWapPushMenuItem:Z

    .line 3018
    return-void

    .line 3017
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2997
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity$GetWapPushCountTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

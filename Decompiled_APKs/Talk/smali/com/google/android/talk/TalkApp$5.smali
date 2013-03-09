.class Lcom/google/android/talk/TalkApp$5;
.super Landroid/os/AsyncTask;
.source "TalkApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/TalkApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/TalkApp;


# direct methods
.method constructor <init>(Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/google/android/talk/TalkApp$5;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1231
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/TalkApp$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 1234
    iget-object v1, p0, Lcom/google/android/talk/TalkApp$5;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1235
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "title=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v8, "Mira"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1242
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1256
    :goto_0
    return-object v5

    .line 1246
    :cond_0
    const/4 v7, 0x0

    .line 1248
    .local v7, uri:Ljava/lang/String;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1250
    iget-object v1, p0, Lcom/google/android/talk/TalkApp$5;->this$0:Lcom/google/android/talk/TalkApp;

    #setter for: Lcom/google/android/talk/TalkApp;->mDefaultTextNotificationUri:Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/google/android/talk/TalkApp;->access$902(Lcom/google/android/talk/TalkApp;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v7

    .line 1256
    goto :goto_0

    .line 1253
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1231
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/TalkApp$5;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "ringtoneUri"

    .prologue
    .line 1261
    if-eqz p1, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$5;->this$0:Lcom/google/android/talk/TalkApp;

    #calls: Lcom/google/android/talk/TalkApp;->setDefaultRingtoneUriForAllAccounts(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/talk/TalkApp;->access$1000(Lcom/google/android/talk/TalkApp;Ljava/lang/String;)V

    .line 1264
    :cond_0
    return-void
.end method

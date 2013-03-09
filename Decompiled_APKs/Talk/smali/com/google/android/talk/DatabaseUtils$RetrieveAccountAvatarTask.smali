.class public Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;
.super Landroid/os/AsyncTask;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/DatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetrieveAccountAvatarTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/talk/TalkApp$AccountInfo;",
        "Ljava/lang/Void;",
        "Lcom/google/android/talk/DatabaseUtils$AvatarData;",
        ">;"
    }
.end annotation


# instance fields
.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "contentResolver"
    .parameter "onLoaded"

    .prologue
    .line 517
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 518
    iput-object p1, p0, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 519
    iput-object p2, p0, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;->mRunnable:Ljava/lang/Runnable;

    .line 520
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/talk/TalkApp$AccountInfo;)Lcom/google/android/talk/DatabaseUtils$AvatarData;
    .locals 6
    .parameter "accountInfos"

    .prologue
    const/4 v4, 0x0

    .line 524
    iget-object v2, p0, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;->mContentResolver:Landroid/content/ContentResolver;

    aget-object v3, p1, v4

    iget-object v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    aget-object v4, p1, v4

    iget-wide v4, v4, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/talk/DatabaseUtils;->queryAvatarCursorForUser(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    .line 530
    .local v1, cursor:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/talk/DatabaseUtils$AvatarData;

    invoke-direct {v0}, Lcom/google/android/talk/DatabaseUtils$AvatarData;-><init>()V

    .line 532
    .local v0, avatarData:Lcom/google/android/talk/DatabaseUtils$AvatarData;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/talk/DatabaseUtils$AvatarData;->mAvatarData:[B

    .line 534
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/talk/DatabaseUtils$AvatarData;->mAvatarDataHash:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :cond_0
    if-eqz v1, :cond_1

    .line 538
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 541
    :cond_1
    return-object v0

    .line 537
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 538
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 512
    check-cast p1, [Lcom/google/android/talk/TalkApp$AccountInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;->doInBackground([Lcom/google/android/talk/TalkApp$AccountInfo;)Lcom/google/android/talk/DatabaseUtils$AvatarData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V
    .locals 1
    .parameter "avatarData"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 548
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 512
    check-cast p1, Lcom/google/android/talk/DatabaseUtils$AvatarData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;->onPostExecute(Lcom/google/android/talk/DatabaseUtils$AvatarData;)V

    return-void
.end method

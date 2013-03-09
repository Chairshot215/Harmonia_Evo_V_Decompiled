.class Lcom/google/android/talk/PublicIntentDispatcher$RetrieveAccountInfoTask;
.super Landroid/os/AsyncTask;
.source "PublicIntentDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/PublicIntentDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetrieveAccountInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCr:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/google/android/talk/PublicIntentDispatcher;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/PublicIntentDispatcher;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/talk/PublicIntentDispatcher$RetrieveAccountInfoTask;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/google/android/talk/PublicIntentDispatcher$RetrieveAccountInfoTask;->mCr:Landroid/content/ContentResolver;

    .line 206
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/PublicIntentDispatcher$RetrieveAccountInfoTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    const/4 v5, 0x0

    aget-object v4, p1, v5

    .line 212
    .local v4, targetUserName:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v1, fromAccountInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;>;"
    iget-object v5, p0, Lcom/google/android/talk/PublicIntentDispatcher$RetrieveAccountInfoTask;->mCr:Landroid/content/ContentResolver;

    invoke-static {v5}, Lcom/google/android/talk/DatabaseUtils;->getAllAccountInfos(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 215
    .local v0, as:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v5, p0, Lcom/google/android/talk/PublicIntentDispatcher$RetrieveAccountInfoTask;->mCr:Landroid/content/ContentResolver;

    iget-wide v6, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-static {v5, v4, v6, v7}, Lcom/google/android/talk/DatabaseUtils;->IsUserInRosterList(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v3

    .line 217
    .local v3, inRoster:Z
    new-instance v5, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    invoke-direct {v5, v0, v3}, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;-><init>(Lcom/google/android/talk/TalkApp$AccountInfo;Z)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    .end local v0           #as:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v3           #inRoster:Z
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/PublicIntentDispatcher$RetrieveAccountInfoTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;>;"
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$RetrieveAccountInfoTask;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    #calls: Lcom/google/android/talk/PublicIntentDispatcher;->onAccountStateAvailable(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/google/android/talk/PublicIntentDispatcher;->access$100(Lcom/google/android/talk/PublicIntentDispatcher;Ljava/util/List;)V

    .line 225
    return-void
.end method

.class Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;
.super Landroid/os/AsyncTask;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "checkRecipientTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field contactAddress:Ljava/lang/String;

.field contactName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "address"

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    .line 1381
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1377
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->contactName:Ljava/lang/String;

    .line 1378
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->contactAddress:Ljava/lang/String;

    .line 1382
    iput-object p2, p0, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->contactName:Ljava/lang/String;

    .line 1383
    iput-object p3, p0, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->contactAddress:Ljava/lang/String;

    .line 1384
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 1388
    const/4 v7, 0x0

    .line 1389
    .local v7, found:Z
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ComposeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsertContact thread>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->contactName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->contactAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data1 like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->contactAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1391
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1392
    .local v6, cCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1393
    const/4 v7, 0x1

    .line 1394
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0, v6}, Lcom/htc/android/mail/ComposeActivity;->closeCursor(Landroid/database/Cursor;)V

    .line 1395
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1376
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "found"

    .prologue
    .line 1399
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->showDialog(I)V

    .line 1403
    :goto_0
    return-void

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->contactName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->contactAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/ComposeActivity;->InsertContactProcess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1376
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ComposeActivity$checkRecipientTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

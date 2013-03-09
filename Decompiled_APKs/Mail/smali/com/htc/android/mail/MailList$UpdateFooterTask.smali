.class Lcom/htc/android/mail/MailList$UpdateFooterTask;
.super Landroid/os/AsyncTask;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateFooterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private deviceCount:I

.field private existOnServer:I

.field private haveLastUid:Z

.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 6607
    iput-object p1, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6608
    iput v1, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->existOnServer:I

    .line 6609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->haveLastUid:Z

    .line 6610
    iput v1, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->deviceCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6607
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList$UpdateFooterTask;-><init>(Lcom/htc/android/mail/MailList;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 10
    .parameter "deviceCounts"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6612
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->deviceCount:I

    .line 6613
    iget-object v0, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/android/mail/MailProvider;->sMailBoxURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    iget-wide v2, v2, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_existsize"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v5, "_lastuid"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_account = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v5, v5, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6616
    .local v6, c:Landroid/database/Cursor;
    const-string v7, ""

    .line 6618
    .local v7, lastuid:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6619
    const-string v0, "_existsize"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->existOnServer:I

    .line 6620
    const-string v0, "_lastuid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6622
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6624
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We have total "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->existOnServer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", in device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->deviceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6625
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->this$0:Lcom/htc/android/mail/MailList;

    #calls: Lcom/htc/android/mail/MailList;->haveTheLastUid(Ljava/lang/String;)Z
    invoke-static {v0, v7}, Lcom/htc/android/mail/MailList;->access$9000(Lcom/htc/android/mail/MailList;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->haveLastUid:Z

    .line 6626
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->haveLastUid:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6607
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailList$UpdateFooterTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "hastLast"

    .prologue
    .line 6634
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do we have mail with last uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6635
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->this$0:Lcom/htc/android/mail/MailList;

    iget v1, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->existOnServer:I

    iget-boolean v2, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->haveLastUid:Z

    iget v3, p0, Lcom/htc/android/mail/MailList$UpdateFooterTask;->deviceCount:I

    #calls: Lcom/htc/android/mail/MailList;->addRemainFooter(IZI)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/MailList;->access$9100(Lcom/htc/android/mail/MailList;IZI)V

    .line 6636
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6607
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/MailList$UpdateFooterTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onProgressUpdate()V
    .locals 0

    .prologue
    .line 6631
    return-void
.end method

.class Lcom/htc/android/mail/MailAccountUI$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MailAccountUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailAccountUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailAccountUI;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailAccountUI;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 2385
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$QueryHandler;->this$0:Lcom/htc/android/mail/MailAccountUI;

    .line 2386
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2387
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 2392
    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI$QueryHandler;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/android/mail/MailAccountUI;->access$100(Lcom/htc/android/mail/MailAccountUI;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2393
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MailAccountUI"

    const-string v4, "activty finished"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2395
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 2420
    :cond_1
    :goto_0
    return-void

    .line 2400
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2401
    .local v2, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_6

    .line 2403
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2406
    :cond_3
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2407
    .local v1, account:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailAccountUI;->access$300()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "MailAccountUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2409
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 2412
    .end local v1           #account:Ljava/lang/String;
    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 2416
    :cond_6
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI$QueryHandler;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #getter for: Lcom/htc/android/mail/MailAccountUI;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/android/mail/MailAccountUI;->access$100(Lcom/htc/android/mail/MailAccountUI;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x2090080

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2418
    .local v0, MailAddr_adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI$QueryHandler;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v3, v3, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2419
    iget-object v3, p0, Lcom/htc/android/mail/MailAccountUI$QueryHandler;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v3, v3, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    goto :goto_0

    .line 2412
    .end local v0           #MailAddr_adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v3
.end method

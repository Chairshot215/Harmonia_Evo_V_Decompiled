.class Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;
.super Ljava/lang/Thread;
.source "HtcViewCompanyContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewCompanyContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateNewContactThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcViewCompanyContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 381
    iget-object v7, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    iget-object v8, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    iget-object v9, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    iget-object v9, v9, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    #calls: Lcom/android/htccontacts/HtcViewCompanyContactActivity;->createExchangeContact(Landroid/content/Context;Landroid/os/Handler;Z)J
    invoke-static {v7, v8, v9, v10}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->access$100(Lcom/android/htccontacts/HtcViewCompanyContactActivity;Landroid/content/Context;Landroid/os/Handler;Z)J

    move-result-wide v5

    .line 382
    .local v5, rawcontactId:J
    const-wide/16 v0, -0x1

    .line 383
    .local v0, contactId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    .line 384
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 385
    .local v4, rawContactUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    invoke-virtual {v7}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 386
    .local v2, contactLookupUri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 387
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 390
    .end local v2           #contactLookupUri:Landroid/net/Uri;
    .end local v4           #rawContactUri:Landroid/net/Uri;
    :cond_0
    iget-object v7, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    iget-object v8, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    iget-object v8, v8, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 391
    new-instance v3, Lcom/android/htccontacts/HtcViewCompanyContactActivity$RunnableAfterSave;

    iget-object v7, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    invoke-direct {v3, v7, v0, v1}, Lcom/android/htccontacts/HtcViewCompanyContactActivity$RunnableAfterSave;-><init>(Lcom/android/htccontacts/HtcViewCompanyContactActivity;J)V

    .line 392
    .local v3, mRunnerAfterSave:Lcom/android/htccontacts/HtcViewCompanyContactActivity$RunnableAfterSave;
    iget-object v7, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$CreateNewContactThread;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    invoke-virtual {v7, v3}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 393
    return-void
.end method

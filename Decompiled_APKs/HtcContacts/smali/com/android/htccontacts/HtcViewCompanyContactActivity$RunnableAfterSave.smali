.class Lcom/android/htccontacts/HtcViewCompanyContactActivity$RunnableAfterSave;
.super Ljava/lang/Object;
.source "HtcViewCompanyContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewCompanyContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunnableAfterSave"
.end annotation


# instance fields
.field contactId:J

.field mSuccess:Z

.field final synthetic this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcViewCompanyContactActivity;J)V
    .locals 4
    .parameter
    .parameter "id"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$RunnableAfterSave;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-wide p2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$RunnableAfterSave;->contactId:J

    .line 401
    iget-wide v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$RunnableAfterSave;->contactId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$RunnableAfterSave;->mSuccess:Z

    .line 402
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 404
    iget-boolean v1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$RunnableAfterSave;->mSuccess:Z

    if-eqz v1, :cond_0

    .line 406
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 407
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$RunnableAfterSave;->contactId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 409
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$RunnableAfterSave;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 411
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$RunnableAfterSave;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcViewCompanyContactActivity;->finish()V

    .line 412
    return-void
.end method

.class public Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactDetailCommunicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MailListQueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ContactDetailCommunicationActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 2166
    invoke-virtual {p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2167
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListQueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 2168
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 2172
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListQueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    .line 2173
    .local v0, activity:Lcom/android/htccontacts/ContactDetailCommunicationActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2174
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 2180
    :cond_1
    :goto_0
    return-void

    .line 2177
    :cond_2
    if-eqz p3, :cond_1

    .line 2178
    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailListAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3800(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

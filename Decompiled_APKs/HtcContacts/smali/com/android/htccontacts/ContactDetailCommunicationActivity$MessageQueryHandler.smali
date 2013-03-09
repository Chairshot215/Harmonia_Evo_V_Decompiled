.class public Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactDetailCommunicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MessageQueryHandler"
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
    .line 3072
    invoke-virtual {p1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 3073
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageQueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 3074
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 3078
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessageQueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    .line 3079
    .local v0, activity:Lcom/android/htccontacts/ContactDetailCommunicationActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3080
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 3087
    :cond_1
    :goto_0
    return-void

    .line 3083
    :cond_2
    if-eqz p3, :cond_1

    .line 3084
    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageAdapter:Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$4100(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MessagesAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3085
    #setter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMessageCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$4202(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0
.end method

.class final Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactPhoneEmailDataPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation


# instance fields
.field pickerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ContactPhoneEmailDataPicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 1
    .parameter "picker"

    .prologue
    .line 550
    invoke-virtual {p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 551
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;->pickerRef:Ljava/lang/ref/WeakReference;

    .line 552
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 560
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$QueryHandler;->pickerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    .line 561
    .local v0, picker:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    :cond_0
    if-eqz p3, :cond_1

    .line 563
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 583
    :cond_1
    :goto_0
    return-void

    .line 568
    :cond_2
    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mContentReady:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$700(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 569
    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->restoreList()V

    .line 570
    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mContentReady:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$702(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Z)Z

    .line 573
    :cond_3
    if-eqz p3, :cond_4

    .line 574
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->setContactsItemListAdapterCursor(Landroid/database/Cursor;)V

    .line 575
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->ensureFastScrollEnabled(Landroid/database/Cursor;)V

    .line 578
    :cond_4
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 579
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 580
    const/4 v1, 0x0

    #calls: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->setEmtpyTextToView(Z)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$800(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Z)V

    goto :goto_0
.end method

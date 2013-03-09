.class final Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CommonContactAttributePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/CommonContactAttributePicker;
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
            "Lcom/android/htccontacts/CommonContactAttributePicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V
    .locals 1
    .parameter "picker"

    .prologue
    .line 429
    invoke-virtual {p1}, Lcom/android/htccontacts/CommonContactAttributePicker;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 430
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;->pickerRef:Ljava/lang/ref/WeakReference;

    .line 431
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$QueryHandler;->pickerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/CommonContactAttributePicker;

    .line 440
    .local v0, picker:Lcom/android/htccontacts/CommonContactAttributePicker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    :cond_0
    if-eqz p3, :cond_1

    .line 442
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_1
    :goto_0
    return-void

    .line 447
    :cond_2
    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mContentReady:Z
    invoke-static {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$500(Lcom/android/htccontacts/CommonContactAttributePicker;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 448
    invoke-virtual {v0}, Lcom/android/htccontacts/CommonContactAttributePicker;->restoreList()V

    .line 449
    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mContentReady:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$502(Lcom/android/htccontacts/CommonContactAttributePicker;Z)Z

    .line 452
    :cond_3
    if-eqz p3, :cond_4

    .line 453
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/CommonContactAttributePicker;->setContactsItemListAdapterCursor(Landroid/database/Cursor;)V

    .line 454
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/CommonContactAttributePicker;->ensureFastScrollEnabled(Landroid/database/Cursor;)V

    .line 457
    :cond_4
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 458
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 459
    const/4 v1, 0x0

    #calls: Lcom/android/htccontacts/CommonContactAttributePicker;->setEmtpyTextToView(Z)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$600(Lcom/android/htccontacts/CommonContactAttributePicker;Z)V

    goto :goto_0
.end method

.class public Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactDetailUpdatesAndEventsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    .line 587
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 589
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    .end local p2
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 590
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 594
    invoke-static {}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onQueryComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    .line 598
    .local v0, activity:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 599
    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 600
    if-eqz p3, :cond_0

    .line 601
    invoke-static {}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event query has returned with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " results"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    iput-object p3, v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventCursor:Landroid/database/Cursor;

    .line 604
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    const-string v2, "_id"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventId:I

    .line 605
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    const-string v2, "time"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventTime:I

    .line 606
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    const-string v2, "is_read"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventIsRead:I

    .line 607
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    const-string v2, "raw_contact_id"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventRawContactId:I

    .line 608
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    const-string v2, "data2"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventType:I

    .line 609
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    const-string v2, "contact_id"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventContactId:I

    .line 610
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    const-string v2, "display_name"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventContactName:I

    .line 611
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    const-string v2, "photo_id"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventContactPhoto:I

    .line 612
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    const-string v2, "lookup"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventContactLookup:I

    .line 613
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    const-string v2, "has_phone_number"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventHasPhoneNumber:I

    .line 615
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    invoke-virtual {v1, p3}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->setEventAdapter(Landroid/database/Cursor;)V

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    if-eqz p3, :cond_0

    .line 625
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$100(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

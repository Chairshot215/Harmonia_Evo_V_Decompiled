.class final Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactInfoQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ContactInfoQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactInfoQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ContactInfoQuery;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ContactInfoQuery;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->this$0:Lcom/google/android/talk/ContactInfoQuery;

    .line 116
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 121
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->this$0:Lcom/google/android/talk/ContactInfoQuery;

    #getter for: Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCallback:Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;
    invoke-static {v0}, Lcom/google/android/talk/ContactInfoQuery;->access$000(Lcom/google/android/talk/ContactInfoQuery;)Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallbackErrorHandler;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->this$0:Lcom/google/android/talk/ContactInfoQuery;

    #getter for: Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCallback:Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;
    invoke-static {v0}, Lcom/google/android/talk/ContactInfoQuery;->access$000(Lcom/google/android/talk/ContactInfoQuery;)Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallbackErrorHandler;

    iget-object v1, p0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->this$0:Lcom/google/android/talk/ContactInfoQuery;

    #getter for: Lcom/google/android/talk/ContactInfoQuery;->mContactInfoSelectionArgs:[Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/ContactInfoQuery;->access$100(Lcom/google/android/talk/ContactInfoQuery;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v1, p3}, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallbackErrorHandler;->onContactInfoLoadFailed(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->this$0:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->cleanupContactInfoCursor()V

    .line 130
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->this$0:Lcom/google/android/talk/ContactInfoQuery;

    #setter for: Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/google/android/talk/ContactInfoQuery;->access$202(Lcom/google/android/talk/ContactInfoQuery;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 131
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->this$0:Lcom/google/android/talk/ContactInfoQuery;

    #getter for: Lcom/google/android/talk/ContactInfoQuery;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v0}, Lcom/google/android/talk/ContactInfoQuery;->access$300(Lcom/google/android/talk/ContactInfoQuery;)Landroid/database/ContentObserver;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->this$0:Lcom/google/android/talk/ContactInfoQuery;

    #getter for: Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/talk/ContactInfoQuery;->access$200(Lcom/google/android/talk/ContactInfoQuery;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->this$0:Lcom/google/android/talk/ContactInfoQuery;

    #getter for: Lcom/google/android/talk/ContactInfoQuery;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/google/android/talk/ContactInfoQuery;->access$300(Lcom/google/android/talk/ContactInfoQuery;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->this$0:Lcom/google/android/talk/ContactInfoQuery;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/talk/ContactInfoQuery;->mHaveContactInfo:Z
    invoke-static {v0, v1}, Lcom/google/android/talk/ContactInfoQuery;->access$402(Lcom/google/android/talk/ContactInfoQuery;Z)Z

    .line 136
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->this$0:Lcom/google/android/talk/ContactInfoQuery;

    #getter for: Lcom/google/android/talk/ContactInfoQuery;->mLogLevel:I
    invoke-static {v0}, Lcom/google/android/talk/ContactInfoQuery;->access$500(Lcom/google/android/talk/ContactInfoQuery;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 137
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->this$0:Lcom/google/android/talk/ContactInfoQuery;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: cursor.getCount(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/ContactInfoQuery;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/ContactInfoQuery;->access$600(Lcom/google/android/talk/ContactInfoQuery;Ljava/lang/String;)V

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->this$0:Lcom/google/android/talk/ContactInfoQuery;

    #getter for: Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCallback:Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;
    invoke-static {v0}, Lcom/google/android/talk/ContactInfoQuery;->access$000(Lcom/google/android/talk/ContactInfoQuery;)Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryHandler;->this$0:Lcom/google/android/talk/ContactInfoQuery;

    #getter for: Lcom/google/android/talk/ContactInfoQuery;->mContactInfoCallback:Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;
    invoke-static {v0}, Lcom/google/android/talk/ContactInfoQuery;->access$000(Lcom/google/android/talk/ContactInfoQuery;)Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;->onContactInfoLoaded()V

    goto :goto_0
.end method

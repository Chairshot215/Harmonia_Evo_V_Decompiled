.class Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;
.super Ljava/lang/Thread;
.source "DeleteBySelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeleteBySelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteThread"
.end annotation


# instance fields
.field private mIsDeleteAll:Z

.field private mParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/ui/DeleteBySelectActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeleteBySelectActivity;ZLandroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "parent"
    .parameter "isDeleteAll"
    .parameter "ct"
    .parameter "cr"

    .prologue
    .line 725
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 726
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;->mParent:Ljava/lang/ref/WeakReference;

    .line 727
    iput-boolean p2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;->mIsDeleteAll:Z

    .line 730
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 733
    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DeleteBySelectActivity;

    .line 734
    .local v2, parent:Lcom/android/mms/ui/DeleteBySelectActivity;
    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$900(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/database/Cursor;

    move-result-object v1

    .line 735
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    #setter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteComplete:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1002(Lcom/android/mms/ui/DeleteBySelectActivity;I)I

    .line 736
    const/4 v3, -0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 738
    iget-boolean v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;->mIsDeleteAll:Z

    if-nez v3, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mSelectedCount:I
    invoke-static {v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$100(Lcom/android/mms/ui/DeleteBySelectActivity;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 739
    :cond_0
    #setter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteAll:Z
    invoke-static {v2, v5}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1102(Lcom/android/mms/ui/DeleteBySelectActivity;Z)Z

    .line 743
    :cond_1
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->duplicateCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 746
    .local v0, c:Landroid/database/Cursor;
    sput-boolean v5, Lcom/android/mms/ui/ConversationListBaseActivity;->sStartDeleting:Z

    .line 748
    const-string v3, "DeleteBySelectActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDeleteAll> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteAll:Z
    invoke-static {v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1100(Lcom/android/mms/ui/DeleteBySelectActivity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v3, v2, Lcom/android/mms/ui/DeleteBySelectActivity;->checkArray:[Z

    iget-boolean v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;->mIsDeleteAll:Z

    invoke-static {v2, v0, v3, v4}, Lcom/android/mms/ui/DeleteBySelectActivity;->deleteMessageByCursorV2(Landroid/content/Context;Landroid/database/Cursor;[ZZ)V

    .line 750
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1202(Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;)Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;

    .line 751
    return-void
.end method

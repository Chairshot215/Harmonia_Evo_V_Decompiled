.class Lcom/android/mms/ui/RecipientsAdapter$1;
.super Landroid/os/Handler;
.source "RecipientsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientsAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1903
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsAdapter$1;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1916
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 1919
    .local v0, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter$1;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    #getter for: Lcom/android/mms/ui/RecipientsAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/mms/ui/RecipientsAdapter;->access$400(Lcom/android/mms/ui/RecipientsAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1920
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter$1;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    #getter for: Lcom/android/mms/ui/RecipientsAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/mms/ui/RecipientsAdapter;->access$400(Lcom/android/mms/ui/RecipientsAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1921
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter$1;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    #calls: Lcom/android/mms/ui/RecipientsAdapter;->removeAllMessageInQueue()V
    invoke-static {v1}, Lcom/android/mms/ui/RecipientsAdapter;->access$500(Lcom/android/mms/ui/RecipientsAdapter;)V

    .line 1922
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1924
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 1926
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter$1;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1935
    :cond_1
    :goto_0
    return-void

    .line 1930
    :cond_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter$1;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    #getter for: Lcom/android/mms/ui/RecipientsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/mms/ui/RecipientsAdapter;->access$600(Lcom/android/mms/ui/RecipientsAdapter;)Landroid/database/Cursor;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1931
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter$1;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

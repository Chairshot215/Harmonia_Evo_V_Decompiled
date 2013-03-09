.class public Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;
.super Landroid/content/AsyncQueryHandler;
.source "HtcViewContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateHandler"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetailActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;Landroid/content/ContentResolver;Lcom/android/htccontacts/HtcViewContactDetailActivity;)V
    .locals 1
    .parameter
    .parameter "cr"
    .parameter "activity"

    .prologue
    .line 3706
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    .line 3707
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 3708
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;->activityRef:Ljava/lang/ref/WeakReference;

    .line 3709
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 3713
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;->activityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3729
    :cond_0
    :goto_0
    return-void

    .line 3717
    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 3720
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    #calls: Lcom/android/htccontacts/HtcViewContactDetailActivity;->readStatuses(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$900(Lcom/android/htccontacts/HtcViewContactDetailActivity;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3722
    if-eqz p3, :cond_2

    .line 3723
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 3726
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    #calls: Lcom/android/htccontacts/HtcViewContactDetailActivity;->considerBindData()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$100(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    goto :goto_0

    .line 3722
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_3

    .line 3723
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 3722
    :cond_3
    throw v0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 3739
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;

    .line 3740
    .local v0, activity:Lcom/android/htccontacts/HtcViewContactDetailActivity;
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$UpdateHandler;->activityRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3741
    if-lez p3, :cond_0

    .line 3742
    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->dataChanged()V

    .line 3745
    :cond_0
    return-void
.end method

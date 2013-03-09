.class final Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ArrangeMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/ArrangeMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/group/ArrangeMemberActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "activity"
    .parameter "cr"

    .prologue
    .line 324
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 325
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;->activityRef:Ljava/lang/ref/WeakReference;

    .line 326
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/htccontacts/group/ArrangeMemberActivity$QueryHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/group/ArrangeMemberActivity;

    .line 331
    .local v0, activity:Lcom/android/htccontacts/group/ArrangeMemberActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    :cond_0
    if-eqz p3, :cond_1

    .line 333
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 337
    :cond_2
    #calls: Lcom/android/htccontacts/group/ArrangeMemberActivity;->setAdapter(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->access$500(Lcom/android/htccontacts/group/ArrangeMemberActivity;Landroid/database/Cursor;)V

    .line 338
    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/group/ArrangeMemberActivity;->mIsDirty:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->access$402(Lcom/android/htccontacts/group/ArrangeMemberActivity;Z)Z

    .line 339
    #calls: Lcom/android/htccontacts/group/ArrangeMemberActivity;->ensureOKButton()V
    invoke-static {v0}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->access$600(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V

    goto :goto_0
.end method

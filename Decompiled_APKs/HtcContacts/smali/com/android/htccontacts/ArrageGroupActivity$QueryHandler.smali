.class final Lcom/android/htccontacts/ArrageGroupActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ArrageGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ArrageGroupActivity;
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
            "Lcom/android/htccontacts/ArrageGroupActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ArrageGroupActivity;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "activity"
    .parameter "cr"

    .prologue
    .line 189
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 190
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity$QueryHandler;->activityRef:Ljava/lang/ref/WeakReference;

    .line 191
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 194
    iget-object v1, p0, Lcom/android/htccontacts/ArrageGroupActivity$QueryHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ArrageGroupActivity;

    .line 195
    .local v0, activity:Lcom/android/htccontacts/ArrageGroupActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ArrageGroupActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    :cond_0
    if-eqz p3, :cond_1

    .line 197
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    #calls: Lcom/android/htccontacts/ArrageGroupActivity;->setAdapter(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/htccontacts/ArrageGroupActivity;->access$200(Lcom/android/htccontacts/ArrageGroupActivity;Landroid/database/Cursor;)V

    .line 202
    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ArrageGroupActivity;->mIsDirty:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/ArrageGroupActivity;->access$302(Lcom/android/htccontacts/ArrageGroupActivity;Z)Z

    .line 203
    #getter for: Lcom/android/htccontacts/ArrageGroupActivity;->okButton:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/android/htccontacts/ArrageGroupActivity;->access$400(Lcom/android/htccontacts/ArrageGroupActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 204
    #getter for: Lcom/android/htccontacts/ArrageGroupActivity;->okButton:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/android/htccontacts/ArrageGroupActivity;->access$400(Lcom/android/htccontacts/ArrageGroupActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method

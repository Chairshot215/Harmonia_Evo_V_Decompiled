.class Lcom/htc/android/mail/ComposeActivity$showMoveRecipient;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "showMoveRecipient"
.end annotation


# instance fields
.field private mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/ComposeActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 13345
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13346
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$showMoveRecipient;->mTarget:Ljava/lang/ref/WeakReference;

    .line 13347
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 13349
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$showMoveRecipient;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ComposeActivity;

    .line 13350
    .local v0, target:Lcom/htc/android/mail/ComposeActivity;
    if-nez v0, :cond_0

    .line 13357
    :goto_0
    return v3

    .line 13352
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/ReceiverList;

    iput-object v1, v0, Lcom/htc/android/mail/ComposeActivity;->currRecipient:Lcom/htc/android/mail/ReceiverList;

    .line 13353
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/mail/ComposeActivity$showMoveRecipient$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/android/mail/ComposeActivity$showMoveRecipient$1;-><init>(Lcom/htc/android/mail/ComposeActivity$showMoveRecipient;Lcom/htc/android/mail/ComposeActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

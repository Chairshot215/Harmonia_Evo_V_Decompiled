.class Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$1;
.super Landroid/os/Handler;
.source "AllPeopleListWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 92
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 94
    :pswitch_0
    new-instance v1, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;

    iget-object v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    #getter for: Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->access$000(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    iget-object v3, v3, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactView:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;-><init>(Ljava/lang/ref/WeakReference;Landroid/view/View;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    #getter for: Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->access$000(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 96
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$1;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;-><init>(Landroid/content/ContentResolver;Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

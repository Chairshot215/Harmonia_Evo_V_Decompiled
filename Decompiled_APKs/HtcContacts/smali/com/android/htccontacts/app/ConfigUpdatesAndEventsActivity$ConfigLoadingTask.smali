.class Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;
.super Landroid/os/AsyncTask;
.source "ConfigUpdatesAndEventsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;",
        ">;"
    }
.end annotation


# instance fields
.field private mRefContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;->mRefContext:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 45
    iget-object v3, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;->mRefContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 46
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 47
    .local v0, config:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;
    if-eqz v1, :cond_0

    .line 48
    new-instance v0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    .end local v0           #config:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;-><init>(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$1;)V

    .line 49
    .restart local v0       #config:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 50
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "une_event"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isEventEnabled:I

    .line 51
    const-string v3, "une_update"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->isUpdateEnabled:I

    .line 52
    const-string v3, "show_events_within_days"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->eventQueryDays:I

    .line 54
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;->doInBackground([Ljava/lang/Void;)Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    new-instance v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    invoke-direct {v1, v2, p1}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;-><init>(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;)V

    #setter for: Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mListAdapter:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;
    invoke-static {v0, v1}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->access$102(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;)Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;

    .line 63
    iget-object v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mListAdapter:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->access$100(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;)Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    iget v1, p1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;->eventQueryDays:I

    #setter for: Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mCurEventQueryDays:I
    invoke-static {v0, v1}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->access$202(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;I)I

    .line 68
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;->onPostExecute(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;)V

    return-void
.end method

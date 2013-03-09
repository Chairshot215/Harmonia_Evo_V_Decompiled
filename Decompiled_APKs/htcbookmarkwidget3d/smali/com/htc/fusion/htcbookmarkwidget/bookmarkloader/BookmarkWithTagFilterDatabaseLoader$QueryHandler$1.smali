.class Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler$1;
.super Landroid/os/AsyncTask;
.source "BookmarkWithTagFilterDatabaseLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

.field final synthetic val$myCookie:Ljava/lang/Object;

.field final synthetic val$myToken:I


# direct methods
.method constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler$1;->this$1:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    iput-object p2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler$1;->val$myCookie:Ljava/lang/Object;

    iput p3, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler$1;->val$myToken:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;)Landroid/database/Cursor;
    .locals 2
    .parameter "params"

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 118
    .local v0, interceptor:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;
    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;->query()Landroid/database/Cursor;

    move-result-object v1

    .line 122
    .end local v0           #interceptor:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    check-cast p1, [Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler$1;->doInBackground([Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryInterceptor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 126
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryArgs;

    invoke-direct {v0}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryArgs;-><init>()V

    .line 127
    .local v0, args:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryArgs;
    iput-object p1, v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryArgs;->result:Ljava/lang/Object;

    .line 128
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler$1;->val$myCookie:Ljava/lang/Object;

    iput-object v2, v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryArgs;->cookies:Ljava/lang/Object;

    .line 129
    iget v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler$1;->val$myToken:I

    iput v2, v0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryArgs;->token:I

    .line 131
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler$1;->this$1:Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 132
    .local v1, reply:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 134
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/bookmarkloader/BookmarkWithTagFilterDatabaseLoader$QueryHandler$1;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method

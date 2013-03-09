.class Lcom/google/android/talk/util/ChatList$1;
.super Landroid/content/AsyncQueryHandler;
.source "ChatList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/util/ChatList;-><init>(Landroid/app/Activity;JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/util/ChatList;

.field final synthetic val$onQueryCompleteCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/talk/util/ChatList;Landroid/content/ContentResolver;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/talk/util/ChatList$1;->this$0:Lcom/google/android/talk/util/ChatList;

    iput-object p3, p0, Lcom/google/android/talk/util/ChatList$1;->val$onQueryCompleteCallback:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 147
    const-string v0, "talk"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList$1;->this$0:Lcom/google/android/talk/util/ChatList;

    const-string v1, "AsyncQueryHandler.onQueryComplete"

    #calls: Lcom/google/android/talk/util/ChatList;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/util/ChatList;->access$000(Lcom/google/android/talk/util/ChatList;Ljava/lang/String;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList$1;->this$0:Lcom/google/android/talk/util/ChatList;

    #getter for: Lcom/google/android/talk/util/ChatList;->mSuspendQueries:Z
    invoke-static {v0}, Lcom/google/android/talk/util/ChatList;->access$100(Lcom/google/android/talk/util/ChatList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    .end local p2
    :cond_1
    :goto_0
    return-void

    .line 158
    .restart local p2
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList$1;->this$0:Lcom/google/android/talk/util/ChatList;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    #calls: Lcom/google/android/talk/util/ChatList;->cacheCursorData(Landroid/database/Cursor;Z)V
    invoke-static {v0, p3, v1}, Lcom/google/android/talk/util/ChatList;->access$200(Lcom/google/android/talk/util/ChatList;Landroid/database/Cursor;Z)V

    .line 159
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList$1;->this$0:Lcom/google/android/talk/util/ChatList;

    #calls: Lcom/google/android/talk/util/ChatList;->checkContentObserver(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/google/android/talk/util/ChatList;->access$300(Lcom/google/android/talk/util/ChatList;Landroid/database/Cursor;)V

    .line 160
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 162
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList$1;->val$onQueryCompleteCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList$1;->val$onQueryCompleteCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

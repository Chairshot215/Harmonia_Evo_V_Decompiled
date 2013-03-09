.class Lcom/google/android/talk/util/ChatList$2;
.super Landroid/database/ContentObserver;
.source "ChatList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/util/ChatList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/util/ChatList;


# direct methods
.method constructor <init>(Lcom/google/android/talk/util/ChatList;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/talk/util/ChatList$2;->this$0:Lcom/google/android/talk/util/ChatList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 175
    const-string v0, "talk"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList$2;->this$0:Lcom/google/android/talk/util/ChatList;

    const-string v1, "SwitcherAdapter.mContentObserver.onChange"

    #calls: Lcom/google/android/talk/util/ChatList;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/util/ChatList;->access$000(Lcom/google/android/talk/util/ChatList;Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/util/ChatList$2;->this$0:Lcom/google/android/talk/util/ChatList;

    const/4 v1, 0x0

    #calls: Lcom/google/android/talk/util/ChatList;->requery(Z)V
    invoke-static {v0, v1}, Lcom/google/android/talk/util/ChatList;->access$400(Lcom/google/android/talk/util/ChatList;Z)V

    .line 179
    return-void
.end method

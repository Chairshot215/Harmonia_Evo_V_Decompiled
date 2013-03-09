.class Lcom/android/mms/ui/ConversationList$DeleteMessageListener;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private mDeleteUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationList;J)V
    .locals 3
    .parameter
    .parameter "msgId"

    .prologue
    .line 2273
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2274
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    .line 2275
    const-string v0, "ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 2279
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v2, :cond_0

    .line 2280
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 2282
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2283
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    move-result-object v2

    const/16 v3, 0x4e2d

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2285
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;-><init>()V

    .line 2286
    .local v0, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 2287
    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 2288
    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 2289
    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 2290
    iput-object v4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 2292
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2293
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->ThreadListHandler:Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/ConversationList$ConversationListQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2294
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListAdapter;->setAutoQueryCursor(Z)V

    .line 2297
    .end local v0           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

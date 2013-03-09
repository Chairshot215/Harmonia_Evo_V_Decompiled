.class Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;
.super Landroid/database/ContentObserver;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyActivityItemStatusContentObserver"
.end annotation


# instance fields
.field private final mItemItem:Lcom/htc/store/module/vo/ItemItem;

.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Landroid/os/Handler;Lcom/htc/store/module/vo/ItemItem;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "item"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    .line 243
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 244
    iput-object p3, p0, Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    .line 245
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x3

    .line 249
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onChange MyActivityItemStatusContentObserver"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$200(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$200(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->removeMessages(I)V

    .line 252
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$200(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;->mItemItem:Lcom/htc/store/module/vo/ItemItem;

    invoke-static {v1, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 253
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$MyActivityItemStatusContentObserver;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$200(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    return-void
.end method

.class Lcom/htc/store/activity/list/ListItem$1;
.super Landroid/database/ContentObserver;
.source "ListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/list/ListItem;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/list/ListItem;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/list/ListItem;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/store/activity/list/ListItem$1;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x1

    .line 111
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onChange: "

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$1;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mNonUiHandler:Lcom/htc/store/activity/list/ListItem$NonUiHandler;

    invoke-virtual {v0, v4}, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->removeMessages(I)V

    .line 113
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$1;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListItem;->mNonUiHandler:Lcom/htc/store/activity/list/ListItem$NonUiHandler;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v4, v1, v2}, Lcom/htc/store/activity/list/ListItem$NonUiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    return-void
.end method

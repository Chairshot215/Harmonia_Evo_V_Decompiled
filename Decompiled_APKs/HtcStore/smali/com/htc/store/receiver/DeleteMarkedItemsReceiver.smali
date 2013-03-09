.class public Lcom/htc/store/receiver/DeleteMarkedItemsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeleteMarkedItemsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;
    }
.end annotation


# static fields
.field public static final BROADCAST_ACTION_DELETE_MARKED_ITEM:Ljava/lang/String; = "com.htc.store.delete.marked.item"

.field public static final EXTRA_INDEX:Ljava/lang/String; = "delete_marked_item_index"

.field public static final EXTRA_MARKED_ID:Ljava/lang/String; = "delete_marked_item_marked_id"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.store.delete.marked.item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "delete_marked_item_marked_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, markedId:Ljava/lang/String;
    const-string v0, "delete_marked_item_index"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 29
    .local v4, index:J
    new-instance v0, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;-><init>(Lcom/htc/store/receiver/DeleteMarkedItemsReceiver;Landroid/content/Context;Ljava/lang/String;J)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/receiver/DeleteMarkedItemsReceiver$DeleteMarkedItem;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    .end local v3           #markedId:Ljava/lang/String;
    .end local v4           #index:J
    :cond_0
    return-void
.end method

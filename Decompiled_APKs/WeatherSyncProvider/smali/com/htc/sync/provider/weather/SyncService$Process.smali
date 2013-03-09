.class Lcom/htc/sync/provider/weather/SyncService$Process;
.super Ljava/lang/Thread;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sync/provider/weather/SyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Process"
.end annotation


# static fields
.field private static final THREAD_PREFIX:Ljava/lang/String; = "[SyncService] (Process) "


# instance fields
.field private _categoryName:Ljava/lang/String;

.field private _requests:[Landroid/os/Parcelable;

.field private _source:I

.field final synthetic this$0:Lcom/htc/sync/provider/weather/SyncService;


# direct methods
.method public constructor <init>(Lcom/htc/sync/provider/weather/SyncService;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 100
    iput-object p1, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->_categoryName:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->_requests:[Landroid/os/Parcelable;

    .line 98
    iput v1, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->_source:I

    .line 101
    const-string v0, "categoryName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->_categoryName:Ljava/lang/String;

    .line 102
    const-string v0, "requests"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->_requests:[Landroid/os/Parcelable;

    .line 103
    const-string v0, "source"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->_source:I

    .line 104
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/16 v12, 0x64

    const/4 v11, 0x1

    .line 108
    new-instance v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;

    iget-object v9, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    invoke-direct {v4, v9, v10}, Lcom/htc/sync/provider/weather/SyncService$QueueItem;-><init>(Lcom/htc/sync/provider/weather/SyncService;Lcom/htc/sync/provider/weather/SyncService$1;)V

    .line 109
    .local v4, queueItem:Lcom/htc/sync/provider/weather/SyncService$QueueItem;
    iget v9, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->_source:I

    iput v9, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->source:I

    .line 110
    iget-object v9, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->_categoryName:Ljava/lang/String;

    iput-object v9, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->categoryName:Ljava/lang/String;

    .line 112
    const/4 v9, 0x2

    iget v10, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->source:I

    if-ne v9, v10, :cond_1

    .line 113
    iput v12, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->priority:I

    .line 114
    iget-object v9, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->_requests:[Landroid/os/Parcelable;

    iput-object v9, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->requests:[Landroid/os/Parcelable;

    .line 128
    :goto_0
    iget-object v9, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->requests:[Landroid/os/Parcelable;

    array-length v9, v9

    if-ge v9, v11, :cond_4

    .line 172
    :cond_0
    :goto_1
    return-void

    .line 115
    :cond_1
    iget v9, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->source:I

    if-ne v11, v9, :cond_2

    .line 116
    iput v12, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->priority:I

    .line 117
    iget-object v9, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->_requests:[Landroid/os/Parcelable;

    iput-object v9, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->requests:[Landroid/os/Parcelable;

    goto :goto_0

    .line 118
    :cond_2
    const/4 v9, 0x3

    iget v10, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->source:I

    if-ne v9, v10, :cond_3

    .line 119
    iput v12, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->priority:I

    .line 120
    iget-object v9, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    invoke-static {v9}, Lcom/htc/sync/provider/weather/Helper;->getOverCustomTimeItems(Landroid/content/Context;)[Lcom/htc/util/weather/WSPRequest;

    move-result-object v9

    check-cast v9, [Landroid/os/Parcelable;

    iput-object v9, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->requests:[Landroid/os/Parcelable;

    goto :goto_0

    .line 122
    :cond_3
    const-string v9, "WSP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SyncService] (Process) unknown trigger source: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->source:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 132
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v8, urgentItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/weather/WSPRequest;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v6, syncItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/weather/WSPRequest;>;"
    iget-object v0, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->requests:[Landroid/os/Parcelable;

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v3, :cond_6

    aget-object v2, v0, v1

    .local v2, item:Landroid/os/Parcelable;
    move-object v5, v2

    .line 135
    check-cast v5, Lcom/htc/util/weather/WSPRequest;

    .line 136
    .local v5, req:Lcom/htc/util/weather/WSPRequest;
    invoke-virtual {v5}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v9

    if-ne v9, v11, :cond_5

    .line 137
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 139
    :cond_5
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 145
    .end local v2           #item:Landroid/os/Parcelable;
    .end local v5           #req:Lcom/htc/util/weather/WSPRequest;
    :cond_6
    :try_start_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 146
    new-instance v7, Lcom/htc/sync/provider/weather/SyncService$QueueItem;

    iget-object v9, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Lcom/htc/sync/provider/weather/SyncService$QueueItem;-><init>(Lcom/htc/sync/provider/weather/SyncService;Lcom/htc/sync/provider/weather/SyncService$1;)V

    .line 147
    .local v7, urgent:Lcom/htc/sync/provider/weather/SyncService$QueueItem;
    iget v9, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->source:I

    iput v9, v7, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->source:I

    .line 148
    iget-object v9, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->categoryName:Ljava/lang/String;

    iput-object v9, v7, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->categoryName:Ljava/lang/String;

    .line 149
    const/16 v9, 0x32

    iput v9, v7, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->priority:I

    .line 150
    const/4 v9, 0x0

    new-array v9, v9, [Lcom/htc/util/weather/WSPRequest;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/os/Parcelable;

    iput-object v9, v7, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->requests:[Landroid/os/Parcelable;

    .line 154
    iget-object v9, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    #getter for: Lcom/htc/sync/provider/weather/SyncService;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v9}, Lcom/htc/sync/provider/weather/SyncService;->access$200(Lcom/htc/sync/provider/weather/SyncService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 157
    .end local v7           #urgent:Lcom/htc/sync/provider/weather/SyncService$QueueItem;
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 158
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/weather/WSPRequest;

    .line 159
    .restart local v5       #req:Lcom/htc/util/weather/WSPRequest;
    new-instance v2, Lcom/htc/sync/provider/weather/SyncService$QueueItem;

    iget-object v9, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    const/4 v10, 0x0

    invoke-direct {v2, v9, v10}, Lcom/htc/sync/provider/weather/SyncService$QueueItem;-><init>(Lcom/htc/sync/provider/weather/SyncService;Lcom/htc/sync/provider/weather/SyncService$1;)V

    .line 160
    .local v2, item:Lcom/htc/sync/provider/weather/SyncService$QueueItem;
    iget v9, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->source:I

    iput v9, v2, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->source:I

    .line 161
    iget-object v9, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->categoryName:Ljava/lang/String;

    iput-object v9, v2, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->categoryName:Ljava/lang/String;

    .line 162
    iget v9, v4, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->priority:I

    iput v9, v2, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->priority:I

    .line 163
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/htc/util/weather/WSPRequest;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    iput-object v9, v2, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->requests:[Landroid/os/Parcelable;

    .line 165
    iget-object v9, p0, Lcom/htc/sync/provider/weather/SyncService$Process;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    #getter for: Lcom/htc/sync/provider/weather/SyncService;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v9}, Lcom/htc/sync/provider/weather/SyncService;->access$200(Lcom/htc/sync/provider/weather/SyncService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 170
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/htc/sync/provider/weather/SyncService$QueueItem;
    .end local v5           #req:Lcom/htc/util/weather/WSPRequest;
    :catch_0
    move-exception v9

    goto/16 :goto_1
.end method

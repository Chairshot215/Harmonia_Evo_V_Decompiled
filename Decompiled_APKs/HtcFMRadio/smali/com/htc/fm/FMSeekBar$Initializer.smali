.class Lcom/htc/fm/FMSeekBar$Initializer;
.super Ljava/lang/Object;
.source "FMSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Initializer"
.end annotation


# instance fields
.field private allSyncValues:[Lcom/htc/fm/FMSeekBar$SyncValues;

.field final synthetic this$0:Lcom/htc/fm/FMSeekBar;


# direct methods
.method public constructor <init>(Lcom/htc/fm/FMSeekBar;[Lcom/htc/fm/FMSeekBar$SyncValues;)V
    .locals 0
    .parameter
    .parameter "syncValues"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/htc/fm/FMSeekBar$Initializer;->this$0:Lcom/htc/fm/FMSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p2, p0, Lcom/htc/fm/FMSeekBar$Initializer;->allSyncValues:[Lcom/htc/fm/FMSeekBar$SyncValues;

    .line 367
    return-void
.end method

.method static synthetic access$200(Lcom/htc/fm/FMSeekBar$Initializer;)[Lcom/htc/fm/FMSeekBar$SyncValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar$Initializer;->allSyncValues:[Lcom/htc/fm/FMSeekBar$SyncValues;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 371
    const/4 v3, 0x0

    .line 372
    .local v3, prevSyncValue:Lcom/htc/fm/FMSeekBar$SyncValues;
    :try_start_0
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar$Initializer;->allSyncValues:[Lcom/htc/fm/FMSeekBar$SyncValues;

    .local v0, arr$:[Lcom/htc/fm/FMSeekBar$SyncValues;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 373
    .local v5, syncValues:Lcom/htc/fm/FMSeekBar$SyncValues;
    invoke-virtual {v5, v3}, Lcom/htc/fm/FMSeekBar$SyncValues;->init(Lcom/htc/fm/FMSeekBar$SyncValues;)V

    .line 374
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/htc/fm/FMSeekBar$SyncValues;->getInitFreq()I

    move-result v6

    move v8, v6

    :goto_1
    invoke-virtual {v5}, Lcom/htc/fm/FMSeekBar$SyncValues;->getInitFreq()I

    move-result v9

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/htc/fm/FMSeekBar$SyncValues;->getSyncPixel()I

    move-result v6

    :goto_2
    invoke-virtual {v5}, Lcom/htc/fm/FMSeekBar$SyncValues;->getSyncPixel()I

    move-result v10

    #calls: Lcom/htc/fm/FMSeekBar$SyncInterval;->build(IIII)Lcom/htc/fm/FMSeekBar$SyncInterval;
    invoke-static {v8, v9, v6, v10}, Lcom/htc/fm/FMSeekBar$SyncInterval;->access$000(IIII)Lcom/htc/fm/FMSeekBar$SyncInterval;

    move-result-object v4

    .line 376
    .local v4, syncInterval:Lcom/htc/fm/FMSeekBar$SyncInterval;
    iget-object v6, p0, Lcom/htc/fm/FMSeekBar$Initializer;->this$0:Lcom/htc/fm/FMSeekBar;

    #getter for: Lcom/htc/fm/FMSeekBar;->mSyncHashMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/htc/fm/FMSeekBar;->access$100(Lcom/htc/fm/FMSeekBar;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    move-object v3, v5

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #syncInterval:Lcom/htc/fm/FMSeekBar$SyncInterval;
    :cond_0
    move v8, v7

    .line 374
    goto :goto_1

    :cond_1
    move v6, v7

    goto :goto_2

    .line 380
    .end local v5           #syncValues:Lcom/htc/fm/FMSeekBar$SyncValues;
    :cond_2
    iget-object v6, p0, Lcom/htc/fm/FMSeekBar$Initializer;->this$0:Lcom/htc/fm/FMSeekBar;

    new-instance v7, Lcom/htc/fm/FMSeekBar$Initializer$1;

    invoke-direct {v7, p0}, Lcom/htc/fm/FMSeekBar$Initializer$1;-><init>(Lcom/htc/fm/FMSeekBar$Initializer;)V

    invoke-virtual {v6, v7}, Lcom/htc/fm/FMSeekBar;->post(Ljava/lang/Runnable;)Z

    .line 386
    return-void

    .line 380
    .end local v0           #arr$:[Lcom/htc/fm/FMSeekBar$SyncValues;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/htc/fm/FMSeekBar$Initializer;->this$0:Lcom/htc/fm/FMSeekBar;

    new-instance v8, Lcom/htc/fm/FMSeekBar$Initializer$1;

    invoke-direct {v8, p0}, Lcom/htc/fm/FMSeekBar$Initializer$1;-><init>(Lcom/htc/fm/FMSeekBar$Initializer;)V

    invoke-virtual {v7, v8}, Lcom/htc/fm/FMSeekBar;->post(Ljava/lang/Runnable;)Z

    throw v6
.end method

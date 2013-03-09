.class Lcom/htc/sync/provider/weather/SyncService$QueueItem;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sync/provider/weather/SyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/sync/provider/weather/SyncService$QueueItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_HIGH:I = 0x64

.field public static final PRIORITY_LOW:I = 0x64

.field public static final PRIORITY_NORMAL:I = 0x64

.field public static final PRIORITY_URGENT:I = 0x32


# instance fields
.field public categoryName:Ljava/lang/String;

.field public priority:I

.field public requests:[Landroid/os/Parcelable;

.field public source:I

.field final synthetic this$0:Lcom/htc/sync/provider/weather/SyncService;


# direct methods
.method private constructor <init>(Lcom/htc/sync/provider/weather/SyncService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 28
    iput-object p1, p0, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->this$0:Lcom/htc/sync/provider/weather/SyncService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->priority:I

    .line 30
    iput-object v1, p0, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->categoryName:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->requests:[Landroid/os/Parcelable;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->source:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sync/provider/weather/SyncService;Lcom/htc/sync/provider/weather/SyncService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/sync/provider/weather/SyncService$QueueItem;-><init>(Lcom/htc/sync/provider/weather/SyncService;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/sync/provider/weather/SyncService$QueueItem;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 36
    iget v0, p0, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->priority:I

    iget v1, p1, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->priority:I

    if-ne v0, v1, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    .line 38
    :cond_0
    iget v0, p0, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->priority:I

    iget v1, p1, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->priority:I

    if-le v0, v1, :cond_1

    .line 39
    const/4 v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Lcom/htc/sync/provider/weather/SyncService$QueueItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sync/provider/weather/SyncService$QueueItem;->compareTo(Lcom/htc/sync/provider/weather/SyncService$QueueItem;)I

    move-result v0

    return v0
.end method

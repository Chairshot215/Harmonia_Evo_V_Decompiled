.class public Leu/chainfire/supersu/PromptQueue;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/ArrayList;

.field private static b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Leu/chainfire/supersu/PromptQueue;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Leu/chainfire/supersu/PromptQueue;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILeu/chainfire/supersu/PromptQueue$Entry;Z)I
    .locals 12

    const/4 v0, -0x1

    sget-object v5, Leu/chainfire/supersu/PromptQueue;->a:Ljava/util/ArrayList;

    monitor-enter v5

    :cond_0
    move v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    :goto_1
    const/4 v0, -0x1

    if-eq v1, v0, :cond_8

    if-eqz p2, :cond_8

    sget-object v0, Leu/chainfire/supersu/PromptQueue;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, -0x1

    const/4 v0, 0x1

    move v4, v0

    :goto_2
    const/4 v0, -0x1

    if-ne v1, v0, :cond_7

    if-eqz p1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sget-object v0, Leu/chainfire/supersu/PromptQueue;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_3
    if-gez v2, :cond_3

    const/4 v2, 0x0

    sget-object v0, Leu/chainfire/supersu/PromptQueue;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_4
    if-gez v3, :cond_5

    move v0, v2

    :goto_5
    if-nez v0, :cond_7

    new-instance v0, Leu/chainfire/supersu/PromptQueue;

    invoke-direct {v0}, Leu/chainfire/supersu/PromptQueue;-><init>()V

    iget v1, p1, Leu/chainfire/supersu/PromptQueue$Entry;->d:I

    new-instance v2, Leu/chainfire/supersu/PromptQueue$HistoricEntry;

    invoke-direct {v2, v0}, Leu/chainfire/supersu/PromptQueue$HistoricEntry;-><init>(Leu/chainfire/supersu/PromptQueue;)V

    iput p0, v2, Leu/chainfire/supersu/PromptQueue$HistoricEntry;->a:I

    iput v1, v2, Leu/chainfire/supersu/PromptQueue$HistoricEntry;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v2, Leu/chainfire/supersu/PromptQueue$HistoricEntry;->c:J

    sget-object v0, Leu/chainfire/supersu/PromptQueue;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Leu/chainfire/supersu/PromptQueue;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Leu/chainfire/supersu/PromptQueue;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-nez v4, :cond_0

    monitor-exit v5

    return v0

    :cond_1
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/PromptQueue$Entry;

    iget v0, v0, Leu/chainfire/supersu/PromptQueue$Entry;->a:I

    if-ne v0, p0, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/PromptQueue$HistoricEntry;

    iget-wide v8, v0, Leu/chainfire/supersu/PromptQueue$HistoricEntry;->c:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0x927c0

    cmp-long v0, v8, v10

    if-lez v0, :cond_4

    sget-object v0, Leu/chainfire/supersu/PromptQueue;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_3

    :cond_5
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/PromptQueue$HistoricEntry;

    iget v6, v0, Leu/chainfire/supersu/PromptQueue$HistoricEntry;->a:I

    if-ne v6, p0, :cond_6

    iget v0, v0, Leu/chainfire/supersu/PromptQueue$HistoricEntry;->b:I

    iget v6, p1, Leu/chainfire/supersu/PromptQueue$Entry;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v6, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    move v4, v2

    goto/16 :goto_2
.end method

.method public static a(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Leu/chainfire/supersu/PromptQueue;->a(ILeu/chainfire/supersu/PromptQueue$Entry;Z)I

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Leu/chainfire/supersu/PromptQueue;

    invoke-direct {v1}, Leu/chainfire/supersu/PromptQueue;-><init>()V

    new-instance v2, Leu/chainfire/supersu/PromptQueue$Entry;

    invoke-direct {v2, v1}, Leu/chainfire/supersu/PromptQueue$Entry;-><init>(Leu/chainfire/supersu/PromptQueue;)V

    iput p0, v2, Leu/chainfire/supersu/PromptQueue$Entry;->a:I

    iput-object p1, v2, Leu/chainfire/supersu/PromptQueue$Entry;->b:Ljava/lang/String;

    iput-object p2, v2, Leu/chainfire/supersu/PromptQueue$Entry;->c:Ljava/lang/String;

    iput p3, v2, Leu/chainfire/supersu/PromptQueue$Entry;->d:I

    iput p4, v2, Leu/chainfire/supersu/PromptQueue$Entry;->e:I

    iput-object p5, v2, Leu/chainfire/supersu/PromptQueue$Entry;->f:Ljava/lang/String;

    iget v1, v2, Leu/chainfire/supersu/PromptQueue$Entry;->a:I

    invoke-static {v1, v2, v0}, Leu/chainfire/supersu/PromptQueue;->a(ILeu/chainfire/supersu/PromptQueue$Entry;Z)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Leu/chainfire/supersu/PromptQueue;->a:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    sget-object v0, Leu/chainfire/supersu/PromptQueue;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Leu/chainfire/supersu/PromptQueue;->a:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/PromptQueue$Entry;

    move-object v6, v0

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    new-instance v3, Leu/chainfire/supersu/Settings;

    invoke-direct {v3, p0}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    iget-object v0, v6, Leu/chainfire/supersu/PromptQueue$Entry;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v6, Leu/chainfire/supersu/PromptQueue$Entry;->c:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v0}, Leu/chainfire/supersu/Settings;->a(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iget-boolean v3, v0, Leu/chainfire/supersu/Settings$App;->a:Z

    if-nez v3, :cond_1

    iget v3, v0, Leu/chainfire/supersu/Settings$App;->i:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget v3, v6, Leu/chainfire/supersu/PromptQueue$Entry;->a:I

    iget v4, v0, Leu/chainfire/supersu/Settings$App;->i:I

    invoke-virtual {v0, v3, v4}, Leu/chainfire/supersu/Settings$App;->a(II)V

    iget v0, v6, Leu/chainfire/supersu/PromptQueue$Entry;->a:I

    invoke-static {v0, v2, v7}, Leu/chainfire/supersu/PromptQueue;->a(ILeu/chainfire/supersu/PromptQueue$Entry;Z)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_0
    iget-object v0, v6, Leu/chainfire/supersu/PromptQueue$Entry;->b:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->f()V

    iget v1, v6, Leu/chainfire/supersu/PromptQueue$Entry;->a:I

    iget-object v2, v6, Leu/chainfire/supersu/PromptQueue$Entry;->b:Ljava/lang/String;

    iget-object v3, v6, Leu/chainfire/supersu/PromptQueue$Entry;->c:Ljava/lang/String;

    iget v4, v6, Leu/chainfire/supersu/PromptQueue$Entry;->d:I

    iget v5, v6, Leu/chainfire/supersu/PromptQueue$Entry;->e:I

    iget-object v6, v6, Leu/chainfire/supersu/PromptQueue$Entry;->f:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Leu/chainfire/supersu/PromptActivity;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    move v0, v7

    :goto_3
    return v0

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    move-object v6, v2

    goto :goto_1
.end method

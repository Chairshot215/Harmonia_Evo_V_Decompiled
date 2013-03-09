.class public Lcom/android/mms/layout/LayoutManager;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "LayoutManager"

.field private static sInstance:Lcom/android/mms/layout/LayoutManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLayoutParams:Lcom/android/mms/layout/LayoutParameters;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/mms/layout/LayoutManager;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/layout/LayoutManager;->initLayoutParameters(Landroid/content/res/Configuration;)V

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/android/mms/layout/LayoutManager;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    if-nez v0, :cond_1

    .line 85
    const-class v1, Lcom/android/mms/layout/LayoutManager;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    .line 89
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getLayoutParameters(I)Lcom/android/mms/layout/LayoutParameters;
    .locals 3
    .parameter "displayType"

    .prologue
    .line 59
    packed-switch p0, :pswitch_data_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported display type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_0
    new-instance v0, Lcom/android/mms/layout/HVGALayoutParameters;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/mms/layout/HVGALayoutParameters;-><init>(I)V

    .line 63
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/mms/layout/HVGALayoutParameters;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/mms/layout/HVGALayoutParameters;-><init>(I)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 75
    const-class v1, Lcom/android/mms/layout/LayoutManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "LayoutManager"

    const-string v2, "Already initialized."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    monitor-exit v1

    return-void

    .line 79
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/mms/layout/LayoutManager;

    invoke-direct {v0, p0}, Lcom/android/mms/layout/LayoutManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initLayoutParameters(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "configuration"

    .prologue
    .line 47
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xb

    :goto_0
    invoke-static {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters(I)Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 56
    return-void

    .line 47
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method


# virtual methods
.method public getLayoutHeight()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    return-object v0
.end method

.method public getLayoutType()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getType()I

    move-result v0

    return v0
.end method

.method public getLayoutWidth()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/mms/layout/LayoutManager;->initLayoutParameters(Landroid/content/res/Configuration;)V

    .line 101
    return-void
.end method

.class Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewsMetaData"
.end annotation


# instance fields
.field count:I

.field hasStableIds:Z

.field mFirstView:Landroid/widget/RemoteViews;

.field mFirstViewHeight:I

.field private final mTypeIdIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUserLoadingView:Landroid/widget/RemoteViews;

.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;

.field viewTypeCount:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    return-void
.end method

.method static synthetic access$1600(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method private createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .locals 12

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {v5, v8, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/widget/RemoteViewsAdapter;Landroid/content/Context;)V

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    #getter for: Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v8}, Landroid/widget/RemoteViewsAdapter;->access$400(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v9

    monitor-enter v9

    const/4 v1, 0x0

    :try_start_0
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    :try_start_1
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v8, 0x1020225

    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v10}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    invoke-virtual {v5, v7}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    :try_start_2
    iget v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez v8, :cond_1

    :try_start_3
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v8, v10, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v4, v8, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iput v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    :try_start_4
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    #getter for: Landroid/widget/RemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v8}, Landroid/widget/RemoteViewsAdapter;->access$1200(Landroid/widget/RemoteViewsAdapter;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v10, 0x109007e

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setHeight(I)V

    new-instance v8, Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    monitor-exit v9

    return-object v5

    :catch_0
    move-exception v3

    const-string v8, "RemoteViewsAdapter"

    const-string v10, "Error inflating custom loading view, using default loadingview instead"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    :catch_1
    move-exception v3

    :try_start_5
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->this$0:Landroid/widget/RemoteViewsAdapter;

    #getter for: Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/widget/RemoteViewsAdapter;->access$1100(Landroid/widget/RemoteViewsAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x4248

    mul-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    const-string v8, "RemoteViewsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error inflating first RemoteViews"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getMappedViewType(I)I
    .locals 4

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    iput v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public set(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V
    .locals 2

    monitor-enter p1

    :try_start_0
    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    iget-boolean v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    iget-object v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    iget-object v1, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mUserLoadingView:Landroid/widget/RemoteViews;

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstView:Landroid/widget/RemoteViews;

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->mFirstViewHeight:I

    :cond_0
    return-void
.end method

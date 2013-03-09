.class public Lcom/google/android/feedback/PreviewActivity;
.super Landroid/app/Activity;
.source "PreviewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAdapter:Lcom/google/android/feedback/ErrorReportAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x8

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v3, 0x7f030006

    invoke-virtual {p0, v3}, Lcom/google/android/feedback/PreviewActivity;->setContentView(I)V

    .line 49
    const/high16 v3, 0x7f08

    invoke-virtual {p0, v3}, Lcom/google/android/feedback/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    const v3, 0x7f080002

    invoke-virtual {p0, v3}, Lcom/google/android/feedback/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 51
    const v3, 0x7f080003

    invoke-virtual {p0, v3}, Lcom/google/android/feedback/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 53
    const v3, 0x7f080001

    invoke-virtual {p0, v3}, Lcom/google/android/feedback/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/google/android/feedback/PreviewActivity$1;

    invoke-direct {v4, p0}, Lcom/google/android/feedback/PreviewActivity$1;-><init>(Lcom/google/android/feedback/PreviewActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-static {}, Lcom/google/android/feedback/FeedbackActivity;->getReport()Lcom/google/android/feedback/ExtendedErrorReport;

    move-result-object v2

    .line 61
    .local v2, report:Lcom/google/android/feedback/ExtendedErrorReport;
    if-nez v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/google/android/feedback/PreviewActivity;->finish()V

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    :try_start_0
    new-instance v3, Lcom/google/android/feedback/ErrorReportAdapter;

    invoke-direct {v3, p0, v2}, Lcom/google/android/feedback/ErrorReportAdapter;-><init>(Landroid/content/Context;Lcom/google/android/feedback/ExtendedErrorReport;)V

    iput-object v3, p0, Lcom/google/android/feedback/PreviewActivity;->mAdapter:Lcom/google/android/feedback/ErrorReportAdapter;

    .line 68
    const v3, 0x7f080017

    invoke-virtual {p0, v3}, Lcom/google/android/feedback/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 69
    .local v1, listView:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/google/android/feedback/PreviewActivity;->mAdapter:Lcom/google/android/feedback/ErrorReportAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v1           #listView:Landroid/widget/ListView;
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v3, "PreviewActivity"

    const-string v4, "failed to read in report fields"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/feedback/PreviewActivity;->mAdapter:Lcom/google/android/feedback/ErrorReportAdapter;

    invoke-virtual {v0, p3}, Lcom/google/android/feedback/ErrorReportAdapter;->onListItemClick(I)V

    .line 79
    return-void
.end method

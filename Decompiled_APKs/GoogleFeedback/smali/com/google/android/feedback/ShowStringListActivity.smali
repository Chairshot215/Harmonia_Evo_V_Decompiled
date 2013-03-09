.class public Lcom/google/android/feedback/ShowStringListActivity;
.super Landroid/app/Activity;
.source "ShowStringListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f080017

    const/16 v7, 0x8

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v5, 0x7f030006

    invoke-virtual {p0, v5}, Lcom/google/android/feedback/ShowStringListActivity;->setContentView(I)V

    .line 40
    const/high16 v5, 0x7f08

    invoke-virtual {p0, v5}, Lcom/google/android/feedback/ShowStringListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 41
    const v5, 0x7f080002

    invoke-virtual {p0, v5}, Lcom/google/android/feedback/ShowStringListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 42
    const v5, 0x7f080003

    invoke-virtual {p0, v5}, Lcom/google/android/feedback/ShowStringListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 44
    const v5, 0x7f080001

    invoke-virtual {p0, v5}, Lcom/google/android/feedback/ShowStringListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/google/android/feedback/ShowStringListActivity$1;

    invoke-direct {v6, p0}, Lcom/google/android/feedback/ShowStringListActivity$1;-><init>(Lcom/google/android/feedback/ShowStringListActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/feedback/ShowStringListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "feedback.FIELD_NAME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, field:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/feedback/FeedbackActivity;->getReport()Lcom/google/android/feedback/ExtendedErrorReport;

    move-result-object v4

    .line 54
    .local v4, report:Lcom/google/android/feedback/ExtendedErrorReport;
    if-nez v4, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/google/android/feedback/ShowStringListActivity;->finish()V

    .line 77
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v2, 0x0

    .line 60
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "installedPackages"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    iget-object v2, v4, Lcom/google/android/feedback/ExtendedErrorReport;->installedPackages:Ljava/util/List;

    .line 62
    const v5, 0x7f060044

    invoke-virtual {p0, v5}, Lcom/google/android/feedback/ShowStringListActivity;->setTitle(I)V

    .line 68
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 69
    invoke-virtual {p0, v8}, Lcom/google/android/feedback/ShowStringListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 70
    const v5, 0x7f080018

    invoke-virtual {p0, v5}, Lcom/google/android/feedback/ShowStringListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 63
    :cond_2
    const-string v5, "runningApplications"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    iget-object v2, v4, Lcom/google/android/feedback/ExtendedErrorReport;->runningApplications:Ljava/util/List;

    .line 65
    const v5, 0x7f060045

    invoke-virtual {p0, v5}, Lcom/google/android/feedback/ShowStringListActivity;->setTitle(I)V

    goto :goto_1

    .line 72
    :cond_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v0, p0, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 74
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v8}, Lcom/google/android/feedback/ShowStringListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 75
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.class public Lcom/google/android/partnersetup/RlzDebugViewListActivity;
.super Landroid/app/Activity;
.source "RlzDebugViewListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mEmpty:Landroid/widget/TextView;

.field private mList:Landroid/widget/ListView;

.field private mSelectOrder:Landroid/widget/Spinner;

.field private mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/partnersetup/RlzDebugViewListActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/partnersetup/RlzDebugViewListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/partnersetup/RlzDebugViewListActivity;)Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/partnersetup/RlzDebugViewListActivity;)Landroid/widget/SimpleCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f020001

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->setContentView(I)V

    .line 84
    const v0, 0x7f050015

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mSelectOrder:Landroid/widget/Spinner;

    .line 85
    const v0, 0x7f050016

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mList:Landroid/widget/ListView;

    .line 86
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mEmpty:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 90
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "com.google.android.partnersetup.intents.EXTRA_VIEW_TYPE"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 93
    .local v6, action:I
    packed-switch v6, :pswitch_data_0

    .line 104
    const-string v0, "RlzDebugViewListActivity"

    const-string v1, "Unknown view type."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 95
    :pswitch_0
    new-instance v0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;

    invoke-direct {v0, p0}, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    .line 108
    :goto_1
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    invoke-interface {v0}, Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;->getActivityTitleResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->setTitle(I)V

    .line 110
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mEmpty:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;->getListEmptyStringResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x109000d

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;->getProjection()[Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;->getOutColumns()[I

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 115
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;->getViewBinder()Landroid/widget/SimpleCursorAdapter$ViewBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;->buildItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v0, 0x1090008

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;->getSortColumns()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 121
    .local v8, sortChoices:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v0, 0x1090009

    invoke-virtual {v8, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mSelectOrder:Landroid/widget/Spinner;

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mSelectOrder:Landroid/widget/Spinner;

    new-instance v1, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/partnersetup/RlzDebugViewListActivity$1;-><init>(Lcom/google/android/partnersetup/RlzDebugViewListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mSelectOrder:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;->getDefaultSortOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 98
    .end local v8           #sortChoices:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :pswitch_1
    new-instance v0, Lcom/google/android/partnersetup/RlzDebugViewAppInfo;

    invoke-direct {v0, p0}, Lcom/google/android/partnersetup/RlzDebugViewAppInfo;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    goto :goto_1

    .line 101
    :pswitch_2
    new-instance v0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;

    invoke-direct {v0, p0}, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewListActivity;->mViewInfo:Lcom/google/android/partnersetup/RlzDebugViewListActivity$ViewInfo;

    goto/16 :goto_1

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

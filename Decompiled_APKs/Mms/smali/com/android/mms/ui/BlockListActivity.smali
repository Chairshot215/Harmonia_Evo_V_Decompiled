.class public Lcom/android/mms/ui/BlockListActivity;
.super Lcom/htc/app/HtcListActivity;
.source "BlockListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BlockListActivity$BlocklistWorkingHandler;,
        Lcom/android/mms/ui/BlockListActivity$ListQueryHandler;
    }
.end annotation


# static fields
.field private static final Activity_ADD_BLOCK_NUMBER:I = 0x2

.field private static final Activity_DELETE_BLOCK_NUMBER:I = 0x3

.field static final BASE_URI:Landroid/net/Uri; = null

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_NUMBER:Ljava/lang/String; = "number"

.field private static final DEBUG:Z = false

.field private static final LIST_QUERY_TOKEN:I = 0x317

.field protected static final LOCAL_LOGV:Z = true

.field static final LOG_TAG:Ljava/lang/String; = null

.field private static final MENU_ADD_BLOCK_NUMBER:I = 0x1

.field private static final MENU_DELETE_BLOCK_NUMBER:I = 0x2

.field static final MSG_FILTER_CONTACT_NAME:I = 0x64

.field private static final PROJECTION:[Ljava/lang/String; = null

.field public static final UI_FILTER_CONTACT_CHANGE:I = 0x1


# instance fields
.field mAdapter:Lcom/android/mms/ui/BlockListAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mQueryHandler:Lcom/android/mms/ui/BlockListActivity$ListQueryHandler;

.field private mTitle:Lcom/htc/widget/HeaderBarText;

.field protected mUIlistenter:Lcom/android/mms/ui/MessagingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const-class v0, Lcom/android/mms/ui/BlockListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BlockListActivity;->LOG_TAG:Ljava/lang/String;

    .line 59
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_V2_URI:Landroid/net/Uri;

    const-string v1, "blocklist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/BlockListActivity;->BASE_URI:Landroid/net/Uri;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/BlockListActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 241
    new-instance v0, Lcom/android/mms/ui/BlockListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BlockListActivity$2;-><init>(Lcom/android/mms/ui/BlockListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BlockListActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BlockListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/BlockListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createHeaderView()Landroid/view/View;
    .locals 6

    .prologue
    .line 142
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, header:Landroid/view/View;
    const v3, 0x7f0e0051

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 145
    .local v2, text:Landroid/widget/TextView;
    const v3, 0x7f090332

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 146
    const v3, 0x7f0c0012

    invoke-virtual {v2, p0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/mms/ui/BlockListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 148
    .local v1, height:I
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 150
    new-instance v3, Lcom/android/mms/ui/BlockListActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/BlockListActivity$1;-><init>(Lcom/android/mms/ui/BlockListActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-object v0
.end method

.method private initWidgets()V
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/mms/ui/BlockListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 133
    .local v0, listView:Lcom/htc/widget/HtcListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 134
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 135
    invoke-direct {p0}, Lcom/android/mms/ui/BlockListActivity;->createHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 137
    new-instance v1, Lcom/android/mms/ui/BlockListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/BlockListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/mms/ui/BlockListActivity;->mAdapter:Lcom/android/mms/ui/BlockListAdapter;

    .line 138
    iget-object v1, p0, Lcom/android/mms/ui/BlockListActivity;->mAdapter:Lcom/android/mms/ui/BlockListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BlockListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    return-void
.end method

.method private startAsyncQuery()V
    .locals 9

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/BlockListActivity;->mQueryHandler:Lcom/android/mms/ui/BlockListActivity$ListQueryHandler;

    const/16 v1, 0x317

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BlockListActivity$ListQueryHandler;->cancelOperation(I)V

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/BlockListActivity;->mQueryHandler:Lcom/android/mms/ui/BlockListActivity$ListQueryHandler;

    const/16 v1, 0x317

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/ui/BlockListActivity;->BASE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/BlockListActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/BlockListActivity$ListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v8

    .line 84
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/mms/ui/BlockListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/BlockListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 127
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BlockListActivity;->requestWindowFeature(I)Z

    .line 93
    sget-object v2, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    const v3, 0x7f090336

    const/4 v4, -0x1

    invoke-static {p0, v2, v3, v4}, Lcom/android/mms/util/CommonActivityLayout;->createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II)Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v1

    .line 95
    .local v1, controller:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BlockListActivity;->setContentView(Landroid/view/View;)V

    .line 96
    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getHeaderBarComposer()Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    move-result-object v0

    .line 97
    .local v0, composer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    iget-object v2, v0, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    iput-object v2, p0, Lcom/android/mms/ui/BlockListActivity;->mTitle:Lcom/htc/widget/HeaderBarText;

    .line 99
    new-instance v2, Lcom/android/mms/ui/BlockListActivity$ListQueryHandler;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BlockListActivity$ListQueryHandler;-><init>(Lcom/android/mms/ui/BlockListActivity;)V

    iput-object v2, p0, Lcom/android/mms/ui/BlockListActivity;->mQueryHandler:Lcom/android/mms/ui/BlockListActivity$ListQueryHandler;

    .line 100
    new-instance v2, Lcom/android/mms/ui/BlockListActivity$BlocklistWorkingHandler;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/BlockListActivity$BlocklistWorkingHandler;-><init>(Lcom/android/mms/ui/BlockListActivity;)V

    iput-object v2, p0, Lcom/android/mms/ui/BlockListActivity;->mHandler:Landroid/os/Handler;

    .line 105
    invoke-virtual {p0}, Lcom/android/mms/ui/BlockListActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/BlockListActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessagingController;->addListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 106
    invoke-direct {p0}, Lcom/android/mms/ui/BlockListActivity;->initWidgets()V

    .line 108
    invoke-virtual {p0}, Lcom/android/mms/ui/BlockListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/BlockListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 110
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 116
    invoke-virtual {p0}, Lcom/android/mms/ui/BlockListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/BlockListActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingController;->removeListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 117
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BlockListActivity;->finishActivity(I)V

    .line 118
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BlockListActivity;->finishActivity(I)V

    .line 119
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 214
    sget-object v1, Lcom/android/mms/ui/BlockListActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick: position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-nez p3, :cond_0

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/NewBlockNumberActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/BlockListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 194
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 209
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 196
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/NewBlockNumberActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/BlockListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 200
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "title"

    iget-object v3, p0, Lcom/android/mms/ui/BlockListActivity;->mTitle:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3}, Lcom/htc/widget/HeaderBarText;->getPrimaryText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v2, "uri"

    sget-object v3, Lcom/android/mms/ui/BlockListActivity;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 203
    const-string v2, "projection"

    sget-object v3, Lcom/android/mms/ui/BlockListActivity;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v2, "mode"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/BlockListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 176
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 182
    const/4 v0, 0x1

    const v1, 0x7f0901b8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020117

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/BlockListActivity;->mAdapter:Lcom/android/mms/ui/BlockListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BlockListActivity;->mAdapter:Lcom/android/mms/ui/BlockListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BlockListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 185
    const/4 v0, 0x2

    const v1, 0x7f090333

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020121

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 189
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 169
    invoke-direct {p0}, Lcom/android/mms/ui/BlockListActivity;->startAsyncQuery()V

    .line 170
    return-void
.end method

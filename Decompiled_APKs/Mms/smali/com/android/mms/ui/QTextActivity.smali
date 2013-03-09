.class public Lcom/android/mms/ui/QTextActivity;
.super Lcom/htc/app/HtcListActivity;
.source "QTextActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/QTextActivity$1;,
        Lcom/android/mms/ui/QTextActivity$QTextHandler;,
        Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;
    }
.end annotation


# static fields
.field private static final ACTIVITY_CREATE:I = 0x0

.field private static final ACTIVITY_EDIT:I = 0x1

.field public static final CONTENT:Ljava/lang/String; = "content"

.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "content DESC"

.field private static final DELETE_ID:I = 0x2

.field private static final EDIT_ID:I = 0x3

.field private static final INSERT_ID:I = 0x1

.field private static final MAX_ITEMS:I = 0x64

.field private static final PROJECTION:[Ljava/lang/String; = null

.field public static final _ID:Ljava/lang/String; = "_id"


# instance fields
.field TAG:Ljava/lang/String;

.field private mAdapter:Landroid/widget/CursorAdapter;

.field mBackground:Z

.field mChannelList:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field mNeedQuery:Z

.field private mNoQuickTextLable:Landroid/widget/TextView;

.field private mQueryHandler:Lcom/android/mms/ui/QTextActivity$QTextHandler;

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const-string v0, "content://qtext"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/QTextActivity;->CONTENT_URI:Landroid/net/Uri;

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/QTextActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 42
    const-string v0, "QTextActivityActivity"

    iput-object v0, p0, Lcom/android/mms/ui/QTextActivity;->TAG:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/android/mms/ui/QTextActivity;->mCursor:Landroid/database/Cursor;

    .line 311
    iput-object v1, p0, Lcom/android/mms/ui/QTextActivity;->mQueryHandler:Lcom/android/mms/ui/QTextActivity$QTextHandler;

    .line 315
    return-void
.end method

.method private StartQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x3ec

    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity;->mQueryHandler:Lcom/android/mms/ui/QTextActivity$QTextHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/QTextActivity$QTextHandler;->cancelOperation(I)V

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity;->mQueryHandler:Lcom/android/mms/ui/QTextActivity$QTextHandler;

    sget-object v3, Lcom/android/mms/ui/QTextActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/QTextActivity;->PROJECTION:[Ljava/lang/String;

    const-string v7, "content DESC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/QTextActivity$QTextHandler;->startQueryHighPriority(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/QTextActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/mms/ui/QTextActivity;->StartQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/QTextActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity;->mNoQuickTextLable:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/QTextActivity;)Landroid/widget/CursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity;->mAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/QTextActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/mms/ui/QTextActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private isNeedReQuery()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity;->mQueryHandler:Lcom/android/mms/ui/QTextActivity$QTextHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity;->mAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/QTextActivity;->mNeedQuery:Z

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 199
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/QTextActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 204
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 140
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/QTextActivity;->requestWindowFeature(I)Z

    .line 143
    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    const v2, 0x7f090135

    const/4 v3, -0x1

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/util/CommonActivityLayout;->createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II)Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v0

    .line 146
    .local v0, controller:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v0}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/QTextActivity;->setContentView(Landroid/view/View;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 151
    iput-object p0, p0, Lcom/android/mms/ui/QTextActivity;->mContext:Landroid/content/Context;

    .line 152
    iput-boolean v5, p0, Lcom/android/mms/ui/QTextActivity;->mNeedQuery:Z

    .line 153
    const v1, 0x7f0e000f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/QTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/QTextActivity;->mNoQuickTextLable:Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Lcom/android/mms/ui/QTextActivity;->mQueryHandler:Lcom/android/mms/ui/QTextActivity$QTextHandler;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Lcom/android/mms/ui/QTextActivity$QTextHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/mms/ui/QTextActivity$QTextHandler;-><init>(Lcom/android/mms/ui/QTextActivity;Lcom/android/mms/ui/QTextActivity$1;)V

    iput-object v1, p0, Lcom/android/mms/ui/QTextActivity;->mQueryHandler:Lcom/android/mms/ui/QTextActivity$QTextHandler;

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/QTextActivity;->mAdapter:Landroid/widget/CursorAdapter;

    if-nez v1, :cond_1

    .line 158
    new-instance v1, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;

    invoke-direct {v1, p0, v4, p0, v4}, Lcom/android/mms/ui/QTextActivity$QTextViewAdapter;-><init>(Lcom/android/mms/ui/QTextActivity;Landroid/database/Cursor;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/mms/ui/QTextActivity;->mAdapter:Landroid/widget/CursorAdapter;

    .line 159
    iget-object v1, p0, Lcom/android/mms/ui/QTextActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/QTextActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/QTextActivity;->isNeedReQuery()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-direct {p0}, Lcom/android/mms/ui/QTextActivity;->StartQuery()V

    .line 165
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/QTextActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 170
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 238
    const v0, 0x7f0901b8

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020117

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 240
    const/4 v0, 0x2

    const v1, 0x20c01fc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020121

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 241
    const/4 v0, 0x3

    const v1, 0x7f09006d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020125

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 242
    return v3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity;->mQueryHandler:Lcom/android/mms/ui/QTextActivity$QTextHandler;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity;->mQueryHandler:Lcom/android/mms/ui/QTextActivity$QTextHandler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/QTextActivity$QTextHandler;->cancelOperation(I)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity;->mAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 228
    iput-object v2, p0, Lcom/android/mms/ui/QTextActivity;->mAdapter:Landroid/widget/CursorAdapter;

    .line 230
    :cond_1
    iput-object v2, p0, Lcom/android/mms/ui/QTextActivity;->mContext:Landroid/content/Context;

    .line 231
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 299
    invoke-super/range {p0 .. p5}, Lcom/htc/app/HtcListActivity;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, content:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/QTextActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/android/mms/ui/QTextActivity;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/ui/QTextActivity;->mCursor:Landroid/database/Cursor;

    const-string v4, "content"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 306
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/QTextActivity;->setResult(ILandroid/content/Intent;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextActivity;->finish()V

    .line 309
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 293
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 267
    :pswitch_0
    const-string v4, "ANALYTIC_Mms"

    const-string v5, "[QTextActivity]Insert quick text"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/ui/QTextInsert;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/QTextActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 272
    .end local v1           #i:Landroid/content/Intent;
    :pswitch_1
    const-string v4, "ANALYTIC_Mms"

    const-string v5, "[QTextActivity]Delete quick text"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/ui/QTextDeleteActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "title"

    const v5, 0x7f090135

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string v4, "uri"

    sget-object v5, Lcom/android/mms/ui/QTextActivity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 282
    const-string v4, "projection"

    sget-object v5, Lcom/android/mms/ui/QTextActivity;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const/4 v4, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/mms/ui/QTextActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 287
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_2
    const-string v4, "ANALYTIC_Mms"

    const-string v5, "[QTextActivity]Edit quick text"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/ui/QTextEdit;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v0, edit:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/QTextActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/QTextActivity;->mBackground:Z

    .line 217
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 247
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 249
    iget-object v1, p0, Lcom/android/mms/ui/QTextActivity;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 258
    :goto_0
    return v3

    .line 253
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v1, p0, Lcom/android/mms/ui/QTextActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v5, 0x64

    if-ge v1, v5, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    iget-object v1, p0, Lcom/android/mms/ui/QTextActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/QTextActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 256
    .local v0, bShow:Z
    :goto_2
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 257
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v3, v2

    .line 258
    goto :goto_0

    .end local v0           #bShow:Z
    :cond_1
    move v1, v3

    .line 253
    goto :goto_1

    :cond_2
    move v0, v3

    .line 255
    goto :goto_2
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/QTextActivity;->mBackground:Z

    .line 191
    invoke-direct {p0}, Lcom/android/mms/ui/QTextActivity;->isNeedReQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/mms/ui/QTextActivity;->StartQuery()V

    .line 194
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onStop()V

    .line 208
    iget-object v0, p0, Lcom/android/mms/ui/QTextActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 211
    :cond_0
    return-void
.end method

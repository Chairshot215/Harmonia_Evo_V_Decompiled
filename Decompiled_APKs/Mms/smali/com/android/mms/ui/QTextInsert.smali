.class public Lcom/android/mms/ui/QTextInsert;
.super Lcom/htc/app/HtcListActivity;
.source "QTextInsert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/QTextInsert$QTextViewAdapter;
    }
.end annotation


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"

.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "content DESC"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field public static final _ID:Ljava/lang/String; = "_id"


# instance fields
.field TAG:Ljava/lang/String;

.field private confirmButton:Landroid/view/View;

.field private mAdapter:Landroid/widget/CursorAdapter;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mEditLayout:Landroid/view/View;

.field mResolver:Landroid/content/ContentResolver;

.field private mUserText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const-string v0, "content://qtext"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/QTextInsert;->CONTENT_URI:Landroid/net/Uri;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/QTextInsert;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 45
    const-string v0, "QTextActivityActivity"

    iput-object v0, p0, Lcom/android/mms/ui/QTextInsert;->TAG:Ljava/lang/String;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/QTextInsert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/mms/ui/QTextInsert;->saveState()V

    return-void
.end method

.method private newCursor()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 178
    iget-object v1, p0, Lcom/android/mms/ui/QTextInsert;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/ui/QTextInsert;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/QTextInsert;->PROJECTION:[Ljava/lang/String;

    const-string v6, "content DESC"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/QTextInsert;->mCursor:Landroid/database/Cursor;

    .line 180
    return-void
.end method

.method private saveState()V
    .locals 6

    .prologue
    .line 225
    iget-object v4, p0, Lcom/android/mms/ui/QTextInsert;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, body:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v2, initialValues:Landroid/content/ContentValues;
    const-string v4, "content"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextInsert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/mms/ui/QTextInsert;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 232
    .local v3, mUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/mms/ui/QTextInsert;->mUserText:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v4, p0, Lcom/android/mms/ui/QTextInsert;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->requery()Z

    .line 235
    const v4, 0x7f09013b

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 237
    iget-object v4, p0, Lcom/android/mms/ui/QTextInsert;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 251
    .end local v2           #initialValues:Landroid/content/ContentValues;
    .end local v3           #mUri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    .local v1, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v4, 0x7f09013a

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 243
    const v4, 0x7f090139

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 244
    const v4, 0x7f0200d1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 245
    const v4, 0x1040013

    new-instance v5, Lcom/android/mms/ui/QTextInsert$2;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/QTextInsert$2;-><init>(Lcom/android/mms/ui/QTextInsert;)V

    invoke-virtual {v1, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 249
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 194
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextInsert;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/QTextInsert;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 199
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/QTextInsert;->requestWindowFeature(I)Z

    .line 117
    new-instance v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    invoke-direct {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;-><init>()V

    .line 119
    .local v1, Headercomposer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    new-array v0, v9, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    new-instance v5, Lcom/android/mms/util/CommonActivityLayout$BarText;

    const v6, 0x7f090135

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lcom/android/mms/util/CommonActivityLayout$BarText;-><init>(II)V

    aput-object v5, v0, v8

    .line 122
    .local v0, Center:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    iput-object v0, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 123
    sget-object v5, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    iput-object v5, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mHight:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    .line 125
    new-instance v3, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;

    invoke-direct {v3}, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;-><init>()V

    .line 130
    .local v3, footer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    new-array v5, v9, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    new-instance v6, Lcom/android/mms/util/CommonActivityLayout$BarInputField;

    sget-object v7, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->SEARCHBOX:Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    invoke-direct {v6, v7}, Lcom/android/mms/util/CommonActivityLayout$BarInputField;-><init>(Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;)V

    aput-object v6, v5, v8

    iput-object v5, v3, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 133
    new-array v5, v9, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    new-instance v6, Lcom/android/mms/util/CommonActivityLayout$BarButton;

    const v7, 0x20c015f

    invoke-direct {v6, v7}, Lcom/android/mms/util/CommonActivityLayout$BarButton;-><init>(I)V

    aput-object v6, v5, v8

    iput-object v5, v3, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mRight:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 137
    new-instance v2, Lcom/android/mms/util/CommonActivityLayout;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/mms/util/CommonActivityLayout;-><init>(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V

    .line 138
    .local v2, activityComposer:Lcom/android/mms/util/CommonActivityLayout;
    invoke-virtual {v2}, Lcom/android/mms/util/CommonActivityLayout;->getController()Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v4

    .line 139
    .local v4, mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v4}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/QTextInsert;->setContentView(Landroid/view/View;)V

    .line 142
    iget-object v5, v3, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mRight:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/QTextInsert;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/android/mms/util/CommonActivityLayout;->resizeOkBarButtonTextSize(Landroid/view/View;F)V

    .line 144
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextInsert;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextInsert;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 147
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextInsert;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/QTextInsert;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 152
    :cond_0
    iget-object v5, v3, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v5}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/QTextInsert;->mUserText:Landroid/widget/EditText;

    .line 153
    iget-object v5, p0, Lcom/android/mms/ui/QTextInsert;->mUserText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v5, p0, Lcom/android/mms/ui/QTextInsert;->mUserText:Landroid/widget/EditText;

    const v6, 0x24001

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 158
    iget-object v5, v3, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mRight:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/QTextInsert;->confirmButton:Landroid/view/View;

    .line 161
    iget-object v5, p0, Lcom/android/mms/ui/QTextInsert;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 162
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextInsert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/QTextInsert;->mContentResolver:Landroid/content/ContentResolver;

    .line 163
    invoke-direct {p0}, Lcom/android/mms/ui/QTextInsert;->newCursor()V

    .line 164
    iget-object v5, p0, Lcom/android/mms/ui/QTextInsert;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 166
    new-instance v5, Lcom/android/mms/ui/QTextInsert$QTextViewAdapter;

    iget-object v6, p0, Lcom/android/mms/ui/QTextInsert;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v6, p0, v7}, Lcom/android/mms/ui/QTextInsert$QTextViewAdapter;-><init>(Lcom/android/mms/ui/QTextInsert;Landroid/database/Cursor;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/mms/ui/QTextInsert;->mAdapter:Landroid/widget/CursorAdapter;

    .line 167
    iget-object v5, p0, Lcom/android/mms/ui/QTextInsert;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/QTextInsert;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/QTextInsert;->confirmButton:Landroid/view/View;

    new-instance v6, Lcom/android/mms/ui/QTextInsert$1;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/QTextInsert$1;-><init>(Lcom/android/mms/ui/QTextInsert;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 217
    iget-object v0, p0, Lcom/android/mms/ui/QTextInsert;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/mms/ui/QTextInsert;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextInsert;->finish()V

    .line 221
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 211
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/QTextInsert;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/QTextInsert;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/QTextInsert;->mUserText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 188
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 189
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onStop()V

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/QTextInsert;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/QTextInsert;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 206
    :cond_0
    return-void
.end method

.class public Lcom/android/mms/ui/QTextDeleteActivity;
.super Lcom/htc/app/HtcListActivity;
.source "QTextDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "content DESC"

.field private static final MENU_DELETE_ALL:I = 0x0

.field private static PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "QTextDeleteActivity"

.field static final mCOLUMN_ID:I = 0x0

.field static final mCOLUMN_MSG:I = 0x1


# instance fields
.field private checkArray:[Z

.field private delStr:Ljava/lang/String;

.field private mAdapter:Lcom/android/mms/ui/QTextDeleteListAdapter;

.field private mCheckDeleteOk:Landroid/widget/Button;

.field private mCheckDelteCancel:Landroid/widget/Button;

.field private final mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mConfirmDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCursor:Landroid/database/Cursor;

.field private mSelectedCount:I

.field private mUIHandler:Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;

.field private mdeleteUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/QTextDeleteActivity;->PROJECTION:[Ljava/lang/String;

    .line 68
    const-string v0, "content://qtext"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/QTextDeleteActivity;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 71
    new-instance v0, Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;-><init>(Lcom/android/mms/ui/QTextDeleteActivity;Lcom/android/mms/ui/QTextDeleteActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mUIHandler:Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mSelectedCount:I

    .line 73
    iput-object v1, p0, Lcom/android/mms/ui/QTextDeleteActivity;->delStr:Ljava/lang/String;

    .line 217
    new-instance v0, Lcom/android/mms/ui/QTextDeleteActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/QTextDeleteActivity$4;-><init>(Lcom/android/mms/ui/QTextDeleteActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    .line 228
    new-instance v0, Lcom/android/mms/ui/QTextDeleteActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/QTextDeleteActivity$5;-><init>(Lcom/android/mms/ui/QTextDeleteActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mConfirmDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    .line 261
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/QTextDeleteActivity;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->checkArray:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/QTextDeleteActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/QTextDeleteActivity;)Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mUIHandler:Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/QTextDeleteActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mConfirmDeleteMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/QTextDeleteActivity;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/QTextDeleteActivity;->confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/QTextDeleteActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/QTextDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/QTextDeleteActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mSelectedCount:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/mms/ui/QTextDeleteActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mSelectedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mSelectedCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/QTextDeleteActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->delStr:Ljava/lang/String;

    return-object v0
.end method

.method private confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "messageId"
    .parameter "listener"

    .prologue
    .line 244
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c01fc

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 246
    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 247
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 248
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 249
    const v1, 0x20c015f

    invoke-virtual {v0, v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 250
    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 252
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 253
    return-void
.end method

.method static deleteMessageByCursor(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 256
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 257
    .local v0, msgId:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/QTextDeleteActivity;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v2, v3, v4, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method private initActivity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x315

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mdeleteUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/QTextDeleteActivity;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/QTextDeleteActivity;->PROJECTION:[Ljava/lang/String;

    const-string v6, "content DESC"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mCursor:Landroid/database/Cursor;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/QTextDeleteActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 144
    :goto_0
    const v0, 0x20c01fc

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/QTextDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->delStr:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity;->delStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mSelectedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    invoke-direct {p0}, Lcom/android/mms/ui/QTextDeleteActivity;->initDeleteButton()V

    .line 154
    invoke-direct {p0}, Lcom/android/mms/ui/QTextDeleteActivity;->initListView()V

    .line 156
    return-void

    .line 139
    :cond_1
    const-string v0, "QTextDeleteActivity"

    const-string v1, "Cannot load undelivered messages."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextDeleteActivity;->finish()V

    goto :goto_0
.end method

.method private initDeleteButton()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/QTextDeleteActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/QTextDeleteActivity$2;-><init>(Lcom/android/mms/ui/QTextDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mCheckDelteCancel:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/QTextDeleteActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/QTextDeleteActivity$3;-><init>(Lcom/android/mms/ui/QTextDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    return-void
.end method

.method private initListView()V
    .locals 4

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    .line 161
    .local v1, listView:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 163
    new-instance v2, Lcom/android/mms/ui/QTextDeleteListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/mms/ui/QTextDeleteListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V

    iput-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mAdapter:Lcom/android/mms/ui/QTextDeleteListAdapter;

    .line 164
    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mAdapter:Lcom/android/mms/ui/QTextDeleteListAdapter;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/QTextDeleteActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity;->checkArray:[Z

    .line 167
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity;->checkArray:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setClickable(Z)V

    .line 171
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 173
    new-instance v2, Lcom/android/mms/ui/QTextDeleteActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/QTextDeleteActivity$1;-><init>(Lcom/android/mms/ui/QTextDeleteActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 195
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 284
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/QTextDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 289
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 77
    invoke-virtual {p0, v10}, Lcom/android/mms/ui/QTextDeleteActivity;->requestWindowFeature(I)Z

    .line 78
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 86
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "uri"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mdeleteUri:Landroid/net/Uri;

    .line 87
    const-string v6, "projection"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/mms/ui/QTextDeleteActivity;->PROJECTION:[Ljava/lang/String;

    .line 93
    new-instance v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    invoke-direct {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;-><init>()V

    .line 95
    .local v1, Headercomposer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    new-array v0, v10, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    new-instance v6, Lcom/android/mms/util/CommonActivityLayout$BarText;

    const-string v7, "title"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Lcom/android/mms/util/CommonActivityLayout$BarText;-><init>(II)V

    aput-object v6, v0, v9

    .line 98
    .local v0, Center:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    iput-object v0, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 99
    sget-object v6, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    iput-object v6, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mHight:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    .line 101
    new-instance v3, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;

    invoke-direct {v3}, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;-><init>()V

    .line 102
    .local v3, footer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    new-instance v7, Lcom/android/mms/util/CommonActivityLayout$FootButton;

    const v8, 0x20c0164

    invoke-direct {v7, v8}, Lcom/android/mms/util/CommonActivityLayout$FootButton;-><init>(I)V

    aput-object v7, v6, v9

    new-instance v7, Lcom/android/mms/util/CommonActivityLayout$FootButton;

    const v8, 0x20c01fc

    invoke-direct {v7, v8}, Lcom/android/mms/util/CommonActivityLayout$FootButton;-><init>(I)V

    aput-object v7, v6, v10

    iput-object v6, v3, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 107
    new-instance v2, Lcom/android/mms/util/CommonActivityLayout;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/mms/util/CommonActivityLayout;-><init>(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V

    .line 108
    .local v2, activityComposer:Lcom/android/mms/util/CommonActivityLayout;
    invoke-virtual {v2}, Lcom/android/mms/util/CommonActivityLayout;->getController()Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v5

    .line 109
    .local v5, mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v5}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/QTextDeleteActivity;->setContentView(Landroid/view/View;)V

    .line 111
    iget-object v6, v3, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;

    .line 112
    iget-object v6, v3, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/mms/ui/QTextDeleteActivity;->mCheckDelteCancel:Landroid/widget/Button;

    .line 115
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 117
    invoke-direct {p0}, Lcom/android/mms/ui/QTextDeleteActivity;->initActivity()V

    .line 119
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/mms/ui/QTextDeleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/mms/ui/QTextDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 124
    :cond_0
    return-void
.end method

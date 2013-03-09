.class public Lcom/android/mms/ui/DeletedItemsActivity;
.super Lcom/htc/app/HtcListActivity;
.source "DeletedItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;,
        Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;,
        Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;,
        Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;
    }
.end annotation


# static fields
.field static final COLUMN_ID:I = 0x1

.field static final COLUMN_MMS_BOX:I = 0xe

.field static final COLUMN_MMS_DATE:I = 0xb

.field static final COLUMN_MMS_LOCKED:I = 0xf

.field static final COLUMN_MMS_MSG_TYPE:I = 0xd

.field static final COLUMN_MMS_READ:I = 0xc

.field static final COLUMN_MMS_SUBJECT:I = 0x9

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0xa

.field static final COLUMN_MSG_TYPE:I = 0x0

.field static final COLUMN_SMS_ADDRESS:I = 0x2

.field static final COLUMN_SMS_BODY:I = 0x3

.field static final COLUMN_SMS_BOX:I = 0x6

.field static final COLUMN_SMS_DATE:I = 0x4

.field static final COLUMN_SMS_LOCKED:I = 0x8

.field static final COLUMN_SMS_READ:I = 0x5

.field static final COLUMN_SMS_STATUS:I = 0x7

.field private static final DELETE_PROJECTION:[Ljava/lang/String; = null

.field protected static final LOCAL_LOGV:Z = true

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_UNDELETE:I = 0x0

.field private static final MENU_UNLOCK:I = 0x2

.field public static final MMS_TRASH_QUERY_SELECTION:Ljava/lang/String; = "msg_box < 0"

.field static final MSG_FILTER_CONTACT_NAME:I = 0x64

.field private static final OPTIONS_MENU_DELETE:I = 0x1

.field private static final OPTIONS_MENU_EMPTY_FOLDER:I = 0x0

.field private static final PROJECTION:[Ljava/lang/String; = null

.field public static final SMS_TRASH_QUERY_SELECTION:Ljava/lang/String; = "type < 0"

.field private static final TAG:Ljava/lang/String; = "DeletedItemsActivity"

.field public static final TYPEVALUE:I = 0xa

.field private static mThis:Lcom/android/mms/ui/DeletedItemsActivity;


# instance fields
.field private mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

.field mBackground:Z

.field private mCategory:I

.field private final mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

.field mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDataCursor:Landroid/database/Cursor;

.field private mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDeleteProgressDialog:Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;

.field private mDeleteUnlock:Z

.field private final mEditorHandler:Landroid/os/Handler;

.field mNeedQuery:Z

.field private final mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

.field private mUIlistenter:Lcom/android/mms/ui/MessagingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/DeletedItemsActivity;->mThis:Lcom/android/mms/ui/DeletedItemsActivity;

    .line 120
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/DeletedItemsActivity;->PROJECTION:[Ljava/lang/String;

    .line 142
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/DeletedItemsActivity;->DELETE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 116
    iput-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 378
    new-instance v0, Lcom/android/mms/ui/DeletedItemsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DeletedItemsActivity$1;-><init>(Lcom/android/mms/ui/DeletedItemsActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 409
    iput-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;

    .line 592
    new-instance v0, Lcom/android/mms/ui/DeletedItemsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DeletedItemsActivity$2;-><init>(Lcom/android/mms/ui/DeletedItemsActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteUnlock:Z

    .line 640
    new-instance v0, Lcom/android/mms/ui/DeletedItemsActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DeletedItemsActivity$4;-><init>(Lcom/android/mms/ui/DeletedItemsActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    .line 648
    new-instance v0, Lcom/android/mms/ui/DeletedItemsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/DeletedItemsActivity$5;-><init>(Lcom/android/mms/ui/DeletedItemsActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mEditorHandler:Landroid/os/Handler;

    .line 719
    iput-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCursor:Landroid/database/Cursor;

    .line 720
    iput-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDataCursor:Landroid/database/Cursor;

    .line 722
    iput-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    .line 726
    return-void
.end method

.method private DismissProgressDialog()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;->dismiss()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;

    .line 453
    :cond_0
    return-void
.end method

.method private ShowProgressDialog()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;

    if-eqz v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    new-instance v0, Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;-><init>(Lcom/android/mms/ui/DeletedItemsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;

    .line 445
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;->show()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/DeletedItemsActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/DeletedItemsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/DeletedItemsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteUnlock:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/DeletedItemsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteUnlock:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/DeletedItemsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->ShowProgressDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/DeletedItemsActivity;)Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/DeletedItemsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mEditorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/DeletedItemsActivity;)Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/DeletedItemsActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDataCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/DeletedItemsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDataCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/DeletedItemsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->DismissProgressDialog()V

    return-void
.end method

.method private buildContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 662
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 663
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "trash"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 664
    const-string v1, "category"

    iget v2, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCategory:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 666
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private confirmDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 607
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 609
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v4, 0x7f030005

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 610
    .local v2, contents:Landroid/view/View;
    const v4, 0x7f0e0025

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 611
    .local v1, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteUnlock:Z

    .line 612
    new-instance v4, Lcom/android/mms/ui/DeletedItemsActivity$3;

    invoke-direct {v4, p0, v1}, Lcom/android/mms/ui/DeletedItemsActivity$3;-><init>(Lcom/android/mms/ui/DeletedItemsActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 619
    const v4, 0x7f0902ff

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 620
    const v4, 0x7f0200d1

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 621
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 622
    const v4, 0x20c015f

    invoke-virtual {v0, v4, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 623
    const v4, 0x20c0164

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 625
    const v4, 0x7f0e0024

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 626
    .local v3, textDelete:Landroid/widget/TextView;
    const v4, 0x7f090303

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 628
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 629
    return-void
.end method

.method public static getInstance()Lcom/android/mms/ui/DeletedItemsActivity;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/mms/ui/DeletedItemsActivity;->mThis:Lcom/android/mms/ui/DeletedItemsActivity;

    return-object v0
.end method

.method private initActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 201
    iput-object p0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mContext:Landroid/content/Context;

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mNeedQuery:Z

    .line 205
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCategory:I

    .line 208
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;-><init>(Lcom/android/mms/ui/DeletedItemsActivity;Lcom/android/mms/ui/DeletedItemsActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    if-nez v0, :cond_2

    .line 212
    new-instance v0, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-direct {v0, p0, p0, v3, v1}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;-><init>(Lcom/android/mms/ui/DeletedItemsActivity;Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    .line 213
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->addGetMoreView(Lcom/htc/widget/HtcListView;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeletedItemsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->removeGetMoreView(Lcom/htc/widget/HtcListView;)V

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingController;->addListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 224
    return-void
.end method

.method public static isDeleteImmediatelyEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 632
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 633
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_delete_immediately"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 634
    .local v0, benable:Z
    return v0
.end method

.method private isNeedReQuery()Z
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mNeedQuery:Z

    if-eqz v0, :cond_1

    .line 797
    :cond_0
    const/4 v0, 0x1

    .line 799
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method DeleteAllMessageByCursor(Landroid/database/Cursor;Z)V
    .locals 13
    .parameter "cursor"
    .parameter "Unlock"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 555
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-gtz v8, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .local v2, SmsIds:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 560
    .local v5, bSms:Z
    const/4 v7, 0x0

    .line 561
    .local v7, hasSmsid:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v0, MmsIds:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 563
    .local v4, bMms:Z
    const/4 v6, 0x0

    .line 564
    .local v6, hasMmsid:Z
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 566
    :cond_2
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "sms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 567
    const/4 v5, 0x1

    .line 568
    if-eqz v7, :cond_3

    .line 569
    const-string v8, ", "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_3
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const/4 v7, 0x1

    .line 579
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 581
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, SmsIdsList:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, MmsIdsList:Ljava/lang/String;
    const-string v8, "DeletedItemsActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[] Sms Ids: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v8, "DeletedItemsActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[] Mms Ids: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    if-eqz v5, :cond_4

    .line 587
    iget v8, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCategory:I

    invoke-virtual {p0, v3, v11, v8, p2}, Lcom/android/mms/ui/DeletedItemsActivity;->DeleteSMSMMSById(Ljava/lang/String;ZIZ)V

    .line 588
    :cond_4
    if-eqz v4, :cond_0

    .line 589
    iget v8, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCategory:I

    invoke-virtual {p0, v1, v12, v8, p2}, Lcom/android/mms/ui/DeletedItemsActivity;->DeleteSMSMMSById(Ljava/lang/String;ZIZ)V

    goto :goto_0

    .line 573
    .end local v1           #MmsIdsList:Ljava/lang/String;
    .end local v3           #SmsIdsList:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x1

    .line 574
    if-eqz v6, :cond_6

    .line 575
    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_6
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const/4 v6, 0x1

    goto :goto_1
.end method

.method DeleteSMSMMSById(Ljava/lang/String;ZIZ)V
    .locals 7
    .parameter "Ids"
    .parameter "bSmsMms"
    .parameter "category"
    .parameter "Unlock"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 517
    const/4 v1, 0x0

    .line 518
    .local v1, delUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 519
    .local v3, where:Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 520
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 521
    const-string v4, "type < 0 AND _id in (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 522
    if-nez p4, :cond_0

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND locked=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 531
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 532
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 533
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v4, "category"

    iget v5, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCategory:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 534
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 539
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackgroundDeletion()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 540
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 541
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    const-string v4, "bg"

    const-string v5, "true"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 542
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 546
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_2
    const-string v4, "DeletedItemsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete Uri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v4, "DeletedItemsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete where:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 550
    .local v2, result:I
    const-string v4, "DeletedItemsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void

    .line 525
    .end local v2           #result:I
    :cond_3
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 526
    const-string v4, "msg_box < 0 AND _id in (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 527
    if-nez p4, :cond_0

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND locked=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method RestoreMessageById(JZI)V
    .locals 6
    .parameter "msgId"
    .parameter "bSms"
    .parameter "category"

    .prologue
    const/16 v5, 0xa

    .line 333
    new-instance v2, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 334
    .local v2, values:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 335
    .local v1, resUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 336
    .local v3, where:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 337
    const-string v4, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 340
    const-string v3, "type < 0"

    .line 347
    :goto_0
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 348
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 349
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 350
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v4, "category"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 351
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 353
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 354
    return-void

    .line 342
    :cond_1
    const-string v4, "msg_box"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 345
    const-string v3, "msg_box < 0"

    goto :goto_0
.end method

.method StartQuery()V
    .locals 8

    .prologue
    const/16 v3, 0x4e8e

    const/4 v1, 0x0

    .line 780
    const-string v0, "DeletedItemsActivity"

    const-string v2, "StartQuery"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->cancelOperation(I)V

    .line 783
    const-string v7, " normalized_date DESC "

    .line 785
    .local v7, order:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    iget v2, v2, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrent_limit:I

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getQueryLimit(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 787
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    iput v1, v0, Lcom/android/mms/ui/DraftMessagesListAdapter;->mCurrentCursorCount:I

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->buildContentUri()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/DeletedItemsActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "(thread_id > 0 or thread_id is null)"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method UnlockMessageById(JZI)V
    .locals 6
    .parameter "msgId"
    .parameter "bSms"
    .parameter "category"

    .prologue
    const/4 v5, 0x0

    .line 357
    new-instance v2, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 358
    .local v2, values:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 359
    .local v1, resUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 360
    .local v3, where:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 361
    const-string v4, "locked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 363
    const-string v3, "type < 0"

    .line 369
    :goto_0
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 370
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 372
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v4, "category"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 373
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 375
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 376
    return-void

    .line 365
    :cond_1
    const-string v4, "locked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 367
    const-string v3, "msg_box < 0"

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 267
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 268
    iget-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    iput-object v2, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 277
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->closeContextMenu()V

    .line 280
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 285
    :cond_1
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    iput-object v2, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDeleteDialog:Lcom/htc/widget/HtcAlertDialog;

    throw v1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 459
    iget-object v7, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 460
    .local v3, msgId:J
    iget-object v7, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, msgType:Ljava/lang/String;
    const/4 v2, -0x1

    .line 462
    .local v2, locked:I
    const/4 v1, 0x1

    .line 464
    .local v1, bSms:Z
    const-string v7, "DeletedItemsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onContextItemSelected] Get pos:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v7, "DeletedItemsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onContextItemSelected] Get msgId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v7, "DeletedItemsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onContextItemSelected] Get msgType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v7, "sms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 468
    iget-object v7, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0x8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 469
    const-string v7, "DeletedItemsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onContextItemSelected] Get COLUMN_SMS_LOCKED:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->ShowProgressDialog()V

    .line 477
    new-instance v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;

    invoke-direct {v0}, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;-><init>()V

    .line 478
    .local v0, args:Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 505
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_2
    return v6

    .line 471
    .end local v0           #args:Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;
    :cond_0
    const/4 v1, 0x0

    .line 472
    iget-object v7, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0xf

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 473
    const-string v7, "DeletedItemsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onContextItemSelected] Get COLUMN_MMS_LOCKED:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 481
    .restart local v0       #args:Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;
    :pswitch_0
    iput-wide v3, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->Id:J

    .line 482
    iput-boolean v1, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->bSms:Z

    .line 483
    iget v6, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCategory:I

    iput v6, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->category:I

    .line 484
    iget-object v6, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    iget-object v7, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    const/16 v8, 0x4e91

    invoke-virtual {v7, v8, v0}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 487
    :pswitch_1
    if-ne v2, v6, :cond_1

    .line 488
    const-string v7, "DeletedItemsActivity"

    const-string v8, "Do not deleted locked item"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 492
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->Ids:Ljava/lang/String;

    .line 493
    iput-boolean v1, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->bSms:Z

    .line 494
    iget v6, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCategory:I

    iput v6, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->category:I

    .line 495
    iget-object v6, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    iget-object v7, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    const/16 v8, 0x4e8f

    invoke-virtual {v7, v8, v0}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 499
    :pswitch_2
    iput-wide v3, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->Id:J

    .line 500
    iput-boolean v1, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->bSms:Z

    .line 501
    iget v6, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mCategory:I

    iput v6, v0, Lcom/android/mms/ui/DeletedItemsActivity$WorkDataSet;->category:I

    .line 502
    iget-object v6, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    iget-object v7, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    const/16 v8, 0x4e92

    invoke-virtual {v7, v8, v0}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 478
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeletedItemsActivity;->requestWindowFeature(I)Z

    .line 178
    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    const v2, 0x7f0902fe

    const/4 v3, -0x1

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/util/CommonActivityLayout;->createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II)Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v0

    .line 180
    .local v0, controller:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v0}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeletedItemsActivity;->setContentView(Landroid/view/View;)V

    .line 183
    invoke-direct {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->initActivity()V

    .line 185
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 190
    :cond_0
    const-string v1, "DeletedItemsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get Setting value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->isDeleteImmediatelyEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 246
    const-string v0, "DeletedItemsActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mUIlistenter:Lcom/android/mms/ui/MessagingListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingController;->removeListener(Lcom/android/mms/ui/MessagingListener;)V

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mQueryHandler:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;

    const/16 v1, 0x4e8e

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsHandler;->cancelOperation(I)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 257
    iput-object v2, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mDataCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 261
    :cond_2
    iput-object v2, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mContext:Landroid/content/Context;

    .line 262
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 308
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 324
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 326
    :goto_0
    return v1

    .line 310
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/DeletedItemsActivity;->confirmDialog(Landroid/content/DialogInterface$OnClickListener;)V

    .line 326
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 313
    :pswitch_1
    const-string v1, "DeletedItemsActivity"

    const-string v2, "OPTIONS_MENU_DELETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    const v2, 0x7f0902fe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    const-string v1, "uri"

    invoke-direct {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->buildContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 319
    const-string v1, "projection"

    sget-object v2, Lcom/android/mms/ui/DeletedItemsActivity;->DELETE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v1, "mode"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/DeletedItemsActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_1

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 238
    const-string v0, "DeletedItemsActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mBackground:Z

    .line 240
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 290
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 292
    iget-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 294
    const v1, 0x7f0902ff

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 298
    const v1, 0x7f090300

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 302
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/DeletedItemsActivity;->mBackground:Z

    .line 230
    invoke-direct {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->isNeedReQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity;->StartQuery()V

    .line 233
    :cond_0
    return-void
.end method

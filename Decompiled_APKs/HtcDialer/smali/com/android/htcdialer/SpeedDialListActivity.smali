.class public Lcom/android/htcdialer/SpeedDialListActivity;
.super Lcom/android/htcdialer/app/BaseListActivity;
.source "SpeedDialListActivity.java"

# interfaces
.implements Lcom/android/htcdialer/customization/CustomizationUtility$ICustomizationChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;,
        Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;,
        Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;,
        Lcom/android/htcdialer/SpeedDialListActivity$ACCOUNT_INFO;
    }
.end annotation


# static fields
.field private static final ACCEPTABLE_OPERATOR:[Ljava/lang/String; = null

.field private static final ADD_NEW_ON_TITLE:Z = true

.field private static final CONTEXT_MENU_CALL:I = 0x1

.field private static final CONTEXT_MENU_DELETE:I = 0x2

.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field public static final MAX_SERVICE_NUMBER:I = 0x0

.field private static final OPTION_MENU_ITEM_ADD:I = 0x1

.field private static final QUERY_WHERE:Ljava/lang/String; = "raw_contact_id IS NOT NULL OR recordNumber IS NOT NULL"

#the value of this static final field might be set in the static constructor
.field public static final REMAIN_MAX_NUMBER:I = 0x0

.field private static final RESULT_PICK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpeedDialListActivity"

.field private static final TOKEN_QUERY:I = 0x1

.field private static final TOKEN_QUERY_INFO_AND_ADD_SPEEDDIAL:I = 0x2

.field private static final mCustomerServiceNumber:Ljava/lang/String;

.field private static final mServiceNumber:[Ljava/lang/String;

.field public static sServiceNumberMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;

.field private mHasVoicemail:Z

.field private mInsertListAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mOnAddNewClickListener:Landroid/view/View$OnClickListener;

.field private mQueryHandler:Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;

.field private mServiceItemView:[Landroid/view/View;

.field private mSpeedDialViewType:I

.field private mVoicemail:Ljava/lang/String;

.field private mVoicemailView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 97
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x28

    if-ne v0, v2, :cond_0

    const/4 v0, 0x5

    :goto_0
    sput v0, Lcom/android/htcdialer/SpeedDialListActivity;->MAX_SERVICE_NUMBER:I

    .line 99
    sget v0, Landroid/provider/HtcContactsContract$SpeedDial;->MAX_NUMBER:I

    sget v2, Lcom/android/htcdialer/SpeedDialListActivity;->MAX_SERVICE_NUMBER:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/htcdialer/SpeedDialListActivity;->REMAIN_MAX_NUMBER:I

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v4

    const-string v2, "*9"

    aput-object v2, v0, v1

    const-string v2, "*611"

    aput-object v2, v0, v5

    const-string v2, "*5"

    aput-object v2, v0, v6

    const-string v2, "*21"

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const-string v3, "*1"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->mServiceNumber:[Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->sServiceNumberMap:Ljava/util/HashMap;

    .line 148
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->mCustomerServiceNumber:Ljava/lang/String;

    .line 153
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "72406"

    aput-object v2, v0, v4

    const-string v2, "72410"

    aput-object v2, v0, v1

    const-string v1, "72411"

    aput-object v1, v0, v5

    const-string v1, "72423"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->ACCEPTABLE_OPERATOR:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/htcdialer/app/BaseListActivity;-><init>()V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mSpeedDialViewType:I

    .line 131
    new-instance v0, Lcom/android/htcdialer/SpeedDialListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/SpeedDialListActivity$1;-><init>(Lcom/android/htcdialer/SpeedDialListActivity;)V

    iput-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mOnAddNewClickListener:Landroid/view/View$OnClickListener;

    .line 671
    return-void
.end method

.method static synthetic access$000(Lcom/android/htcdialer/SpeedDialListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->addSpeedDial()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htcdialer/SpeedDialListActivity;Landroid/view/View;[Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/htcdialer/SpeedDialListActivity;->getServiceView(Landroid/view/View;[Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/htcdialer/SpeedDialListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mVoicemail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/htcdialer/SpeedDialListActivity;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/htcdialer/SpeedDialListActivity;->getVoicemailView(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->mServiceNumber:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htcdialer/SpeedDialListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->callVoiceMail()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htcdialer/SpeedDialListActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/htcdialer/SpeedDialListActivity;->enableEmptyView(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htcdialer/SpeedDialListActivity;)Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htcdialer/SpeedDialListActivity;Landroid/view/View;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p5}, Lcom/android/htcdialer/SpeedDialListActivity;->updateContent(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/htcdialer/SpeedDialListActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mOnAddNewClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htcdialer/SpeedDialListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mHasVoicemail:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/htcdialer/SpeedDialListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mSpeedDialViewType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/htcdialer/SpeedDialListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mSpeedDialViewType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/htcdialer/SpeedDialListActivity;Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/htcdialer/SpeedDialListActivity;->getServiceView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private addSpeedDial()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 470
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 471
    const-string v2, "onlyPhone"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0, v0, v3}, Lcom/android/htcdialer/SpeedDialListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 477
    return-void
.end method

.method private callVoiceMail()V
    .locals 5

    .prologue
    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 460
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/SpeedDialListActivity;->startActivity(Landroid/content/Intent;)V

    .line 462
    return-void
.end method

.method private createUriForSIM(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 14
    .parameter "data"

    .prologue
    .line 858
    const/4 v12, 0x0

    .line 859
    .local v12, resultUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 860
    .local v10, contactUri:Landroid/net/Uri;
    if-eqz v10, :cond_1

    .line 861
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v11

    .line 862
    .local v11, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    .line 863
    .local v13, segmentCount:I
    const/4 v0, 0x4

    if-ne v0, v13, :cond_1

    .line 864
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 865
    .local v8, contactId:J
    const-wide/16 v4, 0x0

    cmp-long v0, v4, v8

    if-gez v0, :cond_1

    .line 866
    sget-object v1, Landroid/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    .line 867
    .local v1, queryContactUri:Landroid/net/Uri;
    const-string v0, "_id=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 868
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/htcdialer/SpeedDialListActivity$ACCOUNT_INFO;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 870
    .local v7, accountCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 871
    .local v6, account:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 872
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "account_type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 878
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 884
    .end local v1           #queryContactUri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #account:Ljava/lang/String;
    .end local v7           #accountCursor:Landroid/database/Cursor;
    .end local v8           #contactId:J
    .end local v11           #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #segmentCount:I
    :cond_1
    return-object v12
.end method

.method private delete(I)Z
    .locals 16
    .parameter "itemPos"

    .prologue
    .line 402
    if-gez p1, :cond_0

    .line 403
    const/4 v1, 0x0

    .line 425
    :goto_0
    return v1

    .line 405
    :cond_0
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 407
    .local v14, values:Landroid/content/ContentValues;
    const-string v1, "raw_contact_id"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 408
    const-string v1, "data_id"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 409
    const-string v1, "recordNumber"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htcdialer/SpeedDialListActivity;->mAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/Cursor;

    .line 412
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 413
    .local v12, speedDialId:J
    const/4 v1, 0x7

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 414
    .local v10, phoneId:J
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v1, "data_id"

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .local v15, where:Ljava/lang/StringBuilder;
    const-string v1, "="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v14, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htcdialer/SpeedDialListActivity;->mQueryHandler:Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;->cancelOperation(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htcdialer/SpeedDialListActivity;->mQueryHandler:Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/htcdialer/util/SpeedDialUtils;->PROJECTION_MAP:[Ljava/lang/String;

    const-string v6, "raw_contact_id IS NOT NULL OR recordNumber IS NOT NULL"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private enableEmptyView(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 512
    return-void
.end method

.method private getCallIntent(I)Landroid/content/Intent;
    .locals 6
    .parameter "position"

    .prologue
    .line 480
    iget-object v5, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;

    invoke-virtual {v5, p1}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 481
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 482
    const/4 v2, 0x0

    .line 490
    :goto_0
    return-object v2

    .line 484
    :cond_0
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/util/phone/DialUtils;->makeDialUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 486
    .local v4, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 487
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/htcdialer/util/SpeedDialUtils;->createContactInfo(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/provider/HtcUnionContact$SimpleContactInfo;

    move-result-object v1

    .line 489
    .local v1, info:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    invoke-static {v2, v1}, Lcom/htc/util/phone/DialUtils;->copyDialExtra(Landroid/content/Intent;Landroid/provider/HtcUnionContact$SimpleContactInfo;)V

    goto :goto_0
.end method

.method public static getComposeNewItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIZLandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "root"
    .parameter "textResId"
    .parameter "iconResId"
    .parameter "isClickable"
    .parameter "listener"

    .prologue
    .line 889
    const v4, 0x209005e

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 890
    .local v3, view:Landroid/view/View;
    const v4, 0x2020105

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 891
    .local v2, text:Landroid/widget/TextView;
    const v4, 0x2020104

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 892
    .local v1, icon:Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    if-lez p2, :cond_0

    .line 893
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 895
    :cond_0
    if-eqz v1, :cond_1

    if-lez p3, :cond_1

    .line 896
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 898
    :cond_1
    const v4, 0x2020103

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 899
    .local v0, compose:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 900
    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    :cond_2
    return-object v3
.end method

.method private getLocationBackground()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 962
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2080702

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 963
    .local v3, dFrame:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x208023d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 964
    .local v2, dDefaultBg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v5, v9

    .line 965
    .local v5, frameSize:I
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v8, v9

    .line 966
    .local v8, photoSize:I
    sub-int v9, v5, v8

    div-int/lit8 v6, v9, 0x2

    .line 969
    .local v6, photoPosition:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v11, v11, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 970
    .local v4, frameRect:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    sub-int v9, v5, v6

    sub-int v10, v5, v6

    invoke-direct {v7, v6, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 972
    .local v7, photoRect:Landroid/graphics/Rect;
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 973
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 976
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 977
    .local v0, bLocationBg:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 978
    .local v1, cLocationBg:Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 979
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 980
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {p0, v9, v7, v1}, Lcom/android/htcdialer/SpeedDialListActivity;->getMaskedCanvas(Landroid/content/res/Resources;Landroid/graphics/Rect;Landroid/graphics/Canvas;)V

    .line 981
    return-object v0
.end method

.method private getMaskedCanvas(Landroid/content/res/Resources;Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "res"
    .parameter "photoRect"
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 950
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 951
    .local v2, erasePaint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 952
    const v4, 0x2080703

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 953
    .local v1, dMask:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 954
    .local v0, bMask:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 955
    .local v3, maskCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 956
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 957
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 958
    invoke-virtual {p3, v0, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 959
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 960
    return-void
.end method

.method private getNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "number"
    .parameter "type"

    .prologue
    .line 538
    if-ltz p2, :cond_1

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p2, v0, v2}, Lcom/android/htcdialer/util/ContactsUtils;->getPhoneTypeString(Landroid/content/res/Resources;ILjava/lang/StringBuilder;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 548
    .end local v0           #sb:Ljava/lang/StringBuilder;
    .end local p1
    :cond_1
    return-object p1
.end method

.method public static getServiceMap()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 906
    sget-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->sServiceNumberMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 907
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9e

    if-ne v0, v1, :cond_1

    .line 908
    sget-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->sServiceNumberMap:Ljava/util/HashMap;

    const-string v1, "1"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v2, v4

    const-string v3, "123"

    aput-object v3, v2, v5

    const-string v3, "Buz\u00f3n Movistar"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->sServiceNumberMap:Ljava/util/HashMap;

    const-string v1, "5"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "5"

    aput-object v3, v2, v4

    const-string v3, "112"

    aput-object v3, v2, v5

    const-string v3, "Emergencias"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->sServiceNumberMap:Ljava/util/HashMap;

    const-string v1, "6"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "6"

    aput-object v3, v2, v4

    const-string v3, "1004"

    aput-object v3, v2, v5

    const-string v3, "Atenci\u00f3n Cliente"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->sServiceNumberMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 913
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 914
    invoke-static {}, Lcom/android/htcdialer/SpeedDialListActivity;->isOperatorAcceptable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    sget-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->sServiceNumberMap:Ljava/util/HashMap;

    const-string v1, "1"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v2, v4

    const-string v3, "555"

    aput-object v3, v2, v5

    const-string v3, "Caixa Postal"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 921
    :cond_2
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_3

    .line 922
    sget-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->sServiceNumberMap:Ljava/util/HashMap;

    const-string v1, "3"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "3"

    aput-object v3, v2, v4

    const-string v3, "#101#"

    aput-object v3, v2, v5

    const-string v3, "International Message Bank"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 927
    :cond_3
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 928
    sget-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->sServiceNumberMap:Ljava/util/HashMap;

    const-string v1, "3"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "3"

    aput-object v3, v2, v4

    const-string v3, "*611"

    aput-object v3, v2, v5

    const-string v3, "Atencion a Clientes"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 932
    :cond_4
    sget-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->sServiceNumberMap:Ljava/util/HashMap;

    goto :goto_1
.end method

.method private getServiceView(Landroid/view/View;I)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "idx"

    .prologue
    .line 439
    if-nez p1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 441
    new-instance v0, Lcom/htc/widget/SimpleHtcListItemSeparable;

    const-string v1, "Item"

    invoke-direct {v0, v1}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 443
    :cond_0
    sget-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->mServiceNumber:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/android/htcdialer/SpeedDialListActivity;->mServiceNumber:[Ljava/lang/String;

    aget-object v4, v0, p2

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/SpeedDialListActivity;->updateContent(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;I)V

    .line 445
    return-object p1
.end method

.method private getServiceView(Landroid/view/View;[Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "data"

    .prologue
    .line 449
    if-nez p1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 451
    new-instance v0, Lcom/htc/widget/SimpleHtcListItemSeparable;

    const-string v1, "Item"

    invoke-direct {v0, v1}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 453
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v0, 0x2

    aget-object v3, p2, v0

    const/4 v0, 0x1

    aget-object v4, p2, v0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/SpeedDialListActivity;->updateContent(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;I)V

    .line 454
    return-object p1
.end method

.method private getVoicemailView(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "voicemailNumber"
    .parameter "convertView"

    .prologue
    .line 429
    if-nez p2, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 431
    new-instance v0, Lcom/htc/widget/SimpleHtcListItemSeparable;

    const-string v1, "Item"

    invoke-direct {v0, v1}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 433
    :cond_0
    const/4 v2, 0x1

    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/SpeedDialListActivity;->updateContent(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;I)V

    .line 434
    return-object p2
.end method

.method private inflateTitlebar()V
    .locals 8

    .prologue
    .line 230
    const-string v2, "title_1"

    .line 231
    .local v2, resName:Ljava/lang/String;
    const v4, 0x7f0b0004

    invoke-virtual {p0, v4}, Lcom/android/htcdialer/SpeedDialListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 234
    .local v3, stub:Landroid/view/ViewStub;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    const-string v2, "title_m_2_2text"

    .line 241
    :goto_0
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "title_middle"

    const-string v6, "layout"

    const-string v7, "com.android.htcdialer"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 243
    .local v1, layout:I
    invoke-virtual {v3, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 244
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 245
    const v4, 0x7f0b006a

    invoke-virtual {p0, v4}, Lcom/android/htcdialer/SpeedDialListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarMiddle;

    .line 246
    .local v0, headerBar:Lcom/htc/widget/HeaderBarMiddle;
    if-eqz v0, :cond_0

    .line 247
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 249
    :cond_0
    return-void

    .line 237
    .end local v0           #headerBar:Lcom/htc/widget/HeaderBarMiddle;
    .end local v1           #layout:I
    :cond_1
    const-string v2, "title_1_1"

    goto :goto_0
.end method

.method private static isOperatorAcceptable()Z
    .locals 7

    .prologue
    .line 936
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 937
    .local v4, operator:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 938
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1

    .line 939
    sget-object v1, Lcom/android/htcdialer/SpeedDialListActivity;->ACCEPTABLE_OPERATOR:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 940
    .local v0, accept:Ljava/lang/String;
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 941
    const/4 v5, 0x1

    .line 946
    .end local v0           #accept:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v5

    .line 939
    .restart local v0       #accept:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 946
    .end local v0           #accept:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateContent(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "view"
    .parameter "location"
    .parameter "name"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 517
    const v3, 0x7f0b005c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 518
    .local v1, locationView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 519
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    :cond_0
    invoke-direct {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getLocationBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 523
    .local v0, bLocationBg:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    const v3, 0x202021d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/widget/DialerListItem2LineText;

    .line 526
    .local v2, nameAndNum:Lcom/android/htcdialer/widget/DialerListItem2LineText;
    if-eqz v2, :cond_1

    .line 528
    invoke-virtual {v2, p3}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 530
    invoke-direct {p0, p4, p5}, Lcom/android/htcdialer/SpeedDialListActivity;->getNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/htcdialer/widget/DialerListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 535
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 388
    const/4 v1, -0x1

    if-ne v1, p2, :cond_1

    .line 389
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 390
    invoke-direct {p0, p3}, Lcom/android/htcdialer/SpeedDialListActivity;->createUriForSIM(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    .line 391
    .local v0, simUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 394
    :cond_0
    const-string v1, "com.android.htccontacts.action.EDIT_SPEED_DIAL"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, p3}, Lcom/android/htcdialer/SpeedDialListActivity;->startActivity(Landroid/content/Intent;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->finish()V

    .line 399
    .end local v0           #simUri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 336
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .local v4, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget-object v8, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mInsertListAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;

    #calls: Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->getPersistentTopViewCount()I
    invoke-static {v8}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->access$100(Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;)I

    move-result v5

    .line 341
    .local v5, topViewCount:I
    iget v8, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    sub-int v3, v8, v5

    .line 343
    .local v3, itemPos:I
    if-ltz v3, :cond_0

    .line 344
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    move v6, v7

    .line 364
    .end local v3           #itemPos:I
    .end local v4           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v5           #topViewCount:I
    :goto_0
    return v6

    .line 337
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    move v6, v7

    .line 338
    goto :goto_0

    .line 346
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v3       #itemPos:I
    .restart local v4       #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v5       #topViewCount:I
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/htcdialer/SpeedDialListActivity;->getCallIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 347
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/htcdialer/SpeedDialListActivity;->startActivity(Landroid/content/Intent;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->finish()V

    goto :goto_0

    .line 352
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/htcdialer/SpeedDialListActivity;->delete(I)Z

    move-result v0

    .line 353
    .local v0, deleted:Z
    if-eqz v0, :cond_0

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const v11, 0x7f090031

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 159
    invoke-super {p0, p1}, Lcom/android/htcdialer/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const v5, 0x7f030021

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/SpeedDialListActivity;->setContentView(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/SpeedDialListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 165
    invoke-direct {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->inflateTitlebar()V

    .line 168
    const v5, 0x20201ba

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/SpeedDialListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 169
    .local v3, titlebar:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "title_1_txt_left"

    const-string v7, "id"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 170
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/SpeedDialListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 171
    .local v4, txt:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "title_m_2_2text_txt_1"

    const-string v7, "id"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 172
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/SpeedDialListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 173
    .local v2, landscapeTxt:Landroid/widget/TextView;
    if-eqz v4, :cond_3

    .line 174
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    .line 191
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "title_1_img_1x1"

    const-string v7, "id"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 193
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "title_1_button_right_2"

    const-string v7, "id"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/SpeedDialListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 196
    .local v0, addIcon:Lcom/htc/widget/HeaderBarImage;
    invoke-virtual {v0, v9}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 197
    const v5, 0x7f02000d

    invoke-virtual {v0, v5}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 200
    iget-object v5, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mOnAddNewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 205
    iget-object v5, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListView;->setFocusable(Z)V

    .line 209
    invoke-direct {p0, v9}, Lcom/android/htcdialer/SpeedDialListActivity;->enableEmptyView(Z)V

    .line 211
    new-instance v5, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;

    const v6, 0x7f030020

    const/4 v7, 0x0

    invoke-direct {v5, p0, p0, v6, v7}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;-><init>(Lcom/android/htcdialer/SpeedDialListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v5, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;

    .line 212
    new-instance v5, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;

    iget-object v6, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;

    invoke-direct {v5, p0, v6, v10}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;-><init>(Lcom/android/htcdialer/SpeedDialListActivity;Lcom/htc/widget/InsertNewListAdapterInterface;Z)V

    iput-object v5, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mInsertListAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;

    .line 213
    iget-object v5, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mInsertListAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;

    invoke-virtual {p0, v5}, Lcom/android/htcdialer/SpeedDialListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    new-instance v5, Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;

    invoke-direct {v5, p0, p0}, Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;-><init>(Lcom/android/htcdialer/SpeedDialListActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mQueryHandler:Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;

    .line 217
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 218
    iget-object v5, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(Z)V

    .line 219
    iget-object v5, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setRoundedCornerEnabled(Z)V

    .line 222
    :cond_1
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 227
    :cond_2
    return-void

    .line 175
    .end local v0           #addIcon:Lcom/htc/widget/HeaderBarImage;
    :cond_3
    if-eqz v3, :cond_4

    move-object v5, v3

    .line 177
    check-cast v5, Lcom/htc/widget/HeaderBarText;

    const v6, 0x7f09001b

    invoke-virtual {v5, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    move-object v5, v3

    .line 178
    check-cast v5, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v5, v10}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    goto/16 :goto_0

    .line 181
    :cond_4
    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(I)V

    .line 184
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "title_m_2_2text_txt_2"

    const-string v7, "id"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/SpeedDialListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #landscapeTxt:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 186
    .restart local v2       #landscapeTxt:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 310
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .local v3, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget-object v6, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mInsertListAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;

    #calls: Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->getPersistentTopViewCount()I
    invoke-static {v6}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->access$100(Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;)I

    move-result v5

    .line 315
    .local v5, topViewCount:I
    iget v4, v3, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 316
    .local v4, itemPos:I
    if-le v5, v4, :cond_1

    .line 330
    .end local v3           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v4           #itemPos:I
    .end local v5           #topViewCount:I
    :cond_0
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v2

    .line 312
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 319
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v3       #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v4       #itemPos:I
    .restart local v5       #topViewCount:I
    :cond_1
    sub-int/2addr v4, v5

    .line 320
    if-ltz v4, :cond_0

    .line 321
    iget-object v6, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;

    invoke-virtual {v6, v4}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 322
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 323
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 325
    :cond_2
    const v6, 0x7f090047

    invoke-interface {p1, v8, v9, v9, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 326
    const v6, 0x7f090048

    invoke-interface {p1, v8, v7, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 281
    const v0, 0x7f09001c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208031d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 283
    return v2
.end method

.method public onCustomizationChanged(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7
    .parameter "context"
    .parameter "customizeBundle"
    .parameter "extraBundle"

    .prologue
    .line 987
    const-string v5, "speed_dial"

    invoke-static {p2, v5}, Lcom/android/htcdialer/customization/CustomizationUtility;->getPlentyValueInBundle(Landroid/os/Bundle;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v3

    .line 988
    .local v3, items:[[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 989
    sget-object v5, Lcom/android/htcdialer/SpeedDialListActivity;->sServiceNumberMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 990
    sget-object v5, Lcom/android/htcdialer/SpeedDialListActivity;->sServiceNumberMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 993
    :cond_0
    move-object v0, v3

    .local v0, arr$:[[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 994
    .local v2, item:[Ljava/lang/String;
    sget-object v5, Lcom/android/htcdialer/SpeedDialListActivity;->sServiceNumberMap:Ljava/util/HashMap;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 997
    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #item:[Ljava/lang/String;
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Lcom/android/htcdialer/app/BaseListActivity;->onDestroy()V

    .line 275
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/SpeedDialListActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 277
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 369
    iget-object v2, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mInsertListAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;

    #calls: Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->getPersistentTopViewCount()I
    invoke-static {v2}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->access$100(Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;)I

    move-result v1

    .line 370
    .local v1, topViewCount:I
    if-le v1, p3, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mInsertListAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;

    #calls: Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->onTopViewClick(I)Z
    invoke-static {v2, p3}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->access$200(Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->finish()V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    sub-int v2, p3, v1

    invoke-direct {p0, v2}, Lcom/android/htcdialer/SpeedDialListActivity;->getCallIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 378
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 379
    invoke-static {v0}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    .line 382
    :cond_2
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 296
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 302
    invoke-super {p0, p1}, Lcom/android/htcdialer/app/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 298
    :pswitch_0
    const-string v0, "ANALYTIC_htcDialer"

    const-string v1, "[SpeedDialListActivity]Add speed dial"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->addSpeedDial()V

    .line 300
    const/4 v0, 0x1

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 288
    iget-object v3, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mAdapter:Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;

    invoke-virtual {v3}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialItemListAdapter;->getCount()I

    move-result v3

    sget v4, Lcom/android/htcdialer/SpeedDialListActivity;->REMAIN_MAX_NUMBER:I

    if-gt v3, v4, :cond_1

    move v0, v2

    .line 289
    .local v0, canAdd:Z
    :goto_0
    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 291
    return v2

    .end local v0           #canAdd:Z
    :cond_1
    move v0, v1

    .line 288
    goto :goto_0
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 253
    invoke-super {p0}, Lcom/android/htcdialer/app/BaseListActivity;->onResume()V

    .line 256
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mQueryHandler:Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;->cancelOperation(I)V

    .line 258
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mQueryHandler:Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;

    sget-object v3, Landroid/provider/HtcContactsContract$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/htcdialer/util/SpeedDialUtils;->PROJECTION_MAP:[Ljava/lang/String;

    const-string v5, "raw_contact_id IS NOT NULL OR recordNumber IS NOT NULL"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htcdialer/SpeedDialListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    .line 261
    .local v8, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mVoicemail:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mVoicemail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/htcdialer/SpeedDialListActivity;->mHasVoicemail:Z

    .line 264
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {p0, v1}, Lcom/htc/util/res/HtcResUtil;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    .line 266
    .local v9, wallpaper:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/htcdialer/SpeedDialListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    .end local v9           #wallpaper:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

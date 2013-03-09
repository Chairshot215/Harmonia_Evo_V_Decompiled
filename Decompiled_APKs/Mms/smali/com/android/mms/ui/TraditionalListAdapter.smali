.class public Lcom/android/mms/ui/TraditionalListAdapter;
.super Landroid/widget/CursorAdapter;
.source "TraditionalListAdapter.java"


# static fields
.field private static final RECIPIENTS:Ljava/lang/String; = "/recipients"

.field private static final URI_RECIPIENT_STR:Ljava/lang/String; = "content://mms-sms/conversations/"

.field public static isQuerying:Z

.field private static final projection:[Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

.field private m_AddressArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

.field protected m_Inflater:Landroid/view/LayoutInflater;

.field private final m_MessageCache:Lcom/android/mms/util/MessageCache;

.field private m_ReadColorSate:Landroid/content/res/ColorStateList;

.field private m_UnReadColorSate:Landroid/content/res/ColorStateList;

.field private m_context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "recipient_address"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/ui/TraditionalListAdapter;->projection:[Ljava/lang/String;

    .line 43
    sput-boolean v2, Lcom/android/mms/ui/TraditionalListAdapter;->isQuerying:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 39
    const-string v0, "TraditionalListAdapter"

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->TAG:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/android/mms/util/MessageCache;->getInstance()Lcom/android/mms/util/MessageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->m_MessageCache:Lcom/android/mms/util/MessageCache;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->m_AddressArray:Ljava/util/HashMap;

    .line 59
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalListAdapter;->m_context:Landroid/content/Context;

    .line 60
    sget-object v0, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    .line 61
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->m_Inflater:Landroid/view/LayoutInflater;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/mms/ui/TraditionalListAdapter;->init(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 359
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1
    :goto_0
    return-wide p1

    .restart local p1
    :cond_0
    neg-long p1, p1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ReadColorSate:Landroid/content/res/ColorStateList;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->m_UnReadColorSate:Landroid/content/res/ColorStateList;

    .line 69
    return-void
.end method

.method private setMmsIndicator(Landroid/widget/ImageView;Z)V
    .locals 1
    .parameter "view"
    .parameter "bMms"

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 346
    :cond_0
    if-eqz p2, :cond_1

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    const v0, 0x7f02019f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 353
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 36
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 77
    .local v18, cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    const/4 v12, 0x1

    .line 78
    .local v12, bIsRead:Z
    const/4 v13, 0x0

    .line 79
    .local v13, bLockStatus:Z
    const/4 v11, 0x0

    .line 80
    .local v11, bHasError:Z
    const/4 v14, 0x0

    .line 81
    .local v14, bMms:Z
    const/16 v26, 0x0

    .line 97
    .local v26, nPriority:I
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ThreadListItem:Lcom/htc/widget/HtcListItemMessageBody;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    .line 98
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextLine(I)V

    .line 99
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextMaxLines(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItemMessageBody;->getQuickContactBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/htc/widget/QuickContactBadge;->setVisibility(I)V

    .line 101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyVisibility(I)V

    .line 102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const v6, 0x7f020141

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->setColorBarImageResource(I)V

    .line 104
    const-string v10, ""

    .line 105
    .local v10, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 107
    .local v31, thread_id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "mms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 109
    const/4 v14, 0x1

    .line 110
    const-string v29, ""

    .line 111
    .local v29, subject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/16 v4, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 113
    new-instance v34, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/16 v4, 0x10

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/16 v6, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    move-object/from16 v0, v34

    invoke-direct {v0, v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 115
    .local v34, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v29

    .line 117
    .end local v34           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/16 v4, 0x12

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_8

    .line 121
    const v4, 0x7f09025a

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 130
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryText(Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/16 v4, 0x11

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v19, v6, v8

    .line 133
    .local v19, date:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_AddressArray:Ljava/util/HashMap;

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_AddressArray:Ljava/util/HashMap;

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #address:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 138
    .restart local v10       #address:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/16 v4, 0x1a

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_9

    const/4 v13, 0x1

    .line 139
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/16 v4, 0x18

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/16 v4, 0x14

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 141
    .local v16, box:I
    const/4 v4, 0x4

    move/from16 v0, v16

    if-ne v0, v4, :cond_a

    const/4 v15, 0x1

    .line 142
    .local v15, bOutbox:Z
    :goto_2
    if-eqz v15, :cond_3

    .line 144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/16 v4, 0x19

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v11, 0x1

    .line 160
    .end local v15           #bOutbox:Z
    .end local v29           #subject:Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_6

    .line 162
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v4, v31, v6

    if-lez v4, :cond_f

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms-sms/conversations/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v31

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/recipients"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 165
    .local v5, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/mms/ui/TraditionalListAdapter;->projection:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 166
    .local v17, c:Landroid/database/Cursor;
    if-eqz v17, :cond_6

    .line 170
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 172
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_AddressArray:Ljava/util/HashMap;

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 202
    .end local v5           #uri:Landroid/net/Uri;
    .end local v17           #c:Landroid/database/Cursor;
    :cond_6
    :goto_4
    const-string v4, ";"

    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 204
    const-string v4, ";"

    invoke-virtual {v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 205
    .local v35, values:[Ljava/lang/String;
    const-string v28, ""

    .line 206
    .local v28, result:Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, i:I
    :goto_5
    move-object/from16 v0, v35

    array-length v4, v0

    move/from16 v0, v22

    if-ge v0, v4, :cond_11

    .line 208
    aget-object v4, v35, v22

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 210
    if-nez v22, :cond_10

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v7

    aget-object v8, v35, v22

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 206
    :cond_7
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 125
    .end local v16           #box:I
    .end local v19           #date:J
    .end local v22           #i:I
    .end local v28           #result:Ljava/lang/String;
    .end local v35           #values:[Ljava/lang/String;
    .restart local v29       #subject:Ljava/lang/String;
    :cond_8
    const v4, 0x7f090259

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 138
    .restart local v19       #date:J
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 141
    .restart local v16       #box:I
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 144
    .restart local v15       #bOutbox:Z
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 150
    .end local v15           #bOutbox:Z
    .end local v16           #box:I
    .end local v19           #date:J
    .end local v29           #subject:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/4 v6, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryText(Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/4 v4, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 152
    .restart local v19       #date:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/16 v4, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_d

    const/4 v13, 0x1

    .line 154
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/16 v4, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/4 v4, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 157
    .restart local v16       #box:I
    const/4 v4, 0x5

    move/from16 v0, v16

    if-ne v0, v4, :cond_e

    const/4 v11, 0x1

    :goto_8
    goto/16 :goto_3

    .line 153
    .end local v16           #box:I
    :cond_d
    const/4 v13, 0x0

    goto :goto_7

    .line 157
    .restart local v16       #box:I
    :cond_e
    const/4 v11, 0x0

    goto :goto_8

    .line 176
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v17       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v21

    .line 178
    .local v21, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "TraditionalListAdapter"

    const-string v6, "Can\'t get address from content resolver"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .end local v21           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v4

    .line 186
    .end local v5           #uri:Landroid/net/Uri;
    .end local v17           #c:Landroid/database/Cursor;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_context:Landroid/content/Context;

    instance-of v4, v4, Lcom/android/mms/ui/TraditionalList;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_context:Landroid/content/Context;

    if-eqz v4, :cond_6

    .line 188
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v23, v0

    .line 189
    .local v23, msg_Id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_context:Landroid/content/Context;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/mms/ui/TraditionalList;

    .line 190
    .local v30, temp:Lcom/android/mms/ui/TraditionalList;
    if-eqz v30, :cond_6

    .line 192
    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/ui/TraditionalList;->getFolder()I

    move-result v25

    .line 193
    .local v25, nFolder:I
    const/16 v4, 0x66

    move/from16 v0, v25

    if-ne v0, v4, :cond_6

    .line 195
    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/TraditionalList;->getMmsAddress(Landroid/database/Cursor;J)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    .line 216
    .end local v23           #msg_Id:J
    .end local v25           #nFolder:I
    .end local v30           #temp:Lcom/android/mms/ui/TraditionalList;
    .restart local v22       #i:I
    .restart local v28       #result:Ljava/lang/String;
    .restart local v35       #values:[Ljava/lang/String;
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v7

    aget-object v8, v35, v22

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_6

    .line 220
    :cond_11
    move-object/from16 v27, v28

    .line 227
    .end local v22           #i:I
    .end local v28           #result:Ljava/lang/String;
    .end local v35           #values:[Ljava/lang/String;
    .local v27, name:Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryText(Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p2

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringEx(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v33

    .line 231
    .local v33, timestamp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStamp(Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/16 v4, 0x12

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-gtz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->m_ColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    const/4 v4, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_14

    .line 236
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->enableColorBar(Z)V

    .line 255
    :goto_a
    if-eqz v12, :cond_15

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const v6, 0x20300b1

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const v6, 0x20300b6

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    .line 264
    :goto_b
    if-eqz v13, :cond_16

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v6, 0x7f02017c

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    :goto_c
    if-eqz v11, :cond_17

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v6, 0x7f020148

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    :goto_d
    if-lez v26, :cond_18

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 290
    packed-switch v26, :pswitch_data_0

    .line 299
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/android/mms/ui/TraditionalListAdapter;->setMmsIndicator(Landroid/widget/ImageView;Z)V

    .line 311
    return-void

    .line 224
    .end local v27           #name:Ljava/lang/String;
    .end local v33           #timestamp:Ljava/lang/String;
    :cond_13
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6, v10}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .restart local v27       #name:Ljava/lang/String;
    goto/16 :goto_9

    .line 241
    .restart local v33       #timestamp:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->enableColorBar(Z)V

    .line 242
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 260
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const v6, 0x20300bb

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const v6, 0x20300c0

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    goto/16 :goto_b

    .line 272
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 283
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 293
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v6, 0x7f020102

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 296
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v6, 0x7f020103

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_e

    .line 306
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/TraditionalListAdapter;->mMessageBody:Lcom/htc/widget/HtcListItemMessageBody;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 290
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 407
    :goto_0
    monitor-exit p0

    return-void

    .line 386
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 389
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 390
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 392
    :cond_1
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mCursor:Landroid/database/Cursor;

    .line 393
    if-eqz p1, :cond_2

    .line 395
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 396
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 397
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mRowIDColumn:I

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mDataValid:Z

    .line 399
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalListAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 403
    :cond_2
    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mRowIDColumn:I

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mDataValid:Z

    .line 405
    invoke-virtual {p0}, Lcom/android/mms/ui/TraditionalListAdapter;->notifyDataSetInvalidated()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TraditionalListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 316
    return-void
.end method

.method public getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;
    .locals 7
    .parameter "adapter"

    .prologue
    .line 320
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageType()Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, type:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/TraditionalListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v1

    .line 322
    .local v1, key:J
    iget-object v5, p0, Lcom/android/mms/ui/TraditionalListAdapter;->m_MessageCache:Lcom/android/mms/util/MessageCache;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/util/MessageCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/msg/AbstractMessage;

    .line 324
    .local v3, msg:Lcom/android/mms/msg/AbstractMessage;
    if-nez v3, :cond_0

    .line 328
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, p1, v6}, Lcom/android/mms/msg/AbstractMessage;->create(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v3

    .line 329
    iget-object v5, p0, Lcom/android/mms/ui/TraditionalListAdapter;->m_MessageCache:Lcom/android/mms/util/MessageCache;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/mms/util/MessageCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    return-object v3

    .line 331
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v5, "TraditionalListAdapter"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "parent"

    .prologue
    .line 366
    iget-object v2, p0, Lcom/android/mms/ui/TraditionalListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/HtcListItemComposer;->createConversationListItem(Landroid/content/Context;)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 367
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 368
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 369
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->m_MessageCache:Lcom/android/mms/util/MessageCache;

    invoke-virtual {v0}, Lcom/android/mms/util/MessageCache;->clear()V

    .line 377
    return-void
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalListAdapter;->m_context:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/mms/ui/TraditionalList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/TraditionalListAdapter;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 414
    const-string v1, "TraditionalListAdapter"

    const-string v2, "[onContentChanged] "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalListAdapter;->m_context:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/TraditionalList;

    .line 416
    .local v0, temp:Lcom/android/mms/ui/TraditionalList;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/ui/TraditionalList;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    iget-object v1, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 420
    sget-boolean v1, Lcom/android/mms/ui/TraditionalListAdapter;->isQuerying:Z

    if-nez v1, :cond_0

    .line 422
    const-string v1, "TraditionalListAdapter"

    const-string v2, "[onContentChanged] start query"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/TraditionalList;->startAsyncQuery(Z)V

    .line 428
    .end local v0           #temp:Lcom/android/mms/ui/TraditionalList;
    :cond_0
    return-void
.end method

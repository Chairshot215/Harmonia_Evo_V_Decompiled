.class public Lcom/android/htcdialer/BaseSmartSearchList;
.super Lcom/android/htcdialer/app/BaseListActivity;
.source "BaseSmartSearchList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;
    }
.end annotation


# static fields
.field private static BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan; = null

.field private static BACKGROUND_SPAN_COLOR:I = 0x0

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final DBG:Z = false

.field protected static final EXPANDED:Z = true

.field private static FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan; = null

.field private static FOREGROUND_SPAN_COLOR:I = 0x0

.field public static final IDX_DATA:I = 0x0

.field public static final IDX_PHONE:I = 0x1

.field protected static final IS_DOUBLESHOT_TMO:Z

.field protected static final IS_ESPRESSO:Z

.field protected static final IS_GLACIER_TMO:Z

.field protected static final IS_TMO_PROJECT:Z

.field protected static final SHRINKED:Z

.field private static matchStack:[[I


# instance fields
.field public mContext:Landroid/content/Context;

.field protected mCreated:Z

.field public mCursor:Landroid/database/Cursor;

.field public mCursorAdapter:Landroid/widget/CursorAdapter;

.field public mDisableSmartSearch:Z

.field private mEditTextWatcher:Landroid/text/TextWatcher;

.field protected mHasScrollListener:Z

.field protected mHtcContext:Landroid/content/Context;

.field protected mInputEditor:Landroid/widget/EditText;

.field protected mIsListExpanded:Z

.field protected mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

.field private mOnItemScrollListener:Lcom/android/htcdialer/widget/OnItemScrollListener;

.field private mUIHandler:Landroid/os/Handler;

.field protected mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isDoubleShotTMO()Z

    move-result v0

    sput-boolean v0, Lcom/android/htcdialer/BaseSmartSearchList;->IS_DOUBLESHOT_TMO:Z

    .line 109
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isEspresso()Z

    move-result v0

    sput-boolean v0, Lcom/android/htcdialer/BaseSmartSearchList;->IS_ESPRESSO:Z

    .line 110
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v0

    sput-boolean v0, Lcom/android/htcdialer/BaseSmartSearchList;->IS_GLACIER_TMO:Z

    .line 111
    sget-boolean v0, Lcom/android/htcdialer/BaseSmartSearchList;->IS_ESPRESSO:Z

    sget-boolean v1, Lcom/android/htcdialer/BaseSmartSearchList;->IS_GLACIER_TMO:Z

    or-int/2addr v0, v1

    sget-boolean v1, Lcom/android/htcdialer/BaseSmartSearchList;->IS_DOUBLESHOT_TMO:Z

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    .line 131
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/htcdialer/BaseSmartSearchList;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 1222
    const/16 v0, 0x3e8

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/htcdialer/app/BaseListActivity;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mCreated:Z

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mIsListExpanded:Z

    .line 136
    new-instance v0, Lcom/android/htcdialer/BaseSmartSearchList$1;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/BaseSmartSearchList$1;-><init>(Lcom/android/htcdialer/BaseSmartSearchList;)V

    iput-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mUIHandler:Landroid/os/Handler;

    .line 640
    return-void
.end method

.method static synthetic access$000(Lcom/android/htcdialer/BaseSmartSearchList;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/htcdialer/BaseSmartSearchList;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/htcdialer/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/htcdialer/BaseSmartSearchList;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htcdialer/BaseSmartSearchList;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htcdialer/BaseSmartSearchList;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htcdialer/BaseSmartSearchList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/htcdialer/BaseSmartSearchList;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/android/htcdialer/BaseSmartSearchList;->BACKGROUND_SPAN_COLOR:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/android/htcdialer/BaseSmartSearchList;->FOREGROUND_SPAN_COLOR:I

    return v0
.end method

.method static synthetic access$900([I[[[CLjava/lang/String;)Landroid/text/SpannableString;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-static {p0, p1, p2}, Lcom/android/htcdialer/BaseSmartSearchList;->getMarkedName([I[[[CLjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method public static countSeparatorsBeforePosition(Ljava/lang/String;I)I
    .locals 5
    .parameter "phoneNumber"
    .parameter "pos"

    .prologue
    .line 578
    const/4 v1, 0x0

    .line 580
    .local v1, count:I
    if-nez p0, :cond_1

    move v2, v1

    .line 597
    :cond_0
    :goto_0
    return v2

    .line 584
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 586
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 587
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 588
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 589
    if-eq p1, v1, :cond_0

    .line 593
    add-int/lit8 v1, v1, 0x1

    .line 586
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 597
    .end local v0           #c:C
    :cond_3
    if-ne v1, v3, :cond_4

    move v4, v1

    :goto_2
    move v2, v4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private static getMarkedName([I[[[CLjava/lang/String;)Landroid/text/SpannableString;
    .locals 35
    .parameter "patternList"
    .parameter "namePattern"
    .parameter "name"

    .prologue
    .line 1226
    if-eqz p0, :cond_28

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_28

    if-eqz p1, :cond_28

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_28

    .line 1228
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    .line 1229
    .local v17, pLen:I
    move-object/from16 v0, p1

    array-length v15, v0

    .line 1231
    .local v15, nLen:I
    const/16 v27, 0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 1232
    const/16 v25, 0x0

    .line 1233
    .local v25, prefixCount:I
    const/16 v26, 0x0

    .line 1234
    .local v26, result:Landroid/text/SpannableString;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v10, v0, :cond_a

    .line 1235
    if-lez v10, :cond_0

    .line 1236
    add-int/lit8 v27, v10, -0x1

    aget-object v27, p1, v27

    const/16 v28, 0x0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int v25, v25, v27

    .line 1237
    add-int/lit8 v27, v10, -0x1

    aget-object v27, p1, v27

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget-char v27, v27, v28

    const/16 v28, 0x100

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    const/16 v27, 0x1

    :goto_1
    sub-int v25, v25, v27

    .line 1240
    :cond_0
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    aget-object v27, p1, v10

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_2

    .line 1241
    const/16 v27, 0x0

    aget v27, p0, v27

    aget-object v28, p1, v10

    aget-object v28, v28, v11

    const/16 v29, 0x1

    aget-char v28, v28, v29

    invoke-static/range {v27 .. v28}, Lcom/android/htcdialer/search/SmartKeyMapping;->isNameMatch(IC)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 1242
    if-nez v26, :cond_1

    .line 1243
    new-instance v26, Landroid/text/SpannableString;

    .end local v26           #result:Landroid/text/SpannableString;
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1245
    .restart local v26       #result:Landroid/text/SpannableString;
    :cond_1
    new-instance v27, Landroid/text/style/BackgroundColorSpan;

    sget v28, Lcom/android/htcdialer/BaseSmartSearchList;->BACKGROUND_SPAN_COLOR:I

    invoke-direct/range {v27 .. v28}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int/lit8 v28, v25, 0x1

    const/16 v29, 0x21

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v25

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1248
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    sget v28, Lcom/android/htcdialer/BaseSmartSearchList;->FOREGROUND_SPAN_COLOR:I

    invoke-direct/range {v27 .. v28}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v28, v25, 0x1

    const/16 v29, 0x21

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v25

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1234
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1237
    .end local v11           #j:I
    :cond_3
    add-int/lit8 v27, v10, -0x1

    aget-object v27, p1, v27

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget-char v27, v27, v28

    shr-int/lit8 v27, v27, 0x8

    goto :goto_1

    .line 1240
    .restart local v11       #j:I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1257
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v25           #prefixCount:I
    .end local v26           #result:Landroid/text/SpannableString;
    :cond_5
    sget-object v28, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    monitor-enter v28

    .line 1258
    :try_start_0
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    const/16 v29, 0x0

    aget-object v27, v27, v29

    const/16 v29, 0x0

    sget-object v30, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    const/16 v31, 0x0

    aget-object v30, v30, v31

    const/16 v31, 0x1

    sget-object v32, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    const/16 v33, 0x0

    aget-object v32, v32, v33

    const/16 v33, 0x2

    const/16 v34, 0x0

    aput v34, v32, v33

    aput v34, v30, v31

    aput v34, v27, v29

    .line 1259
    const/16 v18, 0x0

    .line 1260
    .local v18, pivot:I
    :goto_3
    if-eqz v18, :cond_6

    if-lez v18, :cond_27

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_27

    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v29, v18, -0x1

    aget-object v27, v27, v29

    const/16 v29, 0x2

    aget v27, v27, v29

    move/from16 v0, v27

    move/from16 v1, v17

    if-ge v0, v1, :cond_27

    .line 1261
    :cond_6
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v18

    const/16 v29, 0x0

    aget v6, v27, v29

    .line 1262
    .local v6, curIndex0:I
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v0, v15, :cond_7

    const/16 v27, 0x1

    move/from16 v0, v27

    if-eq v6, v0, :cond_8

    :cond_7
    sget-boolean v27, Lcom/android/htcdialer/DialerApp;->ENABLE_SEARCH_CYCLE:Z

    if-nez v27, :cond_2a

    if-lt v6, v15, :cond_2a

    .line 1264
    :cond_8
    if-lez v18, :cond_9

    if-ne v6, v15, :cond_9

    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v29, v18, -0x1

    aget-object v27, v27, v29

    const/16 v29, 0x1

    aget v27, v27, v29

    sget-object v29, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v30, v18, -0x1

    aget-object v29, v29, v30

    const/16 v30, 0x0

    aget v29, v29, v30

    aget-object v29, p1, v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    .line 1267
    add-int/lit8 v18, v18, -0x1

    .line 1268
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v18

    const/16 v29, 0x1

    aget v30, v27, v29

    add-int/lit8 v30, v30, 0x1

    aput v30, v27, v29

    .line 1269
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v18

    const/16 v29, 0x2

    const/16 v30, 0x0

    aput v30, v27, v29

    .line 1270
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v18

    const/16 v29, 0x0

    aget v6, v27, v29

    move/from16 v19, v18

    .line 1275
    .end local v18           #pivot:I
    .local v19, pivot:I
    :goto_4
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v19

    const/16 v29, 0x1

    aget v7, v27, v29

    .line 1276
    .local v7, curIndex1:I
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v19

    const/16 v29, 0x2

    aget v8, v27, v29

    .line 1277
    .local v8, curIndex2:I
    if-lez v19, :cond_b

    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v29, v19, -0x1

    aget-object v27, v27, v29

    const/16 v29, 0x2

    aget v16, v27, v29

    .line 1279
    .local v16, pIndex:I
    :goto_5
    rem-int v27, v6, v15

    aget-object v9, p1, v27

    .line 1282
    .local v9, curPattern:[[C
    :goto_6
    aget-object v27, v9, v7

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    if-ge v8, v0, :cond_14

    add-int v27, v16, v8

    aget v27, p0, v27

    aget-object v29, v9, v7

    add-int/lit8 v30, v8, 0x1

    aget-char v29, v29, v30

    move/from16 v0, v27

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/htcdialer/search/SmartKeyMapping;->isNameMatch(IC)Z

    move-result v27

    if-eqz v27, :cond_14

    .line 1284
    add-int v27, v16, v8

    add-int/lit8 v29, v17, -0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 1285
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1272
    .end local v7           #curIndex1:I
    .end local v8           #curIndex2:I
    .end local v9           #curPattern:[[C
    .end local v16           #pIndex:I
    .end local v19           #pivot:I
    .restart local v18       #pivot:I
    :cond_9
    const/16 v26, 0x0

    monitor-exit v28

    .line 1389
    .end local v6           #curIndex0:I
    .end local v15           #nLen:I
    .end local v17           #pLen:I
    .end local v18           #pivot:I
    :cond_a
    :goto_7
    return-object v26

    .line 1277
    .restart local v6       #curIndex0:I
    .restart local v7       #curIndex1:I
    .restart local v8       #curIndex2:I
    .restart local v15       #nLen:I
    .restart local v17       #pLen:I
    .restart local v19       #pivot:I
    :cond_b
    const/16 v16, 0x0

    goto :goto_5

    .line 1287
    .restart local v9       #curPattern:[[C
    .restart local v16       #pIndex:I
    :cond_c
    new-instance v26, Landroid/text/SpannableString;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1288
    .restart local v26       #result:Landroid/text/SpannableString;
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v18, v19, 0x1

    .end local v19           #pivot:I
    .restart local v18       #pivot:I
    aget-object v27, v27, v19

    const/16 v29, 0x2

    add-int v30, v16, v8

    add-int/lit8 v30, v30, 0x1

    aput v30, v27, v29

    .line 1289
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_8
    move/from16 v0, v18

    if-ge v10, v0, :cond_13

    .line 1290
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v10

    const/16 v29, 0x0

    aget v27, v27, v29

    rem-int v6, v27, v15

    .line 1291
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v10

    const/16 v29, 0x1

    aget v7, v27, v29

    .line 1292
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v10

    const/16 v29, 0x2

    aget v29, v27, v29

    if-lez v10, :cond_d

    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v30, v10, -0x1

    aget-object v27, v27, v30

    const/16 v30, 0x2

    aget v27, v27, v30

    :goto_9
    sub-int v8, v29, v27

    .line 1293
    const/16 v25, 0x0

    .line 1294
    .restart local v25       #prefixCount:I
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_a
    if-ge v11, v6, :cond_f

    .line 1295
    aget-object v27, p1, v11

    const/16 v29, 0x0

    aget-object v27, v27, v29

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int v25, v25, v27

    .line 1296
    aget-object v27, p1, v11

    const/16 v29, 0x0

    aget-object v27, v27, v29

    const/16 v29, 0x0

    aget-char v27, v27, v29

    const/16 v29, 0x100

    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_e

    const/16 v27, 0x1

    :goto_b
    sub-int v25, v25, v27

    .line 1294
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 1292
    .end local v11           #j:I
    .end local v25           #prefixCount:I
    :cond_d
    const/16 v27, 0x0

    goto :goto_9

    .line 1296
    .restart local v11       #j:I
    .restart local v25       #prefixCount:I
    :cond_e
    aget-object v27, p1, v11

    const/16 v29, 0x0

    aget-object v27, v27, v29

    const/16 v29, 0x0

    aget-char v27, v27, v29

    shr-int/lit8 v27, v27, 0x8

    goto :goto_b

    .line 1299
    :cond_f
    aget-object v27, p1, v6

    aget-object v13, v27, v7

    .line 1300
    .local v13, matchPattern:[C
    const/4 v12, 0x0

    .line 1301
    .local v12, matchCount:I
    const/16 v27, 0x0

    aget-char v27, v13, v27

    const/16 v29, 0x100

    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 1302
    add-int/2addr v12, v8

    .line 1307
    :goto_c
    if-lez v12, :cond_10

    .line 1308
    new-instance v27, Landroid/text/style/BackgroundColorSpan;

    sget v29, Lcom/android/htcdialer/BaseSmartSearchList;->BACKGROUND_SPAN_COLOR:I

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v29, v25, v12

    const/16 v30, 0x21

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v25

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1311
    new-instance v27, Landroid/text/style/ForegroundColorSpan;

    sget v29, Lcom/android/htcdialer/BaseSmartSearchList;->FOREGROUND_SPAN_COLOR:I

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v29, v25, v12

    const/16 v30, 0x21

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v25

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1289
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    .line 1304
    :cond_11
    const/16 v27, 0x0

    aget-char v27, v13, v27

    shr-int/lit8 v5, v27, 0x8

    .line 1305
    .local v5, count:I
    if-gt v8, v5, :cond_12

    const/16 v27, 0x1

    :goto_d
    add-int v12, v12, v27

    goto :goto_c

    :cond_12
    sub-int v27, v8, v5

    add-int/lit8 v27, v27, 0x1

    goto :goto_d

    .line 1316
    .end local v5           #count:I
    .end local v11           #j:I
    .end local v12           #matchCount:I
    .end local v13           #matchPattern:[C
    .end local v25           #prefixCount:I
    :cond_13
    monitor-exit v28

    goto/16 :goto_7

    .line 1387
    .end local v6           #curIndex0:I
    .end local v7           #curIndex1:I
    .end local v8           #curIndex2:I
    .end local v9           #curPattern:[[C
    .end local v10           #i:I
    .end local v16           #pIndex:I
    .end local v18           #pivot:I
    .end local v26           #result:Landroid/text/SpannableString;
    :catchall_0
    move-exception v27

    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v27

    .line 1320
    .restart local v6       #curIndex0:I
    .restart local v7       #curIndex1:I
    .restart local v8       #curIndex2:I
    .restart local v9       #curPattern:[[C
    .restart local v16       #pIndex:I
    .restart local v19       #pivot:I
    :cond_14
    add-int/lit8 v29, v15, -0x1

    :try_start_1
    sget-boolean v27, Lcom/android/htcdialer/DialerApp;->ENABLE_SEARCH_CYCLE:Z

    if-eqz v27, :cond_15

    if-lez v19, :cond_15

    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    const/16 v30, 0x0

    aget-object v27, v27, v30

    const/16 v30, 0x0

    aget v27, v27, v30

    :goto_e
    add-int v14, v29, v27

    .line 1323
    .local v14, maxPivot:I
    if-nez v8, :cond_16

    array-length v0, v9

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    if-ge v7, v0, :cond_16

    .line 1324
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v19

    const/16 v29, 0x1

    aget v30, v27, v29

    add-int/lit8 v30, v30, 0x1

    aput v30, v27, v29

    .line 1325
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v19

    const/16 v29, 0x2

    const/16 v30, 0x0

    aput v30, v27, v29

    move/from16 v18, v19

    .end local v19           #pivot:I
    .restart local v18       #pivot:I
    goto/16 :goto_3

    .line 1320
    .end local v14           #maxPivot:I
    .end local v18           #pivot:I
    .restart local v19       #pivot:I
    :cond_15
    const/16 v27, 0x0

    goto :goto_e

    .line 1326
    .restart local v14       #maxPivot:I
    :cond_16
    if-nez v8, :cond_17

    if-ge v6, v14, :cond_17

    .line 1327
    sget-boolean v27, Lcom/android/htcdialer/DialerApp;->ENABLE_SEARCH_JUMP:Z

    if-nez v27, :cond_29

    .line 1328
    const/16 v18, 0x0

    .line 1330
    .end local v19           #pivot:I
    .restart local v18       #pivot:I
    :goto_f
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v18

    const/16 v29, 0x0

    aget v30, v27, v29

    add-int/lit8 v30, v30, 0x1

    aput v30, v27, v29

    .line 1331
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v18

    const/16 v29, 0x1

    sget-object v30, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v30, v30, v18

    const/16 v31, 0x2

    const/16 v32, 0x0

    aput v32, v30, v31

    aput v32, v27, v29

    goto/16 :goto_3

    .line 1332
    .end local v18           #pivot:I
    .restart local v19       #pivot:I
    :cond_17
    if-lez v8, :cond_1c

    aget-object v27, v9, v7

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    if-ge v8, v0, :cond_1c

    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    if-eqz v19, :cond_18

    if-ge v6, v14, :cond_1c

    .line 1335
    :cond_18
    if-lez v19, :cond_19

    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v29, v19, -0x1

    aget-object v27, v27, v29

    const/16 v29, 0x2

    aget v20, v27, v29

    .line 1336
    .local v20, preCount:I
    :goto_10
    aget-object v27, v9, v7

    const/16 v29, 0x0

    aget-char v27, v27, v29

    const/16 v29, 0x100

    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_1a

    aget-object v27, v9, v7

    const/16 v29, 0x0

    aget-char v27, v27, v29

    :goto_11
    move/from16 v0, v27

    if-ge v8, v0, :cond_1b

    .line 1338
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v19

    const/16 v29, 0x2

    add-int/lit8 v30, v20, 0x1

    aput v30, v27, v29

    .line 1342
    :goto_12
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v18, v19, 0x1

    .end local v19           #pivot:I
    .restart local v18       #pivot:I
    aget-object v27, v27, v18

    const/16 v29, 0x0

    add-int/lit8 v30, v6, 0x1

    aput v30, v27, v29

    .line 1343
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v18

    const/16 v29, 0x1

    sget-object v30, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v30, v30, v18

    const/16 v31, 0x2

    const/16 v32, 0x0

    aput v32, v30, v31

    aput v32, v27, v29

    goto/16 :goto_3

    .line 1335
    .end local v18           #pivot:I
    .end local v20           #preCount:I
    .restart local v19       #pivot:I
    :cond_19
    const/16 v20, 0x0

    goto :goto_10

    .line 1336
    .restart local v20       #preCount:I
    :cond_1a
    aget-object v27, v9, v7

    const/16 v29, 0x0

    aget-char v27, v27, v29

    shr-int/lit8 v27, v27, 0x8

    goto :goto_11

    .line 1340
    :cond_1b
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v19

    const/16 v29, 0x2

    add-int v30, v20, v8

    aput v30, v27, v29

    goto :goto_12

    .line 1344
    .end local v20           #preCount:I
    :cond_1c
    aget-object v27, v9, v7

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_1e

    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    if-eqz v19, :cond_1d

    if-ge v6, v14, :cond_1e

    .line 1346
    :cond_1d
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v19

    const/16 v29, 0x2

    add-int v30, v16, v8

    aput v30, v27, v29

    .line 1347
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v18, v19, 0x1

    .end local v19           #pivot:I
    .restart local v18       #pivot:I
    aget-object v27, v27, v18

    const/16 v29, 0x0

    add-int/lit8 v30, v6, 0x1

    aput v30, v27, v29

    .line 1348
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v18

    const/16 v29, 0x1

    sget-object v30, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v30, v30, v18

    const/16 v31, 0x2

    const/16 v32, 0x0

    aput v32, v30, v31

    aput v32, v27, v29

    goto/16 :goto_3

    .line 1349
    .end local v18           #pivot:I
    .restart local v19       #pivot:I
    :cond_1e
    if-lez v19, :cond_26

    .line 1350
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v29, v19, -0x1

    aget-object v27, v27, v29

    const/16 v29, 0x0

    aget v21, v27, v29

    .line 1351
    .local v21, preIndex0:I
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v29, v19, -0x1

    aget-object v27, v27, v29

    const/16 v29, 0x1

    aget v22, v27, v29

    .line 1352
    .local v22, preIndex1:I
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v29, v19, -0x1

    aget-object v27, v27, v29

    const/16 v29, 0x2

    aget v29, v27, v29

    const/16 v27, 0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-le v0, v1, :cond_1f

    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v30, v19, -0x2

    aget-object v27, v27, v30

    const/16 v30, 0x2

    aget v27, v27, v30

    :goto_13
    sub-int v23, v29, v27

    .line 1354
    .local v23, preIndex2:I
    rem-int v27, v21, v15

    aget-object v24, p1, v27

    .line 1356
    .local v24, prePattern:[[C
    const/16 v27, 0x1

    move/from16 v0, v23

    move/from16 v1, v27

    if-le v0, v1, :cond_22

    .line 1357
    aget-object v27, v24, v22

    const/16 v29, 0x0

    aget-char v27, v27, v29

    const/16 v29, 0x100

    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_20

    aget-object v27, v24, v22

    const/16 v29, 0x0

    aget-char v27, v27, v29

    :goto_14
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_21

    .line 1359
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v29, v19, -0x1

    aget-object v27, v27, v29

    const/16 v29, 0x2

    const/16 v30, 0x1

    aput v30, v27, v29

    .line 1363
    :goto_15
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v19

    const/16 v29, 0x0

    sget-object v30, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v31, v19, -0x1

    aget-object v30, v30, v31

    const/16 v31, 0x0

    aget v30, v30, v31

    add-int/lit8 v30, v30, 0x1

    aput v30, v27, v29

    .line 1364
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v19

    const/16 v29, 0x1

    const/16 v30, 0x0

    aput v30, v27, v29

    move/from16 v18, v19

    .end local v19           #pivot:I
    .restart local v18       #pivot:I
    goto/16 :goto_3

    .line 1352
    .end local v18           #pivot:I
    .end local v23           #preIndex2:I
    .end local v24           #prePattern:[[C
    .restart local v19       #pivot:I
    :cond_1f
    const/16 v27, 0x0

    goto :goto_13

    .line 1357
    .restart local v23       #preIndex2:I
    .restart local v24       #prePattern:[[C
    :cond_20
    aget-object v27, v24, v22

    const/16 v29, 0x0

    aget-char v27, v27, v29

    shr-int/lit8 v27, v27, 0x8

    goto :goto_14

    .line 1361
    :cond_21
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    add-int/lit8 v29, v19, -0x1

    aget-object v27, v27, v29

    const/16 v29, 0x2

    aget v30, v27, v29

    add-int/lit8 v30, v30, -0x1

    aput v30, v27, v29

    goto :goto_15

    .line 1366
    :cond_22
    const/16 v27, 0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_23

    add-int/lit8 v27, v15, -0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_23

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_23

    .line 1368
    const/16 v26, 0x0

    monitor-exit v28

    goto/16 :goto_7

    .line 1371
    :cond_23
    add-int/lit8 v18, v19, -0x1

    .line 1372
    .end local v19           #pivot:I
    .restart local v18       #pivot:I
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_24

    .line 1373
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v18

    const/16 v29, 0x1

    aget v30, v27, v29

    add-int/lit8 v30, v30, 0x1

    aput v30, v27, v29

    .line 1374
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v18

    const/16 v29, 0x2

    const/16 v30, 0x0

    aput v30, v27, v29

    goto/16 :goto_3

    .line 1376
    :cond_24
    sget-boolean v27, Lcom/android/htcdialer/DialerApp;->ENABLE_SEARCH_JUMP:Z

    if-nez v27, :cond_25

    .line 1377
    const/16 v18, 0x0

    .line 1379
    :cond_25
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v18

    const/16 v29, 0x0

    aget v30, v27, v29

    add-int/lit8 v30, v30, 0x1

    aput v30, v27, v29

    .line 1380
    sget-object v27, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v27, v27, v18

    const/16 v29, 0x1

    sget-object v30, Lcom/android/htcdialer/BaseSmartSearchList;->matchStack:[[I

    aget-object v30, v30, v18

    const/16 v31, 0x2

    const/16 v32, 0x0

    aput v32, v30, v31

    aput v32, v27, v29

    goto/16 :goto_3

    .line 1384
    .end local v18           #pivot:I
    .end local v21           #preIndex0:I
    .end local v22           #preIndex1:I
    .end local v23           #preIndex2:I
    .end local v24           #prePattern:[[C
    .restart local v19       #pivot:I
    :cond_26
    const/16 v26, 0x0

    monitor-exit v28

    goto/16 :goto_7

    .line 1387
    .end local v6           #curIndex0:I
    .end local v7           #curIndex1:I
    .end local v8           #curIndex2:I
    .end local v9           #curPattern:[[C
    .end local v14           #maxPivot:I
    .end local v16           #pIndex:I
    .end local v19           #pivot:I
    .restart local v18       #pivot:I
    :cond_27
    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1389
    .end local v15           #nLen:I
    .end local v17           #pLen:I
    .end local v18           #pivot:I
    :cond_28
    const/16 v26, 0x0

    goto/16 :goto_7

    .restart local v6       #curIndex0:I
    .restart local v7       #curIndex1:I
    .restart local v8       #curIndex2:I
    .restart local v9       #curPattern:[[C
    .restart local v14       #maxPivot:I
    .restart local v15       #nLen:I
    .restart local v16       #pIndex:I
    .restart local v17       #pLen:I
    .restart local v19       #pivot:I
    :cond_29
    move/from16 v18, v19

    .end local v19           #pivot:I
    .restart local v18       #pivot:I
    goto/16 :goto_f

    .end local v7           #curIndex1:I
    .end local v8           #curIndex2:I
    .end local v9           #curPattern:[[C
    .end local v14           #maxPivot:I
    .end local v16           #pIndex:I
    :cond_2a
    move/from16 v19, v18

    .end local v18           #pivot:I
    .restart local v19       #pivot:I
    goto/16 :goto_4
.end method

.method private handleSearchAfterOnResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-boolean v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    if-nez v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/android/htcdialer/DialerService;->registerHandler(Landroid/os/Handler;)V

    .line 413
    :cond_0
    sget-boolean v1, Lcom/android/htcdialer/DialerService;->isPreloadDone:Z

    if-eqz v1, :cond_1

    .line 414
    iget-boolean v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v1}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, keyClicked:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ltz v1, :cond_2

    .line 417
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/htcdialer/BaseSmartSearchList;->search(ILjava/lang/String;)V

    .line 425
    .end local v0           #keyClicked:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 419
    .restart local v0       #keyClicked:Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/htcdialer/BaseSmartSearchList;->search(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private initColorSpan()V
    .locals 5

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 395
    .local v1, res:Landroid/content/res/Resources;
    sget-boolean v2, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-eqz v2, :cond_0

    .line 396
    const-string v2, "text_selection_highlight"

    const-string v3, "color"

    const v4, 0x7f060022

    invoke-static {v2, v3, v4}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/htcdialer/BaseSmartSearchList;->BACKGROUND_SPAN_COLOR:I

    .line 404
    :goto_0
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    sget v3, Lcom/android/htcdialer/BaseSmartSearchList;->BACKGROUND_SPAN_COLOR:I

    invoke-direct {v2, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v2, Lcom/android/htcdialer/BaseSmartSearchList;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 405
    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/htcdialer/BaseSmartSearchList;->FOREGROUND_SPAN_COLOR:I

    .line 406
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lcom/android/htcdialer/BaseSmartSearchList;->FOREGROUND_SPAN_COLOR:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v2, Lcom/android/htcdialer/BaseSmartSearchList;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 407
    return-void

    .line 399
    :cond_0
    const-string v2, "input_text_selection_highlight"

    const-string v3, "color"

    const v4, 0x7f060020

    invoke-static {v2, v3, v4}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 401
    .local v0, colorResid:I
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/htcdialer/BaseSmartSearchList;->BACKGROUND_SPAN_COLOR:I

    goto :goto_0
.end method

.method private initScrollListenerIfNeeded()V
    .locals 2

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mHasScrollListener:Z

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mHasScrollListener:Z

    .line 431
    invoke-virtual {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    new-instance v1, Lcom/android/htcdialer/BaseSmartSearchList$2;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/BaseSmartSearchList$2;-><init>(Lcom/android/htcdialer/BaseSmartSearchList;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 447
    :cond_0
    return-void
.end method


# virtual methods
.method protected getInputEditor()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mInputEditor:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->initInputEditor()V

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mInputEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method public getSearchMode()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SearchModule;->getSearchMode()I

    move-result v0

    .line 362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getSelectedPhoneNumber()Ljava/lang/String;
    .locals 6

    .prologue
    .line 545
    const/4 v3, 0x0

    .line 547
    .local v3, number:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    .line 549
    .local v2, lisView:Lcom/htc/widget/HtcListView;
    iget-object v5, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mInputEditor:Landroid/widget/EditText;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_1

    .line 550
    iget-object v5, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 560
    :cond_0
    :goto_0
    return-object v3

    .line 551
    :cond_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;

    .line 553
    .local v0, adapter:Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;
    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v4

    .line 554
    .local v4, pos:I
    if-gez v4, :cond_2

    const/4 v1, 0x0

    .line 555
    .local v1, data:Lcom/android/htcdialer/search/SearchableObject;
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 556
    invoke-virtual {v0, v1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 554
    .end local v1           #data:Lcom/android/htcdialer/search/SearchableObject;
    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htcdialer/search/SearchableObject;

    move-object v1, v5

    goto :goto_1
.end method

.method protected handleSearchComplete(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 620
    return-void
.end method

.method protected handleStuffAfterOnResume()V
    .locals 1

    .prologue
    .line 340
    invoke-super {p0}, Lcom/android/htcdialer/app/BaseListActivity;->handleStuffAfterOnResume()V

    .line 342
    iget-boolean v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mCreated:Z

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mCreated:Z

    .line 346
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/BaseSmartSearchList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mVoiceMailNumber:Ljava/lang/String;

    .line 348
    invoke-direct {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->handleSearchAfterOnResume()V

    .line 350
    invoke-direct {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->initScrollListenerIfNeeded()V

    .line 351
    return-void
.end method

.method protected hasPhoto(J)Z
    .locals 7
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 629
    sget-object v1, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    .line 631
    .local v1, contacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    if-eqz v1, :cond_0

    .line 632
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableContact;

    .line 633
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_0

    .line 634
    iget-wide v3, v0, Lcom/android/htcdialer/search/SearchableContact;->photoId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 637
    .end local v0           #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_0
    return v2
.end method

.method protected final initInputEditor()V
    .locals 1

    .prologue
    .line 534
    const v0, 0x1020009

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/BaseSmartSearchList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mInputEditor:Landroid/widget/EditText;

    .line 535
    invoke-virtual {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->setInputWatcher()V

    .line 536
    return-void
.end method

.method public isPreloadDone()Z
    .locals 1

    .prologue
    .line 573
    sget-boolean v0, Lcom/android/htcdialer/DialerService;->isPreloadDone:Z

    return v0
.end method

.method protected newInputWatcher()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 502
    new-instance v0, Lcom/android/htcdialer/BaseSmartSearchList$3;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/BaseSmartSearchList$3;-><init>(Lcom/android/htcdialer/BaseSmartSearchList;)V

    return-object v0
.end method

.method protected newSearchListAdapter(Ljava/util/ArrayList;Ljava/util/HashMap;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/widget/BaseAdapter;"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .local p2, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-super {p0, p1}, Lcom/android/htcdialer/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 259
    iput-object p0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mContext:Landroid/content/Context;

    .line 267
    :try_start_0
    const-string v0, "com.htc"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/htcdialer/BaseSmartSearchList;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    invoke-virtual {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->setupContentView()V

    .line 275
    const v0, 0x1020009

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/BaseSmartSearchList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mInputEditor:Landroid/widget/EditText;

    .line 276
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mInputEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 277
    return-void

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 311
    invoke-super {p0}, Lcom/android/htcdialer/app/BaseListActivity;->onDestroy()V

    .line 313
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SearchModule;->destroy()V

    .line 315
    iput-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    .line 318
    :cond_0
    iput-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mOnItemScrollListener:Lcom/android/htcdialer/widget/OnItemScrollListener;

    .line 320
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mInputEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mEditTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mInputEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 324
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mCreated:Z

    .line 327
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    :cond_2
    iput-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mHtcContext:Landroid/content/Context;

    .line 336
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0x16

    const/4 v2, 0x1

    .line 372
    invoke-virtual {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x15

    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_4

    .line 375
    :cond_0
    sget-boolean v3, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-eqz v3, :cond_2

    .line 376
    invoke-super {p0, p1, p2}, Lcom/android/htcdialer/app/BaseListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 388
    :cond_1
    :goto_0
    return v2

    .line 378
    :cond_2
    invoke-virtual {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;

    .line 379
    .local v0, adapter:Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;
    if-ne p1, v4, :cond_3

    move v1, v2

    .line 382
    .local v1, isForwardRight:Z
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->scrollPhoneNumber(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mOnItemScrollListener:Lcom/android/htcdialer/widget/OnItemScrollListener;

    if-eqz v3, :cond_1

    .line 384
    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mOnItemScrollListener:Lcom/android/htcdialer/widget/OnItemScrollListener;

    invoke-virtual {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/htcdialer/widget/OnItemScrollListener;->onScrollLeft(I)V

    goto :goto_0

    .line 379
    .end local v1           #isForwardRight:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 388
    .end local v0           #adapter:Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/htcdialer/app/BaseListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 305
    invoke-super {p0}, Lcom/android/htcdialer/app/BaseListActivity;->onPause()V

    .line 306
    invoke-static {}, Lcom/android/htcdialer/DialerService;->unregisterHandler()V

    .line 307
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/android/htcdialer/app/BaseListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->setInputWatcher()V

    .line 289
    invoke-virtual {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->resolveIntent()V

    .line 291
    invoke-direct {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->initColorSpan()V

    .line 292
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Lcom/android/htcdialer/app/BaseListActivity;->onResume()V

    .line 299
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/android/htcdialer/search/SearchModule;

    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/htcdialer/search/SearchModule;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    .line 302
    :cond_0
    return-void
.end method

.method protected resolveIntent()V
    .locals 0

    .prologue
    .line 474
    return-void
.end method

.method protected search(ILjava/lang/String;)V
    .locals 2
    .parameter "n"
    .parameter "patternIndex"

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mDisableSmartSearch:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/htcdialer/DialerService;->isPreloadDone:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v0, p2}, Lcom/android/htcdialer/search/SearchModule;->doSearch(Ljava/lang/String;)V

    .line 456
    :cond_0
    return-void
.end method

.method protected setInputWatcher()V
    .locals 3

    .prologue
    .line 478
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mEditTextWatcher:Landroid/text/TextWatcher;

    if-nez v1, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/android/htcdialer/BaseSmartSearchList;->newInputWatcher()Landroid/text/TextWatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mInputEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mInputEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mInputEditor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 492
    :cond_1
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaseSmartSearchList"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setOnItemScrollListener(Lcom/android/htcdialer/widget/OnItemScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mOnItemScrollListener:Lcom/android/htcdialer/widget/OnItemScrollListener;

    .line 570
    return-void
.end method

.method public setSearchMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v0, p1}, Lcom/android/htcdialer/search/SearchModule;->setSearchMode(I)V

    .line 357
    :cond_0
    return-void
.end method

.method protected setupContentView()V
    .locals 0

    .prologue
    .line 465
    return-void
.end method

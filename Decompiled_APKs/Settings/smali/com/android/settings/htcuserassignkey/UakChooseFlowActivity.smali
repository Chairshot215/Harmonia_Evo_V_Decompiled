.class public Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;
.super Landroid/app/Activity;
.source "UakChooseFlowActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
.implements Lcom/android/settings/htcuserassignkey/UakListAdapter$UiRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;,
        Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    }
.end annotation


# static fields
.field public static final ACTION_UAK_SHORTCUT_PICKER:Ljava/lang/String; = "com.android.settings.action.UAK_PICKER"

.field static final DATA_SEPARATE_CODE:Ljava/lang/String; = "~-1~"

.field static final DATA_SET_COUNT:I = 0x3

.field public static final DEF_TIMESTAMP:J = 0x2710L

.field static final EMPTY_RECORD:Ljava/lang/String; = " ,"

.field public static final EXTRA_UAK_HW_KEY_INDEX_1_B:Ljava/lang/String; = "com.android.settings.extra.UAK_HW_KEY_INDEX"

.field private static final FINISH_DELAY:I = 0x1f4

.field public static final GROUP_COUNT:I = 0x5

.field static final MAX_HW_KEY_ID:I = 0x7

.field static final MAX_LETTER_ID:I = 0x7a

.field static final MIN_HW_KEY_ID:I = 0x1

.field public static final MIN_LETTER_ID:I = 0x61

.field public static final PERSISTENT_UAK_INFO_GROUP_PREFIX:Ljava/lang/String; = "hwk_g_"

.field public static final PERSISTENT_UAK_RECORD_DIRTY:Ljava/lang/String; = "hwk_dirty"

.field static final REQUEST_CODE_PROGRAM_ITEM:I = 0x65

.field static final REQUEST_CODE_SHORTCUT_ITEM:I = 0x66

.field public static final SECTION_COUNT:I = 0x8

.field static final SECTION_SEPARATE_CODE:Ljava/lang/String; = "~-2~"

.field static final TAG:Ljava/lang/String; = "UAK_UI_FLOW_ENTRY"

.field public static final UAK_DATA_COUNT:I = 0x7

.field static mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mIsSetupRunning:Z


# instance fields
.field handler:Landroid/os/Handler;

.field private mActiveItemName:Ljava/lang/String;

.field private mActiveKeyindex_1b:I

.field private mAdapter:Lcom/android/settings/htcuserassignkey/UakListAdapter;

.field private mTargetIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 385
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mIsSetupRunning:Z

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 576
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static clearUakData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 336
    sget-object v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 339
    sget-object v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 340
    .restart local v0       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v0, :cond_2

    .line 341
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 342
    if-eqz v3, :cond_1

    .line 343
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    move-object v2, v4

    check-cast v2, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    .line 344
    .local v2, item:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    if-eqz v2, :cond_0

    .line 345
    iput-object v5, v2, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    .line 346
    iput-object v5, v2, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->intentRecord:Ljava/lang/String;

    .line 353
    .end local v2           #item:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    :cond_0
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 350
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    move-object v2, v4

    check-cast v2, Ljava/lang/Long;

    .line 351
    .local v2, item:Ljava/lang/Long;
    if-eqz v2, :cond_0

    goto :goto_2

    .line 338
    .end local v2           #item:Ljava/lang/Long;
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_3
    return-void
.end method

.method private dumpIntent(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "target"

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, data:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 515
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 516
    .local v1, name:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 517
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 518
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    .end local v1           #name:Landroid/content/ComponentName;
    :cond_1
    if-eqz v0, :cond_2

    .line 521
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 523
    :goto_0
    return-object v2

    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method private static fillGroupDataCache(Landroid/content/Context;I)Z
    .locals 6
    .parameter "context"
    .parameter "keyId_1b"

    .prologue
    const/4 v4, 0x0

    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, isPass:Z
    new-instance v3, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;-><init>(Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$1;)V

    .line 168
    .local v3, pos:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;
    const/4 v0, 0x0

    .line 169
    .local v0, dataIndex_0b:I
    const/4 v1, 0x0

    .line 170
    .local v1, groupIndex_0b:I
    invoke-static {p1, v3}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->transferIndex(ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    iget v0, v3, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->keyIndex_0b:I

    .line 172
    iget v1, v3, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->groupIndex_0b:I

    .line 173
    sget-object v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    :cond_0
    if-nez p0, :cond_1

    .line 175
    const/4 v3, 0x0

    .line 190
    :goto_0
    return v4

    .line 180
    :cond_1
    invoke-static {v1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->prepareContainer(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 181
    const/4 v3, 0x0

    .line 182
    goto :goto_0

    .line 186
    :cond_2
    invoke-static {p0, v1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->initContainerData(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 187
    const/4 v2, 0x1

    .line 189
    :cond_3
    const/4 v3, 0x0

    move v4, v2

    .line 190
    goto :goto_0
.end method

.method private static fillGroupDataRecord(Ljava/util/ArrayList;Ljava/lang/String;I)Z
    .locals 12
    .parameter
    .parameter "record"
    .parameter "skipStartIndex_0b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, target:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 133
    if-nez p0, :cond_0

    move v5, v7

    .line 162
    :goto_0
    return v5

    .line 135
    :cond_0
    const/4 v2, 0x0

    .line 136
    .local v2, isUseDef:Z
    const/4 v3, 0x0

    .line 137
    .local v3, section:[Ljava/lang/String;
    if-nez p1, :cond_3

    .line 138
    const/4 v2, 0x1

    .line 145
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v11, :cond_a

    .line 146
    if-lt v1, p2, :cond_2

    .line 147
    const/4 v2, 0x1

    .line 148
    :cond_2
    if-nez v1, :cond_6

    .line 149
    new-instance v9, Ljava/lang/Long;

    if-eqz v2, :cond_5

    const-wide/16 v5, 0x2710

    :goto_3
    invoke-direct {v9, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v7, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 145
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 140
    .end local v1           #i:I
    :cond_3
    const-string v5, "~-2~"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 141
    if-eqz v3, :cond_4

    array-length v5, v3

    if-eq v11, v5, :cond_1

    .line 142
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 149
    .restart local v1       #i:I
    :cond_5
    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_3

    .line 151
    :cond_6
    new-instance v0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    invoke-direct {v0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;-><init>()V

    .line 152
    .local v0, data:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    if-nez v2, :cond_7

    .line 153
    aget-object v5, v3, v1

    const-string v6, "~-1~"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, set:[Ljava/lang/String;
    if-eqz v4, :cond_7

    const/4 v5, 0x3

    array-length v6, v4

    if-ne v5, v6, :cond_7

    .line 155
    aget-object v5, v4, v8

    const-string v6, " ,"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, ""

    :goto_5
    iput-object v5, v0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    .line 156
    aget-object v5, v4, v10

    const-string v6, " ,"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, ""

    :goto_6
    iput-object v5, v0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->intentRecord:Ljava/lang/String;

    .line 159
    .end local v4           #set:[Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 155
    .restart local v4       #set:[Ljava/lang/String;
    :cond_8
    aget-object v5, v4, v8

    goto :goto_5

    .line 156
    :cond_9
    aget-object v5, v4, v10

    goto :goto_6

    .end local v0           #data:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    .end local v4           #set:[Ljava/lang/String;
    :cond_a
    move v5, v8

    .line 162
    goto :goto_0
.end method

.method public static getCurrentTimeStamp(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 392
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getServerTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeStamp(Landroid/content/Context;I)J
    .locals 7
    .parameter "context"
    .parameter "keyId_1b"

    .prologue
    const-wide/16 v4, 0x2710

    .line 287
    invoke-static {p0, p1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->fillGroupDataCache(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-wide v4

    .line 290
    :cond_1
    new-instance v3, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;-><init>(Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$1;)V

    .line 291
    .local v3, pos:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;
    const/4 v1, 0x0

    .line 292
    .local v1, dataIndex_0b:I
    const/4 v2, 0x0

    .line 293
    .local v2, groupIndex_0b:I
    invoke-static {p1, v3}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->transferIndex(ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 294
    iget v1, v3, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->keyIndex_0b:I

    .line 295
    iget v2, v3, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->groupIndex_0b:I

    .line 296
    const/4 v3, 0x0

    .line 298
    sget-object v6, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v2, :cond_0

    .line 299
    sget-object v6, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 300
    .local v0, UakInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 301
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    .line 306
    .end local v0           #UakInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    const/4 v3, 0x0

    .line 307
    goto :goto_0
.end method

.method public static getUakInfo(Landroid/content/Context;ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;)Z
    .locals 6
    .parameter "context"
    .parameter "keyId_1b"
    .parameter "data"

    .prologue
    .line 312
    invoke-static {p0, p1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->fillGroupDataCache(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 313
    const/4 v3, 0x0

    .line 332
    :goto_0
    return v3

    .line 315
    :cond_0
    const/4 v3, 0x0

    .line 316
    .local v3, isPass:Z
    new-instance v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;-><init>(Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$1;)V

    .line 317
    .local v4, pos:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;
    const/4 v1, 0x0

    .line 318
    .local v1, dataIndex_0b:I
    const/4 v2, 0x0

    .line 319
    .local v2, groupIndex_0b:I
    invoke-static {p1, v4}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->transferIndex(ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    iget v1, v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->keyIndex_0b:I

    .line 321
    iget v2, v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->groupIndex_0b:I

    .line 322
    sget-object v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_1

    .line 323
    sget-object v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 324
    .local v0, UakInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v1, :cond_1

    .line 325
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    iget-object v5, v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    iput-object v5, p2, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    .line 326
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    iget-object v5, v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->intentRecord:Ljava/lang/String;

    iput-object v5, p2, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->intentRecord:Ljava/lang/String;

    .line 327
    const/4 v3, 0x1

    .line 331
    .end local v0           #UakInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    const/4 v4, 0x0

    .line 332
    goto :goto_0
.end method

.method private static initContainerData(Landroid/content/Context;I)Z
    .locals 6
    .parameter "context"
    .parameter "index_0b"

    .prologue
    const/4 v3, 0x0

    .line 108
    sget-object v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v3

    .line 111
    :cond_1
    sget-object v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 112
    invoke-static {p1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->prepareContainer(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    sget-object v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 115
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 116
    const/16 v4, 0x8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 117
    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hwk_g_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, record:Ljava/lang/String;
    const/16 v2, 0x8

    .line 122
    .local v2, skipIndex_0b:I
    if-nez p1, :cond_2

    .line 123
    invoke-static {}, Lcom/android/settings/htcuserassignkey/UakSetting;->getSupportPureKeyNumber()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 124
    :cond_2
    invoke-static {v0, v1, v2}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->fillGroupDataRecord(Ljava/util/ArrayList;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_0

    .line 126
    .end local v1           #record:Ljava/lang/String;
    .end local v2           #skipIndex_0b:I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isSetupRunning()Z
    .locals 1

    .prologue
    .line 386
    sget-boolean v0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mIsSetupRunning:Z

    return v0
.end method

.method private persistentHwKeyData(Landroid/content/Intent;)V
    .locals 7
    .parameter "intentMain"

    .prologue
    .line 482
    if-eqz p1, :cond_1

    .line 483
    const-string v6, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 484
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 485
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 488
    .local v1, catSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 490
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 491
    .local v0, catIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 493
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 497
    .end local v0           #catIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-static {v2}, Lcom/android/settings/htcuserassignkey/UakSetting;->transferIntentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, record:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 499
    new-instance v3, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    invoke-direct {v3}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;-><init>()V

    .line 501
    .local v3, item:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    const-string v6, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, name:Ljava/lang/String;
    iput-object v4, v3, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->intentRecord:Ljava/lang/String;

    .line 504
    iget v6, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mActiveKeyindex_1b:I

    invoke-static {p0, v6, v3}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->setUakInfo(Landroid/content/Context;ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;)Z

    .line 510
    .end local v1           #catSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #item:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #record:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static prepareContainer(I)Z
    .locals 7
    .parameter "index_0b"

    .prologue
    const/4 v4, 0x0

    .line 76
    if-ltz p0, :cond_0

    const/4 v5, 0x5

    if-ge v5, p0, :cond_1

    .line 77
    :cond_0
    const-string v5, "UAK_UI_FLOW_ENTRY"

    const-string v6, "prepareContainer precheck index error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return v4

    .line 80
    :cond_1
    sget-object v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 81
    const-string v5, "UAK_UI_FLOW_ENTRY"

    const-string v6, "prepareContainer precheck mData null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_2
    const/4 v1, 0x0

    .line 86
    .local v1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    .line 87
    .local v3, nodata:Z
    sget-object v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p0, v4, :cond_4

    .line 88
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-gt v2, p0, :cond_4

    .line 89
    const/4 v3, 0x1

    .line 91
    :try_start_0
    sget-object v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v3, 0x0

    .line 96
    :goto_2
    if-eqz v3, :cond_3

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v4, 0x8

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .restart local v1       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v1, :cond_3

    .line 99
    sget-object v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 88
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    .end local v2           #i:I
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 93
    .restart local v2       #i:I
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public static setSetupRunning(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 387
    sput-boolean p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mIsSetupRunning:Z

    return-void
.end method

.method public static setTimeStamp(Landroid/content/Context;IJ)Z
    .locals 7
    .parameter "context"
    .parameter "keyId_1b"
    .parameter "time"

    .prologue
    const/4 v6, 0x0

    .line 229
    if-nez p0, :cond_0

    move v2, v6

    .line 253
    :goto_0
    return v2

    .line 231
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->fillGroupDataCache(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v6

    .line 232
    goto :goto_0

    .line 234
    :cond_1
    const/4 v2, 0x0

    .line 235
    .local v2, isPass:Z
    new-instance v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;-><init>(Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$1;)V

    .line 236
    .local v4, pos:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;
    const/4 v0, 0x0

    .line 237
    .local v0, dataIndex_0b:I
    const/4 v1, 0x0

    .line 238
    .local v1, groupIndex_0b:I
    invoke-static {p1, v4}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->transferIndex(ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 239
    iget v0, v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->keyIndex_0b:I

    .line 240
    iget v1, v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->groupIndex_0b:I

    .line 242
    sget-object v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    move-object v3, v5

    check-cast v3, Ljava/lang/Long;

    .line 243
    .local v3, item:Ljava/lang/Long;
    const/4 v3, 0x0

    new-instance v3, Ljava/lang/Long;

    .end local v3           #item:Ljava/lang/Long;
    invoke-direct {v3, p2, p3}, Ljava/lang/Long;-><init>(J)V

    .line 244
    .restart local v3       #item:Ljava/lang/Long;
    if-eqz v3, :cond_2

    sget-object v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->updatePersistentData(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 247
    const/4 v4, 0x0

    move v2, v6

    .line 248
    goto :goto_0

    .line 250
    :cond_3
    const/4 v2, 0x1

    .line 252
    .end local v3           #item:Ljava/lang/Long;
    :cond_4
    const/4 v4, 0x0

    .line 253
    goto :goto_0
.end method

.method public static setUakInfo(Landroid/content/Context;ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;)Z
    .locals 9
    .parameter "context"
    .parameter "keyId_1b"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 257
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v2, v6

    .line 283
    :goto_0
    return v2

    .line 259
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->fillGroupDataCache(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v6

    .line 260
    goto :goto_0

    .line 262
    :cond_2
    const/4 v2, 0x0

    .line 263
    .local v2, isPass:Z
    new-instance v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;-><init>(Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$1;)V

    .line 264
    .local v4, pos:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;
    const/4 v0, 0x0

    .line 265
    .local v0, dataIndex_0b:I
    const/4 v1, 0x0

    .line 266
    .local v1, groupIndex_0b:I
    invoke-static {p1, v4}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->transferIndex(ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 267
    iget v0, v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->keyIndex_0b:I

    .line 268
    iget v1, v4, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->groupIndex_0b:I

    .line 270
    sget-object v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    move-object v3, v5

    check-cast v3, Ljava/lang/Long;

    .line 271
    .local v3, item:Ljava/lang/Long;
    const/4 v3, 0x0

    new-instance v3, Ljava/lang/Long;

    .end local v3           #item:Ljava/lang/Long;
    invoke-static {p0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->getCurrentTimeStamp(Landroid/content/Context;)J

    move-result-wide v7

    invoke-direct {v3, v7, v8}, Ljava/lang/Long;-><init>(J)V

    .line 272
    .restart local v3       #item:Ljava/lang/Long;
    if-eqz v3, :cond_3

    sget-object v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_3
    sget-object v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    check-cast v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    iget-object v7, p2, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    iput-object v7, v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    .line 274
    sget-object v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    check-cast v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    iget-object v7, p2, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->intentRecord:Ljava/lang/String;

    iput-object v7, v5, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->intentRecord:Ljava/lang/String;

    .line 276
    invoke-static {p0, p1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->updatePersistentData(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 277
    const/4 v4, 0x0

    move v2, v6

    .line 278
    goto :goto_0

    .line 280
    :cond_4
    const/4 v2, 0x1

    .line 282
    .end local v3           #item:Ljava/lang/Long;
    :cond_5
    const/4 v4, 0x0

    .line 283
    goto :goto_0
.end method

.method private static transferIndex(ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;)Z
    .locals 7
    .parameter "keyId_1b"
    .parameter "data"

    .prologue
    const/16 v6, 0x7a

    const/16 v5, 0x61

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    if-nez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v2

    .line 59
    :cond_1
    if-gt v3, p0, :cond_2

    const/4 v4, 0x7

    if-ge v4, p0, :cond_3

    :cond_2
    if-gt v5, p0, :cond_0

    if-lt v6, p0, :cond_0

    .line 61
    :cond_3
    move v0, p0

    .line 62
    .local v0, dataIndex_0b:I
    const/4 v1, 0x0

    .line 63
    .local v1, groupIndex_0b:I
    if-gt v5, p0, :cond_4

    if-lt v6, p0, :cond_4

    .line 64
    add-int/lit8 v2, p0, -0x61

    div-int/lit8 v2, v2, 0x7

    add-int/lit8 v1, v2, 0x1

    .line 65
    add-int/lit8 v2, p0, -0x61

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v0, v2, 0x1

    .line 67
    :cond_4
    iput v0, p1, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->keyIndex_0b:I

    .line 68
    iput v1, p1, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->groupIndex_0b:I

    move v2, v3

    .line 72
    goto :goto_0
.end method

.method private static updatePersistentData(Landroid/content/Context;I)Z
    .locals 14
    .parameter "context"
    .parameter "keyId_1b"

    .prologue
    const/4 v11, 0x0

    .line 194
    if-eqz p0, :cond_0

    sget-object v10, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    :cond_0
    move v4, v11

    .line 225
    :goto_0
    return v4

    .line 196
    :cond_1
    const/4 v4, 0x0

    .line 197
    .local v4, isPass:Z
    new-instance v6, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;-><init>(Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$1;)V

    .line 198
    .local v6, pos:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;
    const/4 v0, 0x0

    .line 199
    .local v0, dataIndex_0b:I
    const/4 v1, 0x0

    .line 200
    .local v1, groupIndex_0b:I
    invoke-static {p1, v6}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->transferIndex(ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 201
    iget v0, v6, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->keyIndex_0b:I

    .line 202
    iget v1, v6, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$IndexLocator;->groupIndex_0b:I

    .line 204
    sget-object v10, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 205
    .local v8, timestamp:J
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, record:Ljava/lang/String;
    const/4 v3, 0x0

    .line 207
    .local v3, info:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    const/4 v5, 0x0

    .line 208
    .local v5, keyIndex:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    const/16 v10, 0x8

    if-ge v2, v10, :cond_6

    .line 209
    const/4 v3, 0x0

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "~-2~"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 211
    sget-object v10, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    move-object v3, v10

    check-cast v3, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    .line 212
    if-nez v3, :cond_2

    .line 213
    const/4 v6, 0x0

    move v4, v11

    .line 214
    goto :goto_0

    .line 216
    :cond_2
    if-nez v1, :cond_3

    move v5, v2

    .line 217
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "~-1~"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v10, v3, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, " ,"

    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "~-1~"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v10, v3, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->intentRecord:Ljava/lang/String;

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, " ,"

    :goto_4
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 216
    :cond_3
    add-int/lit8 v10, v1, -0x1

    mul-int/lit8 v10, v10, 0x7

    add-int/2addr v10, v0

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v5, v10, 0x61

    goto :goto_2

    .line 217
    :cond_4
    iget-object v10, v3, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v10, v3, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->intentRecord:Ljava/lang/String;

    goto :goto_4

    .line 221
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hwk_g_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    const/4 v4, 0x1

    .line 224
    .end local v2           #i:I
    .end local v3           #info:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    .end local v5           #keyIndex:I
    .end local v7           #record:Ljava/lang/String;
    .end local v8           #timestamp:J
    :cond_7
    const/4 v6, 0x0

    .line 225
    goto/16 :goto_0
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    const/4 v3, 0x0

    .line 454
    const v2, 0x7f08018d

    invoke-virtual {p0, v2}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 455
    .local v1, shadw:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    :cond_0
    const v2, 0x7f08018e

    invoke-virtual {p0, v2}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 457
    .local v0, main:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    :cond_1
    return-void
.end method


# virtual methods
.method public RefreshContent()V
    .locals 2

    .prologue
    .line 401
    const-string v0, "UAK_UI_FLOW_ENTRY"

    const-string v1, "refreshcontent called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$1;-><init>(Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 411
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 589
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 590
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 602
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 592
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mAdapter:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->getLevel()I

    move-result v0

    if-lez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mAdapter:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->callback()V

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mAdapter:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    invoke-virtual {v1}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->getTitleString()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->updateTitle(Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x1

    goto :goto_0

    .line 590
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public finishactivity()V
    .locals 4

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$2;-><init>(Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 585
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 461
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 462
    if-ne v4, p2, :cond_1

    .line 463
    const/16 v1, 0x66

    if-ne v1, p1, :cond_1

    if-eqz p3, :cond_1

    .line 464
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, name:Ljava/lang/String;
    iput-object p3, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mTargetIntent:Landroid/content/Intent;

    .line 467
    if-nez v0, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mTargetIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mActiveItemName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mTargetIntent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->persistentHwKeyData(Landroid/content/Intent;)V

    .line 472
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->setResult(ILandroid/content/Intent;)V

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->finishactivity()V

    .line 477
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 415
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 417
    .local v1, target:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 418
    const-string v2, "com.android.settings.extra.UAK_HW_KEY_INDEX"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mActiveKeyindex_1b:I

    .line 419
    iget v2, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mActiveKeyindex_1b:I

    if-nez v2, :cond_1

    .line 420
    const-string v2, "UAK_UI_FLOW_ENTRY"

    const-string v3, "No valid hwk index extra info exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->finish()V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->requestWindowFeature(I)Z

    .line 427
    const v2, 0x7f040091

    invoke-virtual {p0, v2}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->setContentView(I)V

    .line 429
    new-instance v2, Lcom/android/settings/htcuserassignkey/UakListAdapter;

    invoke-direct {v2, p0, p0, v3}, Lcom/android/settings/htcuserassignkey/UakListAdapter;-><init>(Landroid/app/Activity;Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mAdapter:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mAdapter:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->getTitleString()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->updateTitle(Ljava/lang/String;)V

    .line 431
    const v2, 0x7f08018f

    invoke-virtual {p0, v2}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    .line 432
    .local v0, list:Lcom/htc/widget/HtcListView;
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 435
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mAdapter:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 448
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 449
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->setSetupRunning(Z)V

    .line 451
    return-void
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v5, -0x1

    .line 530
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 531
    .local v1, tag:Ljava/lang/Object;
    instance-of v3, v1, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 532
    check-cast v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;

    .line 533
    .local v0, item:Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;
    iget v3, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->actionTag:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 572
    .end local v0           #item:Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;
    :cond_0
    :goto_0
    return-void

    .line 535
    .restart local v0       #item:Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;
    :cond_1
    iget v3, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->actionTag:I

    if-ne v3, v5, :cond_2

    .line 540
    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mAdapter:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    iget v4, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->mNextAdapter:I

    invoke-virtual {v3, v4, p3}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->setClick(II)V

    .line 541
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mAdapter:Lcom/android/settings/htcuserassignkey/UakListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/htcuserassignkey/UakListAdapter;->getTitleString()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->updateTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_2
    iget v3, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->actionTag:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    .line 547
    iget v3, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->actionTag:I

    const/16 v4, 0x192

    if-ne v3, v4, :cond_4

    .line 548
    iget-object v3, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->intent:Landroid/content/Intent;

    if-nez v3, :cond_3

    .line 549
    const-string v3, "UAK_UI_FLOW_ENTRY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No intent program item found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 552
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .local v2, wraper:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 554
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v3, "android.intent.extra.shortcut.NAME"

    iget-object v4, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 556
    const-string v3, "android.intent.extra.shortcut.INTENT"

    iget-object v4, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 557
    iput-object v2, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mTargetIntent:Landroid/content/Intent;

    .line 558
    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mTargetIntent:Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->persistentHwKeyData(Landroid/content/Intent;)V

    .line 559
    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v3}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->setResult(ILandroid/content/Intent;)V

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->finishactivity()V

    goto :goto_0

    .line 565
    .end local v2           #wraper:Landroid/content/Intent;
    :cond_4
    iget v3, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->actionTag:I

    const/16 v4, 0x191

    if-ne v3, v4, :cond_0

    .line 566
    iget-object v3, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->mActiveItemName:Ljava/lang/String;

    .line 567
    iget-object v3, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->intent:Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    iget-object v3, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->intent:Landroid/content/Intent;

    const/16 v4, 0x66

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 441
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 442
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->setSetupRunning(Z)V

    .line 444
    return-void
.end method

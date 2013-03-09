.class public abstract Lcom/android/mms/ui/ConversationListBaseAdapter;
.super Landroid/widget/CursorAdapter;
.source "ConversationListBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListBaseAdapter$DraftSnippet;,
        Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;
    }
.end annotation


# static fields
.field private static final DRAFT_PROJECTION:[Ljava/lang/String; = null

.field private static final LOCAL_LOGV:Z = true

.field protected static final MODE_ALL_MESSAGE:I = 0x0

.field protected static final MODE_MMS_SMS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ConversationListBaseAdapter"

.field private static final VIEW_ARRAY_SIZE:I = 0xf

.field protected static bNeedUpdateSnippet:Z

.field private static sArrayIndex:I

.field static sEnd:Ljava/lang/String;

.field static sKeyboardConfig:I

.field private static sViewArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field static s_ConversationView:Landroid/view/View;

.field static s_TraditionalView:Landroid/view/View;


# instance fields
.field protected final MMS_TAG:Ljava/lang/String;

.field MessagePreviewsp:Landroid/content/SharedPreferences;

.field protected final SMS_TAG:Ljava/lang/String;

.field isRequeryNeeded:Z

.field isRequerying:Z

.field protected mAutoQuery:Z

.field mCurrentCursorCount:I

.field mCurrent_limit:I

.field protected mFdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;",
            ">;"
        }
    .end annotation
.end field

.field protected mMode:I

.field private mReadColorSate:Landroid/content/res/ColorStateList;

.field protected mSimpleMode:Z

.field protected mSyncObj:Ljava/lang/Object;

.field private mUnReadColorSate:Landroid/content/res/ColorStateList;

.field m_vFooter:Landroid/view/View;

.field mbShowFoot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 257
    const-string v0, "  "

    sput-object v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->sEnd:Ljava/lang/String;

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->sViewArray:Ljava/util/ArrayList;

    .line 610
    sput v3, Lcom/android/mms/ui/ConversationListBaseAdapter;->sArrayIndex:I

    .line 612
    sput-object v1, Lcom/android/mms/ui/ConversationListBaseAdapter;->s_ConversationView:Landroid/view/View;

    .line 613
    sput-object v1, Lcom/android/mms/ui/ConversationListBaseAdapter;->s_TraditionalView:Landroid/view/View;

    .line 691
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->sKeyboardConfig:I

    .line 815
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sub"

    aput-object v2, v0, v1

    const-string v1, "sub_cs"

    aput-object v1, v0, v4

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

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->DRAFT_PROJECTION:[Ljava/lang/String;

    .line 835
    sput-boolean v3, Lcom/android/mms/ui/ConversationListBaseAdapter;->bNeedUpdateSnippet:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 3
    .parameter "context"
    .parameter "c"
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 66
    iput v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mMode:I

    .line 68
    const-string v0, "sms"

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->SMS_TAG:Ljava/lang/String;

    .line 69
    const-string v0, "mms"

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->MMS_TAG:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mSimpleMode:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mFdns:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mSyncObj:Ljava/lang/Object;

    .line 79
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mAutoQuery:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequerying:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    .line 84
    iput v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrent_limit:I

    .line 85
    iput v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrentCursorCount:I

    .line 86
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mbShowFoot:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->m_vFooter:Landroid/view/View;

    .line 106
    invoke-direct {p0, p1, p3}, Lcom/android/mms/ui/ConversationListBaseAdapter;->init(Landroid/content/Context;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZI)V
    .locals 3
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 66
    iput v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mMode:I

    .line 68
    const-string v0, "sms"

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->SMS_TAG:Ljava/lang/String;

    .line 69
    const-string v0, "mms"

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->MMS_TAG:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mSimpleMode:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mFdns:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mSyncObj:Ljava/lang/Object;

    .line 79
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mAutoQuery:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequerying:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    .line 84
    iput v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrent_limit:I

    .line 85
    iput v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrentCursorCount:I

    .line 86
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mbShowFoot:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->m_vFooter:Landroid/view/View;

    .line 111
    invoke-direct {p0, p1, p4}, Lcom/android/mms/ui/ConversationListBaseAdapter;->init(Landroid/content/Context;I)V

    .line 112
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->sViewArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkIfFdnNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "address"

    .prologue
    const/4 v6, 0x1

    .line 230
    move-object v1, p1

    .line 232
    .local v1, addr:Ljava/lang/String;
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, Fdns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;>;"
    iget-object v5, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mSyncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mFdns:Ljava/util/ArrayList;

    .line 236
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    const/4 v2, 0x0

    .local v2, j:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, size:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 239
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;

    iget-object v4, v4, Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;->number:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->fdn_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;

    iget-object v4, v4, Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;->number:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_2

    .line 241
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;

    iget-object v1, v4, Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;->name:Ljava/lang/String;

    .line 246
    .end local v0           #Fdns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;>;"
    .end local v2           #j:I
    .end local v3           #size:I
    :cond_1
    return-object v1

    .line 236
    .restart local v0       #Fdns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/ConversationListBaseAdapter$Fdn;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 238
    .restart local v2       #j:I
    .restart local v3       #size:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected static compareAddresses([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 130
    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v3

    .line 133
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_5

    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, inRecipients:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 136
    aget-object v4, p0, v0

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, p0, v0

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 137
    :cond_2
    const/4 v1, 0x1

    .line 141
    :cond_3
    if-eqz v1, :cond_0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    .end local v1           #inRecipients:Z
    .end local v2           #j:I
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static createConversationCacheView()V
    .locals 2

    .prologue
    .line 632
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportConversationViewCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->getLowPriorityHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationListBaseAdapter$1;

    invoke-direct {v1}, Lcom/android/mms/ui/ConversationListBaseAdapter$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 665
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mReadColorSate:Landroid/content/res/ColorStateList;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mUnReadColorSate:Landroid/content/res/ColorStateList;

    .line 117
    iput p2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mMode:I

    .line 120
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrent_limit:I

    .line 125
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.mms_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->MessagePreviewsp:Landroid/content/SharedPreferences;

    .line 126
    return-void

    .line 123
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrent_limit:I

    goto :goto_0
.end method

.method public static newListItemView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 693
    const/4 v2, 0x0

    .line 694
    .local v2, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 696
    .local v0, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportConversationViewCache()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 697
    instance-of v3, p0, Lcom/android/mms/ui/ConversationList;

    if-eqz v3, :cond_0

    .line 698
    sget v3, Lcom/android/mms/ui/ConversationListBaseAdapter;->sArrayIndex:I

    const/16 v4, 0xf

    if-ge v3, v4, :cond_2

    .line 699
    sget-object v3, Lcom/android/mms/ui/ConversationListBaseAdapter;->sViewArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v4, Lcom/android/mms/ui/ConversationListBaseAdapter;->sArrayIndex:I

    if-le v3, v4, :cond_0

    .line 700
    sget-object v3, Lcom/android/mms/ui/ConversationListBaseAdapter;->sViewArray:Ljava/util/ArrayList;

    sget v4, Lcom/android/mms/ui/ConversationListBaseAdapter;->sArrayIndex:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/android/mms/ui/ConversationListBaseAdapter;->sArrayIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 715
    .restart local v2       #view:Landroid/view/View;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 716
    invoke-static {p0}, Lcom/android/mms/ui/HtcListItemComposer;->createConversationListItem(Landroid/content/Context;)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 717
    iget-object v2, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 770
    :cond_1
    new-instance v3, Lcom/android/mms/ui/ConversationHeader;

    invoke-direct {v3, v0}, Lcom/android/mms/ui/ConversationHeader;-><init>(Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 771
    iget-object v1, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ThreadListItem:Lcom/htc/widget/HtcListItemMessageBody;

    .line 775
    .local v1, v:Lcom/htc/widget/HtcListItemMessageBody;
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItemMessageBody;->enableColorBar(Z)V

    .line 778
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextVisibility(I)V

    .line 779
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryTextVisibility(I)V

    .line 780
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItemMessageBody;->enableBadgeComponent(Z)V

    .line 781
    return-object v2

    .line 704
    .end local v1           #v:Lcom/htc/widget/HtcListItemMessageBody;
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/HtcListItemComposer;->createConversationListItem(Landroid/content/Context;)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v0

    .line 705
    iget-object v2, v0, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    goto :goto_0
.end method

.method protected static removeCMASFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 930
    const/4 v3, -0x1

    .line 931
    .local v3, cursor_pos:I
    const/4 v4, -0x1

    .line 932
    .local v4, date_pos:I
    const/4 v7, -0x1

    .line 933
    .local v7, latest_date_pos:I
    const/4 v8, -0x1

    .line 934
    .local v8, recipient_address_pos:I
    const/4 v1, 0x0

    .line 935
    .local v1, c:Landroid/database/MatrixCursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_a

    .line 938
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 939
    .local v2, columns:[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    .end local v1           #c:Landroid/database/MatrixCursor;
    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 940
    .restart local v1       #c:Landroid/database/MatrixCursor;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v10, v2

    if-ge v6, v10, :cond_3

    .line 941
    aget-object v10, v2, v6

    const-string v11, "date"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 942
    move v4, v6

    .line 940
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 943
    :cond_1
    aget-object v10, v2, v6

    const-string v11, "recipient_address"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 944
    move v8, v6

    goto :goto_1

    .line 945
    :cond_2
    aget-object v10, v2, v6

    const-string v11, "latest_date"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 946
    move v7, v6

    goto :goto_1

    .line 948
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 949
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 951
    :cond_4
    array-length v10, v2

    new-array v9, v10, [Ljava/lang/Object;

    .line 953
    .local v9, row:[Ljava/lang/Object;
    const/4 v6, 0x0

    :goto_2
    array-length v10, v2

    if-ge v6, v10, :cond_8

    .line 955
    if-eq v6, v4, :cond_5

    if-ne v6, v7, :cond_6

    .line 957
    :cond_5
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    .line 953
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 959
    :cond_6
    if-ne v6, v8, :cond_7

    .line 961
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    goto :goto_3

    .line 965
    :cond_7
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    goto :goto_3

    .line 968
    :cond_8
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, -0x3e8

    cmp-long v10, v10, v12

    if-eqz v10, :cond_9

    .line 969
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    :cond_9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 971
    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 973
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_b

    .line 975
    :try_start_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v1, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 976
    :catch_0
    move-exception v5

    .line 977
    .local v5, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 984
    .end local v2           #columns:[Ljava/lang/String;
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .end local v6           #i:I
    .end local v9           #row:[Ljava/lang/Object;
    .end local p1
    :cond_a
    :goto_5
    return-object p1

    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v6       #i:I
    .restart local v9       #row:[Ljava/lang/Object;
    .restart local p1
    :cond_b
    move-object p1, v1

    .line 981
    goto :goto_5
.end method

.method public static resetArrayIndex()V
    .locals 2

    .prologue
    .line 668
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportConversationViewCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    const/4 v1, 0x0

    sput v1, Lcom/android/mms/ui/ConversationListBaseAdapter;->sArrayIndex:I

    .line 678
    sget-object v1, Lcom/android/mms/ui/ConversationListBaseAdapter;->s_ConversationView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 679
    sget-object v1, Lcom/android/mms/ui/ConversationListBaseAdapter;->s_ConversationView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 680
    .local v0, view:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 689
    :cond_0
    return-void
.end method

.method private setVvmIcon(Landroid/text/SpannableStringBuilder;Lcom/android/mms/ui/ConversationHeader;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "text"
    .parameter "ch"

    .prologue
    const/4 v6, 0x0

    .line 1247
    iget v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mMode:I

    if-nez v2, :cond_2

    .line 1248
    const v1, 0x7f0201ab

    .line 1250
    .local v1, resId:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMASSort()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMAS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1252
    invoke-virtual {p2}, Lcom/android/mms/ui/ConversationHeader;->getThreadId()J

    move-result-wide v2

    const-wide/16 v4, -0x3e8

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1253
    const v1, 0x7f020198

    .line 1256
    :cond_0
    iget-object v2, p2, Lcom/android/mms/ui/ConversationHeader;->mMsgType:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1257
    iget-object v2, p2, Lcom/android/mms/ui/ConversationHeader;->mMsgType:Ljava/lang/String;

    const-string v3, "vvm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1258
    const v1, 0x7f0201ac

    .line 1265
    :cond_1
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1266
    const-string v0, "VVMicon"

    .line 1267
    .local v0, iconView:Ljava/lang/String;
    invoke-virtual {p1, v6, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1268
    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {p1, v2, v6, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1271
    .end local v0           #iconView:Ljava/lang/String;
    .end local v1           #resId:I
    :cond_2
    return-object p1

    .line 1262
    .restart local v1       #resId:I
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected static sortCMASCursor(Landroid/content/Context;Landroid/database/Cursor;Landroid/database/Cursor;ILandroid/app/Activity;Lcom/android/mms/ui/ConversationListBaseAdapter;I)Landroid/database/Cursor;
    .locals 16
    .parameter "context"
    .parameter "ori_Cursor"
    .parameter "CMAS_Cursor"
    .parameter "columnDate"
    .parameter "activity"
    .parameter "adapter"
    .parameter "iCurrentSort"

    .prologue
    .line 987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 988
    .local v9, t:J
    const/4 v8, 0x0

    .line 990
    .local v8, mc:Landroid/database/MatrixCursor;
    const/4 v4, 0x0

    .line 991
    .local v4, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    if-eqz p1, :cond_3

    .line 992
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v5

    .line 993
    .local v5, columns:[Ljava/lang/String;
    new-instance v8, Landroid/database/MatrixCursor;

    .end local v8           #mc:Landroid/database/MatrixCursor;
    invoke-direct {v8, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 995
    .restart local v8       #mc:Landroid/database/MatrixCursor;
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->isResumed()Z

    move-result v12

    if-nez v12, :cond_2

    .line 997
    const-string v12, "ConversationListBaseAdapter"

    const-string v13, "sortCursor() inturrupted"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/4 v12, 0x1

    move-object/from16 v0, p5

    iput-boolean v12, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    .line 999
    if-eqz p1, :cond_0

    .line 1000
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 1001
    :cond_0
    const/16 p1, 0x0

    .line 1072
    .end local v5           #columns:[Ljava/lang/String;
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 1003
    .restart local v5       #columns:[Ljava/lang/String;
    .restart local p1
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->addCMASCursor(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/app/Activity;Lcom/android/mms/ui/ConversationListBaseAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1006
    .end local v5           #columns:[Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_1

    .line 1009
    move-object/from16 v11, p4

    .line 1012
    .local v11, tempActivity:Landroid/app/Activity;
    :try_start_0
    new-instance v12, Lcom/android/mms/ui/ConversationListBaseAdapter$2;

    move/from16 v0, p6

    move/from16 v1, p3

    invoke-direct {v12, v11, v0, v1}, Lcom/android/mms/ui/ConversationListBaseAdapter$2;-><init>(Landroid/app/Activity;II)V

    invoke-static {v4, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_5

    .line 1060
    :try_start_1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    invoke-virtual {v8, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1058
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1049
    .end local v7           #i:I
    :catch_0
    move-exception v6

    .line 1051
    .local v6, e:Ljava/lang/IllegalStateException;
    const-string v12, "ConversationListBaseAdapter"

    const-string v13, "sortCursor() inturrupted"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const/4 v12, 0x1

    move-object/from16 v0, p5

    iput-boolean v12, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequerying:Z

    .line 1053
    if-eqz p1, :cond_4

    .line 1054
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 1055
    :cond_4
    const/16 p1, 0x0

    goto :goto_0

    .line 1061
    .end local v6           #e:Ljava/lang/IllegalStateException;
    .restart local v7       #i:I
    :catch_1
    move-exception v6

    .line 1062
    .local v6, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1066
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    :cond_5
    if-eqz p1, :cond_6

    .line 1067
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 1068
    :cond_6
    const-string v12, "ConversationListBaseAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sortCursor time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v9

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    if-eqz v8, :cond_7

    .line 1071
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v12, v13}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_7
    move-object/from16 p1, v8

    .line 1072
    goto :goto_0
.end method

.method protected static sortCursor(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/ConversationListBaseActivity;Lcom/android/mms/ui/ConversationListBaseAdapter;I)Landroid/database/Cursor;
    .locals 14
    .parameter "context"
    .parameter "cursor"
    .parameter "columnDate"
    .parameter "activity"
    .parameter "adapter"
    .parameter "iCurrentSort"

    .prologue
    .line 1078
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1079
    .local v7, t:J
    const/4 v6, 0x0

    .line 1081
    .local v6, mc:Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/util/DraftCache;->hasDraft()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1171
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1084
    .restart local p1
    :cond_1
    const/4 v2, 0x0

    .line 1085
    .local v2, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    if-eqz p1, :cond_4

    .line 1086
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 1087
    .local v3, columns:[Ljava/lang/String;
    new-instance v6, Landroid/database/MatrixCursor;

    .end local v6           #mc:Landroid/database/MatrixCursor;
    invoke-direct {v6, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1089
    .restart local v6       #mc:Landroid/database/MatrixCursor;
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationListBaseActivity;->isResumed()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1091
    const-string v10, "ConversationListBaseAdapter"

    const-string v11, "sortCursor() inturrupted"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const/4 v10, 0x1

    move-object/from16 v0, p4

    iput-boolean v10, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    .line 1093
    if-eqz p1, :cond_2

    .line 1094
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1096
    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 1098
    :cond_3
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->cloneThreadListCursor(Landroid/database/Cursor;Lcom/android/mms/ui/ConversationListBaseActivity;Lcom/android/mms/ui/ConversationListBaseAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1101
    .end local v3           #columns:[Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_0

    .line 1105
    move-object/from16 v9, p3

    .line 1108
    .local v9, tempActivity:Landroid/app/Activity;
    :try_start_0
    new-instance v10, Lcom/android/mms/ui/ConversationListBaseAdapter$3;

    move/from16 v0, p5

    move/from16 v1, p2

    invoke-direct {v10, v9, v0, v1}, Lcom/android/mms/ui/ConversationListBaseAdapter$3;-><init>(Landroid/app/Activity;II)V

    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    .line 1157
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v6, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1155
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1146
    .end local v5           #i:I
    :catch_0
    move-exception v4

    .line 1148
    .local v4, e:Ljava/lang/IllegalStateException;
    const-string v10, "ConversationListBaseAdapter"

    const-string v11, "sortCursor() inturrupted"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const/4 v10, 0x1

    move-object/from16 v0, p4

    iput-boolean v10, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequerying:Z

    .line 1150
    if-eqz p1, :cond_5

    .line 1151
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1152
    :cond_5
    const/4 p1, 0x0

    goto :goto_0

    .line 1158
    .end local v4           #e:Ljava/lang/IllegalStateException;
    .restart local v5       #i:I
    :catch_1
    move-exception v4

    .line 1159
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1164
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1166
    const-string v10, "ConversationListBaseAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sortCursor time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    if-eqz v6, :cond_7

    .line 1169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v10, v11}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_7
    move-object p1, v6

    .line 1171
    goto/16 :goto_0
.end method


# virtual methods
.method addGetMoreView(Lcom/htc/widget/HtcListView;)V
    .locals 3
    .parameter "listView"

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->m_vFooter:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1240
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->createGetMoreView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->m_vFooter:Landroid/view/View;

    .line 1241
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->m_vFooter:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mbShowFoot:Z

    .line 1244
    :cond_0
    return-void
.end method

.method protected bind(Landroid/view/View;Landroid/content/Context;Lcom/android/mms/ui/ConversationHeader;)V
    .locals 31
    .parameter "view"
    .parameter "context"
    .parameter "ch"

    .prologue
    .line 283
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/mms/ui/ConversationHeader;->mGroupView:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 284
    .local v11, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v14, v11, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ThreadListItem:Lcom/htc/widget/HtcListItemMessageBody;

    .line 285
    .local v14, listItemView:Lcom/htc/widget/HtcListItemMessageBody;
    invoke-virtual {v14}, Lcom/htc/widget/HtcListItemMessageBody;->getQuickContactBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v6

    .line 286
    .local v6, mBadge:Landroid/widget/ImageView;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 287
    .local v16, mRightIndicator:Landroid/widget/ImageView;
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 288
    .local v17, mSecondIndicator:Landroid/widget/ImageView;
    const/4 v3, 0x2

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 289
    .local v18, mThirdIndicator:Landroid/widget/ImageView;
    const/4 v3, 0x3

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->getBadge(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 291
    .local v15, mFourthIndicator:Landroid/widget/ImageView;
    const/4 v7, 0x0

    .line 293
    .local v7, isGroup:Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->isRead()Z

    move-result v13

    .line 296
    .local v13, isRead:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mMode:I

    if-nez v3, :cond_7

    .line 298
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->MessagePreviewsp:Landroid/content/SharedPreferences;

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isSupportMessagePreview(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 299
    sget v3, Lcom/android/mms/ui/ConversationListAdapter;->mMessagePreviewLine:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 301
    const-string v3, ""

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStamp(Ljava/lang/String;)V

    .line 302
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lcom/android/mms/ui/ConversationListBaseAdapter;->setVvmIcon(Landroid/text/SpannableStringBuilder;Lcom/android/mms/ui/ConversationHeader;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 303
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyVisibility(I)V

    .line 325
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 326
    const/4 v7, 0x1

    .line 327
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 329
    .local v28, values:[Ljava/lang/String;
    const/16 v21, 0x0

    .line 330
    .local v21, names:[Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/mms/ui/ConversationHeader;->mName:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/mms/ui/ConversationHeader;->mName:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 331
    :cond_1
    if-eqz v21, :cond_2

    move-object/from16 v0, v21

    array-length v3, v0

    move-object/from16 v0, v28

    array-length v4, v0

    if-eq v3, v4, :cond_3

    .line 332
    :cond_2
    move-object/from16 v21, v28

    .line 335
    :cond_3
    const-string v24, ""

    .line 336
    .local v24, result:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, v28

    array-length v3, v0

    if-ge v12, v3, :cond_9

    .line 337
    aget-object v3, v28, v12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 338
    if-nez v12, :cond_8

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v4

    aget-object v8, v28, v12

    aget-object v29, v21, v12

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v8, v1}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 336
    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 306
    .end local v12           #i:I
    .end local v21           #names:[Ljava/lang/String;
    .end local v24           #result:Ljava/lang/String;
    .end local v28           #values:[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStamp(Ljava/lang/String;)V

    .line 307
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyVisibility(I)V

    goto :goto_0

    .line 311
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStamp(Ljava/lang/String;)V

    .line 312
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyVisibility(I)V

    goto/16 :goto_0

    .line 317
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStamp(Ljava/lang/String;)V

    .line 318
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyVisibility(I)V

    goto/16 :goto_0

    .line 341
    .restart local v12       #i:I
    .restart local v21       #names:[Ljava/lang/String;
    .restart local v24       #result:Ljava/lang/String;
    .restart local v28       #values:[Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v4

    aget-object v8, v28, v12

    aget-object v29, v21, v12

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v8, v1}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_2

    .line 344
    :cond_9
    move-object/from16 v20, v24

    .line 350
    .end local v12           #i:I
    .end local v21           #names:[Ljava/lang/String;
    .end local v24           #result:Ljava/lang/String;
    .end local v28           #values:[Ljava/lang/String;
    .local v20, name:Ljava/lang/String;
    :goto_3
    move-object/from16 v10, v20

    .line 352
    .local v10, from:Ljava/lang/CharSequence;
    if-nez v10, :cond_a

    .line 353
    const-string v3, "ConversationListBaseAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name is null>> from: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " name: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/mms/ui/ConversationHeader;->mName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v10, ""

    .line 369
    :cond_a
    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryText(Ljava/lang/String;)V

    .line 370
    if-eqz v13, :cond_13

    const v3, 0x20300b1

    :goto_4
    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    .line 372
    if-eqz v13, :cond_14

    const v3, 0x20300b6

    :goto_5
    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    .line 374
    if-eqz v13, :cond_15

    const v3, 0x20300c5

    :goto_6
    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextStyle(I)V

    .line 377
    new-instance v26, Landroid/text/SpannableStringBuilder;

    const-string v3, ""

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 378
    .local v26, subjectString:Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getSubject()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 379
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v23

    .line 380
    .local v23, parser:Lcom/android/mms/util/SmileyParser;
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getSubject()Ljava/lang/String;

    move-result-object v25

    .line 381
    .local v25, subject:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 382
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/mms/ui/ConversationHeader;->mMsgBox:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_d

    .line 383
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/mms/ui/ConversationHeader;->mMsgBox:I

    move/from16 v19, v0

    .line 384
    .local v19, msgbox:I
    const/4 v9, 0x0

    .line 385
    .local v9, bMe:Z
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/mms/ui/ConversationHeader;->mIsSms:Z

    if-eqz v3, :cond_16

    .line 386
    const/4 v3, 0x5

    move/from16 v0, v19

    if-eq v0, v3, :cond_b

    const/4 v3, 0x4

    move/from16 v0, v19

    if-eq v0, v3, :cond_b

    const/4 v3, 0x6

    move/from16 v0, v19

    if-eq v0, v3, :cond_b

    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_c

    .line 390
    :cond_b
    const/4 v9, 0x1

    .line 395
    :cond_c
    :goto_7
    if-eqz v9, :cond_d

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f090022

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 401
    .end local v9           #bMe:Z
    .end local v19           #msgbox:I
    :cond_d
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v26

    .end local v26           #subjectString:Landroid/text/SpannableStringBuilder;
    check-cast v26, Landroid/text/SpannableStringBuilder;

    .line 403
    .restart local v26       #subjectString:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 407
    .end local v23           #parser:Lcom/android/mms/util/SmileyParser;
    .end local v25           #subject:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mMode:I

    if-nez v3, :cond_1a

    .line 409
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->MessagePreviewsp:Landroid/content/SharedPreferences;

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isSupportMessagePreview(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 410
    sget v3, Lcom/android/mms/ui/ConversationListAdapter;->mMessagePreviewLine:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_18

    .line 411
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyText(Ljava/lang/CharSequence;)V

    .line 412
    sget v3, Lcom/android/mms/ui/ConversationListAdapter;->mMessagePreviewLine:I

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextMaxLines(I)V

    .line 441
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsApp;->isConversationSupportPhoto()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 442
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getUnreadCount()I

    move-result v27

    .line 443
    .local v27, unreadCount:I
    if-lez v27, :cond_1c

    .line 445
    const/16 v3, 0x63

    move/from16 v0, v27

    if-le v0, v3, :cond_1b

    .line 446
    const-string v22, "99+"

    .line 451
    .local v22, number:Ljava/lang/String;
    :goto_9
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setBubbleCount(Ljava/lang/String;)V

    .line 457
    .end local v22           #number:Ljava/lang/String;
    :goto_a
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, address:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMASSort()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMAS()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getThreadId()J

    move-result-wide v3

    const-wide/16 v29, -0x3e8

    cmp-long v3, v3, v29

    if-nez v3, :cond_1d

    .line 461
    const v3, 0x7f02002a

    invoke-virtual {v6, v3}, Lcom/htc/widget/QuickContactBadge;->setBackgroundResource(I)V

    .line 462
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 502
    .end local v5           #address:Ljava/lang/String;
    .end local v27           #unreadCount:I
    :cond_10
    :goto_b
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/mms/ui/ConversationHeader;->mMsgType:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 503
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getLockStatus()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 504
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 505
    const v3, 0x7f02017c

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 513
    :goto_c
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/mms/ui/ConversationHeader;->mMsgType:Ljava/lang/String;

    if-nez v3, :cond_22

    .line 515
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getSendingStatus()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 516
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    const v3, 0x7f02017f

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 539
    :goto_d
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/mms/ui/ConversationHeader;->mMsgType:Ljava/lang/String;

    if-nez v3, :cond_26

    .line 540
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getPriority()I

    move-result v3

    if-lez v3, :cond_25

    .line 541
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 543
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getPriority()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 551
    :pswitch_0
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    :goto_e
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_11

    .line 574
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/mms/ui/ConversationHeader;->mIsMms:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    .line 575
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    :cond_11
    :goto_f
    return-void

    .line 347
    .end local v10           #from:Ljava/lang/CharSequence;
    .end local v20           #name:Ljava/lang/String;
    .end local v26           #subjectString:Landroid/text/SpannableStringBuilder;
    :cond_12
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/mms/ui/ConversationHeader;->mName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v8, v0}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .restart local v20       #name:Ljava/lang/String;
    goto/16 :goto_3

    .line 370
    .restart local v10       #from:Ljava/lang/CharSequence;
    :cond_13
    const v3, 0x20300bb

    goto/16 :goto_4

    .line 372
    :cond_14
    const v3, 0x20300c0

    goto/16 :goto_5

    .line 374
    :cond_15
    const v3, 0x20300c8

    goto/16 :goto_6

    .line 391
    .restart local v9       #bMe:Z
    .restart local v19       #msgbox:I
    .restart local v23       #parser:Lcom/android/mms/util/SmileyParser;
    .restart local v25       #subject:Ljava/lang/String;
    .restart local v26       #subjectString:Landroid/text/SpannableStringBuilder;
    :cond_16
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/mms/ui/ConversationHeader;->mIsMms:Z

    if-eqz v3, :cond_c

    .line 392
    const/4 v3, 0x2

    move/from16 v0, v19

    if-eq v0, v3, :cond_17

    const/4 v3, 0x4

    move/from16 v0, v19

    if-ne v0, v3, :cond_c

    .line 393
    :cond_17
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 415
    .end local v9           #bMe:Z
    .end local v19           #msgbox:I
    .end local v23           #parser:Lcom/android/mms/util/SmileyParser;
    .end local v25           #subject:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ConversationListBaseAdapter;->setVvmIcon(Landroid/text/SpannableStringBuilder;Lcom/android/mms/ui/ConversationHeader;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 419
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ConversationListBaseAdapter;->setVvmIcon(Landroid/text/SpannableStringBuilder;Lcom/android/mms/ui/ConversationHeader;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 424
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ConversationListBaseAdapter;->setVvmIcon(Landroid/text/SpannableStringBuilder;Lcom/android/mms/ui/ConversationHeader;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 448
    .restart local v27       #unreadCount:I
    :cond_1b
    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    .restart local v22       #number:Ljava/lang/String;
    goto/16 :goto_9

    .line 454
    .end local v22           #number:Ljava/lang/String;
    :cond_1c
    const-string v3, "0"

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setBubbleCount(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 466
    .restart local v5       #address:Ljava/lang/String;
    :cond_1d
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/android/mms/util/ContactNameCache;->setPhotoIconOnClick(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 467
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v3

    const/4 v8, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/ContactNameCache;->setContactPhoto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;ZZ)V

    goto/16 :goto_b

    .line 507
    .end local v5           #address:Ljava/lang/String;
    .end local v27           #unreadCount:I
    :cond_1e
    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 510
    :cond_1f
    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 518
    :cond_20
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/ConversationHeader;->hasError()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 519
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    const v3, 0x7f020148

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 522
    :cond_21
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 525
    :cond_22
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/mms/ui/ConversationHeader;->mMsgType:Ljava/lang/String;

    const-string v4, "vvm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 527
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/mms/ui/ConversationHeader;->mPrivate:Z

    if-eqz v3, :cond_23

    .line 528
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    const v3, 0x7f0201a9

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 531
    :cond_23
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 535
    :cond_24
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 545
    :pswitch_1
    const v3, 0x7f020102

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_e

    .line 548
    :pswitch_2
    const v3, 0x7f020103

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_e

    .line 555
    :cond_25
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 558
    :cond_26
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/mms/ui/ConversationHeader;->mMsgType:Ljava/lang/String;

    const-string v4, "vvm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 560
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/mms/ui/ConversationHeader;->mUrgent:Z

    if-eqz v3, :cond_27

    .line 561
    const v3, 0x7f0201aa

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 562
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 564
    :cond_27
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 568
    :cond_28
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 577
    :cond_29
    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    .line 543
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 584
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationHeader;

    .line 587
    .local v0, ch:Lcom/android/mms/ui/ConversationHeader;
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationHeader;->reset()V

    .line 588
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/mms/ui/ConversationListBaseAdapter;->extractDataFromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/ui/ConversationHeader;)V

    .line 589
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    const-string v2, "msg_box"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 591
    .local v1, idx:I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 592
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/mms/ui/ConversationHeader;->mMsgBox:I

    .line 595
    .end local v1           #idx:I
    :cond_0
    iget-object v2, v0, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    invoke-virtual {p0, p2, v2, v0}, Lcom/android/mms/ui/ConversationListBaseAdapter;->setDisplayAddress(Landroid/content/Context;Ljava/lang/String;Lcom/android/mms/ui/ConversationHeader;)V

    .line 597
    iget v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 601
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/android/mms/ui/ConversationListBaseAdapter;->setSubject(Landroid/content/Context;Lcom/android/mms/ui/ConversationHeader;)V

    .line 603
    iget-wide v2, v0, Lcom/android/mms/ui/ConversationHeader;->mDateMillisec:J

    invoke-static {p2, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringEx(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/mms/ui/ConversationHeader;->mDate:Ljava/lang/String;

    .line 605
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 606
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/mms/ui/ConversationListBaseAdapter;->bind(Landroid/view/View;Landroid/content/Context;Lcom/android/mms/ui/ConversationHeader;)V

    .line 607
    return-void
.end method

.method abstract extractDataFromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/ui/ConversationHeader;)V
.end method

.method getGetMoreView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->m_vFooter:Landroid/view/View;

    return-object v0
.end method

.method public getReadColorState()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mReadColorSate:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getUnReadColorState()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mUnReadColorSate:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected hasMmsError(I)Z
    .locals 1
    .parameter "errorType"

    .prologue
    .line 200
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedRequery()Z
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequeryNeeded:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 788
    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/ConversationListBaseAdapter;->newListItemView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method removeGetMoreView(Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->m_vFooter:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->m_vFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListView;->removeFooterView(Landroid/view/View;)Z

    .line 1234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mbShowFoot:Z

    .line 1236
    :cond_0
    return-void
.end method

.method public setAutoQueryCursor(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mAutoQuery:Z

    .line 806
    return-void
.end method

.method protected setDisplayAddress(Landroid/content/Context;Ljava/lang/String;Lcom/android/mms/ui/ConversationHeader;)V
    .locals 1
    .parameter "context"
    .parameter "address"
    .parameter "ch"

    .prologue
    .line 250
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ConversationListBaseAdapter;->checkIfFdnNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 251
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const v0, 0x7f090021

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/android/mms/ui/ConversationHeader;->mIsValidAddress:Z

    .line 255
    :cond_0
    return-void
.end method

.method protected setDraftPreviewSnippet(Landroid/content/Context;Lcom/android/mms/ui/ConversationHeader;)V
    .locals 5
    .parameter "context"
    .parameter "ch"

    .prologue
    .line 174
    iget-boolean v1, p2, Lcom/android/mms/ui/ConversationHeader;->mIsValidAddress:Z

    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    iget-object v2, p2, Lcom/android/mms/ui/ConversationHeader;->mFrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/mms/util/DraftCache;->getSnippet(Ljava/lang/String;)Lcom/android/mms/util/DraftCache$DraftSnippet;

    move-result-object v0

    .line 177
    .local v0, snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    if-eqz v0, :cond_0

    .line 179
    if-eqz v0, :cond_0

    .line 181
    iget-object v1, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isSmsVcard(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const v1, 0x7f0902d4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 186
    const-string v1, "mms"

    iget-object v2, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    iget-wide v1, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p2, Lcom/android/mms/ui/ConversationHeader;->mDateMillisec:J

    .line 195
    .end local v0           #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :cond_0
    :goto_0
    return-void

    .line 189
    .restart local v0       #snippet:Lcom/android/mms/util/DraftCache$DraftSnippet;
    :cond_1
    iget-wide v1, v0, Lcom/android/mms/util/DraftCache$DraftSnippet;->date:J

    iput-wide v1, p2, Lcom/android/mms/ui/ConversationHeader;->mDateMillisec:J

    goto :goto_0
.end method

.method setGetMoreFootView(Lcom/htc/widget/HtcListView;Landroid/database/Cursor;)Z
    .locals 5
    .parameter "listView"
    .parameter "newCursor"

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 1181
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLoadAnimation()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1224
    :cond_0
    :goto_0
    return v1

    .line 1184
    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 1188
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->m_vFooter:Landroid/view/View;

    if-nez v2, :cond_2

    .line 1190
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->createGetMoreView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->m_vFooter:Landroid/view/View;

    .line 1193
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1196
    const/4 v0, 0x0

    .line 1199
    .local v0, count:I
    if-eqz p2, :cond_3

    .line 1200
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1202
    :cond_3
    iget v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrentCursorCount:I

    if-eq v0, v2, :cond_6

    iget v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrentCursorCount:I

    sub-int v2, v0, v2

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrent_limit:I

    if-eq v2, v4, :cond_6

    .line 1206
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mbShowFoot:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrent_limit:I

    if-ne v0, v1, :cond_4

    .line 1207
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->m_vFooter:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;)V

    .line 1208
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mbShowFoot:Z

    .line 1221
    :cond_4
    :goto_1
    if-lez v0, :cond_5

    .line 1222
    iput v0, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrentCursorCount:I

    .line 1224
    :cond_5
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mbShowFoot:Z

    goto :goto_0

    .line 1213
    :cond_6
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mbShowFoot:Z

    if-eqz v2, :cond_4

    .line 1214
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getFooterViewsCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 1215
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->m_vFooter:Landroid/view/View;

    invoke-virtual {p1, v2}, Lcom/htc/widget/HtcListView;->removeFooterView(Landroid/view/View;)Z

    .line 1216
    :cond_7
    iput v4, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mCurrent_limit:I

    .line 1217
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListBaseAdapter;->mbShowFoot:Z

    goto :goto_1
.end method

.method protected setSubject(Landroid/content/Context;Lcom/android/mms/ui/ConversationHeader;)V
    .locals 2
    .parameter "context"
    .parameter "ch"

    .prologue
    const v1, 0x7f09025a

    .line 209
    iget-boolean v0, p2, Lcom/android/mms/ui/ConversationHeader;->mIsSms:Z

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSmsVcard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const v0, 0x7f090172

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-boolean v0, p2, Lcom/android/mms/ui/ConversationHeader;->mIsSms:Z

    if-eqz v0, :cond_2

    .line 214
    const-string v0, ""

    iput-object v0, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_2
    iget-boolean v0, p2, Lcom/android/mms/ui/ConversationHeader;->mIsMms:Z

    if-eqz v0, :cond_4

    .line 216
    iget-boolean v0, p2, Lcom/android/mms/ui/ConversationHeader;->mIsRead:Z

    if-nez v0, :cond_3

    .line 217
    const v0, 0x7f090259

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 223
    :cond_4
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/mms/ui/ConversationHeader;->mSubject:Ljava/lang/String;

    goto :goto_0
.end method

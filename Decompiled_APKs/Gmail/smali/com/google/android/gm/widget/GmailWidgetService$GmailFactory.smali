.class Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;
.super Ljava/lang/Object;
.source "GmailWidgetService.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/widget/GmailWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GmailFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$LabelUpdateHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final LABEL_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mAppWidgetId:I

.field private final mContext:Landroid/content/Context;

.field private mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

.field private final mGmail:Lcom/google/android/gm/provider/Gmail;

.field private final mLabel:Ljava/lang/String;

.field private mLabelCount:I

.field private mLabelInformationShown:Z

.field private mLabelLoader:Landroid/content/CursorLoader;

.field private mLabelUpdateHandler:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$LabelUpdateHandler;

.field private mShouldShowViewMore:Z

.field private final mWidgetConversationViewBuilder:Lcom/google/android/gm/widget/WidgetConversationViewBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "numConversations"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "numUnreadConversations"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->LABEL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelInformationShown:Z

    .line 73
    iput-object p1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    .line 74
    const-string v1, "appWidgetId"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAppWidgetId:I

    .line 76
    const-string v1, "account"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    .line 77
    const-string v1, "label"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, label:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #label:Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabel:Ljava/lang/String;

    .line 79
    new-instance v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mWidgetConversationViewBuilder:Lcom/google/android/gm/widget/WidgetConversationViewBuilder;

    .line 80
    new-instance v1, Lcom/google/android/gm/provider/Gmail;

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gm/provider/Gmail;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 81
    return-void

    .line 78
    .restart local v0       #label:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;)Landroid/content/CursorLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method private static filterTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "subject"

    .prologue
    .line 286
    move-object v1, p0

    .line 287
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    .line 288
    const/16 v3, 0x5d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 289
    .local v0, end:I
    if-lez v0, :cond_0

    .line 290
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, tag:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v2, v4}, Lcom/google/android/gm/Utils;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    .end local v0           #end:I
    .end local v2           #tag:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getConversationCount()I
    .locals 3

    .prologue
    .line 150
    invoke-static {}, Lcom/google/android/gm/widget/GmailWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v0

    const/16 v2, 0x19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getViewMoreConversationsView()Landroid/widget/RemoteViews;
    .locals 6

    .prologue
    .line 214
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04005b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 215
    .local v0, view:Landroid/widget/RemoteViews;
    const v1, 0x7f0f00e4

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f0c014a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 217
    const v1, 0x7f0f00e3

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabel:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gm/Utils;->createViewConversationIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 219
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-static {}, Lcom/google/android/gm/widget/GmailWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->getConversationCount()I

    move-result v0

    .line 138
    .local v0, count:I
    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v3

    if-lt v0, v3, :cond_0

    iget v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelCount:I

    if-ge v0, v3, :cond_1

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mShouldShowViewMore:Z

    .line 139
    iget-boolean v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mShouldShowViewMore:Z

    if-eqz v3, :cond_2

    :goto_1
    add-int/2addr v1, v0

    monitor-exit v4

    return v1

    :cond_1
    move v3, v2

    .line 138
    goto :goto_0

    :cond_2
    move v1, v2

    .line 139
    goto :goto_1

    .line 140
    .end local v0           #count:I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 237
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 224
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04005b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 225
    .local v0, view:Landroid/widget/RemoteViews;
    const v1, 0x7f0f00e4

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0091

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 227
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 16
    .parameter "position"

    .prologue
    .line 160
    invoke-static {}, Lcom/google/android/gm/widget/GmailWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 162
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mShouldShowViewMore:Z

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->getConversationCount()I

    move-result v1

    move/from16 v0, p1

    if-lt v0, v1, :cond_1

    .line 164
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v14

    monitor-exit v15

    .line 206
    :goto_0
    return-object v14

    .line 167
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 170
    const-string v1, "Gmail"

    const-string v2, "Failed to move to position %d in the cursor."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v2, v6}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->getViewMoreConversationsView()Landroid/widget/RemoteViews;

    move-result-object v14

    monitor-exit v15

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 175
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getRawLabels()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gm/provider/LabelManager;->parseLabelQueryResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    .line 179
    .local v13, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 180
    .local v3, senderBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 182
    .local v4, statusBuilder:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getFromSnippetInstructions()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x19

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "^r"

    invoke-interface {v13, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/google/android/gm/Utils;->getStyledSenderSnippet(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;IZZZZZ)V

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getDateMs()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    .line 194
    .local v5, date:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mWidgetConversationViewBuilder:Lcom/google/android/gm/widget/WidgetConversationViewBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->filterTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSnippet()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->hasAttachments()Z

    move-result v9

    move-object v8, v13

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->getStyledView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Map;Z)Landroid/widget/RemoteViews;

    move-result-object v14

    .line 201
    .local v14, remoteViews:Landroid/widget/RemoteViews;
    const v1, 0x7f0f00d8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabel:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getMaxServerMessageId()J

    move-result-wide v11

    invoke-static/range {v6 .. v13}, Lcom/google/android/gm/Utils;->createViewConversationIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 206
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAppWidgetId:I

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabel:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/widget/BaseWidgetProvider;->saveWidgetInformation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAppWidgetId:I

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabel:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/widget/BaseWidgetProvider;->isWidgetConfigured(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAppWidgetId:I

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabel:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/widget/BaseWidgetProvider;->updateWidget(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    const-string v2, ""

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gm/Utils;->makeQueryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;->NO:Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/provider/Gmail;->getConversationCursorForQuery(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 97
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->LABEL_PROJECTION:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabel:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/contentprovider/PrivateGmailAccess;->getLabelCursorLoader(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/CursorLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelLoader:Landroid/content/CursorLoader;

    .line 99
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelLoader:Landroid/content/CursorLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 100
    new-instance v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$LabelUpdateHandler;

    iget-object v1, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$LabelUpdateHandler;-><init>(Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;I)V

    iput-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelUpdateHandler:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$LabelUpdateHandler;

    .line 102
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelUpdateHandler:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$LabelUpdateHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$LabelUpdateHandler;->scheduleTask()V

    .line 104
    return-void
.end method

.method public onDataSetChanged()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/google/android/gm/widget/GmailWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->requery()V

    .line 125
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelUpdateHandler:Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$LabelUpdateHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory$LabelUpdateHandler;->scheduleTask()V

    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-static {}, Lcom/google/android/gm/widget/GmailWidgetService;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->close()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mConversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 113
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 117
    iput-object v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelLoader:Landroid/content/CursorLoader;

    .line 119
    :cond_1
    return-void

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 11
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const v10, 0x7f0f00d4

    const v9, 0x7f0f00d2

    const/4 v8, 0x0

    .line 247
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 251
    :cond_0
    const-string v0, "numUnreadConversations"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 253
    .local v7, unreadCount:I
    const-string v0, "name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, labelName:Ljava/lang/String;
    const-string v0, "numConversations"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelCount:I

    .line 258
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f040059

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 259
    .local v1, remoteViews:Landroid/widget/RemoteViews;
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    .line 261
    .local v6, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    iget-boolean v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelInformationShown:Z

    if-nez v0, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAppWidgetId:I

    iget-object v3, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabel:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/widget/BaseWidgetProvider;->configureValidAccountWidget(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAppWidgetId:I

    invoke-virtual {v6, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mLabelInformationShown:Z

    .line 272
    :cond_1
    invoke-virtual {v1, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 273
    invoke-virtual {v1, v9, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 274
    invoke-virtual {v1, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 275
    iget-object v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/google/android/gm/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 278
    iget v0, p0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->mAppWidgetId:I

    invoke-virtual {v6, v0, v1}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

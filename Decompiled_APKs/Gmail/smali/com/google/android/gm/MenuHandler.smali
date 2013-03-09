.class public Lcom/google/android/gm/MenuHandler;
.super Ljava/lang/Object;
.source "MenuHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/MenuHandler$ActivityCallback;,
        Lcom/google/android/gm/MenuHandler$HelpCallback;
    }
.end annotation


# static fields
.field private static final ACCOUNT_KEY:Ljava/lang/String;

.field private static final ARCHIVABLE_LABELS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DISABLEABLE_CONVERSATION_MENU_ITEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/google/android/gm/MenuHandler;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mActiveUndoOperation:Lcom/google/android/gm/UndoOperation;

.field private mActivity:Lcom/google/android/gm/RestrictedActivity;

.field private mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

.field mAddOrRemoveLabelMenuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

.field private mContext:Landroid/content/Context;

.field private mDisplayedLabel:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mResetSpannable:Z

.field private final mShortcutSpannable:Landroid/text/SpannableStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/gm/MenuHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ACCOUNT_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/MenuHandler;->ACCOUNT_KEY:Ljava/lang/String;

    .line 76
    const v0, 0x7f0f00ec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0f00f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0f00ef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0f00f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0f00ed

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0f00f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0f0042

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f0f00f0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0f00f1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0f00ee

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/MenuHandler;->DISABLEABLE_CONVERSATION_MENU_ITEMS:Ljava/util/List;

    .line 901
    new-instance v0, Lcom/google/android/gm/MenuHandler$5;

    invoke-direct {v0}, Lcom/google/android/gm/MenuHandler$5;-><init>()V

    sput-object v0, Lcom/google/android/gm/MenuHandler;->ARCHIVABLE_LABELS:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v1, Lcom/google/android/gm/MenuHandler$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/MenuHandler$1;-><init>(Lcom/google/android/gm/MenuHandler;)V

    iput-object v1, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    .line 150
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/MenuHandler;->mAddOrRemoveLabelMenuItems:Ljava/util/Map;

    .line 991
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/android/gm/MenuHandler;->mShortcutSpannable:Landroid/text/SpannableStringBuilder;

    .line 993
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gm/MenuHandler;->mResetSpannable:Z

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v0

    .line 233
    .local v0, gmail:Lcom/google/android/gm/provider/Gmail;
    new-instance v1, Lcom/google/android/gm/BulkOperationHelper;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gm/BulkOperationHelper;-><init>(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/provider/Gmail;)V

    iput-object v1, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/MenuHandler;)Lcom/google/android/gm/RestrictedActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/MenuHandler;)Lcom/google/android/gm/MenuHandler$ActivityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/MenuHandler;)Lcom/google/android/gm/BulkOperationHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/MenuHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/MenuHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/MenuHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    return-object v0
.end method

.method private archive(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 11
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 859
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/google/android/gm/persistence/Persistence;->getConfirmArchive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "^i"

    iget-object v4, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v9, v1

    .line 862
    .local v9, skipConfirmationDialog:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    invoke-static {v2, v4, v10}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 864
    .local v3, label:Lcom/google/android/gm/provider/Label;
    if-nez v3, :cond_2

    .line 866
    const-string v2, "Gmail"

    const-string v4, "Got null Label for canonical name: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    aput-object v10, v1, v0

    invoke-static {v2, v4, v1}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 899
    :goto_1
    return-void

    .end local v3           #label:Lcom/google/android/gm/provider/Label;
    .end local v9           #skipConfirmationDialog:Z
    :cond_1
    move v9, v0

    .line 859
    goto :goto_0

    .line 870
    .restart local v3       #label:Lcom/google/android/gm/provider/Label;
    .restart local v9       #skipConfirmationDialog:Z
    :cond_2
    if-eqz v9, :cond_4

    .line 871
    if-eqz p2, :cond_3

    .line 872
    const v0, 0x7f0f00ec

    invoke-interface {p2, v0}, Lcom/google/android/gm/CommandListener;->onCommandAccepted(I)V

    .line 874
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/BulkOperationHelper;->performYButtonAction(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Lcom/google/android/gm/LabelOperations;Lcom/google/android/gm/CommandListener;)V

    goto :goto_1

    .line 879
    :cond_4
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f100002

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    .line 881
    .local v5, message:Ljava/lang/CharSequence;
    const v6, 0x7f0c0037

    .line 882
    .local v6, positiveButtonId:I
    const v7, 0x7f0c0039

    .line 884
    .local v7, negativeButtonId:I
    new-instance v8, Lcom/google/android/gm/MenuHandler$4;

    invoke-direct {v8, p0, p2, v3, p1}, Lcom/google/android/gm/MenuHandler$4;-><init>(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CommandListener;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;)V

    .local v8, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    move-object v4, p0

    .line 897
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gm/MenuHandler;->performActionWithConfirmation(Ljava/lang/CharSequence;IILandroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_1
.end method

.method private areAllConversationsImportant(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v0, 0x1

    .line 565
    .local v0, allImportant:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationInfo;

    .line 566
    .local v1, ci:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gm/provider/Gmail;->isImportant(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 567
    const/4 v0, 0x0

    .line 571
    .end local v1           #ci:Lcom/google/android/gm/ConversationInfo;
    :cond_1
    return v0
.end method

.method public static areAllConversationsStarred(Ljava/util/Collection;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v0, 0x1

    .line 554
    .local v0, allStarred:Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationInfo;

    .line 555
    .local v1, ci:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getLabels()Ljava/util/Map;

    move-result-object v3

    const-string v4, "^t"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 556
    const/4 v0, 0x0

    .line 560
    .end local v1           #ci:Lcom/google/android/gm/ConversationInfo;
    :cond_1
    return v0
.end method

.method public static displayAutoAdvanceDialogAndPerformAction(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 11
    .parameter "context"
    .parameter "operation"

    .prologue
    .line 1209
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    .line 1211
    .local v1, persistence:Lcom/google/android/gm/persistence/Persistence;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0007

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1213
    .local v6, autoAdvanceDisplayOptions:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0009

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1215
    .local v3, autoAdvanceOptionValues:[Ljava/lang/String;
    invoke-virtual {v1, p0}, Lcom/google/android/gm/persistence/Persistence;->getAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1216
    .local v8, currentValue:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1217
    .local v7, currentIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v2, v3

    if-ge v9, v2, :cond_0

    .line 1218
    aget-object v2, v3, v9

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1219
    move v7, v9

    .line 1224
    :cond_0
    move v4, v7

    .line 1225
    .local v4, initialIndex:I
    new-instance v10, Lcom/google/android/gm/MenuHandler$6;

    invoke-direct {v10, v1, p0, v3, p1}, Lcom/google/android/gm/MenuHandler$6;-><init>(Lcom/google/android/gm/persistence/Persistence;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1238
    .local v10, listClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/google/android/gm/MenuHandler$7;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler$7;-><init>(Lcom/google/android/gm/persistence/Persistence;Landroid/content/Context;[Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 1249
    .local v0, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c00ef

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, v4, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x7f0c0038

    invoke-virtual {v2, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1252
    return-void

    .line 1217
    .end local v0           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v4           #initialIndex:I
    .end local v10           #listClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gm/MenuHandler;
    .locals 2
    .parameter "context"

    .prologue
    .line 242
    sget-object v0, Lcom/google/android/gm/MenuHandler;->sInstance:Lcom/google/android/gm/MenuHandler;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/google/android/gm/MenuHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gm/MenuHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gm/MenuHandler;->sInstance:Lcom/google/android/gm/MenuHandler;

    .line 245
    :cond_0
    sget-object v0, Lcom/google/android/gm/MenuHandler;->sInstance:Lcom/google/android/gm/MenuHandler;

    return-object v0
.end method

.method private static getRemovableLabel(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter "displayedLabel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-static {p0}, Lcom/google/android/gm/MenuHandler;->getYButtonLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, yLabel:Ljava/lang/String;
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0           #yLabel:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #yLabel:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getYButtonIcon(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "label"

    .prologue
    .line 948
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, canonicalName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 951
    .local v1, resources:Landroid/content/res/Resources;
    const-string v2, "^k"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 953
    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 964
    :goto_0
    return-object v2

    .line 954
    :cond_0
    const-string v2, "^r"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 955
    const v2, 0x7f020072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 956
    :cond_1
    const-string v2, "^s"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 958
    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 959
    :cond_2
    invoke-static {v0}, Lcom/google/android/gm/MenuHandler;->shouldShowArchiveOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 960
    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 961
    :cond_3
    const-string v2, "^t"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 962
    const v2, 0x7f020041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 964
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getYButtonLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "displayedLabel"

    .prologue
    .line 922
    invoke-static {p0}, Lcom/google/android/gm/MenuHandler;->shouldShowArchiveOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    const-string p0, "^i"

    .line 925
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static getYButtonText(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "label"

    .prologue
    .line 930
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, canonicalName:Ljava/lang/String;
    const-string v1, "^k"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 933
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 943
    :goto_0
    return-object v1

    .line 934
    :cond_0
    const-string v1, "^r"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 935
    const v1, 0x7f0c0067

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 936
    :cond_1
    const-string v1, "^s"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 937
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 938
    :cond_2
    invoke-static {v0}, Lcom/google/android/gm/MenuHandler;->shouldShowArchiveOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 939
    const v1, 0x7f0c0047

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 940
    :cond_3
    const-string v1, "^t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 941
    const v1, 0x7f0c0046

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 943
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c009a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private muteConversationList(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 9
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 660
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    .line 661
    .local v0, op:Lcom/google/android/gm/BulkOperationHelper;
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    const-string v4, "^g"

    invoke-static {v1, v2, v4}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 663
    .local v3, muteLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v3, :cond_0

    .line 664
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    const v7, 0x7f0f00f2

    move-object v5, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    .line 668
    :cond_0
    return-void
.end method

.method private performActionWithConfirmation(Ljava/lang/CharSequence;IILandroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter "message"
    .parameter "positiveButtonId"
    .parameter "negativeButtonId"
    .parameter "onClickListener"
    .parameter "skipConfirmationDialog"

    .prologue
    const/4 v2, 0x0

    .line 686
    if-eqz p5, :cond_0

    .line 687
    const/4 v0, 0x0

    invoke-interface {p4, v2, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 693
    :goto_0
    return-void

    .line 689
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private performSync()V
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MenuHandler;->setUndoOperation(Lcom/google/android/gm/UndoOperation;)V

    .line 647
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->startSync(Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method private setConversationMenusEnabled(Landroid/view/Menu;Z)V
    .locals 4
    .parameter "menu"
    .parameter "enabled"

    .prologue
    .line 439
    sget-object v3, Lcom/google/android/gm/MenuHandler;->DISABLEABLE_CONVERSATION_MENU_ITEMS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 440
    .local v2, menuId:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 441
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 442
    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 445
    .end local v1           #item:Landroid/view/MenuItem;
    .end local v2           #menuId:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public static shouldDisplayAutoAdvanceDialog(Landroid/content/Context;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 1184
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    .line 1185
    .local v1, persistence:Lcom/google/android/gm/persistence/Persistence;
    const/4 v0, 0x0

    .line 1186
    .local v0, operationWouldAutoAdvance:Z
    invoke-virtual {v1, p0}, Lcom/google/android/gm/persistence/Persistence;->getHasUserSetAutoAdvanceSetting(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/google/android/gm/Utils;->canShowAutoAdvanceDialogOnFirstAction(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1200
    :cond_0
    :goto_0
    return v0

    .line 1196
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1189
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0012 -> :sswitch_0
        0x7f0f00ec -> :sswitch_0
        0x7f0f00ed -> :sswitch_0
        0x7f0f00ef -> :sswitch_0
        0x7f0f00f2 -> :sswitch_0
        0x7f0f00f3 -> :sswitch_0
    .end sparse-switch
.end method

.method public static shouldShowArchiveOption(Ljava/lang/String;)Z
    .locals 1
    .parameter "displayLabel"

    .prologue
    .line 914
    const-string v0, "^all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gm/MenuHandler;->ARCHIVABLE_LABELS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowMuteOption(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .parameter "displayedLabel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const-string v0, "^iim"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^i"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "^g"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 11
    .parameter "operations"
    .parameter
    .parameter "showProgressDialog"
    .parameter "uncommittedConversationState"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;Z",
            "Lcom/google/android/gm/LabelOperations;",
            "I",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 843
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move-object v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gm/BulkOperationHelper;->addOrRemoveLabel(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;ZZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 846
    return-void
.end method

.method public addOrRemoveLabel(Lcom/google/android/gm/provider/Label;Ljava/lang/Boolean;Lcom/google/android/gm/ConversationInfo;ZILcom/google/android/gm/CommandListener;)V
    .locals 7
    .parameter "label"
    .parameter "added"
    .parameter "conversation"
    .parameter "showProgressDialog"
    .parameter "opId"
    .parameter "commandListener"

    .prologue
    .line 804
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/provider/Label;Ljava/lang/Boolean;Ljava/util/Collection;ZILcom/google/android/gm/CommandListener;)V

    .line 806
    return-void
.end method

.method public addOrRemoveLabel(Lcom/google/android/gm/provider/Label;Ljava/lang/Boolean;Ljava/util/Collection;ZILcom/google/android/gm/CommandListener;)V
    .locals 7
    .parameter "label"
    .parameter "added"
    .parameter
    .parameter "showProgressDialog"
    .parameter "opId"
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/Label;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;ZI",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 811
    .local p3, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    new-instance v1, Lcom/google/android/gm/LabelOperations;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, p1, v0}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 813
    return-void
.end method

.method addOrRemoveLabelBackground(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;)V
    .locals 11
    .parameter "operations"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/LabelOperations;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 822
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v3, p1

    move-object v4, p2

    move v9, v6

    move-object v10, v8

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gm/BulkOperationHelper;->addOrRemoveLabel(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;ZZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 826
    return-void
.end method

.method public applyStar(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 9
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 708
    .local p1, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-static {p1}, Lcom/google/android/gm/MenuHandler;->areAllConversationsStarred(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v4, 0x1

    .line 709
    .local v4, newState:Z
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    .line 711
    .local v0, op:Lcom/google/android/gm/BulkOperationHelper;
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    const-string v5, "^t"

    invoke-static {v1, v2, v5}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 712
    .local v3, starLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v3, :cond_0

    .line 713
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    const v7, 0x7f0f0042

    move-object v5, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    .line 717
    :cond_0
    return-void

    .line 708
    .end local v0           #op:Lcom/google/android/gm/BulkOperationHelper;
    .end local v3           #starLabel:Lcom/google/android/gm/provider/Label;
    .end local v4           #newState:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public attach(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/MenuHandler$ActivityCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "activityCallback"
    .parameter "displayedLabel"
    .parameter "account"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    .line 257
    iput-object p2, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    .line 258
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    invoke-interface {v0}, Lcom/google/android/gm/RestrictedActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    .line 259
    iput-object p3, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    .line 260
    iput-object p4, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    invoke-virtual {v0}, Lcom/google/android/gm/BulkOperationHelper;->onActivityAttached()V

    .line 266
    return-void
.end method

.method public changeLabels()V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gm/RestrictedActivity;->showDialog(I)V

    .line 656
    return-void
.end method

.method public delete(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 8
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    const/high16 v6, 0x7f10

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-static {v0, v6, v7}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, message:Ljava/lang/CharSequence;
    const v2, 0x7f0c0037

    .line 748
    .local v2, positiveButtonId:I
    const v3, 0x7f0c0039

    .line 749
    .local v3, negativeButtonId:I
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/google/android/gm/persistence/Persistence;->getConfirmDelete(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    .line 752
    .local v5, skipConfirmationDialog:Z
    :goto_0
    new-instance v4, Lcom/google/android/gm/MenuHandler$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gm/MenuHandler$2;-><init>(Lcom/google/android/gm/MenuHandler;Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    .local v4, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    move-object v0, p0

    .line 766
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->performActionWithConfirmation(Ljava/lang/CharSequence;IILandroid/content/DialogInterface$OnClickListener;Z)V

    .line 768
    return-void

    .line 749
    .end local v4           #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v5           #skipConfirmationDialog:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    invoke-virtual {v0}, Lcom/google/android/gm/BulkOperationHelper;->onActivityDetached()V

    .line 289
    return-void
.end method

.method public expunge(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 8
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 778
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    const v6, 0x7f100001

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-static {v0, v6, v7}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 780
    .local v1, message:Ljava/lang/CharSequence;
    const v2, 0x7f0c0037

    .line 781
    .local v2, positiveButtonId:I
    const v3, 0x7f0c0039

    .line 782
    .local v3, negativeButtonId:I
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/google/android/gm/persistence/Persistence;->getConfirmDelete(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    .line 785
    .local v5, skipConfirmationDialog:Z
    :goto_0
    new-instance v4, Lcom/google/android/gm/MenuHandler$3;

    invoke-direct {v4, p0, p2, p1}, Lcom/google/android/gm/MenuHandler$3;-><init>(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/CommandListener;Ljava/util/Collection;)V

    .local v4, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    move-object v0, p0

    .line 797
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/MenuHandler;->performActionWithConfirmation(Ljava/lang/CharSequence;IILandroid/content/DialogInterface$OnClickListener;Z)V

    .line 799
    return-void

    .line 782
    .end local v4           #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v5           #skipConfirmationDialog:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getActivity()Lcom/google/android/gm/RestrictedActivity;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    return-object v0
.end method

.method public getBackgroundTaskHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1118
    invoke-static {}, Lcom/google/android/gm/BulkOperationHelper;->getBulkOperationHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUndoOperation()Lcom/google/android/gm/UndoOperation;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActiveUndoOperation:Lcom/google/android/gm/UndoOperation;

    return-object v0
.end method

.method public hasUndoableOperation()Z
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActiveUndoOperation:Lcom/google/android/gm/UndoOperation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markReadUnread(Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)V
    .locals 9
    .parameter
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 721
    .local p1, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    .line 722
    .local v0, op:Lcom/google/android/gm/BulkOperationHelper;
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    const-string v4, "^u"

    invoke-static {v1, v2, v4}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 723
    .local v3, unreadLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v3, :cond_0

    .line 724
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    const v7, 0x7f0f0012

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->toggleLabel(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    .line 728
    :cond_0
    return-void
.end method

.method public moveToMagicInbox(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 8
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v3, 0x1

    .line 526
    iget-object v7, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    .line 528
    .local v7, account:Ljava/lang/String;
    new-instance v1, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v1}, Lcom/google/android/gm/LabelOperations;-><init>()V

    .line 529
    .local v1, operations:Lcom/google/android/gm/LabelOperations;
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    const-string v2, "^i"

    invoke-static {v0, v7, v2}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 530
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    const-string v2, "^^important"

    invoke-static {v0, v7, v2}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 531
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    const-string v2, "^iim"

    invoke-static {v0, v7, v2}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 532
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0f00ee

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 535
    return-void
.end method

.method public mute(Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z
    .locals 1
    .parameter
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 672
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/google/android/gm/MenuHandler;->shouldShowMuteOption(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-direct {p0, p1, p3}, Lcom/google/android/gm/MenuHandler;->muteConversationList(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    .line 675
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onEndBulkOperation()V
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    invoke-interface {v0}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->onEndBulkOperation()V

    .line 1163
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"
    .parameter "account"
    .parameter
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/KeyEvent;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p4, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p5, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 999
    const/4 v0, 0x0

    .line 1000
    .local v0, handled:Z
    sparse-switch p1, :sswitch_data_0

    .line 1021
    iget-boolean v1, p0, Lcom/google/android/gm/MenuHandler;->mResetSpannable:Z

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mShortcutSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1023
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mShortcutSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1024
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mShortcutSpannable:Landroid/text/SpannableStringBuilder;

    invoke-static {v1, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1027
    :cond_0
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gm/MenuHandler;->mShortcutSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mShortcutSpannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1030
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mShortcutSpannable:Landroid/text/SpannableStringBuilder;

    const/16 v2, 0x21

    invoke-static {v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1031
    const v1, 0x7f0f00f3

    invoke-virtual {p0, v1, p4, p5, p6}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(ILjava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z

    .line 1034
    iput-boolean v5, p0, Lcom/google/android/gm/MenuHandler;->mResetSpannable:Z

    .line 1035
    const/4 v0, 0x1

    .line 1046
    :cond_1
    :goto_0
    return v0

    .line 1004
    :sswitch_0
    const v1, 0x7f0f00ec

    invoke-virtual {p0, v1, p4, p5, p6}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(ILjava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z

    .line 1005
    iput-boolean v5, p0, Lcom/google/android/gm/MenuHandler;->mResetSpannable:Z

    .line 1006
    const/4 v0, 0x1

    .line 1007
    goto :goto_0

    .line 1011
    :sswitch_1
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/gm/MenuHandler;->mute(Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z

    move-result v0

    .line 1012
    goto :goto_0

    .line 1016
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/android/gm/MenuHandler;->changeLabels()V

    .line 1017
    const/4 v0, 0x1

    .line 1018
    goto :goto_0

    .line 1041
    :cond_2
    iput-boolean v4, p0, Lcom/google/android/gm/MenuHandler;->mResetSpannable:Z

    goto :goto_0

    .line 1000
    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_1
        0x32 -> :sswitch_2
        0x35 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemSelected(ILjava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z
    .locals 3
    .parameter "menuItemId"
    .parameter
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p3, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const/4 v0, 0x1

    .line 588
    sparse-switch p1, :sswitch_data_0

    .line 639
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/ApplicationMenuHandler;->handleApplicationMenu(ILandroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z

    move-result v0

    .line 642
    :cond_0
    :goto_0
    return v0

    .line 590
    :sswitch_0
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    invoke-interface {v1}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->enterSearchMode()V

    goto :goto_0

    .line 593
    :sswitch_1
    invoke-virtual {p0, p2, p4}, Lcom/google/android/gm/MenuHandler;->performYButtonAction(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto :goto_0

    .line 597
    :sswitch_2
    invoke-direct {p0, p2, p4}, Lcom/google/android/gm/MenuHandler;->muteConversationList(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto :goto_0

    .line 601
    :sswitch_3
    const-string v1, "^r"

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    invoke-virtual {p0, p2, p4}, Lcom/google/android/gm/MenuHandler;->expunge(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto :goto_0

    .line 604
    :cond_1
    invoke-virtual {p0, p2, p4}, Lcom/google/android/gm/MenuHandler;->delete(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto :goto_0

    .line 609
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/android/gm/MenuHandler;->changeLabels()V

    goto :goto_0

    .line 613
    :sswitch_5
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/gm/MenuHandler;->markReadUnread(Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)V

    goto :goto_0

    .line 617
    :sswitch_6
    invoke-virtual {p0, p2, p4}, Lcom/google/android/gm/MenuHandler;->reportSpam(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 642
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 623
    :sswitch_7
    invoke-virtual {p0, p2, p4}, Lcom/google/android/gm/MenuHandler;->applyStar(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto :goto_0

    .line 628
    :sswitch_8
    invoke-direct {p0}, Lcom/google/android/gm/MenuHandler;->performSync()V

    goto :goto_0

    .line 635
    :sswitch_9
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/gm/MenuHandler;->updateImportantStates(ILjava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    goto :goto_1

    .line 588
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0042 -> :sswitch_7
        0x7f0f008e -> :sswitch_0
        0x7f0f00ec -> :sswitch_1
        0x7f0f00ed -> :sswitch_3
        0x7f0f00ee -> :sswitch_4
        0x7f0f00f0 -> :sswitch_9
        0x7f0f00f1 -> :sswitch_9
        0x7f0f00f2 -> :sswitch_2
        0x7f0f00f3 -> :sswitch_6
        0x7f0f00f5 -> :sswitch_8
        0x7f0f00f8 -> :sswitch_5
    .end sparse-switch
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;Ljava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z
    .locals 1
    .parameter "item"
    .parameter
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 577
    .local p2, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    .local p3, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/google/android/gm/MenuHandler;->onMenuItemSelected(ILjava/util/Collection;Ljava/util/Map;Lcom/google/android/gm/CommandListener;)Z

    move-result v0

    return v0
.end method

.method onPrepareImportantMenuItem(Landroid/view/Menu;Ljava/util/Collection;)V
    .locals 6
    .parameter "menu"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v2

    .line 481
    .local v2, persistence:Lcom/google/android/gm/persistence/Persistence;
    const v5, 0x7f0f00f0

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 482
    .local v0, markImportantItem:Landroid/view/MenuItem;
    const v5, 0x7f0f00f1

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 490
    .local v1, markNotImportantItem:Landroid/view/MenuItem;
    invoke-direct {p0, p2}, Lcom/google/android/gm/MenuHandler;->areAllConversationsImportant(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 491
    const/4 v3, 0x0

    .line 492
    .local v3, showImportantItem:Z
    const/4 v4, 0x1

    .line 498
    .local v4, showNotImportantItem:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 499
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 501
    :cond_0
    if-eqz v1, :cond_1

    .line 502
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 504
    :cond_1
    return-void

    .line 494
    .end local v3           #showImportantItem:Z
    .end local v4           #showNotImportantItem:Z
    :cond_2
    const/4 v3, 0x1

    .line 495
    .restart local v3       #showImportantItem:Z
    const/4 v4, 0x0

    .restart local v4       #showNotImportantItem:Z
    goto :goto_0
.end method

.method public onPrepareMenu(Landroid/view/Menu;Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 10
    .parameter "menu"
    .parameter
    .parameter
    .parameter "displayedLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 372
    .local p2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    .local p3, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/google/android/gm/MenuHandler;->setConversationMenusEnabled(Landroid/view/Menu;Z)V

    .line 375
    const v8, 0x7f0f00ed

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 378
    .local v0, deleteMenuItem:Landroid/view/MenuItem;
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/gm/MenuHandler;->onPrepareYMenuItem(Landroid/view/Menu;Ljava/util/Map;Ljava/lang/String;)V

    .line 381
    const v8, 0x7f0f00f8

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 382
    .local v3, item:Landroid/view/MenuItem;
    if-eqz v3, :cond_0

    .line 383
    const-string v8, "^u"

    invoke-interface {p2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 384
    .local v2, hasUnread:Z
    iget-object v9, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_9

    const v8, 0x7f0c0042

    :goto_0
    invoke-virtual {v9, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 385
    if-eqz v2, :cond_a

    const v8, 0x7f020039

    :goto_1
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 391
    .end local v2           #hasUnread:Z
    :cond_0
    const v8, 0x7f0f00f3

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 392
    .local v6, reportSpam:Landroid/view/MenuItem;
    if-eqz v6, :cond_1

    .line 393
    const-string v8, "^s"

    invoke-virtual {v8, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v8, 0x1

    :goto_2
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 397
    :cond_1
    if-eqz v0, :cond_3

    .line 398
    const-string v8, "^k"

    invoke-virtual {v8, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_2
    const/4 v8, 0x1

    :goto_3
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 403
    :cond_3
    const v8, 0x7f0f00f2

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 404
    .local v5, mute:Landroid/view/MenuItem;
    if-eqz v5, :cond_4

    .line 405
    invoke-static {p4, p2}, Lcom/google/android/gm/MenuHandler;->shouldShowMuteOption(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 408
    :cond_4
    const v8, 0x7f0f00f6

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 409
    .local v4, labelSettings:Landroid/view/MenuItem;
    if-eqz v4, :cond_5

    .line 410
    invoke-static {}, Lcom/google/android/gm/provider/LabelManager;->getForcedNonSyncedLabels()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const/4 v8, 0x1

    :goto_4
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 415
    :cond_5
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gm/MenuHandler;->onPrepareStarMenuItem(Landroid/view/Menu;Ljava/util/Collection;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gm/MenuHandler;->onPrepareImportantMenuItem(Landroid/view/Menu;Ljava/util/Collection;)V

    .line 422
    if-eqz v0, :cond_6

    .line 423
    const-string v8, "^k"

    iget-object v9, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const/4 v7, 0x1

    .line 424
    .local v7, showDelete:Z
    :goto_5
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 429
    .end local v7           #showDelete:Z
    :cond_6
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    sget-object v8, Lcom/google/android/gm/ConversationInfo;->INVALID_CONVERSATION_INFO:Lcom/google/android/gm/ConversationInfo;

    invoke-interface {p3, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    :cond_7
    const/4 v1, 0x1

    .line 433
    .local v1, enableConversationMenus:Z
    :goto_6
    if-nez v1, :cond_8

    .line 434
    invoke-direct {p0, p1, v1}, Lcom/google/android/gm/MenuHandler;->setConversationMenusEnabled(Landroid/view/Menu;Z)V

    .line 436
    :cond_8
    return-void

    .line 384
    .end local v1           #enableConversationMenus:Z
    .end local v4           #labelSettings:Landroid/view/MenuItem;
    .end local v5           #mute:Landroid/view/MenuItem;
    .end local v6           #reportSpam:Landroid/view/MenuItem;
    .restart local v2       #hasUnread:Z
    :cond_9
    const v8, 0x7f0c0043

    goto/16 :goto_0

    .line 385
    :cond_a
    const v8, 0x7f02003a

    goto/16 :goto_1

    .line 393
    .end local v2           #hasUnread:Z
    .restart local v6       #reportSpam:Landroid/view/MenuItem;
    :cond_b
    const/4 v8, 0x0

    goto :goto_2

    .line 398
    :cond_c
    const/4 v8, 0x0

    goto :goto_3

    .line 410
    .restart local v4       #labelSettings:Landroid/view/MenuItem;
    .restart local v5       #mute:Landroid/view/MenuItem;
    :cond_d
    const/4 v8, 0x0

    goto :goto_4

    .line 423
    :cond_e
    const/4 v7, 0x0

    goto :goto_5

    .line 429
    :cond_f
    const/4 v1, 0x0

    goto :goto_6
.end method

.method onPrepareStarMenuItem(Landroid/view/Menu;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 2
    .parameter "menu"
    .parameter
    .parameter "displayedLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 453
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const v1, 0x7f0f0042

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 454
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 456
    const-string v1, "^k"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "^s"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 458
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 472
    :cond_1
    :goto_0
    return-void

    .line 460
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 463
    invoke-static {p2}, Lcom/google/android/gm/MenuHandler;->areAllConversationsStarred(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 464
    const v1, 0x7f0c0046

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 465
    const v1, 0x7f020041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 467
    :cond_3
    const v1, 0x7f0c0045

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 468
    const v1, 0x7f020040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onPrepareYMenuItem(Landroid/view/Menu;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .parameter "menu"
    .parameter
    .parameter "displayedLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 321
    .local p2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    const v4, 0x7f0f00ec

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 322
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    .line 324
    invoke-static {p3, p2}, Lcom/google/android/gm/MenuHandler;->getRemovableLabel(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, yButtonCanonicalName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 326
    .local v3, yButtonLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v2, :cond_0

    const-string v4, "^i"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    iget-object v4, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 329
    :cond_0
    if-eqz v3, :cond_2

    .line 330
    iget-object v4, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/google/android/gm/MenuHandler;->getYButtonText(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 331
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 332
    iget-object v4, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/google/android/gm/MenuHandler;->getYButtonIcon(Landroid/content/Context;Lcom/google/android/gm/provider/Label;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 333
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 334
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 340
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #yButtonCanonicalName:Ljava/lang/String;
    .end local v3           #yButtonLabel:Lcom/google/android/gm/provider/Label;
    :cond_1
    :goto_0
    return-void

    .line 337
    .restart local v2       #yButtonCanonicalName:Ljava/lang/String;
    .restart local v3       #yButtonLabel:Lcom/google/android/gm/provider/Label;
    :cond_2
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 977
    sget-object v1, Lcom/google/android/gm/MenuHandler;->ACCOUNT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    .line 979
    invoke-static {p1}, Lcom/google/android/gm/UndoOperation;->restoreFromExtras(Landroid/os/Bundle;)Lcom/google/android/gm/UndoOperation;

    move-result-object v0

    .line 980
    .local v0, savedOperation:Lcom/google/android/gm/UndoOperation;
    if-eqz v0, :cond_0

    .line 981
    invoke-virtual {p0, v0}, Lcom/google/android/gm/MenuHandler;->setUndoOperation(Lcom/google/android/gm/UndoOperation;)V

    .line 984
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 969
    sget-object v0, Lcom/google/android/gm/MenuHandler;->ACCOUNT_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-virtual {p0}, Lcom/google/android/gm/MenuHandler;->hasUndoableOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    invoke-virtual {p0}, Lcom/google/android/gm/MenuHandler;->getUndoOperation()Lcom/google/android/gm/UndoOperation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gm/UndoOperation;->saveToExtras(Landroid/os/Bundle;)V

    .line 974
    :cond_0
    return-void
.end method

.method public onStartBulkOperation()V
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    invoke-interface {v0}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->onStartBulkOperation()V

    .line 1156
    return-void
.end method

.method public onStartDragMode()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    invoke-interface {v0}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->onStartDragMode()V

    .line 1170
    return-void
.end method

.method public onStopDragMode()V
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivityCallback:Lcom/google/android/gm/MenuHandler$ActivityCallback;

    invoke-interface {v0}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->onStopDragMode()V

    .line 1177
    return-void
.end method

.method public performUndo(Lcom/google/android/gm/UndoOperation;)V
    .locals 8
    .parameter "undoOp"

    .prologue
    const/4 v7, 0x0

    .line 1104
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gm/UndoOperation;->mAccount:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gm/UndoOperation;->mOperations:Lcom/google/android/gm/LabelOperations;

    iget-object v4, p1, Lcom/google/android/gm/UndoOperation;->mConversations:Ljava/util/Collection;

    iget-object v5, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gm/BulkOperationHelper;->performUndoOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    .line 1111
    invoke-virtual {p0, v7}, Lcom/google/android/gm/MenuHandler;->setUndoOperation(Lcom/google/android/gm/UndoOperation;)V

    .line 1112
    return-void
.end method

.method public performYButtonAction(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 0
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 850
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/MenuHandler;->archive(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)V

    .line 851
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    invoke-interface {v0}, Lcom/google/android/gm/RestrictedActivity;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gm/UiHandler;->post(Ljava/lang/Runnable;)V

    .line 1082
    return-void
.end method

.method public prepareLabelDialog(Lcom/google/android/gm/ApplyRemoveLabelDialog;Ljava/util/Map;Ljava/util/Collection;)V
    .locals 1
    .parameter "dialog"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/ApplyRemoveLabelDialog;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 680
    .local p2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    .local p3, collectionIds:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->onPrepare(Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;)V

    .line 681
    return-void
.end method

.method public prepareMenuAndDisableIfLoading(Landroid/view/Menu;Ljava/util/Map;Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;Z)V
    .locals 1
    .parameter "menu"
    .parameter
    .parameter "conversation"
    .parameter "displayedLabel"
    .parameter "isDoneLoading"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Lcom/google/android/gm/ConversationInfo;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p2, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gm/MenuHandler;->onPrepareMenu(Landroid/view/Menu;Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, p1, p5}, Lcom/google/android/gm/MenuHandler;->setConversationMenusEnabled(Landroid/view/Menu;Z)V

    .line 360
    return-void
.end method

.method public reportSpam(Ljava/util/Collection;Lcom/google/android/gm/CommandListener;)Z
    .locals 9
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v4, 0x1

    .line 697
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    .line 698
    .local v0, op:Lcom/google/android/gm/BulkOperationHelper;
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    const-string v5, "^s"

    invoke-static {v1, v2, v5}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 699
    .local v3, spamLabel:Lcom/google/android/gm/provider/Label;
    if-eqz v3, :cond_0

    .line 700
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    const v7, 0x7f0f00f3

    move-object v5, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    .line 703
    :cond_0
    return v4
.end method

.method public sendLabelChangedMessage(JZLcom/google/android/gm/provider/Label;)V
    .locals 6
    .parameter "conversationId"
    .parameter "add"
    .parameter "label"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1059
    iget-object v5, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    if-ne p3, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1061
    .local v1, message:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1062
    .local v0, conversationLabel:Landroid/os/Bundle;
    const-string v2, "CONVERSATION_KEY"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1063
    const-string v2, "LABEL_KEY"

    invoke-virtual {p4}, Lcom/google/android/gm/provider/Label;->serialize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1067
    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1068
    return-void

    .end local v0           #conversationLabel:Landroid/os/Bundle;
    .end local v1           #message:Landroid/os/Message;
    :cond_0
    move v2, v4

    .line 1059
    goto :goto_0
.end method

.method public sendLabelsDoneMessage(Lcom/google/android/gm/LabelOperations;)V
    .locals 4
    .parameter "labelOperations"

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {p1}, Lcom/google/android/gm/LabelOperations;->serialize(Lcom/google/android/gm/LabelOperations;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1078
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "displayedLabel"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setUndoOperation(Lcom/google/android/gm/UndoOperation;)V
    .locals 3
    .parameter "operation"

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1097
    return-void
.end method

.method updateImportantStates(ILjava/util/Collection;Lcom/google/android/gm/CommandListener;)V
    .locals 10
    .parameter "menuItemId"
    .parameter
    .parameter "commandListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;",
            "Lcom/google/android/gm/CommandListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 508
    .local p2, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/MenuHandler;->mBulkOperationHelper:Lcom/google/android/gm/BulkOperationHelper;

    .line 509
    .local v0, op:Lcom/google/android/gm/BulkOperationHelper;
    invoke-direct {p0, p2}, Lcom/google/android/gm/MenuHandler;->areAllConversationsImportant(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v9, "^^unimportant"

    .line 511
    .local v9, canonicalNameToApply:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    invoke-static {v1, v2, v9}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 514
    .local v3, labelToApply:Lcom/google/android/gm/provider/Label;
    if-eqz v3, :cond_0

    .line 515
    iget-object v1, p0, Lcom/google/android/gm/MenuHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/MenuHandler;->mAccount:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/google/android/gm/MenuHandler;->mDisplayedLabel:Ljava/lang/String;

    move-object v5, p2

    move v7, p1

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperation(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Label;ZLjava/util/Collection;Ljava/lang/String;ILcom/google/android/gm/CommandListener;)V

    .line 519
    :cond_0
    return-void

    .line 509
    .end local v3           #labelToApply:Lcom/google/android/gm/provider/Label;
    .end local v9           #canonicalNameToApply:Ljava/lang/String;
    :cond_1
    const-string v9, "^^important"

    goto :goto_0
.end method

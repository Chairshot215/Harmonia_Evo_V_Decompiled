.class public final Lcom/google/android/gm/provider/MailSync;
.super Ljava/lang/Object;
.source "MailSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/MailSync$2;,
        Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
        Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;,
        Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;,
        Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;,
        Lcom/google/android/gm/provider/MailSync$AbstractOperationSink;,
        Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;,
        Lcom/google/android/gm/provider/MailSync$MailPullParser;,
        Lcom/google/android/gm/provider/MailSync$Message;,
        Lcom/google/android/gm/provider/MailSync$ConversationSink;,
        Lcom/google/android/gm/provider/MailSync$Conversation;,
        Lcom/google/android/gm/provider/MailSync$ConversationInfo;,
        Lcom/google/android/gm/provider/MailSync$SyncRationale;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final BUILTIN_LABELS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailStore$LabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final INITIAL_LABELS_INCLUDED:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final INITIAL_LABELS_PARTIAL:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern; = null

.field static final NAMESPACE:Ljava/lang/String; = null

.field public static final NULL_SYNC_RATIONALE:Lcom/google/android/gm/provider/MailSync$SyncRationale; = null

.field static final SETTING_SERVER_VERSION:Ljava/lang/String; = "serverVersion"

.field private static final SYNC_STATS_LABELS:[Ljava/lang/String;


# instance fields
.field private final dirtyConversations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCounters:[J

.field private mDirtySettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEarliestAllowedSyncTimeAsElapsedRealtime:J

.field private mFakeIoExceptionWhenHandlingMessageSavedOrSent:Z

.field private volatile mIsSyncCanceled:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStore:Lcom/google/android/gm/provider/MailStore;

.field mUrls:Lcom/google/android/gm/provider/Urls;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    const-class v0, Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/gm/provider/MailSync;->$assertionsDisabled:Z

    .line 118
    sput-object v6, Lcom/google/android/gm/provider/MailSync;->NULL_SYNC_RATIONALE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 233
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "^r"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->INITIAL_LABELS_INCLUDED:Ljava/util/Set;

    .line 234
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "^i"

    aput-object v3, v0, v2

    const-string v3, "^f"

    aput-object v3, v0, v1

    const-string v3, "^iim"

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->INITIAL_LABELS_PARTIAL:Ljava/util/Set;

    .line 263
    sput-object v6, Lcom/google/android/gm/provider/MailSync;->NAMESPACE:Ljava/lang/String;

    .line 266
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 583
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "M"

    aput-object v3, v0, v2

    const-string v2, "L"

    aput-object v2, v0, v1

    const-string v1, "C"

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "U"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "u"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "S"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->SYNC_STATS_LABELS:[Ljava/lang/String;

    .line 3835
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->BUILTIN_LABELS:Ljava/util/Map;

    .line 3837
    const-string v0, "^f"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3838
    const-string v0, "^^out"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3839
    const-string v0, "^i"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3840
    const-string v0, "^r"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3841
    const-string v0, "^b"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3842
    const-string v0, "^all"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3843
    const-string v0, "^u"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3844
    const-string v0, "^k"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3845
    const-string v0, "^s"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3846
    const-string v0, "^t"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3847
    const-string v0, "^^cached"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3848
    const-string v0, "^^important"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3849
    const-string v0, "^^unimportant"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3850
    return-void

    :cond_0
    move v0, v2

    .line 92
    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gm/provider/MailStore;Lcom/google/android/gm/provider/Urls;Ljava/util/Map;Landroid/content/Context;Z)V
    .locals 8
    .parameter "store"
    .parameter "urls"
    .parameter
    .parameter "context"
    .parameter "validateSyncSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/MailStore;",
            "Lcom/google/android/gm/provider/Urls;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p3, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-wide v5, p0, Lcom/google/android/gm/provider/MailSync;->mEarliestAllowedSyncTimeAsElapsedRealtime:J

    .line 273
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    .line 2229
    iput-boolean v2, p0, Lcom/google/android/gm/provider/MailSync;->mFakeIoExceptionWhenHandlingMessageSavedOrSent:Z

    .line 452
    iput-object p1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    .line 453
    iput-object p2, p0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    .line 454
    iput-object p4, p0, Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;

    .line 455
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    .line 457
    iput-object p3, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    .line 458
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    .line 463
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->clearStats()V

    .line 465
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 468
    const-string v0, "clientId"

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 470
    const-string v3, "needConfigSuggestion"

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailSync;->getMinServerVersionForConfigInfo()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 472
    const-string v0, "configDirty"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 473
    const-string v0, "conversationAgeDays"

    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gm/provider/Gmail;->getDefaultConversationAgeDays(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 475
    const-string v0, "maxAttachmentSize"

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 477
    const-string v0, "labelsIncluded"

    sget-object v3, Lcom/google/android/gm/provider/MailSync;->INITIAL_LABELS_INCLUDED:Ljava/util/Set;

    invoke-direct {p0, v0, v3}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    .line 478
    const-string v0, "labelsPartial"

    sget-object v3, Lcom/google/android/gm/provider/MailSync;->INITIAL_LABELS_PARTIAL:Ljava/util/Set;

    invoke-direct {p0, v0, v3}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    .line 479
    const-string v0, "labelsAll"

    const-string v3, ""

    invoke-direct {p0, v0, v3}, Lcom/google/android/gm/provider/MailSync;->setStringSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 483
    const-string v0, "startSyncNeeded"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 484
    const-string v0, "highestProcessedServerOperationId"

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 485
    const-string v0, "lowestBackwardConversationId"

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 486
    const-string v0, "highestBackwardConversationId"

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 487
    const-string v0, "moreForwardSyncNeeded"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 489
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v3, "needConfigSuggestion"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    const-string v0, "needConfigSuggestion"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v3, "unackedSentOperations"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 497
    const-string v0, "unackedSentOperations"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v3, "nextUnackedSentOp"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 501
    const-string v0, "nextUnackedSentOp"

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 504
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v3, "errorCountNextUnackedSentOp"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 505
    const-string v0, "errorCountNextUnackedSentOp"

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 508
    :cond_4
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v3, "nextUnackedOpWriteTime"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 509
    const-string v0, "nextUnackedOpWriteTime"

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 512
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v3, "serverVersion"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 513
    const-string v0, "serverVersion"

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 516
    :cond_6
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v3, "clientOpToAck"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 517
    const-string v0, "clientOpToAck"

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 520
    :cond_7
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v3, "clientId"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 521
    const-string v0, "clientId"

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 524
    :cond_8
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v3, "configDirty"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 525
    const-string v0, "configDirty"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 528
    :cond_9
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v3, "highestProcessedServerOperationId"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 529
    const-string v0, "highestProcessedServerOperationId"

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 532
    :cond_a
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v3, "moreForwardSyncNeeded"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 533
    const-string v0, "moreForwardSyncNeeded"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 536
    :cond_b
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v2, "labelsIncluded"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 537
    const-string v0, "labelsIncluded"

    sget-object v2, Lcom/google/android/gm/provider/MailSync;->INITIAL_LABELS_INCLUDED:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    .line 540
    :cond_c
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v2, "labelsPartial"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 541
    const-string v0, "labelsPartial"

    sget-object v2, Lcom/google/android/gm/provider/MailSync;->INITIAL_LABELS_PARTIAL:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    .line 546
    :cond_d
    if-eqz p5, :cond_e

    .line 547
    const-string v0, "configDirty"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 550
    invoke-virtual {p0, v7, v7, v7}, Lcom/google/android/gm/provider/MailSync;->checkLabelsSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 551
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 553
    :cond_e
    return-void

    :cond_f
    move v0, v2

    .line 470
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/gm/provider/MailSync;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/provider/MailSync;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/provider/MailSync;)Lcom/google/android/gm/provider/MailStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    return-object v0
.end method

.method private addAddressesInProto(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/List;)V
    .locals 4
    .parameter "messageProto"
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2839
    .local p3, addressList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2840
    .local v1, addressProtos:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/io/protocol/ProtoBuf;>;"
    invoke-static {p1, p2, v1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllProtoBufs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 2841
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/protocol/ProtoBuf;

    .line 2842
    .local v0, addressProto:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->readEmailFromProto(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2844
    .end local v0           #addressProto:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    return-void
.end method

.method private static addBuiltInLabelInfo(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3853
    sget-object v7, Lcom/google/android/gm/provider/MailSync;->BUILTIN_LABELS:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gm/provider/MailStore$LabelInfo;

    const v5, 0x7fffffff

    const-string v6, "SHOW"

    move-object v1, p0

    move-object v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailStore$LabelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    invoke-interface {v7, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3856
    return-void
.end method

.method private getBodyAsBytes(Landroid/database/Cursor;)[B
    .locals 2
    .parameter

    .prologue
    .line 2830
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2835
    return-object v0

    .line 2831
    :catch_0
    move-exception v0

    .line 2833
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UTF-8 not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDirtyConversations()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1285
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1}, Lcom/google/android/gm/provider/MailStore;->getDirtyConversations()Ljava/util/ArrayList;

    move-result-object v0

    .line 1286
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1287
    return-object v0
.end method

.method private getMinServerVersionForConfigInfo()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1305
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "gmail_config_info_min_server_version"

    invoke-static {v3, v4}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1307
    .local v1, setting:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1311
    :goto_0
    return v2

    .line 1309
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3187
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailSync;->getStringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->SPACE_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method private getStringSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3180
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3182
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleCheckConversationProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    .line 1797
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailStore;->prepare()V

    .line 1799
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1800
    new-instance v2, Lcom/google/android/gm/provider/MailSync$Conversation;

    invoke-direct {v2}, Lcom/google/android/gm/provider/MailSync$Conversation;-><init>()V

    .line 1802
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1804
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 1805
    iput-wide v0, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->conversationId:J

    .line 1806
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->sortMessageId:J

    .line 1807
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->date:J

    .line 1808
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->subject:Ljava/lang/String;

    .line 1809
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->snippet:Ljava/lang/String;

    .line 1810
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->fromInt(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 1812
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->maxMessageId:J

    .line 1813
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->numMessages:I

    .line 1814
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v4

    iput-boolean v4, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->hasAttachments:Z

    .line 1815
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gm/provider/CompactSenderInstructions;->instructionsStringFromProto(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->fromAddress:Ljava/lang/String;

    .line 1818
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    .line 1819
    const/16 v4, 0xb

    iget-object v5, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllLongs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 1822
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3, v2}, Lcom/google/android/gm/provider/MailStore;->handleConversation(Lcom/google/android/gm/provider/MailSync$Conversation;)V

    .line 1827
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    .line 1828
    const-string v4, "Gmail"

    const-string v5, "checkConversationProto: conversationId: %d, messageId: %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1830
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailStore;->addSyncedConversationInfoToCheck(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1832
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailStore;->commit()V

    .line 1834
    invoke-direct {p0, v9}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 1835
    return-void

    .line 1824
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 1832
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1}, Lcom/google/android/gm/provider/MailStore;->commit()V

    throw v0
.end method

.method private handleConfigAcceptedProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 4
    .parameter "configAccepted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1337
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1338
    new-instance v2, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    const-string v3, "ConfigAccepted Proto is missing a client_id value"

    invoke-direct {v2, v3}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1340
    :cond_0
    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 1341
    .local v0, clientId:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->handleConfigAcceptedValues(J)V

    .line 1342
    return-void
.end method

.method private handleConfigInfoProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 6
    .parameter "configInfo"

    .prologue
    const/4 v5, 0x2

    .line 1291
    const-string v4, "Gmail"

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1292
    invoke-static {p1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->printConfigInfoProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 1294
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 1295
    .local v0, durationDays:J
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 1296
    .local v3, includeLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 1297
    .local v2, durationLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1, v5, v3}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllStrings(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 1299
    const/4 v4, 0x3

    invoke-static {p1, v4, v2}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllStrings(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 1301
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/google/android/gm/provider/MailSync;->handleConfigInfoValues(JLjava/util/Set;Ljava/util/Set;)V

    .line 1302
    return-void
.end method

.method private handleConversationProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;Lcom/google/android/gm/provider/MailSyncObserver;JLcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    .line 1846
    const-string v2, "MS.handleConversation"

    invoke-static {v2}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 1847
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v8

    .line 1848
    const-wide/16 v2, 0x0

    .line 1849
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1850
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    .line 1854
    :cond_0
    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gm/provider/MailSync;->syncRationaleFromProto(I)Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-result-object v10

    .line 1856
    const-string v4, "Gmail"

    const-string v5, "handleConversationProto: conversationId: %d, SyncRationale: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v6, v7

    const/4 v7, 0x1

    aput-object v10, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1858
    const/4 v4, 0x1

    .line 1859
    const/4 v7, 0x0

    .line 1860
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v5}, Lcom/google/android/gm/provider/MailStore;->prepare()V

    .line 1863
    const/4 v6, 0x0

    .line 1870
    :try_start_0
    new-instance v11, Lcom/google/android/gm/provider/Dictionary;

    invoke-direct {v11}, Lcom/google/android/gm/provider/Dictionary;-><init>()V

    .line 1872
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/gm/provider/MailSync;->mIsSyncCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 2037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v2}, Lcom/google/android/gm/provider/MailStore;->commit()V

    .line 2040
    :goto_1
    return-void

    .line 1877
    :cond_2
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->readNextChunkPart()Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 1898
    if-nez v12, :cond_6

    .line 1899
    :try_start_2
    const-string v5, "Gmail"

    const-string v6, "handleConversationProto: End of stream while reading next chunk part. conversationId: %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v5, v6, v11}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2013
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    sget-object v6, Lcom/google/android/gm/provider/MailSync$SyncRationale;->UNKNOWN:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-interface {v5, v8, v9, v6}, Lcom/google/android/gm/provider/MailStore;->notifyConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 2014
    if-eqz v4, :cond_4

    .line 2022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object/from16 v0, p6

    invoke-interface {v4, v8, v9, v10, v0}, Lcom/google/android/gm/provider/MailStore;->notifyConversationLoaded(JLcom/google/android/gm/provider/MailSync$SyncRationale;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 2023
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    cmp-long v4, v2, v8

    if-eqz v4, :cond_3

    .line 2025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object/from16 v0, p6

    invoke-interface {v4, v2, v3, v10, v0}, Lcom/google/android/gm/provider/MailStore;->notifyConversationLoaded(JLcom/google/android/gm/provider/MailSync$SyncRationale;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 2028
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2030
    const-string v2, "Gmail"

    const-string v3, "handleConversationProto: Dirty conversation %d synced successfully. Marking as dirty in DB"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v2, v8, v9}, Lcom/google/android/gm/provider/MailStore;->markConversationDirty(J)V

    .line 2033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2037
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v2}, Lcom/google/android/gm/provider/MailStore;->commit()V

    .line 2039
    const-string v2, "MS.handleConversation"

    invoke-static {v2, v7}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;I)V

    goto :goto_1

    .line 1878
    :catch_0
    move-exception v4

    .line 1886
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getDirtyConversations()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1887
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2037
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3}, Lcom/google/android/gm/provider/MailStore;->commit()V

    throw v2

    .line 1889
    :cond_5
    const/4 v6, 0x1

    .line 1890
    const/4 v4, 0x0

    .line 1893
    :try_start_4
    const-string v5, "Gmail"

    const-string v12, "handleConversationProto: Chunk to big to fit in memory. marking conversation %d as dirty"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v5, v12, v13}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1895
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1903
    :cond_6
    const/16 v5, 0xb

    invoke-virtual {v12, v5}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    if-eqz v5, :cond_a

    .line 1904
    if-nez v6, :cond_1

    .line 1909
    const/16 v5, 0xb

    :try_start_5
    invoke-virtual {v12, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8, v9, v11}, Lcom/google/android/gm/provider/MailSync;->readMessageFromProto(Lcom/google/common/io/protocol/ProtoBuf;JLcom/google/android/gm/provider/Dictionary;)Lcom/google/android/gm/provider/MailSync$Message;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v5

    .line 1921
    :try_start_6
    iget-object v12, v5, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    if-nez v12, :cond_7

    .line 1922
    const/4 v6, 0x1

    .line 1923
    const/4 v4, 0x0

    .line 1926
    const-string v12, "Gmail"

    const-string v13, "handleConversationProto: Could not deflate message %d. marking conversation %d as dirty"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-wide v0, v5, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v14, v15

    const/4 v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v5

    invoke-static {v12, v13, v14}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1929
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1913
    :catch_1
    move-exception v4

    .line 1914
    const-string v5, "Gmail"

    const-string v12, "Corrupted data while creating dictionary. Deleting corrupted messages and retrying conversation fetch"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v5, v4, v12, v13}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1916
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;->getMessageId()J

    move-result-wide v12

    invoke-interface {v5, v8, v9, v12, v13}, Lcom/google/android/gm/provider/MailStore;->deleteCorruptedMessage(JJ)V

    .line 1917
    const/4 v4, 0x0

    .line 1918
    goto/16 :goto_0

    .line 1932
    :cond_7
    const-string v12, "Gmail"

    const-string v13, "handleConversationProto: message: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-static {v12, v13, v14}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1933
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-wide/from16 v0, p4

    invoke-interface {v12, v5, v0, v1}, Lcom/google/android/gm/provider/MailStore;->addOrUpdateMessage(Lcom/google/android/gm/provider/MailSync$Message;J)V

    .line 1934
    if-eqz p3, :cond_8

    .line 1935
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gm/provider/MailSyncObserver;->onMessageReceived()V

    .line 1937
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 2011
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v5}, Lcom/google/android/gm/provider/MailStore;->yieldForContention()Z

    goto/16 :goto_0

    .line 1938
    :cond_a
    const/16 v5, 0x12

    invoke-virtual {v12, v5}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v5

    if-eqz v5, :cond_10

    .line 1939
    const/4 v5, 0x0

    .line 1941
    const/16 v13, 0x12

    :try_start_7
    invoke-virtual {v12, v13}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8, v9}, Lcom/google/android/gm/provider/MailSync;->unzipMessageBatch(Lcom/google/common/io/protocol/ProtoBuf;J)Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;

    move-result-object v5

    .line 1945
    if-nez v5, :cond_d

    .line 1946
    const/4 v6, 0x1

    .line 1947
    const/4 v4, 0x0

    .line 1950
    const-string v12, "Gmail"

    const-string v13, "handleConversationProto: Could not deflate conversation %d. marking conversation as dirty"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1953
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1997
    if-eqz v5, :cond_1

    .line 1998
    :try_start_8
    invoke-virtual {v5}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 1981
    :cond_b
    const/16 v13, 0xb

    :try_start_9
    invoke-virtual {v12, v13}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8, v9, v13}, Lcom/google/android/gm/provider/MailSync;->readMessageFromProto(Lcom/google/common/io/protocol/ProtoBuf;JLcom/google/android/gm/provider/Dictionary;)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v12

    .line 1984
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-wide/from16 v0, p4

    invoke-interface {v13, v12, v0, v1}, Lcom/google/android/gm/provider/MailStore;->addOrUpdateMessage(Lcom/google/android/gm/provider/MailSync$Message;J)V

    .line 1985
    if-eqz p3, :cond_c

    .line 1986
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gm/provider/MailSyncObserver;->onMessageReceived()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1988
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 1958
    :cond_d
    :try_start_a
    invoke-virtual {v5}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->readNextChunkPart()Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_a .. :try_end_a} :catch_3

    move-result-object v12

    .line 1970
    if-nez v12, :cond_e

    .line 1997
    :goto_4
    if-eqz v5, :cond_9

    .line 1998
    :try_start_b
    invoke-virtual {v5}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 1959
    :catch_2
    move-exception v12

    .line 1960
    const/4 v6, 0x1

    .line 1961
    const/4 v4, 0x0

    .line 1964
    :try_start_c
    const-string v13, "Gmail"

    const-string v14, "handleConversationProto: Could not deflate conversation %d.marking conversation as dirty"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v12, v14, v15}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1967
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_4

    .line 1990
    :catch_3
    move-exception v4

    .line 1991
    :try_start_d
    const-string v12, "Gmail"

    const-string v13, "Corrupted data while creating dictionary. Deleting corrupted messages and retrying conversation fetch"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v4, v13, v14}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1993
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;->getMessageId()J

    move-result-wide v13

    invoke-interface {v12, v8, v9, v13, v14}, Lcom/google/android/gm/provider/MailStore;->deleteCorruptedMessage(JJ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1994
    const/4 v4, 0x0

    .line 1997
    if-eqz v5, :cond_1

    .line 1998
    :try_start_e
    invoke-virtual {v5}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    .line 1972
    :cond_e
    :try_start_f
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/gm/provider/MailSync;->mIsSyncCanceled:Z

    if-eqz v13, :cond_b

    .line 1975
    const-string v4, "Gmail"

    const-string v12, "sync cancelled while processing messages for conversation: %d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v4, v12, v13}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_f .. :try_end_f} :catch_3

    .line 1977
    const/4 v4, 0x0

    .line 1978
    goto :goto_4

    .line 1997
    :catchall_1
    move-exception v2

    if-eqz v5, :cond_f

    .line 1998
    :try_start_10
    invoke-virtual {v5}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->close()V

    :cond_f
    throw v2

    .line 2001
    :cond_10
    const/16 v5, 0xc

    invoke-virtual {v12, v5}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2002
    const-string v5, "Gmail"

    const-string v6, "handleConversationProto: end conversation"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v5, v6, v11}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 2007
    :cond_11
    const-string v5, "Gmail"

    const-string v6, "Unexpected chunk in conversation"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v5, v6, v11}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2
.end method

.method private handleForwardSyncProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSyncObserver;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 2255
    const-string v1, "Gmail"

    invoke-static {v1, v7}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2256
    invoke-static {p1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->printForwardSyncProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 2259
    :cond_0
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v9

    .line 2260
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1}, Lcom/google/android/gm/provider/MailStore;->prepare()V

    .line 2262
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2264
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v11

    .line 2266
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    .line 2268
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 2270
    if-nez v3, :cond_1

    move v4, v6

    .line 2272
    :goto_0
    if-ne v3, v6, :cond_2

    move v5, v6

    .line 2274
    :goto_1
    if-ne v3, v7, :cond_3

    .line 2276
    :goto_2
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-nez v6, :cond_4

    .line 2277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown change code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2422
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1}, Lcom/google/android/gm/provider/MailStore;->commit()V

    throw v0

    :cond_1
    move v4, v0

    .line 2270
    goto :goto_0

    :cond_2
    move v5, v0

    .line 2272
    goto :goto_1

    :cond_3
    move v6, v0

    .line 2274
    goto :goto_2

    .line 2280
    :cond_4
    const/4 v3, 0x0

    .line 2281
    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    .line 2282
    :cond_5
    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {v11, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v7

    .line 2284
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, v7, v8}, Lcom/google/android/gm/provider/MailStore;->getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v3

    .line 2286
    :cond_6
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->syncRationaleFromProto(I)Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-result-object v7

    .line 2290
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 2291
    const/4 v0, 0x5

    invoke-static {v11, v0, v8}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllLongs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    move-object v0, p0

    .line 2296
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gm/provider/MailSync;->handleOperationConversationLabelsChangedValues(JLcom/google/android/gm/provider/MailCore$Label;ZZZLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/List;)V

    .line 2420
    :cond_7
    :goto_3
    invoke-direct {p0, v9, v10, p2}, Lcom/google/android/gm/provider/MailSync;->onFinishedHandlingForwardOperation(JLcom/google/android/gm/provider/MailSyncObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2422
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailStore;->commit()V

    .line 2424
    return-void

    .line 2299
    :cond_8
    const/4 v1, 0x3

    :try_start_2
    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2300
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2302
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    .line 2304
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3, v1, v2}, Lcom/google/android/gm/provider/MailStore;->getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v1

    .line 2305
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2307
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2309
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gm/provider/MailSync;->handleOperationLabelCreatedValues(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2310
    :cond_9
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2311
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2313
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    .line 2315
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3, v1, v2}, Lcom/google/android/gm/provider/MailStore;->getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v1

    .line 2316
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2318
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2320
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gm/provider/MailSync;->handleOperationLabelRenamedValues(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2321
    :cond_a
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2322
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2324
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 2326
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gm/provider/MailStore;->getLabelOrNull(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    .line 2327
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->handleOperationLabelDeletedValues(Lcom/google/android/gm/provider/MailCore$Label;)V

    goto :goto_3

    .line 2328
    :cond_b
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2329
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2331
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->handleCheckConversationProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_3

    .line 2332
    :cond_c
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2333
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 2335
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2338
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2340
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    move v2, v0

    .line 2343
    :goto_4
    const-string v0, ""

    .line 2344
    if-nez v2, :cond_19

    .line 2345
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2349
    :goto_5
    const-string v0, "Gmail"

    const-string v4, "MainSync: Custom preference name: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v0, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2350
    const-string v0, "Gmail"

    const-string v4, "MainSync: Custom preference value: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v0, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2352
    const-string v0, "sx_clcp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2353
    const-string v0, "Gmail"

    const-string v4, "MainSync: Custom Color: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v0, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2355
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2356
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/provider/MailSync;->getCustomLabelColorPrefs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/android/gm/provider/MailStore;->setCustomLabelColorPreference(Ljava/util/Map;)V

    .line 2361
    :cond_d
    const-string v0, "bx_rf"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2362
    const-string v0, "bx_rf"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 2364
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v4, v0}, Lcom/google/android/gm/provider/MailStore;->setServerPreferences(Ljava/util/Map;)V

    .line 2367
    :cond_e
    const-string v0, "/customfrom/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2368
    if-nez v2, :cond_15

    .line 2369
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gm/provider/MailSync;->getCustomFromPrefs(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Lcom/google/android/gm/provider/MailStore;->setCustomFromPreference(Ljava/util/Map;Z)V

    .line 2378
    :cond_f
    :goto_6
    const-string v0, "sx_rt"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2380
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2381
    :cond_10
    const-string v0, ""

    .line 2385
    :goto_7
    const-string v4, "sx_rt"

    invoke-static {v4, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 2387
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v4, v0}, Lcom/google/android/gm/provider/MailStore;->setServerPreferences(Ljava/util/Map;)V

    .line 2390
    :cond_11
    const-string v0, "sx_dn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2392
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2393
    :cond_12
    const-string v0, ""

    .line 2397
    :goto_8
    const-string v4, "sx_dn"

    invoke-static {v4, v0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 2399
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v4, v0}, Lcom/google/android/gm/provider/MailStore;->setServerPreferences(Ljava/util/Map;)V

    .line 2402
    :cond_13
    const-string v0, "sx_ioe"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez v2, :cond_14

    .line 2403
    if-eqz v1, :cond_14

    .line 2404
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/android/gm/provider/MailStore;->setInfoOverloadEnabledPreference(Ljava/lang/String;)V

    .line 2409
    const-string v0, "startSyncNeeded"

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 2412
    :cond_14
    const-string v0, "bx_ioao"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v2, :cond_7

    .line 2413
    if-eqz v1, :cond_7

    .line 2414
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/MailStore;->setInfoOverloadArrowsOffPreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2373
    :cond_15
    const-string v0, "Gmail"

    const-string v4, "Deleting preference %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v0, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2374
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, v3}, Lcom/google/android/gm/provider/MailStore;->removeCustomFromPreference(Ljava/lang/String;)V

    goto :goto_6

    .line 2383
    :cond_16
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 2395
    :cond_17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 2418
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No forward sync operation found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_19
    move-object v1, v0

    goto/16 :goto_5

    :cond_1a
    move v2, v0

    goto/16 :goto_4
.end method

.method private handleMessageNotHandledValues(JLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1838
    const-string v0, "Gmail"

    const-string v1, "Message %d not handled because: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1839
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gm/provider/MailStore;->notifyMessageNotUpdated(JLjava/lang/String;)V

    .line 1840
    return-void
.end method

.method private handleMessageProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;Lcom/google/android/gm/provider/MailSyncObserver;JLcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    .line 2072
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    .line 2075
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailStore;->prepare()V

    .line 2078
    const/4 v0, 0x0

    .line 2080
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gm/provider/MailSync;->mIsSyncCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2133
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailStore;->commit()V

    .line 2135
    :goto_1
    return-void

    .line 2083
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->readNextChunkPart()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 2084
    if-nez v3, :cond_2

    .line 2085
    const-string v0, "Gmail"

    const-string v3, "handleMessageProto: End of stream while reading next chunk part. conversationId: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2133
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailStore;->commit()V

    goto :goto_1

    .line 2090
    :cond_2
    const/16 v4, 0xb

    :try_start_2
    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2091
    if-nez v0, :cond_0

    .line 2094
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    new-instance v4, Lcom/google/android/gm/provider/Dictionary;

    invoke-direct {v4}, Lcom/google/android/gm/provider/Dictionary;-><init>()V

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/google/android/gm/provider/MailSync;->readMessageFromProto(Lcom/google/common/io/protocol/ProtoBuf;JLcom/google/android/gm/provider/Dictionary;)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v3

    .line 2097
    iget-object v4, v3, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 2098
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2101
    const-string v0, "Gmail"

    const-string v4, "handleMessageProto: Could not deflate message %d. marking conversation %d  as dirty"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v7, v3, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2104
    const/4 v0, 0x1

    .line 2105
    goto :goto_0

    .line 2107
    :cond_3
    const-string v4, "Gmail"

    const-string v5, "handleMessageProto: message: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2108
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v4, v3, p4, p5}, Lcom/google/android/gm/provider/MailStore;->addOrUpdateMessage(Lcom/google/android/gm/provider/MailSync$Message;J)V

    .line 2109
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    iget-wide v5, v3, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    sget-object v7, Lcom/google/android/gm/provider/MailSync$SyncRationale;->UNKNOWN:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/gm/provider/MailStore;->notifyConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 2111
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/google/android/gm/provider/MailSyncObserver;->onMessageReceived()V

    .line 2113
    :cond_4
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2116
    const-string v4, "Gmail"

    const-string v5, "handleMessageProto: Message %d synced successfully. Marking conversation %d as dirty in DB"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v3, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2119
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3, v1, v2}, Lcom/google/android/gm/provider/MailStore;->markConversationDirty(J)V

    .line 2120
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2130
    :cond_5
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3}, Lcom/google/android/gm/provider/MailStore;->yieldForContention()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 2133
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1}, Lcom/google/android/gm/provider/MailStore;->commit()V

    throw v0

    .line 2123
    :cond_6
    const/16 v0, 0xd

    :try_start_3
    invoke-virtual {v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    .line 2133
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailStore;->commit()V

    goto/16 :goto_1

    .line 2127
    :cond_7
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected chunk in conversation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private handleNoConversationProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 2139
    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 2140
    const-string v2, "Gmail"

    const-string v3, "handleNoConversationProto: conversationId: %d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2141
    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->handleNoConversationValues(J)V

    .line 2142
    return-void
.end method

.method private handleNoConversationValues(J)V
    .locals 3
    .parameter "conversationId"

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailStore;->prepare()V

    .line 2150
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->NONE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gm/provider/MailStore;->notifyConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 2151
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->NONE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    new-instance v2, Lcom/google/android/gm/provider/MailEngine$SyncInfo;

    invoke-direct {v2}, Lcom/google/android/gm/provider/MailEngine$SyncInfo;-><init>()V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gm/provider/MailStore;->notifyConversationLoaded(JLcom/google/android/gm/provider/MailSync$SyncRationale;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2154
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailStore;->commit()V

    .line 2156
    return-void

    .line 2154
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1}, Lcom/google/android/gm/provider/MailStore;->commit()V

    throw v0
.end method

.method private handleNoMessageProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 2160
    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 2161
    const-string v2, "Gmail"

    const-string v3, "handleNoMessageProto: messageId: %d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2162
    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->handleNoMessageValues(J)V

    .line 2163
    return-void
.end method

.method private handleNoMessageValues(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/provider/MailStore;->notifyMessageDoesNotExist(J)V

    .line 2227
    return-void
.end method

.method private handleOperationConversationLabelsChangedValues(JLcom/google/android/gm/provider/MailCore$Label;ZZZLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/List;)V
    .locals 7
    .parameter "conversationId"
    .parameter "labelOrNull"
    .parameter "conversationLabelAdded"
    .parameter "conversationLabelRemoved"
    .parameter "conversationMessagesExpunged"
    .parameter "rationale"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gm/provider/MailCore$Label;",
            "ZZZ",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2443
    .local p8, messageIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-nez p4, :cond_0

    if-eqz p5, :cond_2

    .line 2444
    :cond_0
    if-eqz p3, :cond_1

    .line 2445
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-wide v1, p1

    move-object v3, p8

    move-object v4, p3

    move v5, p4

    move-object v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gm/provider/MailStore;->setLabelOnMessages(JLjava/util/List;Lcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 2454
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2455
    return-void

    .line 2449
    :cond_2
    if-eqz p6, :cond_3

    .line 2450
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, p1, p2, p8, p7}, Lcom/google/android/gm/provider/MailStore;->expungeMessages(JLjava/util/List;Lcom/google/android/gm/provider/MailSync$SyncRationale;)V

    goto :goto_0

    .line 2452
    :cond_3
    sget-boolean v0, Lcom/google/android/gm/provider/MailSync;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private handleQueryResponseProto(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSync$ConversationSink;)J
    .locals 7
    .parameter "response"
    .parameter "sink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1067
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/MailSync;->newParserForProtoResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;

    move-result-object v0

    .line 1069
    .local v0, pis:Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->readNextChunkPart()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 1070
    .local v1, protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v1, :cond_0

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1071
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/google/android/gm/provider/MailSync;->handleQueryResponseProtoParsed(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSync$ConversationSink;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1081
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->close()V

    return-wide v2

    .line 1074
    :cond_0
    :try_start_1
    const-string v3, "Gmail"

    const-string v4, "handleQueryResponseProto: No query result found inside response chunk. reason: %s"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    const-string v2, "null protoBuf"

    :goto_0
    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1077
    new-instance v2, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    const-string v3, "No query result found inside response chunk"

    invoke-direct {v2, v3}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1081
    .end local v1           #protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->close()V

    throw v2

    .line 1074
    .restart local v1       #protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    :try_start_2
    const-string v2, "missing query result"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private handleQueryResponseProtoParsed(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSync$ConversationSink;)J
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x2

    .line 2857
    const-string v1, "MS.handleQueryResponse"

    invoke-static {v1}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 2858
    invoke-interface {p2}, Lcom/google/android/gm/provider/MailSync$ConversationSink;->prepareSink()V

    .line 2861
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2862
    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllProtoBufs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 2863
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/protocol/ProtoBuf;

    .line 2864
    new-instance v3, Lcom/google/android/gm/provider/MailSync$Conversation;

    invoke-direct {v3}, Lcom/google/android/gm/provider/MailSync$Conversation;-><init>()V

    .line 2865
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/MailSync$Conversation;->conversationId:J

    .line 2867
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/MailSync$Conversation;->sortMessageId:J

    .line 2869
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->fromInt(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gm/provider/MailSync$Conversation;->personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 2871
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/MailSync$Conversation;->maxMessageId:J

    .line 2873
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/google/android/gm/provider/MailSync$Conversation;->numMessages:I

    .line 2875
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gm/provider/MailSync$Conversation;->hasAttachments:Z

    .line 2877
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/MailSync$Conversation;->date:J

    .line 2878
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gm/provider/MailSync$Conversation;->subject:Ljava/lang/String;

    .line 2880
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gm/provider/MailSync$Conversation;->snippet:Ljava/lang/String;

    .line 2883
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    .line 2884
    const/16 v4, 0xb

    iget-object v5, v3, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    invoke-static {v0, v4, v5}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllLongs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 2888
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/CompactSenderInstructions;->instructionsStringFromProto(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gm/provider/MailSync$Conversation;->fromAddress:Ljava/lang/String;

    .line 2892
    const-string v0, "Gmail"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2893
    const-string v0, "Gmail"

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailSync$Conversation;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2895
    :cond_0
    invoke-interface {p2, v3}, Lcom/google/android/gm/provider/MailSync$ConversationSink;->handleConversation(Lcom/google/android/gm/provider/MailSync$Conversation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2896
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 2897
    goto/16 :goto_0

    .line 2899
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gm/provider/MailSync$ConversationSink;->finalizeSink()V

    .line 2901
    const-string v0, "MS.handleQueryResponse"

    invoke-static {v0, v1}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;I)V

    .line 2903
    invoke-virtual {p1, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 2899
    :catchall_0
    move-exception v0

    invoke-interface {p2}, Lcom/google/android/gm/provider/MailSync$ConversationSink;->finalizeSink()V

    throw v0
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSyncObserver;JLcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 5
    .parameter "response"
    .parameter "observer"
    .parameter "queryId"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    const-string v2, "Content-Type"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, contentType:Ljava/lang/String;
    const-string v2, "application/vnd.google-x-gms-proto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 899
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gm/provider/MailSync;->handleResponseProto(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSyncObserver;JLcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 910
    return-void

    .line 900
    :cond_0
    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 901
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 902
    .local v1, statusCode:I
    const-string v2, "Gmail"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 903
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailSync;->printHtmlResponse(Lorg/apache/http/HttpResponse;)V

    .line 905
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server returned unhandled response content type (text/html status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 908
    .end local v1           #statusCode:I
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown response content type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleResponseProto(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSyncObserver;JLcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 9
    .parameter "response"
    .parameter "observer"
    .parameter "queryId"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 947
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/MailSync;->newParserForProtoResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;

    move-result-object v2

    .line 949
    .local v2, pis:Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->getResponseVersion()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 950
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to use protos for a version-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->getResponseVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " response"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :cond_0
    const/4 v7, 0x0

    .line 958
    .local v7, postamble:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailSync;->mIsSyncCanceled:Z

    if-eqz v0, :cond_4

    .line 1018
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailSync;->mIsSyncCanceled:Z

    if-nez v0, :cond_3

    if-eqz v7, :cond_3

    .line 1019
    invoke-direct {p0, v7, p5}, Lcom/google/android/gm/provider/MailSync;->handleSyncPostambleProtoExceptLowestInDuration(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->close()V

    .line 1024
    return-void

    .line 962
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->readNextChunkPart()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v8

    .line 963
    .local v8, protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v8, :cond_2

    .line 966
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 967
    invoke-static {v8}, Lcom/google/android/gm/provider/ProtoBufHelpers;->printHttpResponseChunkProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 969
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 970
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->handleConfigInfoProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1022
    .end local v8           #protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->close()V

    throw v0

    .line 971
    .restart local v8       #protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_6
    const/4 v0, 0x3

    :try_start_2
    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 972
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->handleConfigAcceptedProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 973
    :cond_7
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 974
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gm/provider/MailSync;->handleStartSyncInfoProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSyncObserver;)V

    .line 976
    const/4 v0, 0x1

    iput-boolean v0, p5, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->receivedHandledClientOp:Z

    goto :goto_0

    .line 977
    :cond_8
    const/4 v0, 0x5

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 978
    const/4 v0, 0x5

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/google/android/gm/provider/MailSync;->handleUphillSyncProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    goto :goto_0

    .line 980
    :cond_9
    const/4 v0, 0x7

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 981
    const/4 v0, 0x7

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gm/provider/MailSync;->handleForwardSyncProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSyncObserver;)V

    goto :goto_0

    .line 983
    :cond_a
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 984
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->handleCheckConversationProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_0

    .line 986
    :cond_b
    const/16 v0, 0x9

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 987
    const/16 v0, 0x9

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailSync;->handleConversationProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;Lcom/google/android/gm/provider/MailSyncObserver;JLcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    goto/16 :goto_0

    .line 990
    :cond_c
    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 991
    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailSync;->handleMessageProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;Lcom/google/android/gm/provider/MailSyncObserver;JLcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    goto/16 :goto_0

    .line 994
    :cond_d
    const/16 v0, 0x10

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 995
    const/16 v0, 0x10

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->handleNoConversationProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_0

    .line 996
    :cond_e
    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 997
    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->handleNoMessageProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_0

    .line 998
    :cond_f
    const/16 v0, 0xe

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 999
    const/16 v0, 0xe

    invoke-virtual {v8, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 1007
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    const-string v0, "lowestMessageIdInDuration"

    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1012
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    goto/16 :goto_0

    .line 1015
    :cond_10
    new-instance v0, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    const-string v1, "No protobuf found inside response chunk"

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private handleStartSyncInfoProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSyncObserver;)V
    .locals 23
    .parameter
    .parameter

    .prologue
    .line 1397
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v11

    .line 1399
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v13

    .line 1401
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v15

    .line 1404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3}, Lcom/google/android/gm/provider/MailStore;->prepare()V

    .line 1406
    const/4 v3, 0x6

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1407
    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1409
    const-string v4, "Gmail"

    const-string v5, "StartSyncInfoProto: Custom From prefs: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1411
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1413
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->getCustomFromPrefs(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v3

    .line 1414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Lcom/google/android/gm/provider/MailStore;->setCustomFromPreference(Ljava/util/Map;Z)V

    .line 1417
    :cond_0
    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1418
    const/4 v3, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1420
    const-string v4, "Gmail"

    const-string v5, "StartSyncInfoProto: Reply From prefs: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1423
    const-string v4, "bx_rf"

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    .line 1425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/MailStore;->setServerPreferences(Ljava/util/Map;)V

    .line 1429
    :cond_1
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1430
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1432
    const-string v4, "Gmail"

    const-string v5, "StartSyncInfoProto: Custom Color: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1434
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/MailSync;->getCustomLabelColorPrefs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/MailStore;->setCustomLabelColorPreference(Ljava/util/Map;)V

    .line 1439
    :cond_2
    const/16 v3, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1440
    const/16 v3, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1442
    const-string v4, "Gmail"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1443
    const-string v4, "Gmail"

    const-string v5, "StartSyncInfoProto: Reply To: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1444
    const-string v4, "Gmail"

    const-string v5, "StartSyncInfoProto: Reply To: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1447
    :cond_3
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1449
    const-string v4, "sx_rt"

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    .line 1451
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/MailStore;->setServerPreferences(Ljava/util/Map;)V

    .line 1461
    :cond_4
    :goto_0
    const/16 v3, 0xe

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1462
    const/16 v3, 0xe

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1464
    const-string v4, "Gmail"

    const-string v5, "StartSyncInfoProto: Display Name: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1466
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1468
    const-string v4, "sx_dn"

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    .line 1470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/MailStore;->setServerPreferences(Ljava/util/Map;)V

    .line 1480
    :cond_5
    :goto_1
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1481
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1483
    const/16 v4, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1485
    const/16 v5, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1487
    const/16 v6, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1489
    const/16 v7, 0xf

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1493
    const-string v8, "Gmail"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1494
    const-string v8, "Gmail"

    const-string v9, "StartSyncInfoProto: IO enabled: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v3, v10, v17

    invoke-static {v8, v9, v10}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1495
    const-string v8, "Gmail"

    const-string v9, "StartSyncInfoProto: IO sections: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v4, v10, v17

    invoke-static {v8, v9, v10}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1497
    const-string v4, "Gmail"

    const-string v8, "StartSyncInfoProto: IO sizes: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v4, v8, v9}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1499
    const-string v4, "Gmail"

    const-string v5, "StartSyncInfoProto: IO default inbox: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v4, v5, v8}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1501
    const-string v4, "Gmail"

    const-string v5, "StartSyncInfoProto: IO arrows off: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1505
    :cond_6
    if-eqz v3, :cond_7

    .line 1506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/MailStore;->setInfoOverloadEnabledPreference(Ljava/lang/String;)V

    .line 1508
    :cond_7
    if-eqz v7, :cond_8

    .line 1509
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gm/provider/MailStore;->setInfoOverloadArrowsOffPreference(Ljava/lang/String;)V

    .line 1513
    :cond_8
    const-string v3, "Gmail"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1514
    invoke-static/range {p1 .. p1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->printStartSyncInfoProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 1517
    :cond_9
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v17

    .line 1518
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v18

    .line 1519
    const/4 v3, 0x0

    move v10, v3

    :goto_2
    move/from16 v0, v18

    if-ge v10, v0, :cond_f

    .line 1520
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1521
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    .line 1522
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v6, v4, v5}, Lcom/google/android/gm/provider/MailStore;->getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v19

    .line 1523
    if-nez v19, :cond_c

    .line 1519
    :goto_3
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_2

    .line 1455
    :cond_a
    const-string v3, "sx_rt"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    .line 1457
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/MailStore;->setServerPreferences(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1560
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v4}, Lcom/google/android/gm/provider/MailStore;->commit()V

    throw v3

    .line 1474
    :cond_b
    :try_start_1
    const-string v3, "sx_dn"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    .line 1476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/MailStore;->setServerPreferences(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1524
    :cond_c
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1526
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1527
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    .line 1528
    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    .line 1530
    const v8, 0x7fffffff

    .line 1531
    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1532
    const/4 v8, 0x6

    invoke-virtual {v3, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    .line 1535
    :cond_d
    const-string v9, "SHOW"

    .line 1536
    const/16 v20, 0x7

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 1537
    const/4 v9, 0x7

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1538
    const-string v3, "Gmail"

    const-string v20, "StartSyncInfoProto: LABEL_VISIBILITY: %s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v9, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1541
    :cond_e
    new-instance v3, Lcom/google/android/gm/provider/MailStore$LabelInfo;

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/provider/MailStore$LabelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 1545
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1547
    :cond_f
    if-lez v18, :cond_10

    .line 1548
    if-eqz p2, :cond_10

    .line 1551
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gm/provider/MailSyncObserver;->onOperationReceived()V

    .line 1555
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailSync;->handleLabelsValues(Ljava/util/Map;Lcom/google/android/gm/provider/MailSyncObserver;)V

    move-object/from16 v3, p0

    move-wide v4, v15

    move-wide v6, v13

    move-wide v8, v11

    .line 1557
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gm/provider/MailSync;->handleStartSyncInfoValues(JJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3}, Lcom/google/android/gm/provider/MailStore;->commit()V

    .line 1562
    return-void
.end method

.method private handleSyncPostambleProtoExceptLowestInDuration(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2167
    const-string v0, "Gmail"

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2168
    invoke-static {p1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->printSyncPostambleProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 2170
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2171
    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->handleLastExaminedServerOperationValues(J)V

    .line 2174
    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2175
    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->handleLowestBackwardConversationIdValues(J)V

    .line 2179
    :cond_2
    iget-boolean v0, p2, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    if-eqz v0, :cond_6

    .line 2180
    const-string v0, "moreForwardSyncNeeded"

    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 2188
    :goto_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2189
    invoke-static {p1, v3, v0}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllProtoBufs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 2191
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 2192
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1}, Lcom/google/android/gm/provider/MailStore;->prepare()V

    .line 2194
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/protocol/ProtoBuf;

    .line 2195
    const v4, 0x7fffffff

    .line 2196
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2197
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    .line 2199
    :cond_4
    const-string v5, "SHOW"

    .line 2200
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2201
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2203
    const-string v1, "Gmail"

    const-string v2, "ResponseSyncPostamble: LABEL_VISIBILITY: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v3, v8

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2205
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 2206
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 2208
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v8

    invoke-interface {v1, v8, v9}, Lcom/google/android/gm/provider/MailStore;->getLabelOrNull(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v1

    .line 2214
    if-eqz v1, :cond_3

    .line 2215
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gm/provider/MailStore;->setLabelCounts(Lcom/google/android/gm/provider/MailCore$Label;IIILjava/lang/String;)V

    .line 2216
    iget-wide v0, v1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2220
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1}, Lcom/google/android/gm/provider/MailStore;->commit()V

    throw v0

    .line 2184
    :cond_6
    const-string v0, "moreForwardSyncNeeded"

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 2220
    :cond_7
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailStore;->commit()V

    .line 2222
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, v6}, Lcom/google/android/gm/provider/MailStore;->notifyLabelChanges(Ljava/util/Set;)V

    .line 2223
    return-void
.end method

.method private handleUphillSyncProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 20
    .parameter "responseUphillSync"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1719
    const-string v2, "Gmail"

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1720
    invoke-static/range {p1 .. p1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->printUphillSyncProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 1721
    const-string v2, "Gmail"

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1723
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v15

    .line 1724
    .local v15, numNotHandled:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v2}, Lcom/google/android/gm/provider/MailStore;->prepare()V

    .line 1726
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v15, :cond_1

    .line 1727
    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v14

    .line 1729
    .local v14, notHandled:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v5

    .line 1731
    .local v5, messageId:J
    const/4 v2, 0x2

    invoke-virtual {v14, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1733
    .local v9, error:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v9}, Lcom/google/android/gm/provider/MailSync;->handleMessageNotHandledValues(JLjava/lang/String;)V

    .line 1726
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1736
    .end local v5           #messageId:J
    .end local v9           #error:Ljava/lang/String;
    .end local v14           #notHandled:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v16

    .line 1738
    .local v16, numSavedOrSent:I
    const/4 v12, 0x0

    .line 1740
    .local v12, handledSendWithoutSyncMessage:Z
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    .line 1741
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v17

    .line 1743
    .local v17, savedOrSent:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    .line 1745
    .local v3, messageIdOnClient:J
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    move-wide/from16 v18, v0

    cmp-long v2, v3, v18

    if-nez v2, :cond_2

    .line 1746
    const/4 v12, 0x1

    .line 1748
    :cond_2
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v5

    .line 1750
    .restart local v5       #messageId:J
    const/4 v2, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v7

    .local v7, conversationId:J
    move-object/from16 v2, p0

    .line 1752
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gm/provider/MailSync;->handleMessageSavedOrSentValues(JJJ)V

    .line 1753
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    move-wide/from16 v18, v0

    cmp-long v2, v18, v7

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    move-wide/from16 v18, v0

    cmp-long v2, v18, v3

    if-nez v2, :cond_4

    :cond_3
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    move-wide/from16 v18, v0

    cmp-long v2, v18, v3

    if-nez v2, :cond_4

    .line 1757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v2, v7, v8, v5, v6}, Lcom/google/android/gm/provider/MailStore;->addSendWithoutSyncConversationInfoToCheck(JJ)V

    .line 1740
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1761
    .end local v3           #messageIdOnClient:J
    .end local v5           #messageId:J
    .end local v7           #conversationId:J
    .end local v17           #savedOrSent:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_5
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    if-eqz v2, :cond_7

    .line 1763
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v10

    .line 1765
    .local v10, handledOperationId:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/google/android/gm/provider/MailSync;->onServerHasHandledClientOperationdId(J)V

    .line 1766
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->receivedHandledClientOp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1773
    .end local v10           #handledOperationId:J
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v2}, Lcom/google/android/gm/provider/MailStore;->commit()V

    .line 1775
    return-void

    .line 1767
    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    if-nez v2, :cond_6

    if-eqz v12, :cond_6

    .line 1769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-interface {v2, v0, v1}, Lcom/google/android/gm/provider/MailStore;->removeOperationByMessageId(J)V

    .line 1770
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->receivedHandledClientOp:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1773
    .end local v12           #handledSendWithoutSyncMessage:Z
    .end local v16           #numSavedOrSent:I
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/android/gm/provider/MailStore;->commit()V

    throw v2
.end method

.method private hasSetting(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private incStats(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mCounters:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 597
    return-void
.end method

.method private incStats(IJ)V
    .locals 3
    .parameter "id"
    .parameter "num"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mCounters:[J

    aget-wide v1, v0, p1

    add-long/2addr v1, p2

    aput-wide v1, v0, p1

    .line 593
    return-void
.end method

.method private initDictionary(Lcom/google/android/gm/provider/Dictionary;JJZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2809
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "messageId"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "body"

    aput-object v3, v1, v2

    invoke-interface {v0, v1, p4, p5}, Lcom/google/android/gm/provider/MailStore;->getMessageCursorForConversationId([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v1

    .line 2813
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2814
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v0, v2, p2

    if-nez v0, :cond_1

    .line 2815
    if-eqz p6, :cond_0

    .line 2816
    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailSync;->getBodyAsBytes(Landroid/database/Cursor;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/Dictionary;->append([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2823
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2825
    :goto_1
    return-void

    .line 2820
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailSync;->getBodyAsBytes(Landroid/database/Cursor;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/Dictionary;->append([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2823
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private onFinishedHandlingForwardOperation(JLcom/google/android/gm/provider/MailSyncObserver;)V
    .locals 1
    .parameter "operationId"
    .parameter "observer"

    .prologue
    .line 2247
    const-string v0, "highestProcessedServerOperationId"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 2250
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 2251
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/google/android/gm/provider/MailSyncObserver;->onOperationReceived()V

    .line 2252
    :cond_0
    return-void
.end method

.method private printHtmlResponse(Lorg/apache/http/HttpResponse;)V
    .locals 14
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 913
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 914
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    const-wide/32 v11, 0x7fffffff

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    .line 915
    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v7

    .line 917
    .local v7, responseStream:Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v6, v7, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 918
    .local v6, reader:Ljava/io/Reader;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    long-to-int v2, v9

    .line 919
    .local v2, i:I
    if-gez v2, :cond_0

    .line 920
    const/16 v2, 0x1000

    .line 922
    :cond_0
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 924
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    const/16 v9, 0x400

    :try_start_0
    new-array v8, v9, [C

    .line 926
    .local v8, tmp:[C
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 927
    .local v4, now:J
    :cond_1
    invoke-virtual {v6, v8}, Ljava/io/Reader;->read([C)I

    move-result v3

    .local v3, l:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_2

    .line 928
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v3}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    .line 929
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    const-wide/32 v11, 0x36ee80

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 930
    const-string v9, "\nRead timed out..."

    invoke-virtual {v0, v9}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    :cond_2
    invoke-virtual {v6}, Ljava/io/Reader;->close()V

    .line 937
    const-string v9, "Gmail"

    const-string v10, "Html Response from html content = %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v13

    invoke-static {v9, v10, v11}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 941
    .end local v0           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v2           #i:I
    .end local v3           #l:I
    .end local v4           #now:J
    .end local v6           #reader:Ljava/io/Reader;
    .end local v7           #responseStream:Ljava/io/InputStream;
    .end local v8           #tmp:[C
    :goto_0
    return-void

    .line 935
    .restart local v0       #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .restart local v2       #i:I
    .restart local v6       #reader:Ljava/io/Reader;
    .restart local v7       #responseStream:Ljava/io/InputStream;
    :catchall_0
    move-exception v9

    invoke-virtual {v6}, Ljava/io/Reader;->close()V

    throw v9

    .line 939
    .end local v0           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v2           #i:I
    .end local v6           #reader:Ljava/io/Reader;
    .end local v7           #responseStream:Ljava/io/InputStream;
    :cond_3
    const-string v9, "Gmail"

    const-string v10, "Response too large to print"

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private readEmailFromProto(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 2847
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2848
    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2849
    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2852
    :cond_0
    return-object v0
.end method

.method private static removeFromSetElementsInSet(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/util/Set",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 2625
    .local p0, set0:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    .local p1, set1:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 2634
    :cond_0
    return v0

    .line 2626
    :cond_1
    const/4 v0, 0x0

    .line 2627
    .local v0, changed:Z
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2628
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2629
    .local v1, e:Ljava/lang/Object;,"TE;"
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2630
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2631
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static removeFromSetElementsNotInSet(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/util/Set",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 2639
    .local p0, set0:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    .local p1, set1:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 2648
    :cond_0
    return v0

    .line 2640
    :cond_1
    const/4 v0, 0x0

    .line 2641
    .local v0, changed:Z
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2642
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2643
    .local v1, e:Ljava/lang/Object;,"TE;"
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2644
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2645
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 2
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3219
    .local p2, value:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3221
    .local v0, array:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 3222
    const-string v1, " "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/gm/provider/MailSync;->setStringSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private setStringSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3208
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3209
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3210
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3211
    const/4 v0, 0x1

    .line 3213
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static syncRationaleFromProto(I)Lcom/google/android/gm/provider/MailSync$SyncRationale;
    .locals 3
    .parameter

    .prologue
    .line 2427
    packed-switch p0, :pswitch_data_0

    .line 2435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown proto rationale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2429
    :pswitch_0
    sget-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->NONE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 2433
    :goto_0
    return-object v0

    .line 2431
    :pswitch_1
    sget-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->DURATION:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    goto :goto_0

    .line 2433
    :pswitch_2
    sget-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LABEL:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    goto :goto_0

    .line 2427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static unEscapeString(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "escapeChar"
    .parameter "charToEscape"

    .prologue
    .line 1660
    if-nez p0, :cond_0

    .line 1661
    const/4 v4, 0x0

    .line 1678
    :goto_0
    return-object v4

    .line 1663
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1664
    .local v3, result:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1665
    .local v1, hasPreEscape:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1666
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1667
    .local v0, currentChar:C
    if-eqz v1, :cond_1

    if-eq v0, p1, :cond_1

    .line 1668
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1669
    const/4 v1, 0x0

    .line 1665
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1671
    :cond_1
    if-ne v0, p1, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, p2, :cond_2

    .line 1672
    const/4 v1, 0x1

    goto :goto_2

    .line 1674
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1678
    .end local v0           #currentChar:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private unzipMessageBatch(Lcom/google/common/io/protocol/ProtoBuf;J)Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 2043
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2044
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v7

    .line 2045
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    .line 2047
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v8

    .line 2048
    new-instance v1, Lcom/google/android/gm/provider/Dictionary;

    invoke-direct {v1}, Lcom/google/android/gm/provider/Dictionary;-><init>()V

    .line 2050
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v4, p2

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailSync;->initDictionary(Lcom/google/android/gm/provider/Dictionary;JJZ)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2057
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Dictionary;->getChecksum()J

    move-result-wide v2

    .line 2058
    cmp-long v0, v8, v2

    if-eqz v0, :cond_0

    .line 2059
    const-string v0, "Gmail"

    const-string v1, "Dictionary checksum mismatch for conversation %d. Expected %x but was %x"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v1, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2061
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2062
    const/4 v0, 0x0

    .line 2065
    :goto_0
    return-object v0

    .line 2051
    :catch_0
    move-exception v0

    .line 2052
    const-string v1, "Gmail"

    const-string v2, "Out of memory while creating dictionary for conversation %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2054
    const/4 v0, 0x0

    goto :goto_0

    .line 2065
    :cond_0
    new-instance v0, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Dictionary;->getBytes()[B

    move-result-object v1

    invoke-static {v7, v1}, Lcom/google/android/gm/provider/ZipUtils;->inflateToStream([B[B)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private unzipMessageBody([BJJJLcom/google/android/gm/provider/Dictionary;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2749
    const-string v1, "MS.unzipMessageBody"

    invoke-static {v1}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 2751
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2756
    new-instance v8, Ljava/util/zip/Inflater;

    invoke-direct {v8}, Ljava/util/zip/Inflater;-><init>()V

    .line 2757
    invoke-virtual {v8, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 2761
    :try_start_0
    invoke-static {v8}, Lcom/google/android/gm/provider/ZipUtils;->inflate(Ljava/util/zip/Inflater;)[B

    move-result-object v1

    .line 2762
    array-length v2, v1

    if-nez v2, :cond_2

    invoke-virtual {v8}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2763
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/gm/provider/Dictionary;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2766
    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v2, p8

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gm/provider/MailSync;->initDictionary(Lcom/google/android/gm/provider/Dictionary;JJZ)V

    .line 2768
    :cond_0
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/gm/provider/Dictionary;->getChecksum()J

    move-result-wide v1

    .line 2769
    cmp-long v3, p2, v1

    if-eqz v3, :cond_1

    .line 2770
    const-string v3, "Gmail"

    const-string v4, "Dictionary checksum mismatch for message %d/%d. Expected %x but was %x"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2773
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2774
    const/4 v1, 0x0

    .line 2801
    :goto_0
    return-object v1

    .line 2776
    :cond_1
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/gm/provider/Dictionary;->getBytes()[B

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/zip/Inflater;->setDictionary([B)V

    .line 2777
    invoke-static {v8}, Lcom/google/android/gm/provider/ZipUtils;->inflate(Ljava/util/zip/Inflater;)[B

    move-result-object v1

    .line 2778
    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Dictionary;->append([B)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2788
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2794
    const-string v1, "Gmail"

    const-string v3, "Compressed message: %d/%d (%.1fx)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    int-to-float v6, v6

    array-length v7, p1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2799
    const-string v1, "MS.unzipMessageBody"

    invoke-static {v1}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    move-object v1, v2

    .line 2801
    goto :goto_0

    .line 2780
    :catch_0
    move-exception v1

    .line 2781
    const-string v2, "Gmail"

    const-string v3, "Error inflating message %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2782
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2783
    const/4 v1, 0x0

    goto :goto_0

    .line 2789
    :catch_1
    move-exception v1

    .line 2791
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UTF-8 not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private waitUntilEarliestAllowedSyncTime()V
    .locals 7

    .prologue
    .line 2539
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2540
    iget-wide v2, p0, Lcom/google/android/gm/provider/MailSync;->mEarliestAllowedSyncTimeAsElapsedRealtime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 2549
    return-void

    .line 2542
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gm/provider/MailSync;->mEarliestAllowedSyncTimeAsElapsedRealtime:J

    sub-long v0, v2, v0

    .line 2543
    const-string v2, "Gmail"

    const-string v3, "Sync waiting for %d ms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2544
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2545
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method checkLabelsSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2562
    const-string v0, "labelsIncluded"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 2563
    const-string v0, "labelsPartial"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 2567
    invoke-static {v5, p2}, Lcom/google/android/gm/provider/MailSync;->removeFromSetElementsInSet(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    .line 2568
    :goto_0
    invoke-static {v6, p2}, Lcom/google/android/gm/provider/MailSync;->removeFromSetElementsInSet(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 2570
    :cond_0
    invoke-static {v5, p3}, Lcom/google/android/gm/provider/MailSync;->removeFromSetElementsNotInSet(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 2571
    :cond_1
    invoke-static {v6, p3}, Lcom/google/android/gm/provider/MailSync;->removeFromSetElementsNotInSet(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 2573
    :cond_2
    if-nez p3, :cond_6

    .line 2574
    const-string v3, "labelsAll"

    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/MailSync;->hasSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2575
    const-string v3, "labelsAll"

    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p3

    .line 2576
    if-eqz p1, :cond_3

    invoke-interface {p3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2577
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p3, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2583
    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 2621
    :cond_5
    :goto_2
    return-void

    :cond_6
    move v0, v1

    .line 2581
    goto :goto_1

    .line 2590
    :cond_7
    invoke-static {}, Lcom/google/android/gm/provider/LabelManager;->getForcedIncludedLabels()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2593
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v0}, Lcom/google/android/gm/provider/MailCore;->isCanonicalLabelNameLocal(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v4, v1

    .line 2595
    :goto_4
    if-eqz v4, :cond_10

    .line 2596
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2597
    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v3

    :goto_5
    move v3, v0

    .line 2599
    goto :goto_3

    :cond_9
    move v4, v2

    .line 2593
    goto :goto_4

    .line 2600
    :cond_a
    invoke-static {}, Lcom/google/android/gm/provider/LabelManager;->getForcedIncludedOrPartialLabels()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2601
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v0}, Lcom/google/android/gm/provider/MailCore;->isCanonicalLabelNameLocal(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    move v4, v1

    .line 2603
    :goto_7
    if-eqz v4, :cond_b

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2604
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v3, v0

    goto :goto_6

    :cond_d
    move v4, v2

    .line 2601
    goto :goto_7

    .line 2608
    :cond_e
    if-eqz v3, :cond_5

    .line 2609
    const-string v0, "Gmail"

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2610
    const-string v0, "Gmail"

    const-string v3, "checkLabelsSets changed the label sets to: included(%s), partial(%s), all(%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/google/android/gm/provider/LogUtils;->labelSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-static {v6}, Lcom/google/android/gm/provider/LogUtils;->labelSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {p3}, Lcom/google/android/gm/provider/LogUtils;->labelSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2616
    :cond_f
    const-string v0, "labelsIncluded"

    invoke-direct {p0, v0, v5}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    .line 2617
    const-string v0, "labelsPartial"

    invoke-direct {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    .line 2618
    const-string v0, "labelsAll"

    invoke-direct {p0, v0, p3}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    .line 2619
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailStore;->updateNotificationLabels()V

    goto/16 :goto_2

    :cond_10
    move v0, v3

    goto :goto_5

    :cond_11
    move v0, v2

    goto/16 :goto_0
.end method

.method public clearStats()V
    .locals 1

    .prologue
    .line 588
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->SYNC_STATS_LABELS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mCounters:[J

    .line 589
    return-void
.end method

.method getBooleanSetting(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 3157
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3158
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3159
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3161
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClientId()J
    .locals 2

    .prologue
    .line 1089
    const-string v0, "clientId"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method getClientOperationToAck()J
    .locals 2

    .prologue
    .line 1099
    const-string v0, "clientOpToAck"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getConversationAgeDays()J
    .locals 2

    .prologue
    .line 1189
    const-string v0, "conversationAgeDays"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method getCustomFromPrefs(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailStore$CustomFromPreference;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x5c

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 1607
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1610
    const-string v0, "(?<!\\\\)#"

    .line 1611
    const-string v0, "(?<!\\\\),"

    .line 1615
    if-nez p2, :cond_1

    .line 1616
    const-string v0, "(?<!\\\\)#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v1, v2

    .line 1623
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 1626
    aget-object v3, v0, v1

    const/16 v5, 0x23

    invoke-static {v3, v11, v5}, Lcom/google/android/gm/provider/MailSync;->unEscapeString(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v3

    .line 1628
    const-string v5, "(?<!\\\\),"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1631
    :try_start_0
    new-instance v6, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;

    const/4 v3, 0x0

    aget-object v3, v5, v3

    const/16 v7, 0x5c

    const/16 v8, 0x2c

    invoke-static {v3, v7, v8}, Lcom/google/android/gm/provider/MailSync;->unEscapeString(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x2

    aget-object v8, v5, v3

    array-length v3, v5

    const/4 v9, 0x4

    if-ge v3, v9, :cond_2

    const/4 v3, 0x1

    aget-object v3, v5, v3

    :goto_2
    invoke-direct {v6, v7, v8, v3}, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    const/4 v3, 0x1

    aget-object v3, v5, v3

    const-string v7, "@"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1638
    const/4 v3, 0x1

    aget-object v3, v5, v3

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1619
    :cond_1
    new-array v0, v10, [Ljava/lang/String;

    aput-object p1, v0, v2

    goto :goto_0

    .line 1631
    :cond_2
    const/4 v3, 0x3

    :try_start_1
    aget-object v3, v5, v3
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1640
    :catch_0
    move-exception v3

    .line 1641
    const-string v3, "Gmail"

    const-string v5, "Unexpected Custom from preference received: %s"

    new-array v6, v10, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v6, v2

    invoke-static {v3, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 1645
    :cond_3
    return-object v4
.end method

.method getCustomLabelColorPrefs(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1574
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1576
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 1577
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 1578
    aget-object v4, v3, v0

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1581
    :try_start_0
    new-instance v5, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;

    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v7, 0x2

    aget-object v7, v4, v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1584
    :catch_0
    move-exception v4

    .line 1585
    const-string v4, "Gmail"

    const-string v5, "Unexpected Custom Color preference received: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1589
    :cond_0
    return-object v2
.end method

.method getIntegerSetting(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3148
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3149
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3151
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLabelsAllArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1177
    const-string v0, "labelsAll"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/MailSync;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsIncluded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1169
    const-string v0, "labelsIncluded"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsIncludedArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1173
    const-string v0, "labelsIncluded"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/MailSync;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsPartial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1181
    const-string v0, "labelsPartial"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsPartialArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1185
    const-string v0, "labelsPartial"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/MailSync;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLongSetting(Ljava/lang/String;)J
    .locals 3
    .parameter

    .prologue
    .line 3138
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3139
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3140
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 3142
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLowestMessageIdInDurationOrZero()J
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "lowestMessageIdInDuration"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    const-string v0, "lowestMessageIdInDuration"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    .line 1264
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMaxAttachmentSizeMb()J
    .locals 2

    .prologue
    .line 1193
    const-string v0, "maxAttachmentSize"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxUnsyncedMessageIdForLabel(Lcom/google/android/gm/provider/MailCore$Label;)J
    .locals 11
    .parameter "label"

    .prologue
    const-wide/16 v5, 0x0

    .line 1207
    const-string v7, "labelsIncluded"

    invoke-direct {p0, v7}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 1208
    .local v1, labelsIncluded:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "labelsPartial"

    invoke-direct {p0, v7}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1210
    .local v2, labelsPartial:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v7, p1}, Lcom/google/android/gm/provider/MailStore;->getLabelCanonicalNameOrNull(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v0

    .line 1219
    .local v0, canonicalName:Ljava/lang/String;
    const-string v7, "clientId"

    invoke-virtual {p0, v7}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-nez v7, :cond_1

    .line 1253
    :cond_0
    :goto_0
    return-wide v5

    .line 1227
    :cond_1
    if-eqz p1, :cond_2

    iget-wide v7, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v7, v8}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1232
    :cond_2
    if-nez v0, :cond_4

    .line 1234
    const-wide v5, 0x7fffffffffffffffL

    .line 1248
    .local v5, messageId:J
    :goto_1
    const-wide v3, 0x7fffffffffffffffL

    .line 1249
    .local v3, lowestSyncedConversationId:J
    iget-object v7, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v8, "lowestBackwardConversationId"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1250
    const-string v7, "lowestBackwardConversationId"

    invoke-virtual {p0, v7}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v3

    .line 1252
    :cond_3
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1253
    goto :goto_0

    .line 1235
    .end local v3           #lowestSyncedConversationId:J
    .end local v5           #messageId:J
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1236
    const-wide/16 v5, 0x0

    .restart local v5       #messageId:J
    goto :goto_1

    .line 1237
    .end local v5           #messageId:J
    :cond_5
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1238
    iget-object v7, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v8, "lowestMessageIdInDuration"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1239
    const-string v7, "lowestMessageIdInDuration"

    invoke-virtual {p0, v7}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x1

    sub-long v5, v7, v9

    .restart local v5       #messageId:J
    goto :goto_1

    .line 1242
    .end local v5           #messageId:J
    :cond_6
    const-wide v5, 0x7fffffffffffffffL

    .restart local v5       #messageId:J
    goto :goto_1

    .line 1245
    .end local v5           #messageId:J
    :cond_7
    const-wide v5, 0x7fffffffffffffffL

    .restart local v5       #messageId:J
    goto :goto_1
.end method

.method getOrAddLabelIfUserMeaningful(Lcom/google/android/gm/provider/MailSync$MailPullParser;Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2469
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->NAMESPACE:Ljava/lang/String;

    const-string v1, "labelId"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gm/provider/MailSync$MailPullParser;->getLongAttribute(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 2470
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gm/provider/MailStore;->getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    return-object v0
.end method

.method public getRequestVersion()I
    .locals 7

    .prologue
    const/16 v1, 0x19

    const/16 v2, 0xa

    .line 1103
    const-string v3, "serverVersion"

    invoke-virtual {p0, v3}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v0, v3

    .line 1104
    .local v0, serverVersion:I
    if-nez v0, :cond_0

    .line 1116
    :goto_0
    return v1

    .line 1108
    :cond_0
    if-ge v0, v2, :cond_1

    .line 1111
    const-string v1, "Gmail"

    const-string v3, "Server version (%d) is too old to talk to. Minimum supported version is %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v2

    .line 1114
    goto :goto_0

    .line 1116
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method public getServerVersion()J
    .locals 2

    .prologue
    .line 1094
    const-string v0, "serverVersion"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getStats(Landroid/content/SyncResult;)Ljava/lang/String;
    .locals 6
    .parameter "result"

    .prologue
    .line 600
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 601
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->SYNC_STATS_LABELS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 602
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mCounters:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 603
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->SYNC_STATS_LABELS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mCounters:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 601
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_1
    invoke-virtual {p1}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getUnackedSentOperations()Z
    .locals 1

    .prologue
    .line 1197
    const-string v0, "unackedSentOperations"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method handleConfigAcceptedValues(J)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 1346
    const-string v0, "Gmail"

    const-string v1, "handleConfigAcceptedValues: %d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1347
    const-string v0, "clientId"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    .line 1348
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client id is already set but response has different id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1352
    :cond_0
    const-string v0, "clientId"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1353
    const-string v0, "configDirty"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 1357
    const-string v0, "startSyncNeeded"

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 1362
    const-string v0, "highestBackwardConversationId"

    invoke-virtual {p0, v0, v4, v5}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1363
    const-string v0, "lowestBackwardConversationId"

    invoke-virtual {p0, v0, v4, v5}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1364
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 1365
    return-void
.end method

.method handleConfigInfoValues(JLjava/util/Set;Ljava/util/Set;)V
    .locals 10
    .parameter "durationDays"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, includeLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, inDurationLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1318
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailSync;->getMinServerVersionForConfigInfo()I

    move-result v0

    .line 1319
    .local v0, minServerVersion:I
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->getServerVersion()J

    move-result-wide v1

    .line 1320
    .local v1, serverVersion:J
    int-to-long v3, v0

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    .line 1321
    const-string v3, "Gmail"

    const-string v4, "Ignoring config info from server because server version is %d but gservices says that the min server version is %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1324
    const-string v3, "needConfigSuggestion"

    invoke-virtual {p0, v3, v8}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 1334
    :goto_0
    return-void

    .line 1328
    :cond_0
    const-string v3, " "

    invoke-static {v3, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-static {v4, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 1332
    const-string v3, "needConfigSuggestion"

    invoke-virtual {p0, v3, v8}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 1333
    const-string v3, "configDirty"

    invoke-virtual {p0, v3, v9}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public handleFetchConversationResponse(Lorg/apache/http/HttpResponse;J)V
    .locals 6
    .parameter "response"
    .parameter "queryId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1033
    const/4 v2, 0x0

    new-instance v5, Lcom/google/android/gm/provider/MailEngine$SyncInfo;

    invoke-direct {v5}, Lcom/google/android/gm/provider/MailEngine$SyncInfo;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/MailSync;->handleResponse(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSyncObserver;JLcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 1034
    return-void
.end method

.method handleLabelsValues(Ljava/util/Map;Lcom/google/android/gm/provider/MailSyncObserver;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gm/provider/MailCore$Label;",
            "Lcom/google/android/gm/provider/MailStore$LabelInfo;",
            ">;",
            "Lcom/google/android/gm/provider/MailSyncObserver;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1374
    const-string v0, "Gmail"

    const-string v1, "handleLabelsValues: receiving set of %d labels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1376
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 1377
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 1379
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1380
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/MailCore$Label;

    .line 1381
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailStore$LabelInfo;

    .line 1382
    iget-wide v5, v1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    iget-object v0, v0, Lcom/google/android/gm/provider/MailStore$LabelInfo;->canonicalName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, v2}, Lcom/google/android/gm/provider/MailStore;->setLabels(Ljava/util/Map;)V

    .line 1387
    invoke-virtual {p0, v7, v7, v3}, Lcom/google/android/gm/provider/MailSync;->checkLabelsSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1388
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 1389
    if-eqz p2, :cond_1

    .line 1392
    invoke-interface {p2}, Lcom/google/android/gm/provider/MailSyncObserver;->onOperationReceived()V

    .line 1394
    :cond_1
    return-void
.end method

.method handleLastExaminedServerOperationValues(J)V
    .locals 5
    .parameter

    .prologue
    .line 2526
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2527
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    const-string v1, "Received operationId of 0 as last-examined-server-op. Wiping."

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/MailStore;->wipeAndResync(Ljava/lang/String;)V

    .line 2529
    :cond_0
    const-string v0, "Gmail"

    const-string v1, "last-examined-server-operation operationId: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2530
    const-string v0, "highestProcessedServerOperationId"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 2533
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 2534
    return-void
.end method

.method handleLowestBackwardConversationIdValues(J)V
    .locals 5
    .parameter

    .prologue
    .line 1788
    const-string v0, "Gmail"

    const-string v1, "lowest-backward-convesation-id conversationid: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1789
    const-string v0, "lowestBackwardConversationId"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1793
    return-void
.end method

.method handleMessageSavedOrSentValues(JJJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2238
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailSync;->mFakeIoExceptionWhenHandlingMessageSavedOrSent:Z

    if-eqz v0, :cond_0

    .line 2239
    iput-boolean v4, p0, Lcom/google/android/gm/provider/MailSync;->mFakeIoExceptionWhenHandlingMessageSavedOrSent:Z

    .line 2240
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Faked by mFakeIoExceptionWhenHandlingMessageSavedOrSent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2242
    :cond_0
    const-string v0, "Gmail"

    const-string v1, "message id changed from %d to %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2243
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gm/provider/MailStore;->updateSentOrSavedMessage(JJJ)V

    .line 2244
    return-void
.end method

.method handleOperationLabelCreatedValues(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2476
    if-eqz p1, :cond_0

    .line 2478
    const-string v0, "startSyncNeeded"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 2479
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    const v4, 0x7fffffff

    const-string v5, "SHOW"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gm/provider/MailStore;->renameLabel(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2481
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0, v0, v7, v7}, Lcom/google/android/gm/provider/MailSync;->checkLabelsSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 2482
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 2484
    :cond_0
    invoke-direct {p0, v6}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2485
    return-void
.end method

.method handleOperationLabelDeletedValues(Lcom/google/android/gm/provider/MailCore$Label;)V
    .locals 5
    .parameter "labelOrNull"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2489
    if-eqz p1, :cond_1

    .line 2490
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1, p1}, Lcom/google/android/gm/provider/MailStore;->getLabelCanonicalNameOrNull(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v0

    .line 2491
    .local v0, canonicalName:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1, p1}, Lcom/google/android/gm/provider/MailStore;->deleteLabel(Lcom/google/android/gm/provider/MailCore$Label;)V

    .line 2492
    if-eqz v0, :cond_0

    .line 2493
    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p0, v4, v1, v4}, Lcom/google/android/gm/provider/MailSync;->checkLabelsSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 2495
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 2497
    .end local v0           #canonicalName:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2498
    return-void
.end method

.method handleOperationLabelRenamedValues(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 2503
    if-eqz p1, :cond_1

    .line 2505
    const-string v0, "startSyncNeeded"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 2506
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    const v4, 0x7fffffff

    const-string v5, "SHOW"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gm/provider/MailStore;->renameLabel(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2508
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "labelsIncluded"

    aput-object v2, v0, v1

    const-string v1, "labelsPartial"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "labelsAll"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2510
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1, p1}, Lcom/google/android/gm/provider/MailStore;->getLabelCanonicalNameOrNull(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v1

    .line 2511
    if-eqz v1, :cond_1

    .line 2512
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2513
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 2514
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2515
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2516
    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2517
    invoke-direct {p0, v0, v3}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    goto :goto_0

    .line 2522
    :cond_1
    invoke-direct {p0, v6}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2523
    return-void
.end method

.method public handleQueryResponse(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSync$ConversationSink;)J
    .locals 5
    .parameter "response"
    .parameter "sink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1048
    const-string v2, "Content-Type"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, contentType:Ljava/lang/String;
    const-string v2, "application/vnd.google-x-gms-proto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1050
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->handleQueryResponseProto(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSync$ConversationSink;)J

    move-result-wide v2

    return-wide v2

    .line 1051
    :cond_0
    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1052
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 1053
    .local v1, statusCode:I
    const-string v2, "Gmail"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1054
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailSync;->printHtmlResponse(Lorg/apache/http/HttpResponse;)V

    .line 1057
    :cond_1
    new-instance v2, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server returned unhandled response content type (text/html status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1061
    .end local v1           #statusCode:I
    :cond_2
    new-instance v2, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown response content type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method handleStartSyncInfoValues(JJJ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1684
    const-string v0, "Gmail"

    const-string v1, "handleStartSyncInfoValues: highestServerOperation: %d highestServerConversation: %d handledClientOperation: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1689
    const-string v0, "startSyncNeeded"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1690
    const-string v0, "startSyncNeeded"

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 1691
    const-string v0, "highestProcessedServerOperationId"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1696
    const-string v0, "highestProcessedServerOperationId"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1701
    :cond_0
    const-string v0, "lowestBackwardConversationId"

    const-wide/16 v1, 0x1

    add-long/2addr v1, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1707
    const-string v0, "highestBackwardConversationId"

    invoke-virtual {p0, v0, p3, p4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1712
    :cond_1
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gm/provider/MailSync;->onServerHasHandledClientOperationdId(J)V

    .line 1714
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 1715
    return-void
.end method

.method public handleSyncResponse(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSyncObserver;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 6
    .parameter "response"
    .parameter "observer"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 881
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/MailSync;->handleResponse(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSyncObserver;JLcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 882
    return-void
.end method

.method public newFetchConversationRequest(Lcom/google/android/gm/provider/MailSync$ConversationInfo;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 18
    .parameter "info"

    .prologue
    .line 846
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 847
    .local v9, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    const-string v1, "clientId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v14

    .line 849
    .local v14, clientId:J
    const-string v1, "lowestBackwardConversationId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v3

    .line 851
    .local v3, lowerFetchedConversationId:J
    const-string v1, "highestProcessedServerOperationId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v5

    .line 853
    .local v5, handledServerOperationId:J
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .local v10, messageIdsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getClientOperationToAck()J

    move-result-wide v7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getDirtyConversations()Ljava/util/ArrayList;

    move-result-object v11

    new-instance v12, Lcom/google/android/gm/provider/MailEngine$SyncInfo;

    invoke-direct {v12}, Lcom/google/android/gm/provider/MailEngine$SyncInfo;-><init>()V

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gm/provider/Urls;->getMainSyncRequestProto(Landroid/content/ContentResolver;JJJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v16

    .line 865
    .local v16, requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getRequestVersion()I

    move-result v13

    const/16 v17, 0x1

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gm/provider/Urls;->newProtoRequest(Landroid/content/ContentResolver;IJLcom/google/common/io/protocol/ProtoBuf;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    return-object v1
.end method

.method newParserForProtoResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 2979
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 2980
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2981
    new-instance v1, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No response body received. Status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2984
    :cond_0
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 2985
    new-instance v1, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error returned from server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2988
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    .line 2990
    new-instance v1, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2992
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->readNextChunkPart()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2993
    if-nez v0, :cond_2

    .line 2994
    new-instance v0, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    const-string v1, "End of stream while reading next chunk part"

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2997
    :cond_2
    invoke-virtual {v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2998
    const-string v2, "Gmail"

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2999
    invoke-static {v0}, Lcom/google/android/gm/provider/ProtoBufHelpers;->printHttpResponseProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 3003
    :cond_3
    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 3004
    const-string v3, "serverVersion"

    int-to-long v4, v2

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 3006
    invoke-virtual {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3008
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The server (version "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not support the protocol version that we used"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3013
    :cond_4
    invoke-virtual {v0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3015
    new-instance v0, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    const-string v1, "Abuse error reported"

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3018
    :cond_5
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    .line 3019
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_6

    .line 3020
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3021
    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gm/provider/MailSync;->mEarliestAllowedSyncTimeAsElapsedRealtime:J

    .line 3023
    :cond_6
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3024
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3025
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received mustWipe error from server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/google/android/gm/provider/MailStore;->wipeAndResync(Ljava/lang/String;)V

    .line 3029
    :cond_7
    invoke-virtual {v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 3030
    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->setResponseVersion(I)V

    .line 3033
    return-object v1
.end method

.method public newQueryRequest(Ljava/lang/String;JII)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 8
    .parameter "query"
    .parameter "highestMessageId"
    .parameter "maxResults"
    .parameter "maxSenders"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->getRequestVersion()I

    move-result v2

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gm/provider/Urls;->getConversationListUrl(Landroid/content/ContentResolver;ILjava/lang/String;JII)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public nextSyncRequest(ZZLcom/google/android/gm/provider/MailEngine$SyncInfo;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 54
    .parameter "force"
    .parameter "justLive"
    .parameter "syncInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/google/android/gm/provider/MailEngine$SyncInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/MailSync$ConversationInfo;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    .local p4, conversationsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->waitUntilEarliestAllowedSyncTime()V

    .line 628
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/gm/provider/MailSync;->mIsSyncCanceled:Z

    .line 630
    const-string v3, "needConfigSuggestion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    const/16 v36, 0xc8

    .line 634
    .local v36, maxMessageCount:I
    const/16 v30, 0x32

    .line 635
    .local v30, alwaysDownloadLabelLimit:I
    const-wide v50, 0x3fe999999999999aL

    .line 636
    .local v50, unreadFractionLimit:D
    const-wide/16 v45, 0x5

    .line 637
    .local v45, recentLabelDurationDays:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getRequestVersion()I

    move-result v5

    const/16 v6, 0xc8

    const/16 v7, 0x32

    const-wide v8, 0x3fe999999999999aL

    const-wide/16 v10, 0x5

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gm/provider/Urls;->getGetSyncConfigSuggestionRequest(Landroid/content/ContentResolver;IIIDJ)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v47

    .line 819
    .end local v30           #alwaysDownloadLabelLimit:I
    .end local v36           #maxMessageCount:I
    .end local v45           #recentLabelDurationDays:J
    .end local v50           #unreadFractionLimit:D
    :goto_0
    return-object v47

    .line 643
    :cond_0
    const-string v3, "clientId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v6

    .line 644
    .local v6, clientId:J
    const-string v3, "configDirty"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v31

    .line 645
    .local v31, configDirty:Z
    const-wide/16 v3, 0x0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_1

    if-eqz v31, :cond_3

    if-nez p2, :cond_3

    .line 646
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v6, v3

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 647
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getRequestVersion()I

    move-result v5

    const-string v14, "labelsIncluded"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    const-string v14, "labelsPartial"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    const-string v14, "conversationAgeDays"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v10

    const-string v14, "maxAttachmentSize"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/gm/provider/Urls;->getSyncConfigRequest(Landroid/content/ContentResolver;IJLjava/util/Set;Ljava/util/Set;JJ)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v47

    goto :goto_0

    .line 655
    :cond_3
    const-string v3, "highestProcessedServerOperationId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v8

    .line 657
    .local v8, handledServerOperationId:J
    const-string v3, "highestBackwardConversationId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v10

    .line 659
    .local v10, upperFetchedConversationId:J
    const-string v3, "lowestBackwardConversationId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v12

    .line 662
    .local v12, lowerFetchedConversationId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "gmail_start_sync_interval"

    const/16 v5, 0x64

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v49

    .line 668
    .local v49, syncInterval:I
    new-instance v35, Ljava/util/Random;

    invoke-direct/range {v35 .. v35}, Ljava/util/Random;-><init>()V

    .line 671
    .local v35, generator:Ljava/util/Random;
    if-eqz p1, :cond_6

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    rem-int v3, v3, v49

    if-nez v3, :cond_6

    const/16 v48, 0x1

    .line 674
    .local v48, shouldStartSync:Z
    :goto_1
    const-string v3, "startSyncNeeded"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "unackedSentOperations"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v48, :cond_7

    .line 690
    :cond_4
    cmp-long v3, v10, v12

    if-gez v3, :cond_5

    .line 691
    const-wide/16 v10, 0x0

    .line 692
    const-wide/16 v12, 0x0

    .line 694
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getRequestVersion()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getClientOperationToAck()J

    move-result-wide v14

    invoke-virtual/range {v3 .. v15}, Lcom/google/android/gm/provider/Urls;->getStartSyncRequest(Landroid/content/ContentResolver;IJJJJJ)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v47

    goto/16 :goto_0

    .line 671
    .end local v48           #shouldStartSync:Z
    :cond_6
    const/16 v48, 0x0

    goto :goto_1

    .line 705
    .restart local v48       #shouldStartSync:Z
    :cond_7
    if-eqz p2, :cond_a

    .line 706
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .line 707
    .local v22, conversationInfosToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v23

    .line 717
    .local v23, messageIdsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_2
    const/16 v41, 0x0

    .line 718
    .local v41, operationSink:Lcom/google/android/gm/provider/MailSync$AbstractOperationSink;
    const-string v3, "Gmail"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 719
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "highestMessageIds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 723
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "gmail-backwards-sync-enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v32

    .line 730
    .local v32, doBackwardsSync:Z
    if-eqz v32, :cond_9

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_9

    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-nez v3, :cond_9

    .line 732
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/MailSync$ConversationInfo;

    iget-wide v12, v3, Lcom/google/android/gm/provider/MailSync$ConversationInfo;->highestFetchedMessageId:J

    .line 736
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getClientOperationToAck()J

    move-result-wide v20

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getDirtyConversations()Ljava/util/ArrayList;

    move-result-object v24

    move-wide/from16 v16, v12

    move-wide/from16 v18, v8

    move-object/from16 v25, p3

    invoke-virtual/range {v14 .. v25}, Lcom/google/android/gm/provider/Urls;->getMainSyncRequestProto(Landroid/content/ContentResolver;JJJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v19

    .line 748
    .local v19, requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gm/provider/MailSync;->mIsSyncCanceled:Z

    if-eqz v3, :cond_c

    const/16 v47, 0x0

    goto/16 :goto_0

    .line 709
    .end local v19           #requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v22           #conversationInfosToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    .end local v23           #messageIdsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v32           #doBackwardsSync:Z
    .end local v41           #operationSink:Lcom/google/android/gm/provider/MailSync$AbstractOperationSink;
    :cond_a
    if-eqz p4, :cond_b

    move-object/from16 v22, p4

    .line 712
    .restart local v22       #conversationInfosToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3}, Lcom/google/android/gm/provider/MailStore;->getMessageIdsToFetch()Ljava/util/ArrayList;

    move-result-object v23

    .restart local v23       #messageIdsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto/16 :goto_2

    .line 709
    .end local v22           #conversationInfosToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    .end local v23           #messageIdsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Lcom/google/android/gm/provider/MailStore;->getConversationInfosToFetch(Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Ljava/util/ArrayList;

    move-result-object v22

    goto :goto_3

    .line 749
    .restart local v19       #requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v22       #conversationInfosToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    .restart local v23       #messageIdsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v32       #doBackwardsSync:Z
    .restart local v41       #operationSink:Lcom/google/android/gm/provider/MailSync$AbstractOperationSink;
    :cond_c
    const/4 v3, 0x7

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v52

    .line 750
    .local v52, uphillSyncProto:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v44, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;-><init>(Lcom/google/android/gm/provider/MailSync;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 751
    .local v44, protoOperationSink:Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v14, 0x3e8

    div-long/2addr v4, v14

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-interface {v3, v0, v1, v4, v5}, Lcom/google/android/gm/provider/MailStore;->provideOperations(Lcom/google/android/gm/provider/MailStore$OperationSink;Lcom/google/android/gm/provider/MailEngine$SyncInfo;J)V

    .line 753
    invoke-virtual/range {v44 .. v44}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->getParts()Ljava/util/ArrayList;

    move-result-object v38

    .line 754
    .local v38, messageParts:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/http/Part;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getRequestVersion()I

    move-result v16

    const/16 v20, 0x0

    move-wide/from16 v17, v6

    invoke-virtual/range {v14 .. v20}, Lcom/google/android/gm/provider/Urls;->newProtoRequest(Landroid/content/ContentResolver;IJLcom/google/common/io/protocol/ProtoBuf;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v47

    .line 757
    .local v47, request:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "gmail_use_multipart_protobuf"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_10

    const/16 v53, 0x1

    .line 760
    .local v53, useMultiPartProtoBuf:Z
    :goto_4
    if-eqz v53, :cond_11

    :try_start_0
    invoke-virtual/range {v44 .. v44}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->hasAttachments()Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v38, :cond_11

    .line 767
    new-instance v24, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;

    const-string v26, "PROTOBUFDATA"

    invoke-virtual/range {v19 .. v19}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v27, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v29

    move-object/from16 v25, p0

    invoke-direct/range {v24 .. v29}, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;-><init>(Lcom/google/android/gm/provider/MailSync;Ljava/lang/String;J[B)V

    .line 769
    .local v24, partSource:Lcom/google/android/common/http/PartSource;
    new-instance v43, Lcom/google/android/common/http/FilePart;

    const-string v3, "PROTOBUFDATA"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1, v4, v5}, Lcom/google/android/common/http/FilePart;-><init>(Ljava/lang/String;Lcom/google/android/common/http/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    .local v43, part:Lcom/google/android/common/http/FilePart;
    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    new-instance v4, Lcom/google/android/common/http/MultipartEntity;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/common/http/Part;

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/common/http/Part;

    invoke-direct {v4, v3}, Lcom/google/android/common/http/MultipartEntity;-><init>([Lcom/google/android/common/http/Part;)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    .end local v24           #partSource:Lcom/google/android/common/http/PartSource;
    .end local v43           #part:Lcom/google/android/common/http/FilePart;
    :goto_5
    move-object/from16 v41, v44

    .line 797
    const/4 v3, 0x5

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gm/provider/MailSync$AbstractOperationSink;->getNumOperations()I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/gm/provider/MailSync;->incStats(IJ)V

    .line 799
    const-string v3, "moreForwardSyncNeeded"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v39

    .line 801
    .local v39, moreForwardSyncNeeded:Z
    if-nez p2, :cond_13

    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-nez v3, :cond_d

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_d

    if-nez v39, :cond_d

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_d

    if-eqz p1, :cond_13

    :cond_d
    const/16 v40, 0x1

    .line 807
    .local v40, nonLiveSync:Z
    :goto_6
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gm/provider/MailSync$AbstractOperationSink;->getNumOperations()I

    move-result v3

    if-nez v3, :cond_e

    if-eqz v40, :cond_14

    .line 808
    :cond_e
    const-string v3, "moreForwardSyncNeeded"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 809
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gm/provider/MailSync$AbstractOperationSink;->getNumOperations()I

    move-result v3

    if-eqz v3, :cond_f

    .line 810
    const-string v3, "unackedSentOperations"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 812
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    goto/16 :goto_0

    .line 757
    .end local v39           #moreForwardSyncNeeded:Z
    .end local v40           #nonLiveSync:Z
    .end local v53           #useMultiPartProtoBuf:Z
    :cond_10
    const/16 v53, 0x0

    goto/16 :goto_4

    .line 773
    .restart local v53       #useMultiPartProtoBuf:Z
    :cond_11
    :try_start_1
    new-instance v42, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v42 .. v42}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 774
    .local v42, os:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "gmail_max_gzip_size_bytes"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    const v5, 0x3d090

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v37

    .line 784
    .local v37, maxSize:I
    invoke-virtual/range {v42 .. v42}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    move/from16 v0, v37

    if-gt v3, v0, :cond_12

    .line 785
    invoke-virtual/range {v42 .. v42}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v4}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v34

    .line 790
    .local v34, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    :goto_7
    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 792
    .end local v34           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v37           #maxSize:I
    .end local v42           #os:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v33

    .line 793
    .local v33, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Should not get IO errors while writing to ram"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 788
    .end local v33           #e:Ljava/io/IOException;
    .restart local v37       #maxSize:I
    .restart local v42       #os:Ljava/io/ByteArrayOutputStream;
    :cond_12
    :try_start_2
    new-instance v34, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual/range {v42 .. v42}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v34       #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    goto :goto_7

    .line 801
    .end local v34           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v37           #maxSize:I
    .end local v42           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v39       #moreForwardSyncNeeded:Z
    :cond_13
    const/16 v40, 0x0

    goto :goto_6

    .line 817
    .restart local v40       #nonLiveSync:Z
    :cond_14
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lowestBackward conversation id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 819
    const/16 v47, 0x0

    goto/16 :goto_0
.end method

.method onServerHasHandledClientOperationdId(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1779
    const-string v0, "Gmail"

    const-string v1, "Received handled client operation id from server"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1780
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/provider/MailStore;->removeOperations(J)V

    .line 1782
    const-string v0, "unackedSentOperations"

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 1783
    const-string v0, "clientOpToAck"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1784
    return-void
.end method

.method public onSyncCanceled()V
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailSync;->mIsSyncCanceled:Z

    .line 561
    return-void
.end method

.method public onSyncLoopEnd()V
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1281
    return-void
.end method

.method readMessageFromProto(Lcom/google/common/io/protocol/ProtoBuf;JLcom/google/android/gm/provider/Dictionary;)Lcom/google/android/gm/provider/MailSync$Message;
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    .line 2657
    new-instance v9, Lcom/google/android/gm/provider/MailSync$Message;

    invoke-direct {v9}, Lcom/google/android/gm/provider/MailSync$Message;-><init>()V

    .line 2658
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    .line 2659
    iput-wide p2, v9, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    .line 2660
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->readEmailFromProto(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->fromAddress:Ljava/lang/String;

    .line 2662
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->dateSentMs:J

    .line 2663
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->dateReceivedMs:J

    .line 2664
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->subject:Ljava/lang/String;

    .line 2665
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->snippet:Ljava/lang/String;

    .line 2666
    const-string v0, ""

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->listInfo:Ljava/lang/String;

    .line 2667
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->fromInt(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 2669
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->bodyEmbedsExternalResources:Z

    .line 2672
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    :goto_0
    iput-wide v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->refMsgId:J

    .line 2675
    const/16 v0, 0xe

    iget-object v1, v9, Lcom/google/android/gm/provider/MailSync$Message;->labelIds:Ljava/util/Set;

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllLongs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 2676
    iget-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->labelIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2680
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gm/provider/MailStore;->getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    goto :goto_1

    .line 2672
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2683
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->toAddresses:Ljava/util/List;

    .line 2684
    const/16 v0, 0x9

    iget-object v1, v9, Lcom/google/android/gm/provider/MailSync$Message;->toAddresses:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/provider/MailSync;->addAddressesInProto(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/List;)V

    .line 2685
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->ccAddresses:Ljava/util/List;

    .line 2686
    const/16 v0, 0xa

    iget-object v1, v9, Lcom/google/android/gm/provider/MailSync$Message;->ccAddresses:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/provider/MailSync;->addAddressesInProto(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/List;)V

    .line 2687
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->bccAddresses:Ljava/util/List;

    .line 2688
    const/16 v0, 0xb

    iget-object v1, v9, Lcom/google/android/gm/provider/MailSync$Message;->bccAddresses:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/provider/MailSync;->addAddressesInProto(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/List;)V

    .line 2689
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->replyToAddresses:Ljava/util/List;

    .line 2690
    const/16 v0, 0xc

    iget-object v1, v9, Lcom/google/android/gm/provider/MailSync$Message;->replyToAddresses:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/provider/MailSync;->addAddressesInProto(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/List;)V

    .line 2693
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2694
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    iget-wide v4, v9, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    iget-wide v6, v9, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    move-object v0, p0

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gm/provider/MailSync;->unzipMessageBody([BJJJLcom/google/android/gm/provider/Dictionary;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    .line 2705
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2707
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2708
    const/16 v1, 0xf

    invoke-static {p1, v1, v0}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllProtoBufs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 2709
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/protocol/ProtoBuf;

    .line 2710
    new-instance v2, Lcom/google/android/gm/provider/Gmail$Attachment;

    invoke-direct {v2}, Lcom/google/android/gm/provider/Gmail$Attachment;-><init>()V

    .line 2711
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    .line 2712
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    .line 2713
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    .line 2715
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    .line 2716
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gm/provider/Gmail$Attachment;->simpleContentType:Ljava/lang/String;

    .line 2718
    sget-object v0, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->SERVER_ATTACHMENT:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    iput-object v0, v2, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    .line 2719
    iget-wide v3, v9, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    iget-wide v5, v9, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    iget-object v0, v2, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v0}, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->serverExtras(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    .line 2721
    const-string v0, "Gmail"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2722
    const-string v0, "Gmail"

    const-string v3, "readMessageFromProto: attachment = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$Attachment;->toJoinedString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2725
    :cond_2
    iget-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->attachments:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2726
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    goto :goto_3

    .line 2702
    :cond_3
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    goto/16 :goto_2

    .line 2729
    :cond_4
    const-string v0, "Gmail"

    const-string v1, "readMessageFromProto: message = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2730
    return-object v9
.end method

.method public responseContainsAuthFailure(Lorg/apache/http/HttpResponse;)Z
    .locals 2
    .parameter "response"

    .prologue
    .line 1270
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method saveDirtySettings()V
    .locals 4

    .prologue
    .line 3228
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    const-string v3, "labelsIncluded"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    const-string v3, "labelsPartial"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    const-string v3, "conversationAgeDays"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    const-string v3, "maxAttachmentSize"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3234
    .local v0, configChanged:Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    .line 3235
    .local v1, dirtySettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    .line 3236
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gm/provider/MailStore;->setSettings(Ljava/util/Map;Z)V

    .line 3237
    return-void

    .line 3228
    .end local v0           #configChanged:Z
    .end local v1           #dirtySettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBooleanSetting(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3203
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailSync;->setStringSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 10
    .parameter "labelsIncluded"
    .parameter "labelsPartial"
    .parameter "conversationAgeDays"
    .parameter "maxAttachmentSizeMb"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1133
    const/4 v0, 0x0

    .line 1136
    .local v0, dirty:Z
    const/4 v1, 0x0

    .line 1137
    .local v1, includedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1138
    .local v2, partialSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1139
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 1141
    const-string v5, "labelsIncluded"

    invoke-direct {p0, v5, v1}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1143
    :cond_0
    if-eqz p2, :cond_1

    .line 1144
    sget-object v5, Lcom/google/android/gm/provider/MailSync;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p2, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    .line 1145
    const-string v5, "labelsPartial"

    invoke-direct {p0, v5, v2}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1147
    :cond_1
    if-eqz p3, :cond_2

    .line 1148
    const-string v5, "conversationAgeDays"

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1150
    :cond_2
    if-eqz p4, :cond_3

    .line 1151
    const-string v5, "maxAttachmentSize"

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1153
    :cond_3
    const-string v5, "needConfigSuggestion"

    invoke-virtual {p0, v5, v4}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1154
    if-eqz v0, :cond_4

    .line 1155
    const-string v5, "Gmail"

    const-string v6, "config changed locally to changed the label sets to: included(%s), partial(%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gm/provider/LogUtils;->labelSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v2}, Lcom/google/android/gm/provider/LogUtils;->labelSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1159
    const-string v4, "configDirty"

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 1160
    invoke-virtual {p0, v9, v9, v9}, Lcom/google/android/gm/provider/MailSync;->checkLabelsSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1161
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 1164
    :goto_0
    return v3

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method setIntegerSetting(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3193
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailSync;->setStringSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setLongSetting(Ljava/lang/String;J)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3198
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailSync;->setStringSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public throwOneIoExceptionWhenHandlingSavedOrSentForTesting()V
    .locals 1

    .prologue
    .line 2232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailSync;->mFakeIoExceptionWhenHandlingMessageSavedOrSent:Z

    .line 2233
    return-void
.end method

.class public Lcom/google/android/gm/persistence/Persistence;
.super Ljava/lang/Object;
.source "Persistence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/persistence/Persistence$1;,
        Lcom/google/android/gm/persistence/Persistence$MailEnginePreferences;,
        Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;,
        Lcom/google/android/gm/persistence/Persistence$ConfirmActionsAccountToGlobalMigrator;,
        Lcom/google/android/gm/persistence/Persistence$MessageTextSizeAccountToGlobalMigrator;,
        Lcom/google/android/gm/persistence/Persistence$AutoAdvanceAccountToGlobalMigrator;,
        Lcom/google/android/gm/persistence/Persistence$DefaultReplyAllMigrator;
    }
.end annotation


# static fields
.field protected static final ALLOW_BATCH:Ljava/lang/String; = "allow-batch"

.field private static final BACKUP_KEYS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final CONFIRM_ACTIONS_ICS:Ljava/lang/String; = "confirm-actions-key"

.field static final CONFIRM_ACTIONS_PRE_ICS:Ljava/lang/String; = "confirm-actions"

.field public static LABEL_NOTIFICATION_ON:I = 0x0

.field public static LABEL_NOTIFICATION_ONCE:I = 0x0

.field public static LABEL_NOTIFICATION_RINGTONE:I = 0x0

.field public static LABEL_NOTIFICATION_VIBRATE:I = 0x0

.field public static LABEL_SYNCHRONIZATION:I = 0x0

.field static final PRIORITY_INBOX_PRE_ICS_KEY:Ljava/lang/String; = "priority-inbox"

.field private static SEPERATOR:Ljava/lang/String;

.field static UR4_LABEL_NOTIFICATION_ON:I

.field static UR4_LABEL_NOTIFICATION_ONCE:I

.field static UR4_LABEL_NOTIFICATION_RINGTONE:I

.field static UR4_LABEL_NOTIFICATION_VIBRATE:I

.field private static mInstance:Lcom/google/android/gm/persistence/Persistence;

.field private static sAlwaysVibrateSetting:Ljava/lang/String;

.field private static sCanVibrate:Ljava/lang/Boolean;

.field private static sLastGserviceSocialNetworkPatternsHashCode:I

.field private static sSharedPrefs:Landroid/content/SharedPreferences;

.field private static sShouldShowForThisSdk:I

.field private static final sSocialNetworkSenderPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static sVibrateSettingConversionMap:Ljava/util/Map;
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

.field private static sVibrateWhenSilentSetting:Ljava/lang/String;


# instance fields
.field final mAutoAdvanceMigrator:Lcom/google/android/gm/persistence/Persistence$AutoAdvanceAccountToGlobalMigrator;

.field final mConfirmActionsMigrator:Lcom/google/android/gm/persistence/Persistence$ConfirmActionsAccountToGlobalMigrator;

.field final mDefaultReplyAllMigrator:Lcom/google/android/gm/persistence/Persistence$DefaultReplyAllMigrator;

.field final mMessageTextSizeMigrator:Lcom/google/android/gm/persistence/Persistence$MessageTextSizeAccountToGlobalMigrator;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 52
    sput v9, Lcom/google/android/gm/persistence/Persistence;->LABEL_SYNCHRONIZATION:I

    .line 53
    sput v10, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ON:I

    .line 54
    sput v11, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    .line 55
    sput v12, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_VIBRATE:I

    .line 56
    const/4 v0, 0x4

    sput v0, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ONCE:I

    .line 109
    const-string v0, "enable-notifications"

    const-string v1, "signature"

    const-string v2, "ringtone"

    const-string v3, "vibrateWhen"

    const-string v4, "unobtrusive"

    const-string v5, "auto-advance-key"

    const/16 v6, 0x10

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "message-text-key"

    aput-object v7, v6, v9

    const-string v7, "prefetch-attachments"

    aput-object v7, v6, v10

    const-string v7, "action-strip-action-reply-all"

    aput-object v7, v6, v11

    const-string v7, "snap-headers"

    aput-object v7, v6, v12

    const/4 v7, 0x4

    const-string v8, "priority-inbox-key"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "display_images"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "display_sender_images_patterns_set"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "notification_labels"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "hide-checkboxes"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "confirm-delete"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "archive"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "delete"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "send"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string v8, "confirm-actions-key"

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string v8, "signature-key"

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-string v8, "vibrate"

    aput-object v8, v6, v7

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/persistence/Persistence;->BACKUP_KEYS:Ljava/util/Set;

    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/persistence/Persistence;->mInstance:Lcom/google/android/gm/persistence/Persistence;

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/persistence/Persistence;->sCanVibrate:Ljava/lang/Boolean;

    .line 166
    const-string v0, " "

    sput-object v0, Lcom/google/android/gm/persistence/Persistence;->SEPERATOR:Ljava/lang/String;

    .line 171
    sput v9, Lcom/google/android/gm/persistence/Persistence;->UR4_LABEL_NOTIFICATION_ON:I

    .line 173
    sput v10, Lcom/google/android/gm/persistence/Persistence;->UR4_LABEL_NOTIFICATION_RINGTONE:I

    .line 175
    sput v11, Lcom/google/android/gm/persistence/Persistence;->UR4_LABEL_NOTIFICATION_VIBRATE:I

    .line 177
    sput v12, Lcom/google/android/gm/persistence/Persistence;->UR4_LABEL_NOTIFICATION_ONCE:I

    .line 184
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/persistence/Persistence;->sSocialNetworkSenderPatterns:Ljava/util/List;

    .line 186
    sget-object v0, Lcom/google/android/gm/persistence/Persistence;->sSocialNetworkSenderPatterns:Ljava/util/List;

    const-string v1, "noreply\\-\\w+@plus\\.google\\.com"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/google/android/gm/persistence/Persistence;->sSocialNetworkSenderPatterns:Ljava/util/List;

    const-string v1, "[0-9a-fA-F]+@plus\\.google\\.com"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    sput v13, Lcom/google/android/gm/persistence/Persistence;->sLastGserviceSocialNetworkPatternsHashCode:I

    .line 576
    sput v13, Lcom/google/android/gm/persistence/Persistence;->sShouldShowForThisSdk:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Lcom/google/android/gm/persistence/Persistence$ConfirmActionsAccountToGlobalMigrator;

    invoke-direct {v0, p0}, Lcom/google/android/gm/persistence/Persistence$ConfirmActionsAccountToGlobalMigrator;-><init>(Lcom/google/android/gm/persistence/Persistence;)V

    iput-object v0, p0, Lcom/google/android/gm/persistence/Persistence;->mConfirmActionsMigrator:Lcom/google/android/gm/persistence/Persistence$ConfirmActionsAccountToGlobalMigrator;

    .line 211
    new-instance v0, Lcom/google/android/gm/persistence/Persistence$AutoAdvanceAccountToGlobalMigrator;

    invoke-direct {v0, p0}, Lcom/google/android/gm/persistence/Persistence$AutoAdvanceAccountToGlobalMigrator;-><init>(Lcom/google/android/gm/persistence/Persistence;)V

    iput-object v0, p0, Lcom/google/android/gm/persistence/Persistence;->mAutoAdvanceMigrator:Lcom/google/android/gm/persistence/Persistence$AutoAdvanceAccountToGlobalMigrator;

    .line 212
    new-instance v0, Lcom/google/android/gm/persistence/Persistence$MessageTextSizeAccountToGlobalMigrator;

    invoke-direct {v0, p0}, Lcom/google/android/gm/persistence/Persistence$MessageTextSizeAccountToGlobalMigrator;-><init>(Lcom/google/android/gm/persistence/Persistence;)V

    iput-object v0, p0, Lcom/google/android/gm/persistence/Persistence;->mMessageTextSizeMigrator:Lcom/google/android/gm/persistence/Persistence$MessageTextSizeAccountToGlobalMigrator;

    .line 213
    new-instance v0, Lcom/google/android/gm/persistence/Persistence$DefaultReplyAllMigrator;

    invoke-direct {v0, p0}, Lcom/google/android/gm/persistence/Persistence$DefaultReplyAllMigrator;-><init>(Lcom/google/android/gm/persistence/Persistence;)V

    iput-object v0, p0, Lcom/google/android/gm/persistence/Persistence;->mDefaultReplyAllMigrator:Lcom/google/android/gm/persistence/Persistence$DefaultReplyAllMigrator;

    .line 214
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/persistence/Persistence;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gm/persistence/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/persistence/Persistence;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheUseInfoOverloadArrowsSetting(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "value"

    .prologue
    .line 528
    const-string v0, "cache-use-priority-markers"

    .line 529
    .local v0, key:Ljava/lang/String;
    const-string v1, "cache-use-priority-markers"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 530
    return-void
.end method

.method private canBackupRestore(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 301
    if-nez p1, :cond_0

    .line 308
    :goto_0
    return v1

    .line 304
    :cond_0
    const/16 v2, 0x5e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 305
    .local v0, p:I
    if-ltz v0, :cond_1

    .line 306
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 308
    :cond_1
    sget-object v1, Lcom/google/android/gm/persistence/Persistence;->BACKUP_KEYS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private containsKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "key"

    .prologue
    .line 336
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private convertUR4NotificationLabelInformation(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 886
    .local p1, ur4Information:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 887
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ON:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/gm/persistence/Persistence;->UR4_LABEL_NOTIFICATION_ON:I

    invoke-static {p1, v2}, Lcom/google/android/gm/persistence/Persistence;->extract(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/gm/persistence/Persistence;->UR4_LABEL_NOTIFICATION_RINGTONE:I

    invoke-static {p1, v2}, Lcom/google/android/gm/persistence/Persistence;->extract(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_VIBRATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/gm/persistence/Persistence;->UR4_LABEL_NOTIFICATION_VIBRATE:I

    invoke-static {p1, v2}, Lcom/google/android/gm/persistence/Persistence;->extract(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ONCE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/gm/persistence/Persistence;->UR4_LABEL_NOTIFICATION_ONCE:I

    invoke-static {p1, v2}, Lcom/google/android/gm/persistence/Persistence;->extract(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 893
    return-object v0
.end method

.method public static extract(Ljava/util/Set;I)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 898
    .local p0, attributes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, prefix:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 900
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 901
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 904
    .end local v2           #s:Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static extractSet(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Set;
    .locals 8
    .parameter "string"
    .parameter "seperator"
    .parameter "urlEncoded"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 832
    if-eqz p0, :cond_0

    const-string v7, ""

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 833
    :cond_0
    const/4 v4, 0x0

    .line 841
    :cond_1
    return-object v4

    .line 835
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, arr:[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 837
    .local v4, retVal:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 838
    .local v5, s:Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 839
    .local v6, value:Ljava/lang/String;
    :goto_1
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 837
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v6           #value:Ljava/lang/String;
    :cond_3
    move-object v6, v5

    .line 838
    goto :goto_1
.end method

.method public static extractVibrateSetting(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, current:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v2

    invoke-direct {v2, p0}, Lcom/google/android/gm/persistence/Persistence;->initializeVibrationState(Landroid/content/Context;)V

    .line 747
    sget v2, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_VIBRATE:I

    invoke-static {p1, v2}, Lcom/google/android/gm/persistence/Persistence;->extract(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, extractedValue:Ljava/lang/String;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/android/gm/persistence/Persistence;->sVibrateSettingConversionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 752
    .local v0, convertedValue:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .end local v0           #convertedValue:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 749
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #convertedValue:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 752
    goto :goto_1
.end method

.method public static getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1240
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    .line 1241
    .local v1, persistance:Lcom/google/android/gm/persistence/Persistence;
    invoke-virtual {v1, p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getPriorityInboxDefault(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1243
    .local v0, defaultPriorityInbox:Z
    if-eqz v0, :cond_0

    const-string v2, "^iim"

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "^i"

    goto :goto_0
.end method

.method private getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 332
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getCachedInfoOverloadArrowsSetting(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 537
    const-string v0, "cache-use-priority-markers"

    .line 538
    .local v0, key:Ljava/lang/String;
    const-string v1, "cache-use-priority-markers"

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private getInfoOverloadArrowsEnabled(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "account"

    .prologue
    .line 515
    invoke-static {p1}, Lcom/google/android/gm/provider/MailEngine;->getMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 517
    .local v0, engine:Lcom/google/android/gm/provider/MailEngine;
    if-nez v0, :cond_0

    .line 518
    const/4 v1, 0x0

    .line 520
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->getServerArrowsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/google/android/gm/persistence/Persistence;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/google/android/gm/persistence/Persistence;->mInstance:Lcom/google/android/gm/persistence/Persistence;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/google/android/gm/persistence/Persistence;

    invoke-direct {v0}, Lcom/google/android/gm/persistence/Persistence;-><init>()V

    sput-object v0, Lcom/google/android/gm/persistence/Persistence;->mInstance:Lcom/google/android/gm/persistence/Persistence;

    .line 221
    :cond_0
    sget-object v0, Lcom/google/android/gm/persistence/Persistence;->mInstance:Lcom/google/android/gm/persistence/Persistence;

    return-object v0
.end method

.method public static getMailEnginePreferences(Landroid/content/Context;)Lcom/google/android/gm/persistence/Persistence$MailEnginePreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 1506
    new-instance v0, Lcom/google/android/gm/persistence/Persistence$MailEnginePreferences;

    invoke-direct {v0, p0}, Lcom/google/android/gm/persistence/Persistence$MailEnginePreferences;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 250
    sget-object v0, Lcom/google/android/gm/persistence/Persistence;->sSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 251
    const-string v0, "Gmail"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/persistence/Persistence;->sSharedPrefs:Landroid/content/SharedPreferences;

    .line 254
    :cond_0
    sget-object v0, Lcom/google/android/gm/persistence/Persistence;->sSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static getRingtoneTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "ringtone"

    .prologue
    const/4 v6, 0x2

    .line 1388
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1413
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1391
    .restart local p1
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1392
    .local v4, uri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1395
    new-instance v2, Landroid/media/RingtoneManager;

    invoke-direct {v2, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 1396
    .local v2, ringtoneManager:Landroid/media/RingtoneManager;
    invoke-virtual {v2, v6}, Landroid/media/RingtoneManager;->setType(I)V

    .line 1397
    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1399
    .local v0, cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1400
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1403
    .local v1, cursorUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1404
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1405
    .local v3, title:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 1411
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object p1, v3

    goto :goto_0

    .end local v1           #cursorUri:Landroid/net/Uri;
    .end local v3           #title:Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1413
    const/4 p1, 0x0

    goto :goto_0

    .line 1411
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private static getRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v5, 0x2

    .line 1417
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1437
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1421
    .restart local p1
    :cond_1
    new-instance v1, Landroid/media/RingtoneManager;

    invoke-direct {v1, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 1422
    .local v1, ringtoneManager:Landroid/media/RingtoneManager;
    invoke-virtual {v1, v5}, Landroid/media/RingtoneManager;->setType(I)V

    .line 1423
    invoke-virtual {v1}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1425
    .local v0, cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1426
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1427
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1428
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1431
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 1435
    .end local p1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v2           #title:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    .restart local p1
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1437
    const/4 p1, 0x0

    goto :goto_0

    .line 1435
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private getSenderWhitelist(Landroid/content/Context;)Ljava/util/Set;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 617
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 618
    .local v5, whitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v6, "display_images"

    const-string v7, ""

    invoke-direct {p0, p1, v8, v6, v7}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 619
    .local v3, jsonStr:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 621
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, arr:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .local v4, len:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 623
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v4           #len:I
    :catch_0
    move-exception v1

    .line 627
    .local v1, e:Lorg/json/JSONException;
    const-string v6, "display_images"

    const-string v7, ""

    invoke-virtual {p0, p1, v8, v6, v7}, Lcom/google/android/gm/persistence/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    return-object v5
.end method

.method private getStoredAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 999
    const-string v1, "auto-advance-key"

    invoke-direct {p0, p1, v2, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/google/android/gm/persistence/Persistence;->mAutoAdvanceMigrator:Lcom/google/android/gm/persistence/Persistence$AutoAdvanceAccountToGlobalMigrator;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/persistence/Persistence$AutoAdvanceAccountToGlobalMigrator;->migrate(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1009
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 1010
    const-string v1, "auto-advance"

    invoke-direct {p0, p1, v2, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    :cond_1
    return-object v0
.end method

.method private getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 279
    if-eqz p2, :cond_0

    .line 280
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "def"
    .parameter "perAccount"

    .prologue
    .line 579
    if-eqz p4, :cond_0

    .line 580
    invoke-virtual {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUnobtrusive(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 475
    const-string v0, "unobtrusive"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized initializeVibrationState(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 770
    monitor-enter p0

    :try_start_0
    sget-object v7, Lcom/google/android/gm/persistence/Persistence;->sCanVibrate:Ljava/lang/Boolean;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/google/android/gm/persistence/Persistence;->sVibrateSettingConversionMap:Ljava/util/Map;

    if-nez v7, :cond_2

    .line 771
    :cond_0
    const-string v7, "vibrator"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    .line 772
    .local v6, vibrator:Landroid/os/Vibrator;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    .line 773
    .local v1, hasVibrator:Z
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lcom/google/android/gm/persistence/Persistence;->sCanVibrate:Ljava/lang/Boolean;

    .line 775
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 776
    .local v4, res:Landroid/content/res/Resources;
    if-eqz v1, :cond_1

    .line 777
    const v7, 0x7f0c00cf

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/google/android/gm/persistence/Persistence;->sAlwaysVibrateSetting:Ljava/lang/String;

    .line 778
    const v7, 0x7f0c00d1

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/google/android/gm/persistence/Persistence;->sVibrateWhenSilentSetting:Ljava/lang/String;

    .line 781
    :cond_1
    const v7, 0x7f0c00cf

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, alwaysVibrateValue:Ljava/lang/String;
    const v7, 0x7f0c00d0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 783
    .local v3, neverVibrateValue:Ljava/lang/String;
    const v7, 0x7f0c00d1

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 785
    .local v5, vibrateWhenSilentValue:Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 788
    .local v2, mapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, v0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 789
    invoke-virtual {v2, v3, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 790
    invoke-virtual {v2, v5, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 794
    const v7, 0x7f0c00e0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 796
    const v7, 0x7f0c00e2

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 798
    const v7, 0x7f0c00e1

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 801
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v7

    sput-object v7, Lcom/google/android/gm/persistence/Persistence;->sVibrateSettingConversionMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    .end local v0           #alwaysVibrateValue:Ljava/lang/String;
    .end local v1           #hasVibrator:Z
    .end local v2           #mapBuilder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #neverVibrateValue:Ljava/lang/String;
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v5           #vibrateWhenSilentValue:Ljava/lang/String;
    .end local v6           #vibrator:Landroid/os/Vibrator;
    :cond_2
    monitor-exit p0

    return-void

    .line 772
    .restart local v6       #vibrator:Landroid/os/Vibrator;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 770
    .end local v6           #vibrator:Landroid/os/Vibrator;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private isPresent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "key"

    .prologue
    .line 262
    if-eqz p2, :cond_0

    .line 263
    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 265
    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRingtone(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1445
    const-string v0, "ringtone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadSocialNetworkPatterns(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 697
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 698
    .local v7, resolver:Landroid/content/ContentResolver;
    const-string v8, "gmail_social_network_sender_patterns"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, gservicePatterns:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 701
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 702
    .local v4, newhashCode:I
    sget v8, Lcom/google/android/gm/persistence/Persistence;->sLastGserviceSocialNetworkPatternsHashCode:I

    if-eq v4, v8, :cond_0

    .line 705
    sput v4, Lcom/google/android/gm/persistence/Persistence;->sLastGserviceSocialNetworkPatternsHashCode:I

    .line 706
    const-string v8, ";"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 708
    .local v6, patternStrings:[Ljava/lang/String;
    sget-object v8, Lcom/google/android/gm/persistence/Persistence;->sSocialNetworkSenderPatterns:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 709
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 710
    .local v5, pattern:Ljava/lang/String;
    sget-object v8, Lcom/google/android/gm/persistence/Persistence;->sSocialNetworkSenderPatterns:Ljava/util/List;

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 714
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #newhashCode:I
    .end local v5           #pattern:Ljava/lang/String;
    .end local v6           #patternStrings:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "account"
    .parameter "key"

    .prologue
    .line 258
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2
    :cond_0
    return-object p2
.end method

.method private migrateVibrateValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 417
    const-string v1, "vibrate"

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 418
    .local v0, preFroyoVibrateSetting:Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private notifyBackupDataChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->canBackupRestore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "Shared preferences"

    invoke-static {v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->dataChanged(Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method

.method private remove(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 345
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 346
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 347
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 349
    invoke-direct {p0, p2}, Lcom/google/android/gm/persistence/Persistence;->notifyBackupDataChanged(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private setHideCheckboxes(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 405
    const/4 v0, 0x0

    const-string v1, "hide-checkboxes"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 406
    return-void
.end method


# virtual methods
.method public addNotificationLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 821
    .local p4, attributes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notification_labels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gm/persistence/Persistence;->setStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 822
    return-void
.end method

.method public cacheActiveNotificationSet(Landroid/content/Context;Ljava/util/Set;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1267
    .local p2, notificationSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "cache-active-notification-set"

    .line 1268
    .local v0, key:Ljava/lang/String;
    const-string v1, "cache-active-notification-set"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/gm/persistence/Persistence;->setStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 1269
    return-void
.end method

.method public cacheConfiguredGoogleAccounts(Landroid/content/Context;ZLjava/lang/Iterable;)V
    .locals 3
    .parameter "context"
    .parameter "synced"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1230
    .local p3, accounts:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    const-string v1, "cache-google-accounts"

    .line 1232
    .local v1, key:Ljava/lang/String;
    :goto_0
    const-string v2, " "

    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, joinedAccountList:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/google/android/gm/persistence/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    return-void

    .line 1230
    .end local v0           #joinedAccountList:Ljava/lang/String;
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    const-string v1, "cache-google-accounts-synced"

    goto :goto_0
.end method

.method public chipDragAndDropEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1519
    const/4 v0, 0x0

    return v0
.end method

.method public clearNotificationLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "label"

    .prologue
    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notification_labels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gm/persistence/Persistence;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public fullTextSearchEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1512
    const/4 v0, 0x1

    return v0
.end method

.method public getActionStripActionReplyAll(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 456
    const-string v1, "action-strip-action-reply-all"

    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/gm/persistence/Persistence;->isPresent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const-string v1, "action-strip-action-reply-all"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v3, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 467
    :goto_0
    return v1

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/persistence/Persistence;->mDefaultReplyAllMigrator:Lcom/google/android/gm/persistence/Persistence$DefaultReplyAllMigrator;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/persistence/Persistence$DefaultReplyAllMigrator;->migrate(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 462
    .local v0, result:Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 463
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 467
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getActiveAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 230
    const-string v0, "active-account"

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNotificationSet(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1250
    const-string v1, "cache-active-notification-set"

    .line 1252
    .local v1, key:Ljava/lang/String;
    :try_start_0
    const-string v3, "cache-active-notification-set"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/google/android/gm/persistence/Persistence;->getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1259
    :goto_0
    return-object v2

    .line 1253
    :catch_0
    move-exception v0

    .line 1259
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public getAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 981
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 982
    .local v0, res:Landroid/content/res/Resources;
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getStoredAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 985
    const v2, 0x7f0c00c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 987
    :cond_0
    return-object v1
.end method

.method public getAutoAdvanceModeList(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1034
    const-string v0, "list"

    invoke-virtual {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAutoAdvanceModeNewer(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1028
    const-string v0, "newer"

    invoke-virtual {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAutoAdvanceModeOlder(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1023
    const-string v0, "older"

    invoke-virtual {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBackupPreferences(Landroid/content/Context;)Ljava/util/List;
    .locals 20
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1275
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1276
    .local v3, backupPreferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/SharedPreference;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1277
    .local v14, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v11

    .line 1279
    .local v11, preferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1280
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1284
    .local v5, fullKey:Ljava/lang/String;
    const/16 v18, 0x40

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_2

    .line 1285
    const/16 v18, 0x2d

    const/16 v19, 0x2e

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 1286
    .local v10, p:I
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1287
    .local v2, account:Ljava/lang/String;
    add-int/lit8 v18, v10, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1293
    .end local v10           #p:I
    .local v8, key:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/google/android/gm/persistence/Persistence;->canBackupRestore(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1297
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 1299
    .local v16, value:Ljava/lang/Object;
    const-string v18, "ringtone"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1300
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/Persistence;->getRingtoneTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1301
    .local v13, ringtone:Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 1304
    move-object/from16 v16, v13

    .line 1329
    .end local v13           #ringtone:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/Object;
    :cond_1
    :goto_2
    new-instance v18, Lcom/google/android/gm/SharedPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v8, v2, v1}, Lcom/google/android/gm/SharedPreference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1289
    .end local v2           #account:Ljava/lang/String;
    .end local v8           #key:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 1290
    .restart local v2       #account:Ljava/lang/String;
    move-object v8, v5

    .restart local v8       #key:Ljava/lang/String;
    goto :goto_1

    .line 1305
    .restart local v16       #value:Ljava/lang/Object;
    :cond_3
    const-string v18, "notification_labels"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1307
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v14, v5, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v17

    .line 1308
    .local v17, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v17, :cond_0

    .line 1312
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v9

    .line 1314
    .local v9, newValues:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget v18, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 1315
    .local v12, prefix:Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1316
    .local v15, v:Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1317
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/Persistence;->getRingtoneTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1318
    .restart local v13       #ringtone:Ljava/lang/String;
    if-nez v13, :cond_4

    .line 1319
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1322
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget v19, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1324
    .end local v13           #ringtone:Ljava/lang/String;
    :cond_5
    invoke-interface {v9, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1327
    .end local v15           #v:Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v9

    .local v16, value:Ljava/util/Set;
    goto/16 :goto_2

    .line 1332
    .end local v2           #account:Ljava/lang/String;
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v5           #fullKey:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #newValues:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12           #prefix:Ljava/lang/String;
    .end local v16           #value:Ljava/util/Set;
    .end local v17           #values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    return-object v3
.end method

.method public getCachedConfiguredGoogleAccounts(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .parameter "context"
    .parameter "synced"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1214
    if-eqz p2, :cond_0

    const-string v2, "cache-google-accounts"

    .line 1216
    .local v2, key:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {p0, p1, v3, v2, v4}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1217
    .local v1, joinedAccountList:Ljava/lang/String;
    const-string v3, " "

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1218
    .local v0, accountList:[Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    return-object v3

    .line 1214
    .end local v0           #accountList:[Ljava/lang/String;
    .end local v1           #joinedAccountList:Ljava/lang/String;
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    const-string v2, "cache-google-accounts-synced"

    goto :goto_0
.end method

.method public getConfirmActions(Landroid/content/Context;)Ljava/util/Set;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1145
    .local v0, res:Landroid/content/res/Resources;
    const-string v2, "confirm-actions-key"

    invoke-direct {p0, p1, v3, v2, v3}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1149
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1150
    iget-object v2, p0, Lcom/google/android/gm/persistence/Persistence;->mConfirmActionsMigrator:Lcom/google/android/gm/persistence/Persistence$ConfirmActionsAccountToGlobalMigrator;

    invoke-virtual {v2, p1}, Lcom/google/android/gm/persistence/Persistence$ConfirmActionsAccountToGlobalMigrator;->migrate(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1154
    .restart local v1       #result:Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 1155
    const-string v2, "confirm-actions"

    invoke-direct {p0, p1, v3, v2, v3}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1159
    :cond_1
    if-nez v1, :cond_2

    .line 1160
    const v2, 0x7f0c00c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1163
    :cond_2
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    return-object v2
.end method

.method public getConfirmArchive(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1167
    invoke-virtual {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getConfirmActions(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "archive"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getConfirmDelete(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1171
    invoke-virtual {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getConfirmActions(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "delete"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getConfirmSend(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1175
    invoke-virtual {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getConfirmActions(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "send"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDisplayImagesFromSender(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "sender"

    .prologue
    const/4 v9, 0x0

    .line 643
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getSenderWhitelist(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 644
    .local v2, displayImages:Z
    if-nez v2, :cond_1

    .line 647
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 649
    .local v1, defaultPatternSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    :try_start_0
    const-string v7, "display_sender_images_patterns_set"

    invoke-virtual {p0, p1, v6, v7, v1}, Lcom/google/android/gm/persistence/Persistence;->getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 657
    .local v0, currentPatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 658
    .local v5, pattern:Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 659
    if-eqz v2, :cond_0

    .line 665
    .end local v0           #currentPatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #defaultPatternSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #pattern:Ljava/lang/String;
    :cond_1
    return v2

    .line 651
    .restart local v1       #defaultPatternSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 653
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v6, "Gmail"

    const-string v7, "Error retrieving previously saved senders pattern"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v3, v7, v8}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 654
    const-string v6, "display_sender_images_patterns_set"

    invoke-virtual {p0, p1, v9, v6}, Lcom/google/android/gm/persistence/Persistence;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    move-object v0, v1

    .restart local v0       #currentPatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public getEnableNotifications(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 409
    const-string v0, "enable-notifications"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHasUserSetAutoAdvanceSetting(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getStoredAutoAdvanceMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, autoAdvanceSetting:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHideCheckboxes(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 394
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "hide-checkboxes"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 395
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "allow-batch"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "allow-batch"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/persistence/Persistence;->setHideCheckboxes(Landroid/content/Context;Z)V

    .line 401
    :cond_0
    :goto_1
    const/4 v0, 0x0

    const-string v2, "hide-checkboxes"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gm/persistence/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 396
    goto :goto_0

    .line 398
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gm/persistence/Persistence;->setHideCheckboxes(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method public getMessageTextSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1076
    const-string v1, "message-text-key"

    invoke-direct {p0, p1, v2, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/google/android/gm/persistence/Persistence;->mMessageTextSizeMigrator:Lcom/google/android/gm/persistence/Persistence$MessageTextSizeAccountToGlobalMigrator;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/persistence/Persistence$MessageTextSizeAccountToGlobalMigrator;->migrate(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1086
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 1087
    const-string v1, "message-text"

    invoke-direct {p0, p1, v2, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    :cond_1
    if-nez v0, :cond_2

    .line 1092
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1095
    :cond_2
    return-object v0
.end method

.method public getNotificationLabelInformation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "label"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, def:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence;->getPriorityInboxDefault(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 850
    .local v1, priorityEnabled:Z
    if-nez v1, :cond_0

    const-string v2, "^i"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    const-string v2, "^iim"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 852
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ON:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence;->getRingtone(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_VIBRATE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence;->getVibrateWhen(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ONCE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence;->getUnobtrusive(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gm/persistence/Persistence;->getNotificationLabelInformation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public getNotificationLabelInformation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 869
    .local p4, def:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification_labels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 871
    .local v2, labelNotificationKey:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/google/android/gm/persistence/Persistence;->getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 881
    .end local p4           #def:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object p4

    .line 872
    .restart local p4       #def:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 875
    .local v1, e:Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gm/persistence/Persistence;->SEPERATOR:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/persistence/Persistence;->extractSet(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    .line 877
    .local v0, current:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 881
    invoke-direct {p0, v0}, Lcom/google/android/gm/persistence/Persistence;->convertUR4NotificationLabelInformation(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p4

    goto :goto_0
.end method

.method public getNotificationRingtoneUriForLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "label"

    .prologue
    .line 756
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->getNotificationLabelInformation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 758
    .local v0, current:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 759
    .local v1, result:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 760
    sget v3, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    invoke-static {v0, v3}, Lcom/google/android/gm/persistence/Persistence;->extract(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, ringtoneUri:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 762
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 766
    .end local v2           #ringtoneUri:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getPrefetchAttachments(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 908
    const-string v0, "prefetch-attachments"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPriorityInboxArrowsEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 495
    invoke-direct {p0, p2}, Lcom/google/android/gm/persistence/Persistence;->getInfoOverloadArrowsEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 496
    .local v2, priorityInboxServerArrowsEnabled:Ljava/lang/Boolean;
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence;->getCachedInfoOverloadArrowsSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 500
    .local v0, cachedValue:Z
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 504
    .local v1, priorityInboxArrowsEnabled:Z
    :goto_0
    if-eq v0, v1, :cond_0

    .line 505
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gm/persistence/Persistence;->cacheUseInfoOverloadArrowsSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 507
    :cond_0
    return v1

    .end local v1           #priorityInboxArrowsEnabled:Z
    :cond_1
    move v1, v0

    .line 500
    goto :goto_0
.end method

.method public getPriorityInboxDefault(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 481
    const-string v1, "priority-inbox-key"

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gm/persistence/Persistence;->containsKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "priority-inbox-key"

    .line 484
    .local v0, key:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 481
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    const-string v0, "priority-inbox"

    goto :goto_0
.end method

.method public getRingtone(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 547
    const-string v1, "ringtone"

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, ringtone:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 553
    const-string v1, "ringtone"

    invoke-direct {p0, p1, v2, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    :cond_0
    if-nez v0, :cond_1

    .line 558
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    :cond_1
    return-object v0
.end method

.method public getShouldShowWhatsNew(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "version"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 594
    const-string v0, "last-version-promoed"

    .line 595
    .local v0, key:Ljava/lang/String;
    const-string v4, "last-version-promoed"

    const-string v5, ""

    invoke-direct {p0, p1, v4, v5, v3}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, lastVersionPromoted:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 601
    sget v4, Lcom/google/android/gm/persistence/Persistence;->sShouldShowForThisSdk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 602
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/google/android/gm/persistence/Persistence;->sShouldShowForThisSdk:I

    .line 604
    :cond_0
    sget v4, Lcom/google/android/gm/persistence/Persistence;->sShouldShowForThisSdk:I

    if-ne v4, v2, :cond_1

    .line 608
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 363
    const-string v1, "signature"

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, signature:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 368
    const-string v1, "signature-key"

    invoke-direct {p0, p1, v2, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_0
    if-nez v0, :cond_1

    .line 373
    const-string v0, ""

    .line 376
    :cond_1
    return-object v0
.end method

.method public getSnapHeaderMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 916
    const/4 v0, 0x0

    const-string v1, "snap-headers"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    .local p4, def:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradeSyncWindow(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 1200
    const/4 v0, 0x0

    const-string v1, "show-sync-window-upgrade"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVibrateWhen(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 424
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence;->migrateVibrateValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, defaultValue:Ljava/lang/String;
    const-string v1, "vibrateWhen"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "key"

    .prologue
    .line 341
    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/persistence/Persistence;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public removeNotificationLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "label"

    .prologue
    const/4 v3, 0x1

    .line 806
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->getNotificationLabelInformation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 807
    .local v0, current:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ON:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ON:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ON:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 811
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gm/persistence/Persistence;->addNotificationLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 814
    :cond_0
    return-void
.end method

.method public restoreSharedPreferences(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 14
    .parameter "context"
    .parameter
    .parameter "logTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1338
    .local p2, preferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gm/SharedPreference;

    .line 1339
    .local v5, preference:Lcom/google/android/gm/SharedPreference;
    invoke-virtual {v5}, Lcom/google/android/gm/SharedPreference;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 1340
    .local v9, value:Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/google/android/gm/SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 1343
    .local v3, key:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/google/android/gm/persistence/Persistence;->canBackupRestore(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1347
    invoke-virtual {v5}, Lcom/google/android/gm/SharedPreference;->getAccount()Ljava/lang/String;

    move-result-object v1

    .line 1348
    .local v1, account:Ljava/lang/String;
    instance-of v10, v9, Ljava/lang/Boolean;

    if-eqz v10, :cond_1

    .line 1349
    check-cast v9, Ljava/lang/Boolean;

    .end local v9           #value:Ljava/lang/Object;
    invoke-virtual {p0, p1, v1, v3, v9}, Lcom/google/android/gm/persistence/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1350
    const-string v10, "Gmail"

    const-string v11, "Restore: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1351
    .restart local v9       #value:Ljava/lang/Object;
    :cond_1
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_3

    move-object v8, v9

    .line 1352
    check-cast v8, Ljava/lang/String;

    .line 1357
    .local v8, stringValue:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/gm/persistence/Persistence;->isRingtone(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1358
    invoke-static {p1, v8}, Lcom/google/android/gm/persistence/Persistence;->getRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1359
    if-nez v8, :cond_2

    .line 1360
    const-string v10, "Gmail"

    const-string v11, "Can\'t restore ringtone (not found)"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1364
    :cond_2
    invoke-virtual {p0, p1, v1, v3, v8}, Lcom/google/android/gm/persistence/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string v10, "Restore: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    move-object/from16 v0, p3

    invoke-static {v0, v10, v11}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1366
    .end local v8           #stringValue:Ljava/lang/String;
    :cond_3
    instance-of v10, v9, Ljava/util/Set;

    if-eqz v10, :cond_6

    move-object v7, v9

    .line 1368
    check-cast v7, Ljava/util/Set;

    .line 1369
    .local v7, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v10, "notification_labels"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1370
    sget v10, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    invoke-static {v7, v10}, Lcom/google/android/gm/persistence/Persistence;->extract(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v6

    .line 1371
    .local v6, ringtone:Ljava/lang/String;
    invoke-static {p1, v6}, Lcom/google/android/gm/persistence/Persistence;->getRingtoneUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1372
    .local v4, newRingtone:Ljava/lang/String;
    if-nez v4, :cond_4

    .line 1373
    const/4 v10, 0x2

    invoke-static {v10}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1376
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget v11, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1377
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget v11, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1379
    .end local v4           #newRingtone:Ljava/lang/String;
    .end local v6           #ringtone:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, p1, v1, v3, v7}, Lcom/google/android/gm/persistence/Persistence;->setStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 1381
    .end local v7           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const-string v10, "Unknown preference data type: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p3

    invoke-static {v0, v10, v11}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 1384
    .end local v1           #account:Ljava/lang/String;
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #preference:Lcom/google/android/gm/SharedPreference;
    .end local v9           #value:Ljava/lang/Object;
    :cond_7
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1385
    return-void
.end method

.method public setActionStripActionReplyAll(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 471
    const/4 v0, 0x0

    const-string v1, "action-strip-action-reply-all"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 472
    return-void
.end method

.method public setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "userName"

    .prologue
    .line 239
    const/4 v0, 0x0

    const-string v1, "active-account"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gm/persistence/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setAutoAdvanceMode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 1018
    const/4 v0, 0x0

    const-string v1, "auto-advance-key"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gm/persistence/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    return-void
.end method

.method public setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 324
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 325
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 328
    invoke-direct {p0, p3}, Lcom/google/android/gm/persistence/Persistence;->notifyBackupDataChanged(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public setConfirmActions(Landroid/content/Context;Ljava/util/Set;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1179
    .local p2, value:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, preferenceValue:Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "confirm-actions-key"

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/android/gm/persistence/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    return-void
.end method

.method public setDisplayImagesFromSender(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "sender"

    .prologue
    const/4 v7, 0x0

    .line 669
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->loadSocialNetworkPatterns(Landroid/content/Context;)V

    .line 671
    sget-object v5, Lcom/google/android/gm/persistence/Persistence;->sSocialNetworkSenderPatterns:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 672
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 675
    const-string v5, "display_sender_images_patterns_set"

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1, v7, v5, v6}, Lcom/google/android/gm/persistence/Persistence;->getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 677
    .local v0, currentPatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, patternRegex:Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 679
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 680
    const-string v5, "display_sender_images_patterns_set"

    invoke-virtual {p0, p1, v7, v5, v0}, Lcom/google/android/gm/persistence/Persistence;->setStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 694
    .end local v0           #currentPatterns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #pattern:Ljava/util/regex/Pattern;
    .end local v3           #patternRegex:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 685
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getSenderWhitelist(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    .line 686
    .local v4, whitelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 691
    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 692
    const-string v5, "display_images"

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v7, v5, v6}, Lcom/google/android/gm/persistence/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "value"

    .prologue
    .line 413
    const-string v0, "enable-notifications"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 414
    return-void
.end method

.method public setHasShownWhatsNew(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "version"

    .prologue
    .line 573
    const/4 v0, 0x0

    const-string v1, "last-version-promoed"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gm/persistence/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public setMessageTextSize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 1100
    const/4 v0, 0x0

    const-string v1, "message-text-key"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gm/persistence/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    return-void
.end method

.method public setPrefetchAttachments(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "value"

    .prologue
    .line 912
    const-string v0, "prefetch-attachments"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 913
    return-void
.end method

.method public setPriorityInboxDefault(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "value"

    .prologue
    .line 542
    const-string v0, "priority-inbox-key"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gm/persistence/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 543
    return-void
.end method

.method public setSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "value"

    .prologue
    .line 380
    const-string v0, "signature"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/gm/persistence/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public setSnapHeaderMode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 923
    const/4 v0, 0x0

    const-string v1, "snap-headers"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gm/persistence/Persistence;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method public setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 287
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 288
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    invoke-direct {p0, p3}, Lcom/google/android/gm/persistence/Persistence;->notifyBackupDataChanged(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public setStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p4, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 313
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->makeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 316
    invoke-direct {p0, p3}, Lcom/google/android/gm/persistence/Persistence;->notifyBackupDataChanged(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public setUpgradeSyncWindow(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 1193
    if-eqz p2, :cond_0

    const-string v0, "show-sync-window-upgrade"

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gm/persistence/Persistence;->isPresent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    :goto_0
    return-void

    .line 1196
    :cond_0
    const-string v0, "show-sync-window-upgrade"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/google/android/gm/persistence/Persistence;->setBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public shouldNotifyForLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "label"

    .prologue
    .line 717
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->getNotificationLabelInformation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 718
    .local v0, current:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    sget v1, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ON:I

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/Persistence;->extract(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldNotifyOnceForLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "label"

    .prologue
    .line 722
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->getNotificationLabelInformation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 724
    .local v0, current:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    sget v1, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ONCE:I

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/Persistence;->extract(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldVibrateForLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "label"

    .prologue
    .line 728
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->initializeVibrationState(Landroid/content/Context;)V

    .line 730
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gm/persistence/Persistence;->getNotificationLabelInformation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 732
    .local v0, current:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 733
    .local v1, vibrate:Z
    sget-object v3, Lcom/google/android/gm/persistence/Persistence;->sCanVibrate:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 734
    invoke-static {p1, v0}, Lcom/google/android/gm/persistence/Persistence;->extractVibrateSetting(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, vibrateSetting:Ljava/lang/String;
    sget-object v3, Lcom/google/android/gm/persistence/Persistence;->sAlwaysVibrateSetting:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/android/gm/persistence/Persistence;->sVibrateWhenSilentSetting:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 737
    :cond_0
    const/4 v1, 0x1

    .line 741
    .end local v2           #vibrateSetting:Ljava/lang/String;
    :cond_1
    return v1
.end method

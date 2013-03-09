.class public Lcom/google/android/gm/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/Utils$AddrSpec;,
        Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;,
        Lcom/google/android/gm/Utils$ScheduleSyncTask;,
        Lcom/google/android/gm/Utils$GmailMessagePlainTextConverter;,
        Lcom/google/android/gm/Utils$NotificationMap;,
        Lcom/google/android/gm/Utils$NotificationKey;
    }
.end annotation


# static fields
.field private static final BUG_REPORT_INTENT:Landroid/content/Intent;

.field private static final GMAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final GMAIL_MESSAGE_CONVERTER_FACTORY:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

.field private static final GOOGLE_MAIL_CONVERSATION_LIST_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final GOOGLE_MAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final GOOGLE_MAIL_MCC_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sActiveNotificationMap:Lcom/google/android/gm/Utils$NotificationMap;

.field private static sActiveSendErrorNotificationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sDefaultSingleNotifIcon:Landroid/graphics/Bitmap;

.field private static sDraftPluralString:Ljava/lang/CharSequence;

.field private static sDraftSingularString:Ljava/lang/CharSequence;

.field private static sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

.field private static sLastScheduleSyncTask:Lcom/google/android/gm/Utils$ScheduleSyncTask;

.field private static sMeString:Ljava/lang/CharSequence;

.field public static sMultipleNotifIcon:Landroid/graphics/Bitmap;

.field private static sReadStyleSpan:Landroid/text/style/CharacterStyle;

.field private static sSendFailedString:Ljava/lang/CharSequence;

.field private static sSendingString:Ljava/lang/CharSequence;

.field private static sUnreadStyleSpan:Landroid/text/style/CharacterStyle;

.field private static sVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.CreateLabelShortcutActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/Utils;->GMAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 163
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.CreateLabelShortcutActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/Utils;->GOOGLE_MAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 166
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.ConversationListActivityGoogleMail"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/Utils;->GOOGLE_MAIL_CONVERSATION_LIST_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 173
    const/16 v0, 0x106

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/Utils;->GOOGLE_MAIL_MCC_SET:Ljava/util/Set;

    .line 177
    sput-object v3, Lcom/google/android/gm/Utils;->sVersionCode:Ljava/lang/String;

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/Utils;->BUG_REPORT_INTENT:Landroid/content/Intent;

    .line 184
    new-instance v0, Lcom/google/android/gm/Utils$1;

    invoke-direct {v0}, Lcom/google/android/gm/Utils$1;-><init>()V

    sput-object v0, Lcom/google/android/gm/Utils;->GMAIL_MESSAGE_CONVERTER_FACTORY:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

    .line 320
    sput-object v3, Lcom/google/android/gm/Utils;->sActiveNotificationMap:Lcom/google/android/gm/Utils$NotificationMap;

    .line 1468
    sput-object v3, Lcom/google/android/gm/Utils;->sUnreadStyleSpan:Landroid/text/style/CharacterStyle;

    .line 2277
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/Utils;->sActiveSendErrorNotificationsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2382
    return-void
.end method

.method static synthetic access$102(Lcom/google/android/gm/Utils$ScheduleSyncTask;)Lcom/google/android/gm/Utils$ScheduleSyncTask;
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    sput-object p0, Lcom/google/android/gm/Utils;->sLastScheduleSyncTask:Lcom/google/android/gm/Utils$ScheduleSyncTask;

    return-object p0
.end method

.method private static addConversationInformation(Landroid/net/Uri$Builder;JJLjava/util/Map;)Landroid/net/Uri$Builder;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri$Builder;",
            "JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)",
            "Landroid/net/Uri$Builder;"
        }
    .end annotation

    .prologue
    .line 1832
    invoke-static {p5}, Lcom/google/android/gm/provider/LabelManager;->serialize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conversationId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxServerMessageId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1836
    const-string v1, "labels"

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1837
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static addGmailParamsToUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1894
    invoke-static {p1}, Lcom/google/android/gm/Utils;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1895
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1896
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1897
    if-eqz v1, :cond_0

    .line 1898
    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1901
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1904
    sget-object v2, Lcom/google/android/gm/Utils;->GOOGLE_MAIL_MCC_SET:Ljava/util/Set;

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/google/android/gm/Utils;->haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 1906
    :goto_0
    const-string v2, "googleMail"

    if-eqz v1, :cond_3

    const-string v1, "1"

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1907
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1904
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1906
    :cond_3
    const-string v1, "0"

    goto :goto_1
.end method

.method public static addGoogleUriAccountIntentExtras(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2229
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gmail_account_extras_uri_host_pattern"

    const-string v3, ".*\\.google(\\.co(m?))?(\\.\\w{2})?"

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2234
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2236
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2240
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2241
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 2242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2244
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 2245
    const-string v2, "salt"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2246
    const-string v1, "digest"

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2251
    :cond_0
    :goto_0
    return-void

    .line 2247
    :catch_0
    move-exception v0

    .line 2248
    const-string v1, "Gmail"

    const-string v2, "Unable to load MD5 digest instance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static addLayoutTransition(Landroid/view/ViewGroup;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 2640
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2641
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2642
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    .line 2643
    const v3, 0x7f050004

    invoke-static {v0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 2645
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 2646
    const/4 v3, 0x3

    const v4, 0x7f050005

    invoke-static {v0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 2648
    const/4 v0, 0x1

    invoke-virtual {v2, v0, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 2649
    const v0, 0x7f090009

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 2650
    const-wide/16 v0, 0x0

    invoke-virtual {v2, v5, v0, v1}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 2651
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 2652
    return-void
.end method

.method public static cacheGoogleAccountList(Landroid/content/Context;Z[Landroid/accounts/Account;)V
    .locals 3
    .parameter "context"
    .parameter "synced"
    .parameter "accounts"

    .prologue
    .line 2104
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2105
    .local v0, accountNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 2106
    aget-object v2, p2, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2108
    :cond_0
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v2

    invoke-virtual {v2, p0, p1, v0}, Lcom/google/android/gm/persistence/Persistence;->cacheConfiguredGoogleAccounts(Landroid/content/Context;ZLjava/lang/Iterable;)V

    .line 2110
    return-void
.end method

.method public static canShowAutoAdvanceDialogOnFirstAction(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 2159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancelAllNotifications(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 448
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 450
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 451
    invoke-static {p0}, Lcom/google/android/gm/Utils;->clearAllNotfications(Landroid/content/Context;)V

    .line 452
    return-void
.end method

.method public static cancelAndResendNotifications(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 459
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 461
    .local v9, nm:Landroid/app/NotificationManager;
    invoke-virtual {v9}, Landroid/app/NotificationManager;->cancelAll()V

    .line 463
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getNotificationMap(Landroid/content/Context;)Lcom/google/android/gm/Utils$NotificationMap;

    move-result-object v10

    .line 464
    .local v10, notificationMap:Lcom/google/android/gm/Utils$NotificationMap;
    invoke-virtual {v10}, Lcom/google/android/gm/Utils$NotificationMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 466
    .local v8, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/Utils$NotificationKey;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gm/Utils$NotificationKey;

    .line 467
    .local v6, notification:Lcom/google/android/gm/Utils$NotificationKey;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 468
    .local v1, fakedIntent:Landroid/content/Intent;
    const-string v0, "count"

    invoke-virtual {v10, v6}, Lcom/google/android/gm/Utils$NotificationMap;->getUnread(Lcom/google/android/gm/Utils$NotificationKey;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 470
    const-string v0, "unseenCount"

    invoke-virtual {v10, v6}, Lcom/google/android/gm/Utils$NotificationMap;->getUnseen(Lcom/google/android/gm/Utils$NotificationKey;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 472
    const-string v0, "account"

    iget-object v2, v6, Lcom/google/android/gm/Utils$NotificationKey;->account:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    iget-object v2, v6, Lcom/google/android/gm/Utils$NotificationKey;->account:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, v6, Lcom/google/android/gm/Utils$NotificationKey;->label:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gm/Utils;->validateNotifications(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/android/gm/Utils$NotificationKey;)V

    goto :goto_0

    .line 476
    .end local v1           #fakedIntent:Landroid/content/Intent;
    .end local v6           #notification:Lcom/google/android/gm/Utils$NotificationKey;
    :cond_0
    return-void
.end method

.method public static changeAccount(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1
    .parameter "activity"
    .parameter "account"
    .parameter "finishActivity"

    .prologue
    const/4 v0, 0x0

    .line 1709
    if-eqz p2, :cond_0

    .line 1710
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1712
    :cond_0
    invoke-static {p0, p1, v0, v0}, Lcom/google/android/gm/Utils;->createViewConversationIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1713
    return-void
.end method

.method public static clearAccountSendErrorNotifications(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 2336
    sget-object v4, Lcom/google/android/gm/Utils;->sActiveSendErrorNotificationsMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2337
    .local v0, activeNotifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 2338
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 2340
    .local v2, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2341
    .local v3, notificationId:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 2343
    .end local v3           #notificationId:Ljava/lang/Integer;
    :cond_0
    sget-object v4, Lcom/google/android/gm/Utils;->sActiveSendErrorNotificationsMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2345
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #nm:Landroid/app/NotificationManager;
    :cond_1
    return-void
.end method

.method public static clearAllNotfications(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 542
    const-string v1, "Gmail"

    const-string v2, "Clearing all notifications."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 543
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getNotificationMap(Landroid/content/Context;)Lcom/google/android/gm/Utils$NotificationMap;

    move-result-object v0

    .line 544
    .local v0, notificationMap:Lcom/google/android/gm/Utils$NotificationMap;
    invoke-virtual {v0}, Lcom/google/android/gm/Utils$NotificationMap;->clear()V

    .line 545
    invoke-virtual {v0, p0}, Lcom/google/android/gm/Utils$NotificationMap;->saveNotificationMap(Landroid/content/Context;)V

    .line 546
    return-void
.end method

.method public static clearLabelNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "label"

    .prologue
    .line 552
    const-string v2, "Gmail"

    const-string v3, "Clearing all notifications for %s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 553
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getNotificationMap(Landroid/content/Context;)Lcom/google/android/gm/Utils$NotificationMap;

    move-result-object v1

    .line 554
    .local v1, notificationMap:Lcom/google/android/gm/Utils$NotificationMap;
    new-instance v0, Lcom/google/android/gm/Utils$NotificationKey;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gm/Utils$NotificationKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .local v0, key:Lcom/google/android/gm/Utils$NotificationKey;
    invoke-virtual {v1, v0}, Lcom/google/android/gm/Utils$NotificationMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    invoke-virtual {v1, p0}, Lcom/google/android/gm/Utils$NotificationMap;->saveNotificationMap(Landroid/content/Context;)V

    .line 557
    return-void
.end method

.method private static configureLatestEventInfoFromConversation(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/google/android/gm/provider/Gmail$ConversationCursor;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;Landroid/content/Intent;I)V
    .locals 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 869
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 870
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v19

    .line 873
    const-string v3, "Gmail"

    const-string v4, "Showing notification with unreadCount of %d and unseenCount of %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 877
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 881
    move-object/from16 v0, p7

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    move/from16 v17, v3

    .line 884
    :goto_0
    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v13

    .line 887
    :goto_1
    const/4 v3, 0x1

    move/from16 v0, p6

    if-le v0, v3, :cond_c

    .line 889
    const v3, 0x7f0c014e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 892
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gm/Utils;->getDefaultNotificationIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 899
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 901
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->isRunningJellybeanOrLater()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 903
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    .line 907
    if-eqz v17, :cond_0

    move-object/from16 p4, v13

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 910
    new-instance v17, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 912
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 914
    const/4 v3, 0x0

    move v14, v3

    .line 916
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getHasUnreadMessage()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 917
    const/4 v4, 0x0

    .line 918
    const/4 v3, 0x0

    .line 921
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6, v7}, Lcom/google/android/gm/provider/Gmail;->getDetachedMessageCursorForConversationId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v15

    .line 924
    const/4 v5, 0x0

    .line 925
    :try_start_1
    const-string v4, ""

    .line 926
    invoke-virtual {v15}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v15, v6}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 927
    invoke-virtual {v15}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v4

    .line 928
    invoke-static {v4}, Lcom/google/android/gm/Utils;->getDisplayableSender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 930
    :cond_1
    :goto_3
    invoke-virtual {v15}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->position()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v15, v5}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 931
    invoke-virtual {v15}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsUnread()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v15}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 933
    const/4 v3, 0x1

    .line 937
    :cond_2
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 939
    if-eqz v3, :cond_9

    .line 940
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 942
    const v3, 0x7f090019

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 944
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getFromSnippetInstructions()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v12}, Lcom/google/android/gm/Utils;->getStyledSenderSnippet(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;IZZZZZ)V

    .line 953
    :goto_4
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSnippet()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/gm/Utils;->getSingleMessageInboxLine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 957
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 958
    add-int/lit8 v3, v14, 0x1

    .line 960
    invoke-virtual {v15}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 963
    :goto_5
    move/from16 v0, v20

    if-gt v3, v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->next()Z

    move-result v4

    if-nez v4, :cond_16

    :cond_3
    :goto_6
    move-object/from16 v3, v16

    .line 1073
    :goto_7
    if-eqz v13, :cond_4

    if-eqz v3, :cond_4

    .line 1075
    const v4, 0x7f0c00eb

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1079
    :cond_4
    if-eqz v3, :cond_5

    .line 1081
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1085
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, p5

    if-le v0, v3, :cond_6

    .line 1086
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 1089
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1090
    return-void

    .line 881
    :cond_7
    const/4 v3, 0x0

    move/from16 v17, v3

    goto/16 :goto_0

    .line 884
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 951
    :cond_9
    :try_start_2
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 960
    :catchall_0
    move-exception v3

    move-object v4, v15

    :goto_8
    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    throw v3

    .line 966
    :cond_a
    if-eqz v17, :cond_b

    move-object/from16 p4, v13

    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_6

    .line 974
    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/google/android/gm/Utils;->seekToLatestUnreadConversation(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z

    .line 976
    const/4 v4, 0x0

    .line 977
    const/4 v5, 0x0

    .line 978
    const/4 v6, 0x0

    .line 980
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7, v8}, Lcom/google/android/gm/provider/Gmail;->getDetachedMessageCursorForConversationId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v14

    .line 985
    :try_start_4
    const-string v3, ""

    .line 986
    invoke-virtual {v14}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->count()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v14, v4}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 987
    invoke-virtual {v14}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v3

    .line 988
    invoke-static {v3}, Lcom/google/android/gm/Utils;->getDisplayableSender(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 989
    invoke-static {v3}, Lcom/google/android/gm/Utils;->getSenderAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/google/android/gm/Utils;->getContactIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-object v6, v3

    move-object v3, v4

    .line 994
    :goto_9
    invoke-virtual {v14}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->position()I

    move-result v4

    move v15, v4

    move/from16 v16, v5

    .line 995
    :cond_d
    :goto_a
    invoke-virtual {v14}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->position()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v14, v4}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 996
    invoke-virtual {v14}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsUnread()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 997
    invoke-virtual {v14}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->position()I

    move-result v4

    .line 998
    if-nez v16, :cond_14

    invoke-virtual {v14}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 1000
    const/4 v5, 0x1

    move v15, v4

    move/from16 v16, v5

    goto :goto_a

    .line 1005
    :cond_e
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->isRunningJellybeanOrLater()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1008
    if-eqz v16, :cond_11

    .line 1010
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1011
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1012
    const v3, 0x7f090019

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1013
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getFromSnippetInstructions()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v12}, Lcom/google/android/gm/Utils;->getStyledSenderSnippet(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;IZZZZZ)V

    .line 1019
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1021
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1030
    :goto_b
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSubject()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/gm/Utils;->getSingleMessageLittleText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1036
    if-eqz v17, :cond_f

    move-object/from16 p4, v13

    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1039
    if-eqz v16, :cond_10

    .line 1040
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/gm/Utils;->getDefaultNotificationIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1042
    :cond_10
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1045
    invoke-virtual {v14, v15}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    .line 1046
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSubject()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14}, Lcom/google/android/gm/Utils;->getSingleMessageBigText(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$MessageCursor;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1067
    :goto_c
    invoke-virtual {v14}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    goto/16 :goto_7

    .line 1024
    :cond_11
    :try_start_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_b

    .line 1067
    :catchall_1
    move-exception v3

    move-object v4, v14

    :goto_d
    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    throw v3

    .line 1053
    :cond_12
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSubject()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/google/android/gm/Utils;->getSingleMessageNotificationTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1059
    if-eqz v17, :cond_13

    move-object/from16 p4, v13

    :cond_13
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_c

    .line 1067
    :catchall_2
    move-exception v3

    goto :goto_d

    .line 960
    :catchall_3
    move-exception v3

    goto/16 :goto_8

    :cond_14
    move v15, v4

    goto/16 :goto_a

    :cond_15
    move-object/from16 v21, v3

    move-object v3, v6

    move-object/from16 v6, v21

    goto/16 :goto_9

    :cond_16
    move v14, v3

    goto/16 :goto_2

    :cond_17
    move-object v6, v5

    goto/16 :goto_3

    :cond_18
    move v3, v14

    goto/16 :goto_5
.end method

.method public static containsAccount(Landroid/accounts/Account;[Landroid/accounts/Account;)Z
    .locals 5
    .parameter "account"
    .parameter "accounts"

    .prologue
    .line 1716
    move-object v0, p1

    .local v0, arr$:[Landroid/accounts/Account;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1717
    .local v1, candidateAccount:Landroid/accounts/Account;
    invoke-virtual {p0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1718
    const/4 v4, 0x1

    .line 1721
    .end local v1           #candidateAccount:Landroid/accounts/Account;
    :goto_1
    return v4

    .line 1716
    .restart local v1       #candidateAccount:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1721
    .end local v1           #candidateAccount:Landroid/accounts/Account;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static convertHtmlToPlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "htmlText"

    .prologue
    .line 1252
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getHtmlTree(Ljava/lang/String;)Lcom/google/android/common/html/parser/HtmlTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HtmlTree;->getPlainText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2285
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getGmailAccountCount(Landroid/content/Context;)I

    move-result v0

    .line 2286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p5, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 2287
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2288
    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 2293
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2294
    new-instance v3, Landroid/text/SpannableString;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2297
    invoke-virtual {v3}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2298
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    const v6, 0x7f110053

    invoke-direct {v5, p0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 2300
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2302
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2306
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    aput-object p2, v0, v3

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v3

    .line 2307
    invoke-static {p1, p3, p4, v3}, Lcom/google/android/gm/Utils;->createViewSendErrorIntent(Ljava/lang/String;JI)Landroid/content/Intent;

    move-result-object v4

    .line 2309
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2311
    const v5, 0x1080078

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 2313
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2314
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080078

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 2316
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 2317
    const/4 v1, -0x1

    const/4 v5, 0x0

    invoke-static {p0, v1, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2318
    invoke-static {p1, v3}, Lcom/google/android/gm/Utils;->updateSendErrorNotificationMap(Ljava/lang/String;I)V

    .line 2319
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2320
    return-void

    .line 2304
    :cond_0
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method private static createNotificationString(Lcom/google/android/gm/Utils$NotificationMap;)Ljava/lang/String;
    .locals 9
    .parameter "notifications"

    .prologue
    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v4, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 299
    .local v0, i:I
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 300
    .local v3, keysToRemove:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/Utils$NotificationKey;>;"
    invoke-virtual {p0}, Lcom/google/android/gm/Utils$NotificationMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/Utils$NotificationKey;

    .line 301
    .local v2, key:Lcom/google/android/gm/Utils$NotificationKey;
    invoke-virtual {p0, v2}, Lcom/google/android/gm/Utils$NotificationMap;->getUnread(Lcom/google/android/gm/Utils$NotificationKey;)Ljava/lang/Integer;

    move-result-object v5

    .line 302
    .local v5, unread:Ljava/lang/Integer;
    invoke-virtual {p0, v2}, Lcom/google/android/gm/Utils$NotificationMap;->getUnseen(Lcom/google/android/gm/Utils$NotificationKey;)Ljava/lang/Integer;

    move-result-object v6

    .line 303
    .local v6, unseen:Ljava/lang/Integer;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_1

    .line 304
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    :cond_1
    if-lez v0, :cond_2

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gm/Utils$NotificationKey;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v2           #key:Lcom/google/android/gm/Utils$NotificationKey;
    .end local v5           #unread:Ljava/lang/Integer;
    .end local v6           #unseen:Ljava/lang/Integer;
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/Utils$NotificationKey;

    .line 313
    .restart local v2       #key:Lcom/google/android/gm/Utils$NotificationKey;
    invoke-virtual {p0, v2}, Lcom/google/android/gm/Utils$NotificationMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 316
    .end local v2           #key:Lcom/google/android/gm/Utils$NotificationKey;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static createViewConversationIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;)Landroid/content/Intent;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1809
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1810
    const v0, 0x1000c000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1812
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1813
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1814
    const-string v1, "gmail-ls"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1816
    if-eqz p2, :cond_0

    .line 1818
    :goto_0
    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1819
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-wide v1, p3

    move-wide v3, p5

    move-object v5, p7

    .line 1821
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/Utils;->addConversationInformation(Landroid/net/Uri$Builder;JJLjava/util/Map;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1822
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "application/gmail-ls"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1824
    return-object v6

    .line 1816
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static createViewConversationIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Landroid/content/Intent;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1752
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1753
    const v0, 0x1000c000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1755
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1756
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1757
    const-string v1, "gmail-ls"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1759
    if-eqz p2, :cond_1

    .line 1761
    :goto_0
    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1762
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1764
    if-eqz p3, :cond_0

    .line 1765
    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getMaxServerMessageId()J

    move-result-wide v3

    invoke-virtual {p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getLabels()Ljava/util/Map;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/Utils;->addConversationInformation(Landroid/net/Uri$Builder;JJLjava/util/Map;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1768
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "application/gmail-ls"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1770
    return-object v6

    .line 1759
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static createViewSendErrorIntent(Ljava/lang/String;JI)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2265
    const v1, 0x1000c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2267
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 2268
    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2269
    const-string v2, "gmail-ls"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "label/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "^f"

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2272
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/gmail-ls"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2273
    return-object v0
.end method

.method public static ellipsize(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1529
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1530
    if-ge v1, p1, :cond_0

    .line 1544
    :goto_0
    return-object p0

    .line 1532
    :cond_0
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1534
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 1535
    const-string v0, "\u2026"

    .line 1536
    if-ltz v4, :cond_1

    .line 1538
    sub-int/2addr v1, v4

    const/4 v5, 0x5

    if-gt v1, v5, :cond_1

    .line 1539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1542
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v3, v1

    .line 1543
    if-gez v1, :cond_2

    move v1, v2

    .line 1544
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static enableLabelShortcutActivity(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 2040
    invoke-static {p0}, Lcom/google/android/gm/Utils;->haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 2041
    .local v0, overrideAppName:Z
    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->enableLabelShortcutActivity(Landroid/content/Context;Z)V

    .line 2042
    return-void
.end method

.method public static enableLabelShortcutActivity(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "useGoogleMail"

    .prologue
    const/4 v4, 0x1

    .line 2046
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2049
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_0

    sget-object v1, Lcom/google/android/gm/Utils;->GOOGLE_MAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 2051
    .local v1, enabledLabelShortcutComponent:Landroid/content/ComponentName;
    :goto_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/google/android/gm/Utils;->GMAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 2053
    .local v0, disabledLabelShortcutComponent:Landroid/content/ComponentName;
    :goto_1
    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 2055
    invoke-virtual {v2, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 2057
    return-void

    .line 2049
    .end local v0           #disabledLabelShortcutComponent:Landroid/content/ComponentName;
    .end local v1           #enabledLabelShortcutComponent:Landroid/content/ComponentName;
    :cond_0
    sget-object v1, Lcom/google/android/gm/Utils;->GMAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    goto :goto_0

    .line 2051
    .restart local v1       #enabledLabelShortcutComponent:Landroid/content/ComponentName;
    :cond_1
    sget-object v0, Lcom/google/android/gm/Utils;->GOOGLE_MAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public static enableShortcutIntentFilter(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2003
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v2

    .line 2004
    invoke-virtual {v2, p0}, Lcom/google/android/gm/persistence/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 2005
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v4, "com.google"

    invoke-virtual {v0, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 2010
    array-length v0, v4

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gm/Utils;->shortcutActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2011
    aget-object v0, v4, v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->startShortcutEnablerService(Landroid/content/Context;Ljava/lang/String;)V

    .line 2014
    :cond_0
    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    .line 2015
    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2022
    :cond_1
    :goto_1
    return-void

    .line 2014
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2019
    :cond_3
    array-length v0, v4

    if-lez v0, :cond_1

    .line 2020
    aget-object v0, v4, v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, p0, v0}, Lcom/google/android/gm/persistence/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static findContacts(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 767
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v9, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .local v10, whereBuilder:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v8, v1, [Ljava/lang/String;

    .line 771
    .local v8, questionMarks:[Ljava/lang/String;
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 772
    const-string v1, "?"

    invoke-static {v8, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 773
    const-string v1, "data1 IN ("

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 778
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "contact_id"

    aput-object v3, v2, v4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 782
    .local v6, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v7, contactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v6, :cond_0

    .line 793
    :goto_0
    return-object v7

    .line 787
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 788
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 791
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "formatString"
    .parameter "args"

    .prologue
    .line 1568
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1569
    .local v0, result:Ljava/lang/StringBuffer;
    invoke-static {v0, p0, p1}, Lcom/google/android/gm/Utils;->format(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1570
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs format(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter "result"
    .parameter "formatString"
    .parameter "args"

    .prologue
    .line 1574
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1578
    .local v4, length:I
    const/4 v2, 0x0

    .line 1580
    .local v2, current:I
    const/4 v0, 0x0

    .line 1581
    .local v0, argIndex:I
    move v3, v2

    .local v3, i:I
    move v1, v0

    .end local v0           #argIndex:I
    .local v1, argIndex:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1582
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x25

    if-eq v5, v6, :cond_0

    move v0, v1

    .line 1581
    .end local v1           #argIndex:I
    .restart local v0       #argIndex:I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0           #argIndex:I
    .restart local v1       #argIndex:I
    goto :goto_0

    .line 1583
    :cond_0
    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_4

    .line 1584
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x73

    if-eq v5, v6, :cond_1

    move v0, v1

    .end local v1           #argIndex:I
    .restart local v0       #argIndex:I
    goto :goto_1

    .line 1586
    .end local v0           #argIndex:I
    .restart local v1       #argIndex:I
    :cond_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1587
    add-int/lit8 v0, v1, 0x1

    .end local v1           #argIndex:I
    .restart local v0       #argIndex:I
    aget-object v5, p2, v1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1589
    add-int/lit8 v2, v3, 0x2

    .line 1591
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1595
    .end local v0           #argIndex:I
    .restart local v1       #argIndex:I
    :cond_2
    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1596
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .end local v1           #argIndex:I
    .restart local v0       #argIndex:I
    goto :goto_1
.end method

.method public static formatPlural(Landroid/content/Context;II)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "resource"
    .parameter "count"

    .prologue
    .line 1629
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1630
    .local v0, formatString:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getContactIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "context"
    .parameter "senderAddress"

    .prologue
    .line 797
    if-nez p1, :cond_1

    .line 798
    const/4 v12, 0x0

    .line 844
    :cond_0
    :goto_0
    return-object v12

    .line 800
    :cond_1
    const/4 v12, 0x0

    .line 801
    .local v12, icon:Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gm/Utils;->findContacts(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v7

    .line 804
    .local v7, contactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v7, :cond_4

    .line 806
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 807
    .local v17, res:Landroid/content/res/Resources;
    const v1, 0x1050006

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 809
    .local v15, idealIconHeight:I
    const v1, 0x1050005

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 811
    .local v16, idealIconWidth:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 812
    .local v13, id:J
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 814
    .local v8, contactUri:Landroid/net/Uri;
    const-string v1, "photo"

    invoke-static {v8, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 815
    .local v2, photoUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data15"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 818
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 820
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 821
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 822
    .local v10, data:[B
    if-eqz v10, :cond_5

    .line 823
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 824
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v15, :cond_3

    .line 826
    const/4 v1, 0x1

    move/from16 v0, v16

    invoke-static {v12, v0, v15, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 829
    :cond_3
    if-eqz v12, :cond_5

    .line 835
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 840
    .end local v2           #photoUri:Landroid/net/Uri;
    .end local v8           #contactUri:Landroid/net/Uri;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #data:[B
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #id:J
    .end local v15           #idealIconHeight:I
    .end local v16           #idealIconWidth:I
    .end local v17           #res:Landroid/content/res/Resources;
    :cond_4
    if-nez v12, :cond_0

    .line 842
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gm/Utils;->getDefaultNotificationIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    goto/16 :goto_0

    .line 835
    .restart local v2       #photoUri:Landroid/net/Uri;
    .restart local v8       #contactUri:Landroid/net/Uri;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v13       #id:J
    .restart local v15       #idealIconHeight:I
    .restart local v16       #idealIconWidth:I
    .restart local v17       #res:Landroid/content/res/Resources;
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static getDefaultNotificationIcon(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "multipleNew"

    .prologue
    .line 849
    if-eqz p1, :cond_1

    .line 850
    sget-object v1, Lcom/google/android/gm/Utils;->sMultipleNotifIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 851
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020044

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/Utils;->sMultipleNotifIcon:Landroid/graphics/Bitmap;

    .line 854
    :cond_0
    sget-object v0, Lcom/google/android/gm/Utils;->sMultipleNotifIcon:Landroid/graphics/Bitmap;

    .line 862
    .local v0, icon:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 856
    .end local v0           #icon:Landroid/graphics/Bitmap;
    :cond_1
    sget-object v1, Lcom/google/android/gm/Utils;->sDefaultSingleNotifIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 857
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020023

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/Utils;->sDefaultSingleNotifIcon:Landroid/graphics/Bitmap;

    .line 860
    :cond_2
    sget-object v0, Lcom/google/android/gm/Utils;->sDefaultSingleNotifIcon:Landroid/graphics/Bitmap;

    .restart local v0       #icon:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method protected static getDisplayableSender(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "sender"

    .prologue
    const/4 v3, 0x0

    .line 1358
    const/4 v0, 0x0

    .line 1359
    .local v0, tokenizedSender:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/gm/Utils;->tokenize(Ljava/lang/String;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 1360
    .local v1, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1362
    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1364
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1365
    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1370
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1371
    move-object v0, p0

    .line 1373
    :cond_1
    return-object v0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"

    .prologue
    .line 1553
    const/4 v0, 0x0

    .line 1554
    .local v0, extension:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1556
    .local v1, index:I
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    .line 1557
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1559
    :cond_0
    return-object v0
.end method

.method private static getGmailAccountCount(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 1413
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/google/android/gm/persistence/Persistence;->getCachedConfiguredGoogleAccounts(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 1416
    .local v0, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    return v1
.end method

.method private static getHtmlTree(Ljava/lang/String;)Lcom/google/android/common/html/parser/HtmlTree;
    .locals 4
    .parameter "htmlText"

    .prologue
    .line 1256
    new-instance v2, Lcom/google/android/common/html/parser/HtmlParser;

    invoke-direct {v2}, Lcom/google/android/common/html/parser/HtmlParser;-><init>()V

    .line 1257
    .local v2, parser:Lcom/google/android/common/html/parser/HtmlParser;
    invoke-virtual {v2, p0}, Lcom/google/android/common/html/parser/HtmlParser;->parse(Ljava/lang/String;)Lcom/google/android/common/html/parser/HtmlDocument;

    move-result-object v1

    .line 1258
    .local v1, doc:Lcom/google/android/common/html/parser/HtmlDocument;
    new-instance v0, Lcom/google/android/common/html/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lcom/google/android/common/html/parser/HtmlTreeBuilder;-><init>()V

    .line 1259
    .local v0, builder:Lcom/google/android/common/html/parser/HtmlTreeBuilder;
    invoke-virtual {v1, v0}, Lcom/google/android/common/html/parser/HtmlDocument;->accept(Lcom/google/android/common/html/parser/HtmlDocument$Visitor;)V

    .line 1261
    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HtmlTreeBuilder;->getTree()Lcom/google/android/common/html/parser/HtmlTree;

    move-result-object v3

    return-object v3
.end method

.method public static getLabelDisplayCount(Lcom/google/android/gm/provider/Label;)I
    .locals 2
    .parameter "label"

    .prologue
    .line 2587
    const/4 v0, 0x0

    .line 2588
    .local v0, count:I
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Label;->getDisplayNoConversationCount()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2589
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Label;->getDisplayTotalConversationCount()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2590
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Label;->getNumConversations()I

    move-result v0

    .line 2595
    :cond_0
    :goto_0
    return v0

    .line 2592
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Label;->getNumUnreadConversations()I

    move-result v0

    goto :goto_0
.end method

.method public static getLabelNotificationSummary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1639
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    .line 1640
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence;->shouldNotifyForLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1642
    if-nez v1, :cond_0

    .line 1643
    const/4 v0, 0x0

    .line 1678
    :goto_0
    return-object v0

    .line 1646
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence;->shouldVibrateForLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1648
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence;->shouldNotifyOnceForLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1651
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence;->getNotificationRingtoneUriForLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1655
    :goto_1
    if-eqz v0, :cond_5

    .line 1656
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 1657
    const v0, 0x7f0c00e3

    .line 1678
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1651
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1658
    :cond_2
    if-eqz v1, :cond_3

    .line 1659
    const v0, 0x7f0c00e4

    goto :goto_2

    .line 1660
    :cond_3
    if-eqz v2, :cond_4

    .line 1661
    const v0, 0x7f0c00e5

    goto :goto_2

    .line 1663
    :cond_4
    const v0, 0x7f0c00e6

    goto :goto_2

    .line 1666
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 1667
    const v0, 0x7f0c00e7

    goto :goto_2

    .line 1669
    :cond_6
    if-eqz v1, :cond_7

    .line 1670
    const v0, 0x7f0c00e8

    goto :goto_2

    .line 1671
    :cond_7
    if-eqz v2, :cond_8

    .line 1672
    const v0, 0x7f0c00e9

    goto :goto_2

    .line 1674
    :cond_8
    const v0, 0x7f0c00ea

    goto :goto_2
.end method

.method private static getMessageBodyWithoutElidedText(Lcom/google/android/gm/provider/Gmail$MessageCursor;)Ljava/lang/String;
    .locals 1
    .parameter "messageCursor"

    .prologue
    .line 1181
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/Utils;->getMessageBodyWithoutElidedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageBodyWithoutElidedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "html"

    .prologue
    .line 1186
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getHtmlTree(Ljava/lang/String;)Lcom/google/android/common/html/parser/HtmlTree;

    move-result-object v0

    .line 1187
    .local v0, htmlTree:Lcom/google/android/common/html/parser/HtmlTree;
    sget-object v1, Lcom/google/android/gm/Utils;->GMAIL_MESSAGE_CONVERTER_FACTORY:Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;

    invoke-virtual {v0, v1}, Lcom/google/android/common/html/parser/HtmlTree;->setPlainTextConverterFactory(Lcom/google/android/common/html/parser/HtmlTree$PlainTextConverterFactory;)V

    .line 1189
    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HtmlTree;->getPlainText()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getNotificationId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "account"
    .parameter "label"

    .prologue
    .line 535
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static declared-synchronized getNotificationMap(Landroid/content/Context;)Lcom/google/android/gm/Utils$NotificationMap;
    .locals 3
    .parameter "context"

    .prologue
    .line 326
    const-class v1, Lcom/google/android/gm/Utils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gm/Utils;->sActiveNotificationMap:Lcom/google/android/gm/Utils$NotificationMap;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lcom/google/android/gm/Utils$NotificationMap;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/gm/Utils$NotificationMap;-><init>(Lcom/google/android/gm/Utils$1;)V

    sput-object v0, Lcom/google/android/gm/Utils;->sActiveNotificationMap:Lcom/google/android/gm/Utils$NotificationMap;

    .line 330
    sget-object v0, Lcom/google/android/gm/Utils;->sActiveNotificationMap:Lcom/google/android/gm/Utils$NotificationMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/Utils$NotificationMap;->loadNotificationMap(Landroid/content/Context;)V

    .line 332
    :cond_0
    sget-object v0, Lcom/google/android/gm/Utils;->sActiveNotificationMap:Lcom/google/android/gm/Utils$NotificationMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static getSenderAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sender"

    .prologue
    .line 1381
    const/4 v0, 0x0

    .line 1382
    .local v0, tokenizedAddress:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/gm/Utils;->tokenize(Ljava/lang/String;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 1383
    .local v1, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1385
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1389
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1390
    move-object v0, p0

    .line 1392
    :cond_1
    return-object v0
.end method

.method private static getSingleMessageBigText(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$MessageCursor;)Ljava/lang/CharSequence;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1140
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const v0, 0x7f110052

    invoke-direct {v4, p0, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1143
    invoke-static {p2}, Lcom/google/android/gm/Utils;->getMessageBodyWithoutElidedText(Lcom/google/android/gm/provider/Gmail$MessageCursor;)Ljava/lang/String;

    move-result-object v1

    .line 1146
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\n\\s+"

    const-string v5, "\n"

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1149
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v1

    .line 1176
    :goto_1
    return-object v0

    .line 1146
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 1153
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1155
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v4, v3, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 1160
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0c0167

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1165
    const-string v1, "%2$s"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v6, "%1$s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-le v1, v6, :cond_3

    move v1, v2

    .line 1167
    :goto_2
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1169
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1171
    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1173
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v2

    .line 1176
    goto :goto_1

    :cond_3
    move v1, v3

    .line 1165
    goto :goto_2

    .line 1171
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method private static getSingleMessageInboxLine(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 1292
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1294
    :goto_0
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    const v1, 0x7f110052

    invoke-direct {v5, p0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1329
    :goto_1
    return-object p2

    :cond_0
    move-object p2, p3

    .line 1292
    goto :goto_0

    .line 1301
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1303
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1304
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v5, v4, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 1308
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1310
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    const v1, 0x7f110053

    invoke-direct {v6, p0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1313
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1315
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1317
    const-string v3, "%2$s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v8, "%1$s"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ge v3, v2, :cond_3

    move v3, v0

    .line 1319
    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v7, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    .line 1322
    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {v7, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1325
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1327
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v6, v0, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object p2, v1

    .line 1329
    goto :goto_1

    :cond_3
    move v3, v4

    .line 1317
    goto :goto_2

    .line 1319
    :cond_4
    invoke-virtual {v7, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    goto :goto_3

    .line 1322
    :cond_5
    invoke-virtual {v7, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_4
.end method

.method private static getSingleMessageLittleText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1271
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v1, 0x7f110052

    invoke-direct {v0, p0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1274
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1275
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1277
    return-object v1
.end method

.method private static getSingleMessageNotificationTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    :goto_0
    return-object p1

    .line 1106
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c014f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1111
    const-string v0, "%2$s"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v4, "%1$s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v0, v4, :cond_1

    move v0, v1

    .line 1113
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1116
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1119
    if-eqz v0, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1121
    :goto_2
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f110053

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1123
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1111
    goto :goto_1

    .line 1119
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_2
.end method

.method public static getStyledSenderSnippet(Landroid/content/Context;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;IZZZZZ)V
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1483
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1484
    sget-object v2, Lcom/google/android/gm/Utils;->sUnreadStyleSpan:Landroid/text/style/CharacterStyle;

    if-nez v2, :cond_0

    .line 1485
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v2, Lcom/google/android/gm/Utils;->sUnreadStyleSpan:Landroid/text/style/CharacterStyle;

    .line 1486
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v2, Lcom/google/android/gm/Utils;->sReadStyleSpan:Landroid/text/style/CharacterStyle;

    .line 1487
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, 0x7f0b0001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v2, Lcom/google/android/gm/Utils;->sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

    .line 1489
    const v2, 0x7f0c0084

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/Utils;->sMeString:Ljava/lang/CharSequence;

    .line 1490
    const v2, 0x7f100003

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    sput-object v2, Lcom/google/android/gm/Utils;->sDraftSingularString:Ljava/lang/CharSequence;

    .line 1491
    const v2, 0x7f100003

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/Utils;->sDraftPluralString:Ljava/lang/CharSequence;

    .line 1492
    new-instance v1, Landroid/text/SpannableString;

    const v2, 0x7f0c008a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1493
    sget-object v2, Lcom/google/android/gm/Utils;->sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

    invoke-static {v2}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1495
    sput-object v1, Lcom/google/android/gm/Utils;->sSendingString:Ljava/lang/CharSequence;

    .line 1496
    const v1, 0x7f0c008b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/Utils;->sSendFailedString:Ljava/lang/CharSequence;

    .line 1499
    :cond_0
    sget-object v5, Lcom/google/android/gm/Utils;->sUnreadStyleSpan:Landroid/text/style/CharacterStyle;

    sget-object v6, Lcom/google/android/gm/Utils;->sReadStyleSpan:Landroid/text/style/CharacterStyle;

    sget-object v7, Lcom/google/android/gm/Utils;->sDraftsStyleSpan:Landroid/text/style/CharacterStyle;

    sget-object v8, Lcom/google/android/gm/Utils;->sMeString:Ljava/lang/CharSequence;

    sget-object v9, Lcom/google/android/gm/Utils;->sDraftSingularString:Ljava/lang/CharSequence;

    sget-object v10, Lcom/google/android/gm/Utils;->sDraftPluralString:Ljava/lang/CharSequence;

    sget-object v11, Lcom/google/android/gm/Utils;->sSendingString:Ljava/lang/CharSequence;

    sget-object v12, Lcom/google/android/gm/Utils;->sSendFailedString:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    invoke-static/range {v1 .. v17}, Lcom/google/android/gm/provider/Gmail;->getSenderSnippet(Ljava/lang/String;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;ILandroid/text/style/CharacterStyle;Landroid/text/style/CharacterStyle;Landroid/text/style/CharacterStyle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZZZ)V

    .line 1509
    return-void
.end method

.method public static getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2565
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2566
    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2567
    if-le p1, v1, :cond_0

    .line 2568
    const v2, 0x7f0c0149

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2575
    :goto_0
    return-object v0

    .line 2570
    :cond_0
    if-gtz p1, :cond_1

    .line 2571
    const-string v0, ""

    goto :goto_0

    .line 2573
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2116
    sget-object v0, Lcom/google/android/gm/Utils;->sVersionCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2118
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/Utils;->sVersionCode:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2126
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gm/Utils;->sVersionCode:Ljava/lang/String;

    return-object v0

    .line 2121
    :catch_0
    move-exception v0

    .line 2122
    const-string v0, "Gmail"

    const-string v1, "Error finding package %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 2078
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2079
    .local v0, pm:Landroid/content/pm/PackageManager;
    sget-object v2, Lcom/google/android/gm/Utils;->GOOGLE_MAIL_CONVERSATION_LIST_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isConversationBeingRemoved(Lcom/google/android/gm/LabelOperations;Ljava/lang/String;)Z
    .locals 5
    .parameter "labelOperations"
    .parameter "displayedLabel"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1613
    invoke-virtual {p0}, Lcom/google/android/gm/LabelOperations;->hasApplyTrash()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/LabelOperations;->hasApplySpam()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/LabelOperations;->hasApplyMute()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    move v0, v3

    .line 1617
    .local v0, hasAddedRemovableLabel:Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelOperations;->hasRemoveOperation(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p1}, Lcom/google/android/gm/MenuHandler;->getYButtonLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/gm/LabelOperations;->hasRemoveOperation(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_1
    move v1, v3

    .line 1620
    .local v1, hasRemovedCurrentLabel:Z
    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2

    .end local v0           #hasAddedRemovableLabel:Z
    .end local v1           #hasRemovedCurrentLabel:Z
    :cond_4
    move v0, v2

    .line 1613
    goto :goto_0

    .restart local v0       #hasAddedRemovableLabel:Z
    :cond_5
    move v1, v2

    .line 1617
    goto :goto_1
.end method

.method public static isConversationBeingRemoved(Lcom/google/android/gm/provider/Label;ZLjava/lang/String;)Z
    .locals 2
    .parameter "label"
    .parameter "add"
    .parameter "displayedLabel"

    .prologue
    .line 1606
    new-instance v0, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/LabelOperations;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .line 1607
    .local v0, operation:Lcom/google/android/gm/LabelOperations;
    invoke-static {v0, p2}, Lcom/google/android/gm/Utils;->isConversationBeingRemoved(Lcom/google/android/gm/LabelOperations;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isConversationListCollapsible(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 2144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConversationListUncollapsible(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 2151
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGoogleFeedbackInstalled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1869
    sget-object v0, Lcom/google/android/gm/Utils;->BUG_REPORT_INTENT:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->isSupportingServiceInstalled(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static isLandscape(Landroid/content/res/Configuration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 2169
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportingServiceInstalled(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2627
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2631
    const/high16 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2633
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    .line 2628
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isValidEmailAddress(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2370
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 2371
    .local v1, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 2372
    new-instance v0, Lcom/google/android/gm/Utils$AddrSpec;

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/gm/Utils$AddrSpec;-><init>(Ljava/lang/String;)V

    .line 2373
    .local v0, addr:Lcom/google/android/gm/Utils$AddrSpec;
    array-length v4, v1

    if-ne v4, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gm/Utils$AddrSpec;->validateLocalPart()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gm/Utils$AddrSpec;->validateDomain()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2376
    .end local v0           #addr:Lcom/google/android/gm/Utils$AddrSpec;
    :goto_0
    return v2

    .restart local v0       #addr:Lcom/google/android/gm/Utils$AddrSpec;
    :cond_0
    move v2, v3

    .line 2373
    goto :goto_0

    .end local v0           #addr:Lcom/google/android/gm/Utils$AddrSpec;
    :cond_1
    move v2, v3

    .line 2376
    goto :goto_0
.end method

.method public static isValidGoogleAccount(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1733
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1736
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/google/android/gm/Utils;->containsAccount(Landroid/accounts/Account;[Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method public static joinStrings(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 6
    .parameter
    .parameter "separator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, strings:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v4, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 283
    .local v0, i:I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 284
    .local v3, l:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    if-lez v0, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 288
    .end local v3           #l:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public static launchGoogleFeedback(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1874
    new-instance v0, Lcom/google/android/gm/Utils$2;

    invoke-direct {v0}, Lcom/google/android/gm/Utils$2;-><init>()V

    .line 1890
    .local v0, conn:Landroid/content/ServiceConnection;
    sget-object v1, Lcom/google/android/gm/Utils;->BUG_REPORT_INTENT:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1891
    return-void
.end method

.method public static mailSearchQueryForIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 196
    const-string v1, "query"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, query:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static makeQueryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "query"
    .parameter "label"

    .prologue
    .line 2088
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2094
    .end local p0
    :goto_0
    return-object p0

    .line 2091
    .restart local p0
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2094
    :cond_1
    const-string p0, ""

    goto :goto_0
.end method

.method public static markConversationsVisible(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V
    .locals 4
    .parameter "cursor"
    .parameter "hasFocus"

    .prologue
    .line 2189
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v0

    .line 2190
    .local v0, status:Lcom/google/android/gm/provider/Gmail$CursorStatus;
    sget-object v2, Lcom/google/android/gm/provider/Gmail$CursorStatus;->LOADED:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/google/android/gm/provider/Gmail$CursorStatus;->COMPLETE:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-ne v0, v2, :cond_1

    .line 2191
    :cond_0
    new-instance v1, Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;-><init>(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)V

    .line 2193
    .local v1, task:Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2195
    .end local v1           #task:Lcom/google/android/gm/Utils$MarkConversationsVisibleTask;
    :cond_1
    return-void
.end method

.method public static measureViewHeight(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2610
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2611
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 2614
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2615
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 2616
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private static openUrl(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1935
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1936
    :cond_0
    const-string v0, "Gmail"

    const-string v1, "invalid url in Utils.openUrl(): %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1942
    :goto_0
    return-void

    .line 1939
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1940
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1941
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static replaceLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1920
    const-string v0, "%locale%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1923
    const-string v1, "%locale%"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1925
    :cond_0
    return-object p0
.end method

.method public static restrictWebView(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "webView"

    .prologue
    const/4 v2, 0x0

    .line 1686
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1687
    .local v0, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1688
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 1689
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1690
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1691
    return-void
.end method

.method private static seekToLatestUnreadConversation(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z
    .locals 2
    .parameter "cusor"

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->position()I

    move-result v0

    .line 1341
    .local v0, initialPosition:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getHasUnreadMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1342
    const/4 v1, 0x1

    .line 1348
    :goto_0
    return v1

    .line 1344
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->next()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1347
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 1348
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setNewEmailIndicator(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 562
    const-string v0, "count"

    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 563
    .local v8, unreadCount:I
    const-string v0, "unseenCount"

    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 565
    .local v9, unseenCount:I
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, account:Ljava/lang/String;
    const-string v0, "tagLabel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 567
    .local v4, tagLabel:Ljava/lang/String;
    const/4 v5, 0x0

    .line 570
    .local v5, ignoreUnobtrusiveSetting:Z
    const/4 v3, 0x0

    .line 571
    .local v3, getAttention:Z
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getNotificationMap(Landroid/content/Context;)Lcom/google/android/gm/Utils$NotificationMap;

    move-result-object v7

    .line 572
    .local v7, notificationMap:Lcom/google/android/gm/Utils$NotificationMap;
    new-instance v6, Lcom/google/android/gm/Utils$NotificationKey;

    invoke-direct {v6, v2, v4}, Lcom/google/android/gm/Utils$NotificationKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .local v6, key:Lcom/google/android/gm/Utils$NotificationKey;
    if-nez v8, :cond_1

    .line 574
    invoke-virtual {v7, v6}, Lcom/google/android/gm/Utils$NotificationMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    :goto_0
    invoke-virtual {v7, p0}, Lcom/google/android/gm/Utils$NotificationMap;->saveNotificationMap(Landroid/content/Context;)V

    .line 588
    const-string v0, "Gmail"

    invoke-static {v0, v13}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string v0, "Gmail"

    const-string v1, "New email: %s mapSize: %d getAttention: %b"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/android/gm/Utils;->createNotificationString(Lcom/google/android/gm/Utils$NotificationMap;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    const/4 v11, 0x1

    invoke-virtual {v7}, Lcom/google/android/gm/Utils$NotificationMap;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v0, v1, v10}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    move-object v0, p0

    move-object v1, p1

    .line 594
    invoke-static/range {v0 .. v6}, Lcom/google/android/gm/Utils;->validateNotifications(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/android/gm/Utils$NotificationKey;)V

    .line 596
    return-void

    .line 576
    :cond_1
    invoke-virtual {v7, v6}, Lcom/google/android/gm/Utils$NotificationMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 580
    const/4 v5, 0x1

    .line 582
    :cond_2
    invoke-virtual {v7, v6, v8, v9}, Lcom/google/android/gm/Utils$NotificationMap;->put(Lcom/google/android/gm/Utils$NotificationKey;II)V

    .line 583
    const-string v0, "getAttention"

    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0
.end method

.method public static shortcutActivityEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 2064
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2067
    .local v0, pm:Landroid/content/pm/PackageManager;
    sget-object v2, Lcom/google/android/gm/Utils;->GOOGLE_MAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/google/android/gm/Utils;->GMAIL_LABEL_SHORTCUT_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static shouldShowTwoPaneSearchResult(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 2137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showAbout(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1847
    const-wide/32 v0, 0x7f0f00e5

    invoke-static {p0, v0, v1}, Lcom/google/android/gm/Utils;->showPreferences(Landroid/content/Context;J)V

    .line 1848
    return-void
.end method

.method public static showFeedbackSurvey(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 1856
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_feedback_url"

    invoke-static {v0, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1858
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1859
    const-string v0, "http://support.google.com/mail?p=android_survey&hl=%locale%"

    .line 1861
    :cond_0
    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->addGmailParamsToUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1862
    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->openUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1863
    return-void
.end method

.method public static showHelp(Landroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)V
    .locals 1
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 1971
    invoke-interface {p1}, Lcom/google/android/gm/MenuHandler$HelpCallback;->getHelpContext()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->showHelp(Landroid/content/Context;Ljava/lang/String;)V

    .line 1972
    return-void
.end method

.method public static showHelp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1952
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_context_sensitive_help_url"

    const-string v2, "http://support.google.com/mobile/?hl=%locale%"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1955
    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->addGmailParamsToUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1956
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1958
    if-eqz p1, :cond_0

    .line 1959
    const-string v1, "p"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1962
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gm/Utils;->openUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1963
    return-void
.end method

.method public static showOpenSourceLicenses(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 1995
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/LicenseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1996
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1997
    return-void
.end method

.method private static showPreferences(Landroid/content/Context;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1985
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/preference/GmailPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1986
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 1987
    const-string v1, "initial_fragment_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1991
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1992
    return-void
.end method

.method public static showSettings(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1981
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/gm/Utils;->showPreferences(Landroid/content/Context;J)V

    .line 1982
    return-void
.end method

.method private static startShortcutEnablerService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2030
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2031
    const-class v1, Lcom/google/android/gm/ShortcutEnablerService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2032
    const-string v1, "account-name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2033
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2034
    return-void
.end method

.method public static startSync(Ljava/lang/String;)V
    .locals 3
    .parameter "accountName"

    .prologue
    const/4 v2, 0x0

    .line 1426
    sget-object v0, Lcom/google/android/gm/Utils;->sLastScheduleSyncTask:Lcom/google/android/gm/Utils$ScheduleSyncTask;

    if-eqz v0, :cond_0

    .line 1427
    sget-object v0, Lcom/google/android/gm/Utils;->sLastScheduleSyncTask:Lcom/google/android/gm/Utils$ScheduleSyncTask;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/Utils$ScheduleSyncTask;->cancel(Z)Z

    .line 1430
    :cond_0
    new-instance v0, Lcom/google/android/gm/Utils$ScheduleSyncTask;

    invoke-direct {v0, p0}, Lcom/google/android/gm/Utils$ScheduleSyncTask;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/Utils;->sLastScheduleSyncTask:Lcom/google/android/gm/Utils$ScheduleSyncTask;

    .line 1431
    sget-object v0, Lcom/google/android/gm/Utils;->sLastScheduleSyncTask:Lcom/google/android/gm/Utils$ScheduleSyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/Utils$ScheduleSyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1432
    return-void
.end method

.method private static tokenize(Ljava/lang/String;)[Landroid/text/util/Rfc822Token;
    .locals 1
    .parameter "address"

    .prologue
    .line 1396
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    return-object v0
.end method

.method private static updateSendErrorNotificationMap(Ljava/lang/String;I)V
    .locals 2
    .parameter "account"
    .parameter "notificationId"

    .prologue
    .line 2323
    sget-object v1, Lcom/google/android/gm/Utils;->sActiveSendErrorNotificationsMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2324
    .local v0, activeNotifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 2325
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #activeNotifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2327
    .restart local v0       #activeNotifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2328
    sget-object v1, Lcom/google/android/gm/Utils;->sActiveSendErrorNotificationsMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2329
    return-void
.end method

.method public static useTabletUI(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 2133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static validateAccountNotifications(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "account"

    .prologue
    .line 482
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v2

    .line 483
    .local v2, gm:Lcom/google/android/gm/provider/Gmail;
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v9

    .line 485
    .local v9, persistence:Lcom/google/android/gm/persistence/Persistence;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 488
    .local v8, notificationsToCancel:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/Utils$NotificationKey;>;"
    invoke-static {p0}, Lcom/google/android/gm/Utils;->getNotificationMap(Landroid/content/Context;)Lcom/google/android/gm/Utils$NotificationMap;

    move-result-object v7

    .line 489
    .local v7, notificationMap:Lcom/google/android/gm/Utils$NotificationMap;
    invoke-virtual {v7}, Lcom/google/android/gm/Utils$NotificationMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 490
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/gm/Utils$NotificationKey;>;"
    invoke-virtual {v9, p0, p1}, Lcom/google/android/gm/persistence/Persistence;->getEnableNotifications(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 491
    .local v1, enabled:Z
    if-nez v1, :cond_1

    .line 493
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gm/Utils$NotificationKey;

    .line 494
    .local v6, notification:Lcom/google/android/gm/Utils$NotificationKey;
    iget-object v12, v6, Lcom/google/android/gm/Utils$NotificationKey;->account:Ljava/lang/String;

    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 495
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 499
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #notification:Lcom/google/android/gm/Utils$NotificationKey;
    :cond_1
    invoke-virtual {v2, p0, p1}, Lcom/google/android/gm/provider/Gmail;->getSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v10

    .line 500
    .local v10, settings:Lcom/google/android/gm/provider/Gmail$Settings;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v11

    .line 501
    .local v11, syncedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v10}, Lcom/google/android/gm/provider/Gmail$Settings;->getLabelsPartial()Ljava/util/List;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 502
    invoke-virtual {v10}, Lcom/google/android/gm/provider/Gmail$Settings;->getLabelsIncluded()Ljava/util/List;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 506
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gm/Utils$NotificationKey;

    .line 507
    .restart local v6       #notification:Lcom/google/android/gm/Utils$NotificationKey;
    iget-object v12, v6, Lcom/google/android/gm/Utils$NotificationKey;->account:Ljava/lang/String;

    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 510
    iget-object v12, v6, Lcom/google/android/gm/Utils$NotificationKey;->label:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gm/provider/Gmail;->getCanonicalLabelForTagLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, canonicalName:Ljava/lang/String;
    iget-object v12, v6, Lcom/google/android/gm/Utils$NotificationKey;->account:Ljava/lang/String;

    invoke-virtual {v9, p0, v12, v0}, Lcom/google/android/gm/persistence/Persistence;->shouldNotifyForLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 514
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 521
    .end local v0           #canonicalName:Ljava/lang/String;
    .end local v6           #notification:Lcom/google/android/gm/Utils$NotificationKey;
    .end local v10           #settings:Lcom/google/android/gm/provider/Gmail$Settings;
    .end local v11           #syncedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 522
    const-string v12, "notification"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 524
    .local v5, nm:Landroid/app/NotificationManager;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gm/Utils$NotificationKey;

    .line 525
    .restart local v6       #notification:Lcom/google/android/gm/Utils$NotificationKey;
    iget-object v12, v6, Lcom/google/android/gm/Utils$NotificationKey;->label:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gm/provider/Gmail;->getCanonicalLabelForTagLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .restart local v0       #canonicalName:Ljava/lang/String;
    iget-object v12, v6, Lcom/google/android/gm/Utils$NotificationKey;->account:Ljava/lang/String;

    invoke-static {v12, v0}, Lcom/google/android/gm/Utils;->getNotificationId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/app/NotificationManager;->cancel(I)V

    .line 528
    invoke-virtual {v7, v6}, Lcom/google/android/gm/Utils$NotificationMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 530
    .end local v0           #canonicalName:Ljava/lang/String;
    .end local v6           #notification:Lcom/google/android/gm/Utils$NotificationKey;
    :cond_4
    invoke-virtual {v7, p0}, Lcom/google/android/gm/Utils$NotificationMap;->saveNotificationMap(Landroid/content/Context;)V

    .line 532
    .end local v5           #nm:Landroid/app/NotificationManager;
    :cond_5
    return-void
.end method

.method private static validateNotifications(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;ZLcom/google/android/gm/Utils$NotificationKey;)V
    .locals 34
    .parameter "context"
    .parameter "intent"
    .parameter "notificationAccount"
    .parameter "getAttention"
    .parameter "tagLabel"
    .parameter "ignoreUnobtrusiveSetting"
    .parameter "key"

    .prologue
    .line 605
    const-string v3, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    .line 608
    .local v20, nm:Landroid/app/NotificationManager;
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v24

    .line 610
    .local v24, persistence:Lcom/google/android/gm/persistence/Persistence;
    invoke-static/range {p0 .. p0}, Lcom/google/android/gm/Utils;->getNotificationMap(Landroid/content/Context;)Lcom/google/android/gm/Utils$NotificationMap;

    move-result-object v21

    .line 611
    .local v21, notificationMap:Lcom/google/android/gm/Utils$NotificationMap;
    const-string v3, "Gmail"

    const/4 v7, 0x2

    invoke-static {v3, v7}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 612
    const-string v3, "Gmail"

    const-string v7, "Validating Notification: %s mapSize: %d tagLabel: %s getAttention: %b"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v32, 0x0

    invoke-static/range {v21 .. v21}, Lcom/google/android/gm/Utils;->createNotificationString(Lcom/google/android/gm/Utils$NotificationMap;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v11, v32

    const/16 v32, 0x1

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gm/Utils$NotificationMap;->size()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v11, v32

    const/16 v32, 0x2

    aput-object p4, v11, v32

    const/16 v32, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    aput-object v33, v11, v32

    invoke-static {v3, v7, v11}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 617
    :cond_0
    move-object/from16 v0, v21

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Utils$NotificationMap;->getUnread(Lcom/google/android/gm/Utils$NotificationKey;)Ljava/lang/Integer;

    move-result-object v27

    .line 618
    .local v27, unread:Ljava/lang/Integer;
    if-eqz v27, :cond_5

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 619
    .local v8, unreadCount:I
    :goto_0
    move-object/from16 v0, v21

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Utils$NotificationMap;->getUnseen(Lcom/google/android/gm/Utils$NotificationKey;)Ljava/lang/Integer;

    move-result-object v28

    .line 620
    .local v28, unseen:Ljava/lang/Integer;
    if-eqz v28, :cond_6

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 623
    .local v9, unseenCount:I
    :goto_1
    const/4 v5, 0x0

    .line 625
    .local v5, conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    const-string v3, "notificationLabel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 626
    .local v10, label:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 627
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 630
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v19

    .line 631
    .local v19, gmail:Lcom/google/android/gm/provider/Gmail;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "label:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Lcom/google/android/gm/provider/Gmail;->getCanonicalLabelForNotification(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;->NO:Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v7}, Lcom/google/android/gm/provider/Gmail;->getDetachedConversationCursorForQuery(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$BecomeActiveNetworkCursor;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v5

    .line 635
    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v16

    .line 639
    .local v16, cursorUnseenCount:I
    if-eqz v9, :cond_2

    move/from16 v0, v16

    if-eq v9, v0, :cond_2

    .line 640
    const-string v3, "Gmail"

    const-string v7, "Unseen count doesn\'t match cursor count.  unseen: %d cursor count: %d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v32, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v11, v32

    const/16 v32, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v11, v32

    invoke-static {v3, v7, v11}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 643
    move/from16 v9, v16

    .line 648
    :cond_2
    if-le v9, v8, :cond_3

    .line 649
    move v9, v8

    .line 652
    :cond_3
    if-nez v9, :cond_7

    .line 653
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/google/android/gm/Utils;->getNotificationId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    if-eqz v5, :cond_4

    .line 761
    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->close()V

    .line 764
    :cond_4
    :goto_2
    return-void

    .line 618
    .end local v5           #conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .end local v8           #unreadCount:I
    .end local v9           #unseenCount:I
    .end local v10           #label:Ljava/lang/String;
    .end local v16           #cursorUnseenCount:I
    .end local v19           #gmail:Lcom/google/android/gm/provider/Gmail;
    .end local v28           #unseen:Ljava/lang/Integer;
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 620
    .restart local v8       #unreadCount:I
    .restart local v28       #unseen:Ljava/lang/Integer;
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 659
    .restart local v5       #conversationCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .restart local v9       #unseenCount:I
    .restart local v10       #label:Ljava/lang/String;
    .restart local v16       #cursorUnseenCount:I
    .restart local v19       #gmail:Lcom/google/android/gm/provider/Gmail;
    :cond_7
    const/high16 v3, 0x400

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 664
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 665
    .local v4, notification:Landroid/app/Notification$Builder;
    const v3, 0x7f02006e

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 666
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 668
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1, v10}, Lcom/google/android/gm/persistence/Persistence;->getNotificationLabelInformation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v13

    .line 670
    .local v13, attributes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/google/android/gm/persistence/Persistence;->extractVibrateSetting(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v29

    .line 671
    .local v29, vibrate:Ljava/lang/String;
    sget v3, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    invoke-static {v13, v3}, Lcom/google/android/gm/persistence/Persistence;->extract(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v26

    .line 673
    .local v26, ringtoneUri:Ljava/lang/String;
    sget v3, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ONCE:I

    invoke-static {v13, v3}, Lcom/google/android/gm/persistence/Persistence;->extract(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v22

    .line 679
    .local v22, notifyOnce:Z
    new-instance v15, Landroid/content/Intent;

    const-string v3, "com.google.android.gm.intent.CLEAR_NEW_MAIL_NOTIFICATIONS"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .local v15, cancelNotificationIntent:Landroid/content/Intent;
    const-string v3, "account"

    move-object/from16 v0, p2

    invoke-virtual {v15, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const-string v3, "label"

    invoke-virtual {v15, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v15, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 689
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 691
    if-nez p5, :cond_8

    if-eqz p2, :cond_8

    if-eqz v22, :cond_8

    .line 696
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 699
    :cond_8
    const/16 v18, 0x0

    .line 700
    .local v18, eventInfoConfigured:Z
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcom/google/android/gm/Utils;->getNotificationId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 701
    .local v12, notificationId:I
    if-lez v8, :cond_a

    .line 702
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v10, v3}, Lcom/google/android/gm/Utils;->createViewConversationIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Landroid/content/Intent;

    move-result-object p1

    .line 705
    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->next()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 708
    const/4 v3, 0x1

    if-ne v9, v3, :cond_9

    .line 709
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v10, v5}, Lcom/google/android/gm/Utils;->createViewConversationIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Landroid/content/Intent;

    move-result-object p1

    .line 712
    :cond_9
    const-string v3, "label"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 713
    const/4 v3, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v3, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .local v6, clickIntent:Landroid/app/PendingIntent;
    move-object/from16 v3, p0

    move-object/from16 v7, p2

    move-object/from16 v11, p1

    .line 714
    invoke-static/range {v3 .. v12}, Lcom/google/android/gm/Utils;->configureLatestEventInfoFromConversation(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/google/android/gm/provider/Gmail$ConversationCursor;Landroid/app/PendingIntent;Ljava/lang/String;IILjava/lang/String;Landroid/content/Intent;I)V

    .line 717
    const/16 v18, 0x1

    .line 721
    .end local v6           #clickIntent:Landroid/app/PendingIntent;
    :cond_a
    if-eqz p2, :cond_b

    .line 722
    const-string v3, "Gmail"

    const-string v7, "Account: %s vibrateWhen: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v32, 0x0

    aput-object p2, v11, v32

    const/16 v32, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getVibrateWhen(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v11, v32

    invoke-static {v3, v7, v11}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 726
    :cond_b
    const/16 v17, 0x0

    .line 728
    .local v17, defaults:I
    if-eqz p3, :cond_f

    if-eqz p2, :cond_f

    .line 729
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getEnableNotifications(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 730
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 731
    .local v25, resources:Landroid/content/res/Resources;
    const/16 v30, 0x0

    .line 732
    .local v30, vibrateAlways:Z
    const/16 v31, 0x0

    .line 733
    .local v31, vibrateSilent:Z
    if-eqz v29, :cond_c

    .line 734
    const v3, 0x7f0c00cf

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    .line 736
    const v3, 0x7f0c00d1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    .line 739
    :cond_c
    const-string v3, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/AudioManager;

    .line 741
    .local v14, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v14}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_11

    const/16 v23, 0x1

    .line 744
    .local v23, nowSilent:Z
    :goto_3
    if-nez v30, :cond_d

    if-eqz v31, :cond_e

    if-eqz v23, :cond_e

    .line 745
    :cond_d
    or-int/lit8 v17, v17, 0x2

    .line 747
    :cond_e
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 749
    const-string v3, "Gmail"

    const-string v7, "New email in %s vibrateWhen: %s, playing notification: %s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v32, 0x0

    aput-object p2, v11, v32

    const/16 v32, 0x1

    aput-object v29, v11, v32

    const/16 v32, 0x2

    aput-object v26, v11, v32

    invoke-static {v3, v7, v11}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 754
    .end local v14           #audioManager:Landroid/media/AudioManager;
    .end local v23           #nowSilent:Z
    .end local v25           #resources:Landroid/content/res/Resources;
    .end local v30           #vibrateAlways:Z
    .end local v31           #vibrateSilent:Z
    :cond_f
    if-eqz v18, :cond_10

    .line 755
    or-int/lit8 v17, v17, 0x4

    .line 756
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 757
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    :cond_10
    if-eqz v5, :cond_4

    .line 761
    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->close()V

    goto/16 :goto_2

    .line 741
    .restart local v14       #audioManager:Landroid/media/AudioManager;
    .restart local v25       #resources:Landroid/content/res/Resources;
    .restart local v30       #vibrateAlways:Z
    .restart local v31       #vibrateSilent:Z
    :cond_11
    const/16 v23, 0x0

    goto :goto_3

    .line 747
    .restart local v23       #nowSilent:Z
    :cond_12
    :try_start_2
    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_4

    .line 760
    .end local v4           #notification:Landroid/app/Notification$Builder;
    .end local v12           #notificationId:I
    .end local v13           #attributes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14           #audioManager:Landroid/media/AudioManager;
    .end local v15           #cancelNotificationIntent:Landroid/content/Intent;
    .end local v16           #cursorUnseenCount:I
    .end local v17           #defaults:I
    .end local v18           #eventInfoConfigured:Z
    .end local v19           #gmail:Lcom/google/android/gm/provider/Gmail;
    .end local v22           #notifyOnce:Z
    .end local v23           #nowSilent:Z
    .end local v25           #resources:Landroid/content/res/Resources;
    .end local v26           #ringtoneUri:Ljava/lang/String;
    .end local v29           #vibrate:Ljava/lang/String;
    .end local v30           #vibrateAlways:Z
    .end local v31           #vibrateSilent:Z
    :catchall_0
    move-exception v3

    if-eqz v5, :cond_13

    .line 761
    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->close()V

    :cond_13
    throw v3
.end method

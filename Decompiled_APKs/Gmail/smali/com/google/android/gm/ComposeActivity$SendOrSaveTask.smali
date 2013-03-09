.class Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SendOrSaveTask"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

.field final mSendOrSaveMessage:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;)V
    .locals 0
    .parameter "context"
    .parameter "message"
    .parameter "callback"

    .prologue
    .line 1705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1706
    iput-object p1, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    .line 1707
    iput-object p3, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    .line 1708
    iput-object p2, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mSendOrSaveMessage:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    .line 1709
    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static appendAddresses(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "addresses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1796
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1797
    sget-object v4, Lcom/google/android/gm/provider/Gmail;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1798
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->getEmailFromAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1801
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method

.method static getRecipientsList(Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;)Ljava/util/ArrayList;
    .locals 6
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1782
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    const-string v5, "toAddresses"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1783
    .local v3, toAddresses:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    const-string v5, "ccAddresses"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1784
    .local v2, ccAddresses:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mValues:Landroid/content/ContentValues;

    const-string v5, "bccAddresses"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1786
    .local v1, bccAddresses:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1788
    .local v0, allRecipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0, v3}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->appendAddresses(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1789
    invoke-static {v0, v2}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->appendAddresses(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1790
    invoke-static {v0, v1}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->appendAddresses(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1792
    return-object v0
.end method


# virtual methods
.method incrementRecipientsTimesContacted(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1804
    .local p1, recipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/common/contacts/DataUsageStatUpdater;

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/contacts/DataUsageStatUpdater;-><init>(Landroid/content/Context;)V

    .line 1805
    .local v0, statsUpdater:Lcom/android/common/contacts/DataUsageStatUpdater;
    invoke-virtual {v0, p1}, Lcom/android/common/contacts/DataUsageStatUpdater;->updateWithAddress(Ljava/util/Collection;)Z

    .line 1806
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    .line 1713
    iget-object v6, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mSendOrSaveMessage:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    .line 1715
    .local v6, message:Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;
    iget-object v10, v6, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mSelectedAccount:Ljava/lang/String;

    .line 1716
    .local v10, selectedAccount:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    invoke-interface {v0}, Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;->getMessageId()J

    move-result-wide v8

    .line 1720
    .local v8, messageId:J
    const/4 v7, 0x0

    .line 1721
    .local v7, engine:Lcom/google/android/gm/provider/MailEngine;
    iget-object v0, v6, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mAccount:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1722
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v6, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mAccount:Ljava/lang/String;

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gm/provider/Gmail$MessageModification;->expungeMessage(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1727
    const-wide/16 v8, 0x0

    .line 1733
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineSync(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v7

    .line 1734
    if-nez v7, :cond_1

    .line 1736
    const-string v0, "Gmail"

    const-string v1, "MailEngine couldn\'t be instantiated"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v11}, Lcom/google/android/gm/provider/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1740
    iget-object v10, v6, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->mAccount:Ljava/lang/String;

    .line 1744
    :cond_1
    move-object v5, v10

    .line 1745
    .local v5, account:Ljava/lang/String;
    if-eqz v7, :cond_2

    move-object v2, v7

    .line 1748
    .local v2, mailEngine:Lcom/google/android/gm/provider/MailEngine;
    :goto_0
    move-wide v3, v8

    .line 1751
    .local v3, messageIdToSave:J
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask$1;-><init>(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;Lcom/google/android/gm/provider/MailEngine;JLjava/lang/String;Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;)V

    invoke-virtual {v2, v11, v0}, Lcom/google/android/gm/provider/MailEngine;->registerInitializationListener(Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V

    .line 1779
    return-void

    .line 1745
    .end local v2           #mailEngine:Lcom/google/android/gm/provider/MailEngine;
    .end local v3           #messageIdToSave:J
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineSync(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v2

    goto :goto_0
.end method

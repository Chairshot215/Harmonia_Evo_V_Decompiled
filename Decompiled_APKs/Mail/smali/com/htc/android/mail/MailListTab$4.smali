.class Lcom/htc/android/mail/MailListTab$4;
.super Lcom/htc/android/mail/MailList$BasicTabInfo;
.source "MailListTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailListTab;->initTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailListTab;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailListTab;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$4;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct {p0}, Lcom/htc/android/mail/MailList$BasicTabInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnreadNumber(Landroid/content/ContentResolver;)I
    .locals 12
    .parameter "cr"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 444
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_mailboxId = %d AND _fromEmail in (SELECT people_db.data.data FROM people_db.data)"

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/android/mail/MailListTab$4;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v8}, Lcom/htc/android/mail/MailListTab;->access$400(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/Mailbox;

    move-result-object v8

    iget-wide v8, v8, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v10

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 445
    .local v7, subWhere:Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%s) AND (_read = \'0\')"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v7, v5, v10

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, where:Ljava/lang/String;
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "count(_id)"

    aput-object v0, v2, v10

    .line 447
    .local v2, projections:[Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 448
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 449
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUnReadNumber:I

    .line 452
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_1
    iget v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUnReadNumber:I

    return v0
.end method

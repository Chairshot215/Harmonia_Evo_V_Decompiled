.class Lcom/htc/android/mail/MailListTab$2;
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
    .line 396
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$2;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct {p0}, Lcom/htc/android/mail/MailList$BasicTabInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnreadNumber(Landroid/content/ContentResolver;)I
    .locals 8
    .parameter "cr"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 399
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(_id)"

    aput-object v0, v2, v7

    .line 400
    .local v2, projections:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$2;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mBaseUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$200(Lcom/htc/android/mail/MailListTab;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "_read = 0"

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 401
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 402
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUnReadNumber:I

    .line 405
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_1
    iget v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUnReadNumber:I

    return v0
.end method

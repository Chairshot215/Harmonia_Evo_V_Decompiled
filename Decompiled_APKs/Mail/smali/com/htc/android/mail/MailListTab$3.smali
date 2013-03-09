.class Lcom/htc/android/mail/MailListTab$3;
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
    .line 428
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$3;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct {p0}, Lcom/htc/android/mail/MailList$BasicTabInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpecificSqlWhere()Ljava/lang/String;
    .locals 5

    .prologue
    .line 431
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_fromEmail in (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/android/mail/MailListTab$3;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;
    invoke-static {v4}, Lcom/htc/android/mail/MailListTab;->access$300(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/database/ImportantMailStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/database/ImportantMailStore;->getImportantEmailSeq()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mWhere:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mWhere:Ljava/lang/String;

    return-object v0
.end method

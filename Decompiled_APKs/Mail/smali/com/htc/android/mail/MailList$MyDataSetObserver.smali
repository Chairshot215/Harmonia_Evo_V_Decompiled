.class Lcom/htc/android/mail/MailList$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field private mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 0
    .parameter
    .parameter "tabInfo"

    .prologue
    .line 4898
    iput-object p1, p0, Lcom/htc/android/mail/MailList$MyDataSetObserver;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4899
    iput-object p2, p0, Lcom/htc/android/mail/MailList$MyDataSetObserver;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    .line 4900
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 4904
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    const-string v1, "MyDataSetObserver: onChanged>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4905
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MyDataSetObserver;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, p0, Lcom/htc/android/mail/MailList$MyDataSetObserver;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    #calls: Lcom/htc/android/mail/MailList;->updateUnreadNumber(Lcom/htc/android/mail/MailList$TabInfo;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailList;->access$5000(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V

    .line 4906
    return-void
.end method

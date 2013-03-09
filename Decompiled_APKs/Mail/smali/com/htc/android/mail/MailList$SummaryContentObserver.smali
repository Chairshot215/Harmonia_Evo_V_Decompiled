.class Lcom/htc/android/mail/MailList$SummaryContentObserver;
.super Landroid/database/ContentObserver;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryContentObserver"
.end annotation


# instance fields
.field mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/MailList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 4872
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4873
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailList$SummaryContentObserver;->mTarget:Ljava/lang/ref/WeakReference;

    .line 4874
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 4881
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    const-string v2, "ReadContentObserver change"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4882
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList$SummaryContentObserver;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MailList;

    .line 4883
    .local v0, target:Lcom/htc/android/mail/MailList;
    if-nez v0, :cond_2

    .line 4887
    :cond_1
    :goto_0
    return-void

    .line 4884
    :cond_2
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4885
    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/mail/MailList$TabInfo;->notifyDataSetChanged()V

    goto :goto_0
.end method

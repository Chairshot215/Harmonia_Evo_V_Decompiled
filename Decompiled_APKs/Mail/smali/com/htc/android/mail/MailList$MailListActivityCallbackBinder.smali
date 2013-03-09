.class Lcom/htc/android/mail/MailList$MailListActivityCallbackBinder;
.super Lcom/htc/android/mail/util/ActivityCallback$Binder;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailListActivityCallbackBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter

    .prologue
    .line 7114
    iput-object p1, p0, Lcom/htc/android/mail/MailList$MailListActivityCallbackBinder;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct {p0}, Lcom/htc/android/mail/util/ActivityCallback$Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7114
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList$MailListActivityCallbackBinder;-><init>(Lcom/htc/android/mail/MailList;)V

    return-void
.end method


# virtual methods
.method public getReadSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7118
    iget-object v0, p0, Lcom/htc/android/mail/MailList$MailListActivityCallbackBinder;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mReadMessageIds:Lcom/htc/android/mail/util/IdStore;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/IdStore;->getSeq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/htc/android/mail/MailListTab$UpdateTabUnreadRunnable;
.super Ljava/lang/Object;
.source "MailListTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailListTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTabUnreadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailListTab;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/MailListTab;)V
    .locals 0
    .parameter

    .prologue
    .line 1497
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$UpdateTabUnreadRunnable;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/MailListTab;Lcom/htc/android/mail/MailListTab$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1497
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailListTab$UpdateTabUnreadRunnable;-><init>(Lcom/htc/android/mail/MailListTab;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 1499
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$UpdateTabUnreadRunnable;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    aget-object v1, v1, v3

    if-eqz v1, :cond_1

    .line 1500
    invoke-static {}, Lcom/htc/android/mail/MailListTab;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailListTab"

    const-string v2, "getUnreadNumber for important tab"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$UpdateTabUnreadRunnable;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/htc/android/mail/MailListTab$UpdateTabUnreadRunnable;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/android/mail/MailListTab;->access$1900(Lcom/htc/android/mail/MailListTab;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$BasicTabInfo;->getUnreadNumber(Landroid/content/ContentResolver;)I

    move-result v0

    .line 1502
    .local v0, num:I
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$UpdateTabUnreadRunnable;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mRequestHandler:Lcom/htc/android/mail/MailListTab$RequestHandler;
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$900(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/MailListTab$RequestHandler;

    move-result-object v1

    const/16 v2, 0x18

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/android/mail/MailListTab$RequestHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1504
    .end local v0           #num:I
    :cond_1
    return-void
.end method

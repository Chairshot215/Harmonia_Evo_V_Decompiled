.class Lcom/htc/android/mail/MailList$35;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->updateUnreadNumber(Lcom/htc/android/mail/MailList$TabInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;

.field final synthetic val$tabInfo:Lcom/htc/android/mail/MailList$TabInfo;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4912
    iput-object p1, p0, Lcom/htc/android/mail/MailList$35;->this$0:Lcom/htc/android/mail/MailList;

    iput-object p2, p0, Lcom/htc/android/mail/MailList$35;->val$tabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4914
    iget-object v0, p0, Lcom/htc/android/mail/MailList$35;->val$tabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, p0, Lcom/htc/android/mail/MailList$35;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$35;->val$tabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/htc/android/mail/MailList$35;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$3700(Lcom/htc/android/mail/MailList;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$BasicTabInfo;->getUnreadNumber(Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, v0, Lcom/htc/android/mail/MailList$TabInfo;->mUnReadNumber:I

    .line 4916
    iget-object v0, p0, Lcom/htc/android/mail/MailList$35;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList$35;->val$tabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mShowUnReadNumber:Z

    if-eqz v0, :cond_0

    .line 4917
    iget-object v0, p0, Lcom/htc/android/mail/MailList$35;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mRequestHandler:Lcom/htc/android/mail/MailList$RequestHandler;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$4700(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$RequestHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailList$35;->val$tabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mUnReadNumber:I

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList$RequestHandler;->updateActionBarUnreadNum(I)V

    .line 4919
    :cond_0
    return-void
.end method

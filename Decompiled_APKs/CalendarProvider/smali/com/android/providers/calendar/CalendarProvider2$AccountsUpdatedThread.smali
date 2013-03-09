.class Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;
.super Ljava/lang/Thread;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsUpdatedThread"
.end annotation


# instance fields
.field private mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;[Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter "accounts"

    .prologue
    .line 5251
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5252
    iput-object p2, p0, Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;->mAccounts:[Landroid/accounts/Account;

    .line 5253
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5262
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 5264
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/calendar/HtcCheckCustomization;->syncGoogleAccountMgr(Landroid/content/Context;)Z

    move-result v0

    .line 5265
    .local v0, bret:Z
    if-eqz v0, :cond_0

    .line 5266
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2$AccountsUpdatedThread;->mAccounts:[Landroid/accounts/Account;

    #calls: Lcom/android/providers/calendar/CalendarProvider2;->removeStaleAccounts([Landroid/accounts/Account;)V
    invoke-static {v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->access$400(Lcom/android/providers/calendar/CalendarProvider2;[Landroid/accounts/Account;)V

    .line 5267
    :cond_0
    return-void
.end method

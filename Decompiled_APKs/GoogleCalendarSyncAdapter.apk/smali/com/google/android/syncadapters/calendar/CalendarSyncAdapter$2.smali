.class Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$2;
.super Ljava/lang/Object;
.source "CalendarSyncAdapter.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->onAccountsUpdated([Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;

.field final synthetic val$accountsWithCalendar:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$2;->this$0:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;

    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$2;->val$accountsWithCalendar:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1142
    .local p1, accountManagerFuture:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 1143
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 1144
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$2;->val$accountsWithCalendar:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1146
    iget-object v6, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$2;->this$0:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;

    #calls: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addDefaultCalendar(Landroid/accounts/Account;)V
    invoke-static {v6, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->access$500(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;Landroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1143
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1149
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catch_0
    move-exception v3

    .line 1150
    .local v3, e:Landroid/accounts/OperationCanceledException;
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "Unable to get calendar accounts"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1157
    .end local v3           #e:Landroid/accounts/OperationCanceledException;
    :cond_1
    :goto_1
    return-void

    .line 1152
    :catch_1
    move-exception v3

    .line 1153
    .local v3, e:Ljava/io/IOException;
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "Unable to get calendar accounts"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1154
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 1155
    .local v3, e:Landroid/accounts/AuthenticatorException;
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "Unable to get calendar accounts"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

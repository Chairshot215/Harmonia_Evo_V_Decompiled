.class Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$1;
.super Landroid/os/HandlerThread;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$1;->this$0:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;

    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$1;->this$0:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;

    #getter for: Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->access$000(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$1;->this$0:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$1;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 291
    return-void
.end method

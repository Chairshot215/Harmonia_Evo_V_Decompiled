.class Lcom/android/htccontacts/PeopleApp$2$1;
.super Ljava/lang/Thread;
.source "PeopleApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/PeopleApp$2;->queueIdle()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/PeopleApp$2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/PeopleApp$2;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/htccontacts/PeopleApp$2$1;->this$1:Lcom/android/htccontacts/PeopleApp$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 360
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->access$800()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 365
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    int-to-long v3, v6

    .line 366
    .local v3, pid:J
    iget-object v6, p0, Lcom/android/htccontacts/PeopleApp$2$1;->this$1:Lcom/android/htccontacts/PeopleApp$2;

    iget-object v6, v6, Lcom/android/htccontacts/PeopleApp$2;->this$0:Lcom/android/htccontacts/PeopleApp;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/PeopleApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 367
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 368
    .local v5, runningAppList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 369
    .local v2, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    int-to-long v6, v6

    cmp-long v6, v6, v3

    if-nez v6, :cond_0

    .line 370
    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/htccontacts/PeopleApp;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #pid:J
    .end local v5           #runningAppList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->access$800()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.htccontacts"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 377
    :cond_2
    iget-object v6, p0, Lcom/android/htccontacts/PeopleApp$2$1;->this$1:Lcom/android/htccontacts/PeopleApp$2;

    iget-object v6, v6, Lcom/android/htccontacts/PeopleApp$2;->this$0:Lcom/android/htccontacts/PeopleApp;

    invoke-virtual {v6}, Lcom/android/htccontacts/PeopleApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/android/htccontacts/ContactListSearchPicker;->preloadPeopleSearchCursor(Landroid/content/ContentResolver;)V

    .line 379
    :cond_3
    return-void
.end method

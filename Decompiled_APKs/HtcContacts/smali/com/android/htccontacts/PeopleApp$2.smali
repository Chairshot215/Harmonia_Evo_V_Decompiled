.class Lcom/android/htccontacts/PeopleApp$2;
.super Ljava/lang/Object;
.source "PeopleApp.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/PeopleApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/PeopleApp;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/PeopleApp;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/htccontacts/PeopleApp$2;->this$0:Lcom/android/htccontacts/PeopleApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 314
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/htccontacts/PeopleApp$2;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mIsTerminating:Z
    invoke-static {v7}, Lcom/android/htccontacts/PeopleApp;->access$300(Lcom/android/htccontacts/PeopleApp;)Z

    move-result v7

    if-ne v6, v7, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v10

    .line 317
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/PeopleApp$2;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/htccontacts/PeopleApp;->access$600(Lcom/android/htccontacts/PeopleApp;)Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_2

    .line 318
    const-string v6, "PeopleApp"

    const-string v7, "Unable to preload all people cursor without a valid context"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/PeopleApp;->access$700()Lcom/android/htccontacts/PeopleApp;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 325
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v6, "Only contacts with phone number"

    invoke-interface {v1, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 328
    .local v0, displayOnlyPhones:Z
    const-string v6, ""

    invoke-static {v6}, Lcom/htc/provider/HtcContactsContract$Contacts;->addClauseOnlyVisible(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, whereClause:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "has_phone_number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 333
    :cond_3
    const-string v4, "sort_key COLLATE LOCALIZED ASC"

    .line 334
    .local v4, sortOrder:Ljava/lang/String;
    const-string v6, "PeopleApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preload all people cursor with - displayOnlyPhones: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v6, p0, Lcom/android/htccontacts/PeopleApp$2;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mQueryHandler:Lcom/android/htccontacts/PeopleApp$QueryHandler;
    invoke-static {v6}, Lcom/android/htccontacts/PeopleApp;->access$500(Lcom/android/htccontacts/PeopleApp;)Lcom/android/htccontacts/PeopleApp$QueryHandler;

    move-result-object v6

    if-nez v6, :cond_4

    .line 337
    iget-object v6, p0, Lcom/android/htccontacts/PeopleApp$2;->this$0:Lcom/android/htccontacts/PeopleApp;

    new-instance v7, Lcom/android/htccontacts/PeopleApp$QueryHandler;

    iget-object v8, p0, Lcom/android/htccontacts/PeopleApp$2;->this$0:Lcom/android/htccontacts/PeopleApp;

    iget-object v9, p0, Lcom/android/htccontacts/PeopleApp$2;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/htccontacts/PeopleApp;->access$600(Lcom/android/htccontacts/PeopleApp;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/htccontacts/PeopleApp$QueryHandler;-><init>(Lcom/android/htccontacts/PeopleApp;Landroid/content/ContentResolver;)V

    #setter for: Lcom/android/htccontacts/PeopleApp;->mQueryHandler:Lcom/android/htccontacts/PeopleApp$QueryHandler;
    invoke-static {v6, v7}, Lcom/android/htccontacts/PeopleApp;->access$502(Lcom/android/htccontacts/PeopleApp;Lcom/android/htccontacts/PeopleApp$QueryHandler;)Lcom/android/htccontacts/PeopleApp$QueryHandler;

    .line 340
    :cond_4
    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    .line 354
    .local v3, queryUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/htccontacts/PeopleApp$2;->this$0:Lcom/android/htccontacts/PeopleApp;

    #calls: Lcom/android/htccontacts/PeopleApp;->preInflateTabLayout()V
    invoke-static {v6}, Lcom/android/htccontacts/PeopleApp;->access$200(Lcom/android/htccontacts/PeopleApp;)V

    .line 357
    sget-boolean v6, Lcom/android/htccontacts/ContactListSearchPicker;->sIsEnableCachePeopleSearchCursor:Z

    if-eqz v6, :cond_0

    .line 358
    new-instance v2, Lcom/android/htccontacts/PeopleApp$2$1;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/PeopleApp$2$1;-><init>(Lcom/android/htccontacts/PeopleApp$2;)V

    .line 381
    .local v2, preloadPeopleSearchCursorThread:Ljava/lang/Thread;
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 382
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.class Lcom/android/htccontacts/PeopleApp$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PeopleApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/PeopleApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/PeopleApp;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/PeopleApp;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/htccontacts/PeopleApp$QueryHandler;->this$0:Lcom/android/htccontacts/PeopleApp;

    .line 542
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 543
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    .line 547
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp$QueryHandler;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mIsTerminating:Z
    invoke-static {v0}, Lcom/android/htccontacts/PeopleApp;->access$300(Lcom/android/htccontacts/PeopleApp;)Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    if-ne p1, v1, :cond_0

    .line 551
    if-eqz p3, :cond_2

    .line 552
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp$QueryHandler;->this$0:Lcom/android/htccontacts/PeopleApp;

    #setter for: Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/htccontacts/PeopleApp;->access$402(Lcom/android/htccontacts/PeopleApp;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 553
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp$QueryHandler;->this$0:Lcom/android/htccontacts/PeopleApp;

    new-instance v1, Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;

    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp$QueryHandler;->this$0:Lcom/android/htccontacts/PeopleApp;

    invoke-direct {v1, v2}, Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;-><init>(Lcom/android/htccontacts/PeopleApp;)V

    #setter for: Lcom/android/htccontacts/PeopleApp;->mAllPeopleChangeObserver:Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;
    invoke-static {v0, v1}, Lcom/android/htccontacts/PeopleApp;->access$1002(Lcom/android/htccontacts/PeopleApp;Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;)Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;

    .line 554
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp$QueryHandler;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/htccontacts/PeopleApp;->access$400(Lcom/android/htccontacts/PeopleApp;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/PeopleApp$QueryHandler;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mAllPeopleChangeObserver:Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;
    invoke-static {v1}, Lcom/android/htccontacts/PeopleApp;->access$1000(Lcom/android/htccontacts/PeopleApp;)Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 555
    const-string v0, "PeopleApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllPeopleCursor preload completed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp$QueryHandler;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/PeopleApp;->access$400(Lcom/android/htccontacts/PeopleApp;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contacts preloaded!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 557
    :cond_2
    const-string v0, "PeopleApp"

    const-string v1, "AllPeopleCursor preload failed, cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

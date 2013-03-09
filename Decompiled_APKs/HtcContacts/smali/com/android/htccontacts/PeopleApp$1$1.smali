.class Lcom/android/htccontacts/PeopleApp$1$1;
.super Ljava/lang/Object;
.source "PeopleApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/PeopleApp$1;->queueIdle()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/PeopleApp$1;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/PeopleApp$1;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/htccontacts/PeopleApp$1$1;->this$1:Lcom/android/htccontacts/PeopleApp$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 264
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp$1$1;->this$1:Lcom/android/htccontacts/PeopleApp$1;

    iget-object v2, v2, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/PeopleApp;->access$400(Lcom/android/htccontacts/PeopleApp;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp$1$1;->this$1:Lcom/android/htccontacts/PeopleApp$1;

    iget-object v2, v2, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/PeopleApp;->access$400(Lcom/android/htccontacts/PeopleApp;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp$1$1;->this$1:Lcom/android/htccontacts/PeopleApp$1;

    iget-object v2, v2, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/PeopleApp;->access$400(Lcom/android/htccontacts/PeopleApp;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    .line 266
    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp$1$1;->this$1:Lcom/android/htccontacts/PeopleApp$1;

    iget-object v2, v2, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/PeopleApp;->access$400(Lcom/android/htccontacts/PeopleApp;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 267
    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp$1$1;->this$1:Lcom/android/htccontacts/PeopleApp$1;

    iget-object v2, v2, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/PeopleApp;->access$400(Lcom/android/htccontacts/PeopleApp;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 268
    .local v0, count:I
    const-string v2, "PeopleApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto requerying AllPeopleCursor due to update - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v0           #count:I
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v1

    .line 273
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "PeopleApp"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

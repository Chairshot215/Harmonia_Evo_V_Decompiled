.class Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$QueryIPDialHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PeopleListContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryIPDialHandler"
.end annotation


# instance fields
.field mref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1045
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1046
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$QueryIPDialHandler;->mref:Ljava/lang/ref/WeakReference;

    .line 1047
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$QueryIPDialHandler;->mref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x7da

    if-ne v1, p1, :cond_2

    if-eqz p3, :cond_2

    .line 1054
    invoke-static {}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    const-string v1, "PeopleListContextMenu"

    const-string v2, "test"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-static {}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1058
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1059
    invoke-static {}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1061
    :cond_1
    new-instance v0, Lcom/android/htccontacts/BackgroundWorkerHandler;

    iget-object v1, p0, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu$QueryIPDialHandler;->mref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1062
    .local v0, closehandler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1063
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 1072
    .end local v0           #closehandler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    :cond_2
    return-void
.end method

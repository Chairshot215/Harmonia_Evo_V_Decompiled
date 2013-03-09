.class Lcom/android/mms/ui/MultipleDeleteActivity$7;
.super Ljava/lang/Object;
.source "MultipleDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;->initDeleteButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

.field final synthetic val$mThis:Lcom/android/mms/ui/MultipleDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;Lcom/android/mms/ui/MultipleDeleteActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->val$mThis:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/MultipleDeleteActivity$7;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1339
    invoke-direct {p0}, Lcom/android/mms/ui/MultipleDeleteActivity$7;->startDelete()V

    return-void
.end method

.method private startDelete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1342
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1343
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackKeyDeleting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1344
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    new-instance v1, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog21;

    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog21;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/content/Context;)V

    #setter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1102(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1348
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1351
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1352
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-static {v0, v4}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 1354
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1356
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1102(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1346
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    new-instance v1, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/content/Context;)V

    #setter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1102(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1

    .line 1361
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #calls: Lcom/android/mms/ui/MultipleDeleteActivity;->acquireWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2100(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    .line 1363
    new-instance v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;

    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/MultipleDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;ZLandroid/content/Context;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 1368
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$900()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1369
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    .line 1370
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1373
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeleteWarning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1374
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1200(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v2, v2, Lcom/android/mms/ui/MultipleDeleteActivity;->checkArray:[Z

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MultipleDeleteActivity;->getDeleteThreadIds(Landroid/database/Cursor;[ZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1375
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getMessageCountOfThreads(Ljava/util/ArrayList;)I

    move-result v1

    const/16 v2, 0x12c

    if-le v1, v2, :cond_0

    .line 1376
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$7;->val$mThis:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0200d1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0902e2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0902e3

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c015f

    new-instance v3, Lcom/android/mms/ui/MultipleDeleteActivity$7$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MultipleDeleteActivity$7$1;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity$7;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c0164

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1390
    .end local v0           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return-void

    .line 1370
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1386
    .restart local v0       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MultipleDeleteActivity$7;->startDelete()V

    goto :goto_0

    .line 1389
    .end local v0           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MultipleDeleteActivity$7;->startDelete()V

    goto :goto_0
.end method

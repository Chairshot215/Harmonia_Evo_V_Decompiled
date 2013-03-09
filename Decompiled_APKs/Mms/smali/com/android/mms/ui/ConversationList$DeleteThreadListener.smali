.class Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteThreadListener"
.end annotation


# instance fields
.field private mDeleteLockedMessages:Z

.field private mDeleteUri:Landroid/net/Uri;

.field private final mThreadId:J

.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationList;J)V
    .locals 3
    .parameter
    .parameter "threadId"

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1343
    iput-wide p2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J

    .line 1345
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_4

    .line 1346
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1347
    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    .line 1355
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1356
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1357
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "category"

    iget-object v2, p1, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategory:Lcom/android/mms/category/Category;

    invoke-virtual {v2}, Lcom/android/mms/category/Category;->value()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1358
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    .line 1363
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackgroundDeletion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1364
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1365
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    const-string v1, "bg"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1366
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    .line 1371
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/DeletedItemsActivity;->isDeleteImmediatelyEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1372
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1373
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    const-string v1, "trash"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1374
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    .line 1377
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_2
    return-void

    .line 1349
    :cond_3
    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    goto :goto_0

    .line 1351
    :cond_4
    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1338
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1338
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J

    return-wide v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 1422
    :goto_0
    return-void

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-wide v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x81

    new-instance v3, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 1382
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 1383
    return-void
.end method

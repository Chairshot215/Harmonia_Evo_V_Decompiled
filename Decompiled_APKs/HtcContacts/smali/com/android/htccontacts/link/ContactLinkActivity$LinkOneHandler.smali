.class public Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;
.super Ljava/lang/Object;
.source "ContactLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/ContactLinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinkOneHandler"
.end annotation


# instance fields
.field private mAfterLinkOneListener:Lcom/android/htccontacts/link/ContactLinkActivity$AfterLinkOneListener;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mMethod:J

.field private mRawContactId:J

.field private mType:I

.field final synthetic this$0:Lcom/android/htccontacts/link/ContactLinkActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/link/ContactLinkActivity;Landroid/content/Context;Landroid/os/Handler;JIJ)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "handler"
    .parameter "rawContactId"
    .parameter "exceptionType"
    .parameter "method_id"

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iput-object p2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->mContext:Landroid/content/Context;

    .line 676
    iput-object p3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->mHandler:Landroid/os/Handler;

    .line 677
    iput-wide p4, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->mRawContactId:J

    .line 678
    iput p6, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->mType:I

    .line 679
    iput-wide p7, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->mMethod:J

    .line 680
    return-void
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;)Lcom/android/htccontacts/link/ContactLinkActivity$AfterLinkOneListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->mAfterLinkOneListener:Lcom/android/htccontacts/link/ContactLinkActivity$AfterLinkOneListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    const-wide/16 v1, -0x1

    iget-wide v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->mRawContactId:J

    iget v5, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->mType:I

    iget-wide v6, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->mMethod:J

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->queryRawContactsAtSameContacts(JJIJ)V
    invoke-static/range {v0 .. v7}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1500(Lcom/android/htccontacts/link/ContactLinkActivity;JJIJ)V

    .line 685
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->applyBatchOperations()V
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$600(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    .line 686
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->updateSelf()V
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1600(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    .line 687
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteLinkChangeIntent(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler$1;-><init>(Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 698
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v8

    .line 689
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "ContactLinkActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LINK ONE CONTACT EXCEPTION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAfterLinkOneListener(Lcom/android/htccontacts/link/ContactLinkActivity$AfterLinkOneListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->mAfterLinkOneListener:Lcom/android/htccontacts/link/ContactLinkActivity$AfterLinkOneListener;

    .line 702
    return-void
.end method

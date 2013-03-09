.class Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;
.super Ljava/lang/Object;
.source "EmailAddressAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/util/EmailAddressAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/util/EmailAddressAdapter$2;

.field final synthetic val$result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/util/EmailAddressAdapter$2;Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->this$1:Lcom/htc/android/mail/util/EmailAddressAdapter$2;

    iput-object p2, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->val$result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 524
    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->val$result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->val$result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->val$result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 525
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->val$result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;

    if-nez v3, :cond_3

    .line 526
    invoke-static {}, Lcom/htc/android/mail/util/EmailAddressAdapter;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "EmailAddressAdapter"

    const-string v4, "result is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->this$1:Lcom/htc/android/mail/util/EmailAddressAdapter$2;

    iget-object v3, v3, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->val$mergedResultCursor:Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->setServerSeparatorPosition(I)V

    .line 534
    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->this$1:Lcom/htc/android/mail/util/EmailAddressAdapter$2;

    iget-object v3, v3, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->this$0:Lcom/htc/android/mail/util/EmailAddressAdapter;

    #setter for: Lcom/htc/android/mail/util/EmailAddressAdapter;->isGALCompleted:Z
    invoke-static {v3, v5}, Lcom/htc/android/mail/util/EmailAddressAdapter;->access$102(Lcom/htc/android/mail/util/EmailAddressAdapter;Z)Z

    .line 535
    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->this$1:Lcom/htc/android/mail/util/EmailAddressAdapter$2;

    iget-object v3, v3, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->this$0:Lcom/htc/android/mail/util/EmailAddressAdapter;

    invoke-virtual {v3}, Lcom/htc/android/mail/util/EmailAddressAdapter;->notifyDataSetChanged()V

    .line 573
    :cond_2
    :goto_1
    return-void

    .line 527
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->val$result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 528
    invoke-static {}, Lcom/htc/android/mail/util/EmailAddressAdapter;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "EmailAddressAdapter"

    const-string v4, "result.elements is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/util/EmailAddressAdapter;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "EmailAddressAdapter"

    const-string v4, "result.elements.size() == 0"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_5
    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->this$1:Lcom/htc/android/mail/util/EmailAddressAdapter$2;

    iget-object v3, v3, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->val$mergedResultCursor:Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;

    invoke-virtual {v3}, Lcom/htc/android/mail/util/EmailAddressAdapter$MyMergeCursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 540
    invoke-static {}, Lcom/htc/android/mail/util/EmailAddressAdapter;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 541
    const-string v3, "EmailAddressAdapter"

    const-string v4, "Drop result (cursor closed, ui thread)"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 546
    :cond_6
    const/4 v2, 0x0

    .line 548
    .local v2, obj:[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 549
    .local v0, arrayLength:I
    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->val$result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 550
    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->this$1:Lcom/htc/android/mail/util/EmailAddressAdapter$2;

    iget-object v3, v3, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->val$matrixColumns:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/Object;

    .line 553
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_9

    .line 554
    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->val$result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v3, v3, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 555
    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->val$result:Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;->elements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/pim/eas/EASGalElement;

    iget-object v3, v3, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 556
    aget-object v3, v2, v6

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    aget-object v3, v2, v5

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 553
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 564
    :cond_8
    const/4 v3, 0x5

    const-string v4, "Server"

    aput-object v4, v2, v3

    .line 566
    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->this$1:Lcom/htc/android/mail/util/EmailAddressAdapter$2;

    iget-object v3, v3, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->val$matrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    .line 568
    :cond_9
    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->this$1:Lcom/htc/android/mail/util/EmailAddressAdapter$2;

    iget-object v3, v3, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->this$0:Lcom/htc/android/mail/util/EmailAddressAdapter;

    #setter for: Lcom/htc/android/mail/util/EmailAddressAdapter;->isGALCompleted:Z
    invoke-static {v3, v5}, Lcom/htc/android/mail/util/EmailAddressAdapter;->access$102(Lcom/htc/android/mail/util/EmailAddressAdapter;Z)Z

    .line 570
    iget-object v3, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$2$1;->this$1:Lcom/htc/android/mail/util/EmailAddressAdapter$2;

    iget-object v3, v3, Lcom/htc/android/mail/util/EmailAddressAdapter$2;->this$0:Lcom/htc/android/mail/util/EmailAddressAdapter;

    invoke-virtual {v3}, Lcom/htc/android/mail/util/EmailAddressAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1
.end method

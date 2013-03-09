.class Lcom/android/phone/EditFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    .line 636
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 637
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 681
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 647
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V
    invoke-static {v2, v1}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;Z)V

    .line 649
    if-eqz p3, :cond_2

    .line 650
    sget-object v2, Landroid/provider/HtcUnionContact$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    invoke-virtual {p3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v1}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    #calls: Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/android/phone/EditFdnContactScreen;->access$600(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/CharSequence;)V

    .line 652
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/EditFdnContactScreen;->access$700(Lcom/android/phone/EditFdnContactScreen;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;

    invoke-direct {v1, p0}, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;-><init>(Lcom/android/phone/EditFdnContactScreen$QueryHandler;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 667
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    if-eqz p3, :cond_1

    :goto_1
    #calls: Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZZ)V
    invoke-static {v2, v0, v1, v1}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;ZZZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 664
    :cond_2
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    if-eqz p3, :cond_3

    :goto_2
    #calls: Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZZ)V
    invoke-static {v2, v0, v1, v1}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;ZZZ)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 641
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/EditFdnContactScreen;->access$500(Lcom/android/phone/EditFdnContactScreen;Z)V

    .line 675
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/phone/EditFdnContactScreen;->handleResult(ZZZ)V
    invoke-static {v2, v0, v1, v1}, Lcom/android/phone/EditFdnContactScreen;->access$800(Lcom/android/phone/EditFdnContactScreen;ZZZ)V

    .line 677
    return-void

    :cond_0
    move v0, v1

    .line 675
    goto :goto_0
.end method

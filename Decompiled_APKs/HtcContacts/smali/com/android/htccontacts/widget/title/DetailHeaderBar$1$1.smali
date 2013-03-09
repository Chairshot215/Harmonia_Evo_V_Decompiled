.class Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;
.super Ljava/lang/Object;
.source "DetailHeaderBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

.field final synthetic val$displayName:Ljava/lang/String;

.field final synthetic val$extAccountType:Ljava/lang/String;

.field final synthetic val$isLinked:Z

.field final synthetic val$isSIM:Z

.field final synthetic val$photoId:J


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;Ljava/lang/String;ZJZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iput-object p2, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->val$displayName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->val$isSIM:Z

    iput-wide p4, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->val$photoId:J

    iput-boolean p6, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->val$isLinked:Z

    iput-object p7, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->val$extAccountType:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 359
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v5, v5, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    #getter for: Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mCategory:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->access$000(Lcom/android/htccontacts/widget/title/DetailHeaderBar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", catetoryRes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v5, v5, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    #getter for: Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mCategoryRes:I
    invoke-static {v5}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->access$100(Lcom/android/htccontacts/widget/title/DetailHeaderBar;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    #getter for: Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mCategory:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->access$000(Lcom/android/htccontacts/widget/title/DetailHeaderBar;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 362
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    iget-object v4, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->val$displayName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v5, v5, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    #getter for: Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mCategory:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->access$000(Lcom/android/htccontacts/widget/title/DetailHeaderBar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderText(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->val$isSIM:Z

    if-eqz v3, :cond_2

    .line 373
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 374
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getHeaderText()Lcom/htc/widget/HeaderBarText;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/htc/widget/HeaderBarText;->setSecondaryRightVisibility(I)V

    .line 375
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getHeaderText()Lcom/htc/widget/HeaderBarText;

    move-result-object v3

    const v4, 0x7f0a0027

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setSecondaryRightText(I)V

    .line 376
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    const v4, 0x208025a

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(I)V

    .line 415
    :goto_1
    return-void

    .line 365
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    iget-object v4, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->val$displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderPrimaryText(Ljava/lang/String;)V

    .line 366
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    #getter for: Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mCategoryRes:I
    invoke-static {v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->access$100(Lcom/android/htccontacts/widget/title/DetailHeaderBar;)I

    move-result v3

    if-lez v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    iget-object v4, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v4, v4, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    #getter for: Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mCategoryRes:I
    invoke-static {v4}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->access$100(Lcom/android/htccontacts/widget/title/DetailHeaderBar;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderSecondaryLeftText(I)V

    goto :goto_0

    .line 380
    :cond_2
    const/4 v2, 0x0

    .line 381
    .local v2, photo:Landroid/graphics/Bitmap;
    iget-wide v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->val$photoId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 382
    iget-wide v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->val$photoId:J

    invoke-static {v3, v4, v10}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 385
    :cond_3
    if-eqz v2, :cond_4

    .line 386
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-virtual {v3, v2}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(Landroid/graphics/Bitmap;)V

    .line 391
    :goto_2
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    #getter for: Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mIsToShowLinkButton:Z
    invoke-static {v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->access$200(Lcom/android/htccontacts/widget/title/DetailHeaderBar;)Z

    move-result v3

    if-ne v9, v3, :cond_7

    .line 392
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 393
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getHeaderText()Lcom/htc/widget/HeaderBarText;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarText;->setSecondaryRightVisibility(I)V

    .line 394
    iget-boolean v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->val$isLinked:Z

    if-eqz v3, :cond_5

    .line 395
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    const v4, 0x7f0a00f7

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setLinkLabel(I)V

    .line 396
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-virtual {v3, v8}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setLinkImage(I)V

    goto :goto_1

    .line 389
    :cond_4
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    const v4, 0x2080846

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(I)V

    goto :goto_2

    .line 399
    :cond_5
    const-string v3, "DeviceOnly"

    iget-object v4, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->val$extAccountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 400
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto/16 :goto_1

    .line 403
    :cond_6
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->val$extAccountType:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/htccontacts/HtcContactInfo;->getContactType(Ljava/lang/String;)I

    move-result v0

    .line 404
    .local v0, contactType:I
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->val$extAccountType:Ljava/lang/String;

    invoke-static {v3, v0, v4, v10}, Lcom/android/htccontacts/HtcContactInfo;->getContactTypeLabel(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, contactTypeLabel:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-virtual {v3, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setLinkLabel(Ljava/lang/String;)V

    .line 406
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-virtual {v3, v9}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setLinkImage(I)V

    goto/16 :goto_1

    .line 411
    .end local v0           #contactType:I
    .end local v1           #contactTypeLabel:Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;->this$1:Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;

    iget-object v3, v3, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto/16 :goto_1
.end method

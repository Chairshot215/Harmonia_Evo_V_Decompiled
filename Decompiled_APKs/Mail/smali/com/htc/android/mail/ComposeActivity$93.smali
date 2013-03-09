.class Lcom/htc/android/mail/ComposeActivity$93;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->loadUI(Landroid/database/Cursor;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 11347
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$93;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 11361
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$93;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mHtmlText:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$9300(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/util/ImageLinkParser;->isImgLinkExistedInHtml(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11362
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$93;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mHtmlText:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$9300(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/util/ImageLinkParser;->getImgLinkFromHtml(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 11363
    .local v10, mImageLinkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, index:I
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 11364
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 11365
    .local v7, fileUri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 11366
    .local v8, fs:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11367
    .local v6, mimetype:Ljava/lang/String;
    new-instance v0, Lcom/htc/android/mail/RelatedInfo;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/RelatedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 11368
    .local v0, relatedinfo:Lcom/htc/android/mail/RelatedInfo;
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ComposeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relatedInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/android/mail/RelatedInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11369
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$93;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mRelatedInfos:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$12200(Lcom/htc/android/mail/ComposeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11363
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 11372
    .end local v0           #relatedinfo:Lcom/htc/android/mail/RelatedInfo;
    .end local v6           #mimetype:Ljava/lang/String;
    .end local v7           #fileUri:Landroid/net/Uri;
    .end local v8           #fs:Ljava/lang/String;
    .end local v9           #index:I
    .end local v10           #mImageLinkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$93;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$93;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, v2, Lcom/htc/android/mail/ComposeActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11373
    return-void
.end method

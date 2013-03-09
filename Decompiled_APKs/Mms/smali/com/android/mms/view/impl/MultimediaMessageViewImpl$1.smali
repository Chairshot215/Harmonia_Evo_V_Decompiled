.class Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;
.super Ljava/lang/Object;
.source "MultimediaMessageViewImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/view/impl/MultimediaMessageViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 384
    iget-object v6, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v6, v6, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    if-nez v6, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v6, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v6, v6, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v6

    if-nez v6, :cond_2

    .line 386
    iget-object v6, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$000(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->getViewMyContactCardIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    .line 387
    .local v4, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v6, v6, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 388
    iget-object v6, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v6, v6, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 392
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v6, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v6, v6, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, address:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-virtual {v7}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/android/mms/util/ContactNameCache;->getPersonalId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 395
    .local v1, contactId:J
    const-wide/16 v6, -0x1

    cmp-long v6, v1, v6

    if-lez v6, :cond_0

    .line 396
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 398
    .local v3, contactUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-virtual {v6}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 401
    .local v5, lookupUri:Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 402
    iget-object v6, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    const v7, 0x7f0e007f

    invoke-virtual {v6, v7}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0
.end method

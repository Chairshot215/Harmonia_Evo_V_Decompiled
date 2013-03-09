.class Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;
.super Ljava/lang/Object;
.source "DetailHeaderBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/widget/title/DetailHeaderBar;->queryTitleBarData(Landroid/net/Uri;Landroid/os/Handler;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

.field final synthetic val$contactUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/title/DetailHeaderBar;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    iput-object p2, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->val$contactUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 347
    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    iget-object v1, v1, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->val$contactUri:Landroid/net/Uri;

    invoke-static {v1, v13}, Lcom/android/htccontacts/util/ContactsUtils;->queryContactInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v8

    .line 348
    .local v8, b:Landroid/os/Bundle;
    const-string v1, "display_name"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, displayName:Ljava/lang/String;
    const-string v1, "lookup"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 350
    .local v10, lookupKey:Ljava/lang/String;
    const-string v1, "ext_account_Type"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, extAccountType:Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v13, -0x1

    if-ne v1, v13, :cond_0

    move v6, v0

    .line 352
    .local v6, isLinked:Z
    :goto_0
    if-nez v6, :cond_1

    const-string v1, "com.anddroid.contacts.sim"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    .local v3, isSIM:Z
    :goto_1
    const-string v0, "contact_presence"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 354
    .local v11, presence:I
    const-string v0, "contact_chat_capability"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 355
    .local v9, chatCapability:I
    const-string v0, "photo_id"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 356
    .local v4, photoId:J
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    #getter for: Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->access$300(Lcom/android/htccontacts/widget/title/DetailHeaderBar;)Landroid/os/Handler;

    move-result-object v13

    new-instance v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$1;-><init>(Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;Ljava/lang/String;ZJZLjava/lang/String;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 419
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    iget-object v0, v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->val$contactUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->querySuggestCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v12

    .line 420
    .local v12, suggestionCount:I
    iget-object v0, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    #getter for: Lcom/android/htccontacts/widget/title/DetailHeaderBar;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->access$300(Lcom/android/htccontacts/widget/title/DetailHeaderBar;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$2;

    invoke-direct {v1, p0, v12}, Lcom/android/htccontacts/widget/title/DetailHeaderBar$1$2;-><init>(Lcom/android/htccontacts/widget/title/DetailHeaderBar$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void

    .end local v3           #isSIM:Z
    .end local v4           #photoId:J
    .end local v6           #isLinked:Z
    .end local v9           #chatCapability:I
    .end local v11           #presence:I
    .end local v12           #suggestionCount:I
    :cond_0
    move v6, v3

    .line 351
    goto :goto_0

    .restart local v6       #isLinked:Z
    :cond_1
    move v3, v0

    .line 352
    goto :goto_1
.end method

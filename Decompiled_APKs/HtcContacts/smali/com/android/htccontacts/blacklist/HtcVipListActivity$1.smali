.class Lcom/android/htccontacts/blacklist/HtcVipListActivity$1;
.super Ljava/lang/Thread;
.source "HtcVipListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcVipListActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcVipListActivity;

.field final synthetic val$isSimArrays:[Z

.field final synthetic val$selectedId:Ljava/util/ArrayList;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcVipListActivity;ILjava/util/ArrayList;[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$1;->this$0:Lcom/android/htccontacts/blacklist/HtcVipListActivity;

    iput p2, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$1;->val$size:I

    iput-object p3, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$1;->val$selectedId:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$1;->val$isSimArrays:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 468
    const/4 v1, 0x0

    .line 469
    .local v1, j:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$1;->val$size:I

    if-ge v0, v3, :cond_1

    .line 470
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$1;->val$selectedId:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v5, v3

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 471
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$1;->val$isSimArrays:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    .line 472
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$1;->this$0:Lcom/android/htccontacts/blacklist/HtcVipListActivity;

    invoke-static {v3, v2, v7}, Lcom/htc/util/contacts/BlacklistUtils;->modifyVIPForSim(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 476
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 477
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$1;->this$0:Lcom/android/htccontacts/blacklist/HtcVipListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcVipListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$1;->this$0:Lcom/android/htccontacts/blacklist/HtcVipListActivity;

    invoke-static {v3, v2, v7}, Lcom/htc/util/contacts/BlacklistUtils;->modifyVIP(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_1

    .line 487
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$1;->this$0:Lcom/android/htccontacts/blacklist/HtcVipListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcVipListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 489
    return-void
.end method

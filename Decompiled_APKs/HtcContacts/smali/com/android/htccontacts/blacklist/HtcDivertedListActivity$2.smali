.class Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;
.super Ljava/lang/Thread;
.source "HtcDivertedListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

.field final synthetic val$blockId:Ljava/util/ArrayList;

.field final synthetic val$blocksize:I

.field final synthetic val$isSimArrays:[Z

.field final synthetic val$selectedId:Ljava/util/ArrayList;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;ILjava/util/ArrayList;[ZILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    iput p2, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->val$size:I

    iput-object p3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->val$selectedId:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->val$isSimArrays:[Z

    iput p5, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->val$blocksize:I

    iput-object p6, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->val$blockId:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, j:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->val$size:I

    if-ge v0, v3, :cond_1

    .line 465
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->val$selectedId:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v5, v3

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 466
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->val$isSimArrays:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    .line 467
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    invoke-static {v3, v2, v7}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 471
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 472
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    invoke-static {v3, v2, v7}, Lcom/htc/util/contacts/BlacklistUtils;->modifySendToVoiceMail(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_1

    .line 475
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->val$blocksize:I

    if-ge v0, v3, :cond_2

    .line 477
    iget-object v4, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->val$blockId:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v5, v3

    #calls: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->removeBlackNumber(J)Z
    invoke-static {v4, v5, v6}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$100(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;J)Z

    .line 479
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 482
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$2;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 484
    return-void
.end method

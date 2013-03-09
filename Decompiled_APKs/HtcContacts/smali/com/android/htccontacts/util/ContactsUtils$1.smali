.class final Lcom/android/htccontacts/util/ContactsUtils$1;
.super Ljava/lang/Object;
.source "ContactsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/util/ContactsUtils;->getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contactUri:Landroid/net/Uri;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finishActivity:Landroid/app/Activity;

.field final synthetic val$isSIM:Z

.field final synthetic val$listener:Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ZLcom/android/htccontacts/util/ContactsUtils$DeleteListener;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$resolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$contactUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$isSIM:Z

    iput-object p4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$listener:Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;

    iput-object p5, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$finishActivity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 497
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$resolver:Landroid/content/ContentResolver;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$contactUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 498
    const/4 v3, 0x0

    .line 500
    .local v3, deleteUri:Landroid/net/Uri;
    iget-boolean v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$isSIM:Z

    if-eqz v4, :cond_3

    .line 501
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$contactUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 502
    .local v0, contactId:J
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1, v4}, Lcom/htc/provider/IccContract;->getDeleteIccPhonebookUri(JLandroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v3

    .line 509
    .end local v0           #contactId:J
    :goto_0
    if-eqz v3, :cond_2

    .line 512
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$listener:Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$listener:Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;

    invoke-interface {v4}, Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;->beforeDelete()V

    .line 513
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v3, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 514
    .local v2, deleteCount:I
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$listener:Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$listener:Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;

    invoke-interface {v4, v2}, Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;->afterDelete(I)V

    .line 517
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    iget-boolean v7, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$isSIM:Z

    invoke-static {v4, v5, v6, v7}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteDeletionIntent(Landroid/content/Context;JZ)V

    .line 519
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/htccontacts/util/ContactsUtils;->triggerExchangeSyc(Landroid/content/Context;)V

    .line 520
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$finishActivity:Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 521
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$finishActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 525
    .end local v2           #deleteCount:I
    .end local v3           #deleteUri:Landroid/net/Uri;
    :cond_2
    return-void

    .line 505
    .restart local v3       #deleteUri:Landroid/net/Uri;
    :cond_3
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$resolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$contactUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 506
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

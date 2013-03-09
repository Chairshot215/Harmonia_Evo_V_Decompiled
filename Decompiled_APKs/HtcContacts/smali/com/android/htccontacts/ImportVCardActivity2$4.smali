.class Lcom/android/htccontacts/ImportVCardActivity2$4;
.super Ljava/lang/Object;
.source "ImportVCardActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ImportVCardActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity2$4;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$4;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mAccountList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$800(Lcom/android/htccontacts/ImportVCardActivity2;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$4;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mSelectedAccountTypeAndName:I
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity2;->access$700(Lcom/android/htccontacts/ImportVCardActivity2;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 300
    .local v6, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    sget-object v1, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$StructuredName;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 301
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$4;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity2;->access$300(Lcom/android/htccontacts/ImportVCardActivity2;)Lcom/android/vcard/VCardEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v6, Lcom/android/htccontacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' and account_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v6, Lcom/android/htccontacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 306
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$4;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$900(Lcom/android/htccontacts/ImportVCardActivity2;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 307
    const/4 v11, 0x0

    .line 308
    .local v11, num:I
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    const-string v0, "lookup"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 311
    .local v10, lookup:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const-string v0, "HTC_01"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 314
    .local v8, delUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$4;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1000(Lcom/android/htccontacts/ImportVCardActivity2;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v8, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v11, v0

    goto :goto_0

    .line 319
    .end local v8           #delUri:Landroid/net/Uri;
    .end local v10           #lookup:Ljava/lang/String;
    :cond_1
    const-string v0, "ImportVCardActivity2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of deleted contact: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v11           #num:I
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 328
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$4;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #calls: Lcom/android/htccontacts/ImportVCardActivity2;->removeUnselectedItemsFromVCardEntry()V
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1100(Lcom/android/htccontacts/ImportVCardActivity2;)V

    .line 332
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$4;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$300(Lcom/android/htccontacts/ImportVCardActivity2;)Lcom/android/vcard/VCardEntry;

    move-result-object v0

    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$4;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1200(Lcom/android/htccontacts/ImportVCardActivity2;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    .line 333
    .local v12, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$4;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #calls: Lcom/android/htccontacts/ImportVCardActivity2;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;
    invoke-static {v0, v12}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1300(Lcom/android/htccontacts/ImportVCardActivity2;Ljava/util/ArrayList;)Landroid/net/Uri;

    .line 335
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$4;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    const/4 v2, -0x1

    iget-object v4, p0, Lcom/android/htccontacts/ImportVCardActivity2$4;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1400(Lcom/android/htccontacts/ImportVCardActivity2;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/htccontacts/ImportVCardActivity2;->setResult(ILandroid/content/Intent;)V

    .line 336
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$4;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->finish()V

    .line 337
    return-void

    .line 320
    .end local v12           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v9

    .line 321
    .local v9, ex:Ljava/lang/Exception;
    const-string v0, "ImportVCardActivity2"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

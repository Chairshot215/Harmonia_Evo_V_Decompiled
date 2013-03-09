.class Lcom/android/htccontacts/ImportVCardActivity2$5;
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
    .line 341
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity2$5;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2$5;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #calls: Lcom/android/htccontacts/ImportVCardActivity2;->removeUnselectedItemsFromVCardEntry()V
    invoke-static {v1}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1100(Lcom/android/htccontacts/ImportVCardActivity2;)V

    .line 344
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2$5;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;
    invoke-static {v1}, Lcom/android/htccontacts/ImportVCardActivity2;->access$300(Lcom/android/htccontacts/ImportVCardActivity2;)Lcom/android/vcard/VCardEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$5;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1500(Lcom/android/htccontacts/ImportVCardActivity2;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 345
    .local v0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2$5;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #calls: Lcom/android/htccontacts/ImportVCardActivity2;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;
    invoke-static {v1, v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1300(Lcom/android/htccontacts/ImportVCardActivity2;Ljava/util/ArrayList;)Landroid/net/Uri;

    .line 347
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2$5;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/htccontacts/ImportVCardActivity2$5;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/htccontacts/ImportVCardActivity2;->access$1400(Lcom/android/htccontacts/ImportVCardActivity2;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/htccontacts/ImportVCardActivity2;->setResult(ILandroid/content/Intent;)V

    .line 348
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2$5;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-virtual {v1}, Lcom/android/htccontacts/ImportVCardActivity2;->finish()V

    .line 349
    return-void
.end method

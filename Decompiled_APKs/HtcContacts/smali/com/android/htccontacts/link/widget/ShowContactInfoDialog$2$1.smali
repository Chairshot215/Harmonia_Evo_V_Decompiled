.class Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2$1;
.super Ljava/lang/Object;
.source "ShowContactInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2$1;->this$1:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2$1;->this$1:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;

    iget-object v0, v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    #getter for: Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->access$300(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 354
    .local v6, _id:J
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 355
    .local v3, deleteUri:Landroid/net/Uri;
    const-string v0, "ShowContactInfoDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteUri  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2$1;->this$1:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;

    iget-object v0, v0, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$2;->this$0:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;

    #getter for: Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->mQueryHandler:Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;
    invoke-static {v0}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;->access$400(Lcom/android/htccontacts/link/widget/ShowContactInfoDialog;)Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/link/widget/ShowContactInfoDialog$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 358
    return-void
.end method

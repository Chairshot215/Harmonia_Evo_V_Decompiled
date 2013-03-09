.class Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$3;
.super Ljava/lang/Object;
.source "AllPeopleListWrapperAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->createShareMyContactInavailableDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$3;->this$0:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    iput-object p2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$3;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 318
    sget-wide v1, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mMyContactId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 319
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v2, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mMyContactId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 320
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$3;->val$context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 322
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

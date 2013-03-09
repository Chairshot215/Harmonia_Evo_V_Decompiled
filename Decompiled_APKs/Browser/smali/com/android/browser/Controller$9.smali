.class Lcom/android/browser/Controller$9;
.super Landroid/os/AsyncTask;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/browser/Tab;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1622
    iput-object p1, p0, Lcom/android/browser/Controller$9;->this$0:Lcom/android/browser/Controller;

    iput-object p2, p0, Lcom/android/browser/Controller$9;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/browser/Controller$9;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/browser/Tab;)Ljava/lang/Long;
    .locals 6
    .parameter "params"

    .prologue
    .line 1626
    iget-object v3, p0, Lcom/android/browser/Controller$9;->val$cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/browser/provider/SnapshotProvider$Snapshots;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/browser/Controller$9;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1627
    .local v2, result:Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1628
    .local v0, id:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1622
    check-cast p1, [Lcom/android/browser/Tab;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller$9;->doInBackground([Lcom/android/browser/Tab;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .parameter "id"

    .prologue
    .line 1633
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1634
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "animate_id"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1635
    iget-object v1, p0, Lcom/android/browser/Controller$9;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;
    invoke-static {v1}, Lcom/android/browser/Controller;->access$800(Lcom/android/browser/Controller;)Lcom/android/browser/UI;

    move-result-object v1

    sget-object v2, Lcom/android/browser/UI$ComboViews;->Snapshots:Lcom/android/browser/UI$ComboViews;

    invoke-interface {v1, v2, v0}, Lcom/android/browser/UI;->showComboView(Lcom/android/browser/UI$ComboViews;Landroid/os/Bundle;)V

    .line 1636
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1622
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller$9;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

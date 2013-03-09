.class public Lcom/android/htccontacts/util/ContactUriLookupTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "ContactUriLookupTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        "Lcom/android/htccontacts/util/ContactUriLookupListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/util/ContactUriLookupListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected final varargs doInBackground(Lcom/android/htccontacts/util/ContactUriLookupListener;[Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter "listener"
    .parameter "uris"

    .prologue
    .line 32
    array-length v0, p2

    if-lez v0, :cond_0

    .line 36
    invoke-interface {p1}, Lcom/android/htccontacts/util/ContactUriLookupListener;->getResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    check-cast p1, Lcom/android/htccontacts/util/ContactUriLookupListener;

    .end local p1
    check-cast p2, [Landroid/net/Uri;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/util/ContactUriLookupTask;->doInBackground(Lcom/android/htccontacts/util/ContactUriLookupListener;[Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Lcom/android/htccontacts/util/ContactUriLookupListener;Landroid/net/Uri;)V
    .locals 0
    .parameter "listener"
    .parameter "uri"

    .prologue
    .line 43
    invoke-interface {p1, p2}, Lcom/android/htccontacts/util/ContactUriLookupListener;->onLookupCompleted(Landroid/net/Uri;)V

    .line 44
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    check-cast p1, Lcom/android/htccontacts/util/ContactUriLookupListener;

    .end local p1
    check-cast p2, Landroid/net/Uri;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/util/ContactUriLookupTask;->onPostExecute(Lcom/android/htccontacts/util/ContactUriLookupListener;Landroid/net/Uri;)V

    return-void
.end method

.class Lcom/android/htccontacts/ui/QuickContactActivity$2;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/QuickContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/htccontacts/ui/QuickContactActivity$2;->this$0:Lcom/android/htccontacts/ui/QuickContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 267
    iget-object v5, p0, Lcom/android/htccontacts/ui/QuickContactActivity$2;->this$0:Lcom/android/htccontacts/ui/QuickContactActivity;

    invoke-virtual {v5}, Lcom/android/htccontacts/ui/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 270
    .local v1, lookupUri:Landroid/net/Uri;
    if-eqz v1, :cond_1

    const-string v5, "contacts"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 272
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 273
    .local v3, rawContactId:J
    iget-object v5, p0, Lcom/android/htccontacts/ui/QuickContactActivity$2;->this$0:Lcom/android/htccontacts/ui/QuickContactActivity;

    invoke-virtual {v5}, Lcom/android/htccontacts/ui/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 283
    .end local v3           #rawContactId:J
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/htccontacts/ui/QuickContactActivity$2;->this$0:Lcom/android/htccontacts/ui/QuickContactActivity;

    #getter for: Lcom/android/htccontacts/ui/QuickContactActivity;->mQuickContact:Lcom/android/htccontacts/ui/QuickContactWindow;
    invoke-static {v5}, Lcom/android/htccontacts/ui/QuickContactActivity;->access$100(Lcom/android/htccontacts/ui/QuickContactActivity;)Lcom/android/htccontacts/ui/QuickContactWindow;

    iget-object v5, p0, Lcom/android/htccontacts/ui/QuickContactActivity$2;->this$0:Lcom/android/htccontacts/ui/QuickContactActivity;

    invoke-static {v5, v1}, Lcom/android/htccontacts/ui/QuickContactWindow;->getDataUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_1
    iget-object v5, p0, Lcom/android/htccontacts/ui/QuickContactActivity$2;->this$0:Lcom/android/htccontacts/ui/QuickContactActivity;

    #getter for: Lcom/android/htccontacts/ui/QuickContactActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/htccontacts/ui/QuickContactActivity;->access$200(Lcom/android/htccontacts/ui/QuickContactActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 290
    .local v2, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/htccontacts/ui/QuickContactActivity$2;->this$0:Lcom/android/htccontacts/ui/QuickContactActivity;

    #getter for: Lcom/android/htccontacts/ui/QuickContactActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/htccontacts/ui/QuickContactActivity;->access$200(Lcom/android/htccontacts/ui/QuickContactActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    return-void

    .line 276
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    if-eqz v1, :cond_0

    .line 278
    iget-object v5, p0, Lcom/android/htccontacts/ui/QuickContactActivity$2;->this$0:Lcom/android/htccontacts/ui/QuickContactActivity;

    invoke-virtual {v5}, Lcom/android/htccontacts/ui/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.class final Lcom/android/mms/ui/MessageUtils$10;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->importVcardWithCheckExistedContact(Landroid/content/Context;[BLandroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$mvCard:[B

.field final synthetic val$onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;[BLandroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2055
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$10;->val$mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$10;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$10;->val$mvCard:[B

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$10;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVCardParseComplete(ZLcom/android/vcard/VCardEntry;)V
    .locals 10
    .parameter "bSuccess"
    .parameter "struct"

    .prologue
    const/4 v2, 0x0

    .line 2057
    if-nez p1, :cond_1

    .line 2058
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$10;->val$mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$10;->val$mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/MessageUtils$10$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageUtils$10$1;-><init>(Lcom/android/mms/ui/MessageUtils$10;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2102
    :cond_0
    :goto_0
    return-void

    .line 2068
    :cond_1
    const/4 v7, 0x1

    .line 2069
    .local v7, _import:Z
    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    .line 2070
    .local v9, name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2072
    sget-object v6, Landroid/provider/HtcContactsContract$CommonDataKinds$StructuredName;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 2074
    .local v6, CONTENT_LOOKUP_URI:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$10;->val$mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2077
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 2079
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$10;->val$mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 2080
    const/4 v7, 0x0

    .line 2081
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$10;->val$mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/MessageUtils$10$2;

    invoke-direct {v1, p0, v9}, Lcom/android/mms/ui/MessageUtils$10$2;-><init>(Lcom/android/mms/ui/MessageUtils$10;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2096
    :cond_2
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 2101
    .end local v6           #CONTENT_LOOKUP_URI:Landroid/net/Uri;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$10;->val$mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$10;->val$mvCard:[B

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$10;->val$account:Landroid/accounts/Account;

    #calls: Lcom/android/mms/ui/MessageUtils;->importVcardWithoutCheckExistedContact(Landroid/content/Context;[BLandroid/accounts/Account;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->access$100(Landroid/content/Context;[BLandroid/accounts/Account;)V

    goto :goto_0

    .line 2096
    .restart local v6       #CONTENT_LOOKUP_URI:Landroid/net/Uri;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v0
.end method

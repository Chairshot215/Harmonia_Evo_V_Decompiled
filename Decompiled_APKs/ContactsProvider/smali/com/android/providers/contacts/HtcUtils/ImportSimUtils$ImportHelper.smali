.class public Lcom/android/providers/contacts/HtcUtils/ImportSimUtils$ImportHelper;
.super Ljava/lang/Object;
.source "ImportSimUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcUtils/ImportSimUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportHelper"
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSimCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    .locals 0
    .parameter "account"
    .parameter "contentResolver"
    .parameter "simCursor"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/providers/contacts/HtcUtils/ImportSimUtils$ImportHelper;->mAccount:Landroid/accounts/Account;

    .line 89
    iput-object p2, p0, Lcom/android/providers/contacts/HtcUtils/ImportSimUtils$ImportHelper;->mResolver:Landroid/content/ContentResolver;

    .line 90
    iput-object p3, p0, Lcom/android/providers/contacts/HtcUtils/ImportSimUtils$ImportHelper;->mSimCursor:Landroid/database/Cursor;

    .line 91
    return-void
.end method

.method private getGoogleGroupIdString(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 9
    .parameter "account"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 117
    const/4 v6, 0x0

    .line 118
    .local v6, groupString:Ljava/lang/String;
    const-string v0, "com.google.GAIA"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/ImportSimUtils$ImportHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "sourceid"

    aput-object v3, v2, v8

    const-string v3, "title=? AND auto_add=1 "

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "My Contacts"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 127
    .local v7, tmpCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 131
    :cond_0
    if-eqz v7, :cond_1

    .line 132
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 138
    .end local v7           #tmpCursor:Landroid/database/Cursor;
    :cond_1
    return-object v6

    .line 131
    .restart local v7       #tmpCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 132
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private onFinish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/ImportSimUtils$ImportHelper;->mAccount:Landroid/accounts/Account;

    .line 95
    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/ImportSimUtils$ImportHelper;->mResolver:Landroid/content/ContentResolver;

    .line 96
    return-void
.end method


# virtual methods
.method public start()I
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/providers/contacts/HtcUtils/ImportSimUtils$ImportHelper;->mSimCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/providers/contacts/HtcUtils/ImportSimUtils$ImportHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/providers/contacts/HtcUtils/ImportSimUtils$ImportHelper;->mAccount:Landroid/accounts/Account;

    invoke-static {v1, v2, v3}, Lcom/htc/util/contacts/ImportUtils;->importSimIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)I

    move-result v0

    .line 109
    .local v0, insertRawContact:I
    invoke-direct {p0}, Lcom/android/providers/contacts/HtcUtils/ImportSimUtils$ImportHelper;->onFinish()V

    .line 112
    return v0
.end method

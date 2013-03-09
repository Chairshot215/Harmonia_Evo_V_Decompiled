.class Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;
.super Ljava/lang/Thread;
.source "CSDatabaseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/util/CSDatabaseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteAccountInfoThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceID:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mHashpw:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "email"
    .parameter "deviceID"
    .parameter "hashpw"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;->mEmail:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;->mDeviceID:Ljava/lang/String;

    .line 172
    iput-object p4, p0, Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;->mHashpw:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 177
    iget-object v1, p0, Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 178
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 180
    .local v7, count:I
    :try_start_0
    sget-object v1, Lcom/htc/cs/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 181
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 186
    .local v9, values:Landroid/content/ContentValues;
    const-string v1, "email"

    iget-object v2, p0, Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;->mEmail:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "handsetDeviceId"

    iget-object v2, p0, Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;->mDeviceID:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "hashpw"

    iget-object v2, p0, Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;->mHashpw:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "authkey"

    const-string v2, ""

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "service"

    iget-object v2, p0, Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-eqz v7, :cond_0

    .line 193
    sget-object v1, Lcom/htc/cs/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/htc/cs/util/CSDatabaseUtil$WriteAccountInfoThread;->mContext:Landroid/content/Context;

    #calls: Lcom/htc/cs/util/CSDatabaseUtil;->getAccountInfo(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/htc/cs/util/CSDatabaseUtil;->access$000(Landroid/content/Context;)V

    .line 205
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #values:Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 195
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_0
    sget-object v1, Lcom/htc/cs/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 203
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

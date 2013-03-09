.class Lcom/android/browser/Tab$11;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 2245
    iput-object p1, p0, Lcom/android/browser/Tab$11;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2249
    iget-object v2, p0, Lcom/android/browser/Tab$11;->this$0:Lcom/android/browser/Tab;

    iget-object v2, v2, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2250
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 2252
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/browser/provider/BrowserProvider2$Thumbnails;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/browser/Tab$11;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mId:J
    invoke-static {v3}, Lcom/android/browser/Tab;->access$2200(Lcom/android/browser/Tab;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2253
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "thumbnail"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2255
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2256
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 2257
    .local v7, data:[B
    if-eqz v7, :cond_0

    array-length v2, v7

    if-lez v2, :cond_0

    .line 2258
    iget-object v2, p0, Lcom/android/browser/Tab$11;->this$0:Lcom/android/browser/Tab;

    #calls: Lcom/android/browser/Tab;->updateCaptureFromBlob([B)V
    invoke-static {v2, v7}, Lcom/android/browser/Tab;->access$2300(Lcom/android/browser/Tab;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2262
    .end local v7           #data:[B
    :cond_0
    if-eqz v6, :cond_1

    .line 2263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2266
    :cond_1
    return-void

    .line 2262
    .end local v1           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 2263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

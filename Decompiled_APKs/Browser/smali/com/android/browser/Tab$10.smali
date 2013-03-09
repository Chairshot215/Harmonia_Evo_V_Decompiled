.class Lcom/android/browser/Tab$10;
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
    .line 2233
    iput-object p1, p0, Lcom/android/browser/Tab$10;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2237
    iget-object v1, p0, Lcom/android/browser/Tab$10;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2239
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/android/browser/provider/BrowserProvider2$Thumbnails;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/browser/Tab$10;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mId:J
    invoke-static {v2}, Lcom/android/browser/Tab;->access$2200(Lcom/android/browser/Tab;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2242
    :goto_0
    return-void

    .line 2241
    :catch_0
    move-exception v1

    goto :goto_0
.end method

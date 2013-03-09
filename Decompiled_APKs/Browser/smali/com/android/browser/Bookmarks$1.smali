.class final Lcom/android/browser/Bookmarks$1;
.super Landroid/os/AsyncTask;
.source "Bookmarks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Bookmarks;->updateFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$favicon:Landroid/graphics/Bitmap;

.field final synthetic val$originalUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/browser/Bookmarks$1;->val$favicon:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/browser/Bookmarks$1;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/browser/Bookmarks$1;->val$originalUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/Bookmarks$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private updateImages(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "cr"
    .parameter "url"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-static {p2}, Lcom/android/browser/Bookmarks;->removeQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, iurl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    const-string v1, "url_key"

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v1, Landroid/provider/BrowserContract$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, p3, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 202
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/Bookmarks$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "unused"

    .prologue
    .line 205
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 206
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/browser/Bookmarks$1;->val$favicon:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 209
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "favicon"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 211
    iget-object v2, p0, Lcom/android/browser/Bookmarks$1;->val$cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/browser/Bookmarks$1;->val$originalUrl:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/browser/Bookmarks$1;->updateImages(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 212
    iget-object v2, p0, Lcom/android/browser/Bookmarks$1;->val$cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/browser/Bookmarks$1;->val$url:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/browser/Bookmarks$1;->updateImages(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 213
    const/4 v2, 0x0

    return-object v2
.end method

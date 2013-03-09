.class public Lcom/google/android/googlequicksearchbox/PackageIconLoader;
.super Ljava/lang/Object;
.source "PackageIconLoader.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/IconLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/PackageIconLoader$1;,
        Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask;,
        Lcom/google/android/googlequicksearchbox/PackageIconLoader$OpenResourceIdResult;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Landroid/content/Context;

.field private final mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private mPackageContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;

.field private final mUiThread:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;)V
    .locals 0
    .parameter "context"
    .parameter "config"
    .parameter "packageName"
    .parameter "uiThread"
    .parameter "iconLoaderExecutor"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 76
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mPackageName:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mUiThread:Landroid/os/Handler;

    .line 78
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/PackageIconLoader;)Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mIconLoaderExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/PackageIconLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mUiThread:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/googlequicksearchbox/PackageIconLoader;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/googlequicksearchbox/PackageIconLoader;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private ensurePackageContext()Z
    .locals 4

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mPackageContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mPackageContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "QSB.PackageIconLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    .line 159
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, scheme:Ljava/lang/String;
    const-string v5, "android.resource"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 162
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->getResourceId(Landroid/net/Uri;)Lcom/google/android/googlequicksearchbox/PackageIconLoader$OpenResourceIdResult;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 164
    .local v2, r:Lcom/google/android/googlequicksearchbox/PackageIconLoader$OpenResourceIdResult;
    :try_start_1
    iget-object v5, v2, Lcom/google/android/googlequicksearchbox/PackageIconLoader$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v7, v2, Lcom/google/android/googlequicksearchbox/PackageIconLoader$OpenResourceIdResult;->id:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 187
    .end local v2           #r:Lcom/google/android/googlequicksearchbox/PackageIconLoader$OpenResourceIdResult;
    .end local v3           #scheme:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 165
    .restart local v2       #r:Lcom/google/android/googlequicksearchbox/PackageIconLoader$OpenResourceIdResult;
    .restart local v3       #scheme:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 166
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resource does not exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 185
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v2           #r:Lcom/google/android/googlequicksearchbox/PackageIconLoader$OpenResourceIdResult;
    .end local v3           #scheme:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 186
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const-string v5, "QSB.PackageIconLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 187
    goto :goto_0

    .line 170
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v3       #scheme:Ljava/lang/String;
    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 171
    .local v4, stream:Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 172
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 175
    :cond_1
    :try_start_4
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v7, v4, v8}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 179
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 180
    :catch_2
    move-exception v0

    .line 181
    .local v0, ex:Ljava/io/IOException;
    :try_start_6
    const-string v7, "QSB.PackageIconLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing icon stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 178
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 179
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 182
    :goto_1
    :try_start_8
    throw v5

    .line 180
    :catch_3
    move-exception v0

    .line 181
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v7, "QSB.PackageIconLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing icon stream for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1
.end method

.method private getResourceId(Landroid/net/Uri;)Lcom/google/android/googlequicksearchbox/PackageIconLoader$OpenResourceIdResult;
    .locals 11
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 203
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, authority:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 206
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No authority: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 209
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 214
    .local v6, r:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 215
    .local v5, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 216
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 210
    .end local v5           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 211
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get resources: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 218
    .end local v2           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #r:Landroid/content/res/Resources;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 220
    .local v4, len:I
    if-ne v4, v10, :cond_2

    .line 222
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 231
    .local v3, id:I
    :goto_0
    if-nez v3, :cond_4

    .line 232
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No resource found for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 223
    .end local v3           #id:I
    :catch_1
    move-exception v1

    .line 224
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Single path segment is not a resource ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 226
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    .line 227
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3       #id:I
    goto :goto_0

    .line 229
    .end local v3           #id:I
    :cond_3
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "More than two path segments: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 234
    .restart local v3       #id:I
    :cond_4
    new-instance v7, Lcom/google/android/googlequicksearchbox/PackageIconLoader$OpenResourceIdResult;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/google/android/googlequicksearchbox/PackageIconLoader$OpenResourceIdResult;-><init>(Lcom/google/android/googlequicksearchbox/PackageIconLoader;Lcom/google/android/googlequicksearchbox/PackageIconLoader$1;)V

    .line 235
    .local v7, res:Lcom/google/android/googlequicksearchbox/PackageIconLoader$OpenResourceIdResult;
    iput-object v6, v7, Lcom/google/android/googlequicksearchbox/PackageIconLoader$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    .line 236
    iput v3, v7, Lcom/google/android/googlequicksearchbox/PackageIconLoader$OpenResourceIdResult;->id:I

    .line 237
    return-object v7
.end method

.method private maybeOverrideIcon(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "drawableId"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 97
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 98
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Config;->getSourceIconOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, override:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 103
    .end local v0           #override:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public getIcon(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/util/NowOrLater;
    .locals 9
    .parameter "drawableId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/googlequicksearchbox/util/NowOrLater",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    :cond_0
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/Now;

    invoke-direct {v0, v8}, Lcom/google/android/googlequicksearchbox/util/Now;-><init>(Ljava/lang/Object;)V

    .line 136
    :goto_0
    return-object v0

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->ensurePackageContext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 112
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/Now;

    invoke-direct {v0, v8}, Lcom/google/android/googlequicksearchbox/util/Now;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->maybeOverrideIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 120
    .local v3, resourceId:I
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 121
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/Now;

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/util/Now;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, drawable:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    goto :goto_0

    .line 122
    .end local v0           #drawable:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #resourceId:I
    :catch_0
    move-exception v2

    .line 124
    .local v2, nfe:Ljava/lang/NumberFormatException;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 125
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "android.resource"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/Now;

    invoke-direct {p0, v4}, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/googlequicksearchbox/util/Now;-><init>(Ljava/lang/Object;)V

    .restart local v0       #drawable:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    goto :goto_0

    .line 129
    .end local v0           #drawable:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    :cond_3
    new-instance v0, Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask;

    invoke-direct {v0, p0, v4}, Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask;-><init>(Lcom/google/android/googlequicksearchbox/PackageIconLoader;Landroid/net/Uri;)V

    .restart local v0       #drawable:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    goto :goto_0

    .line 131
    .end local v0           #drawable:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 133
    .local v2, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "QSB.PackageIconLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Icon resource not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/Now;

    invoke-direct {v0, v8}, Lcom/google/android/googlequicksearchbox/util/Now;-><init>(Ljava/lang/Object;)V

    .restart local v0       #drawable:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    goto :goto_0
.end method

.method public getIconUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "drawableId"

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-object v2

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->ensurePackageContext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 146
    .local v1, resourceId:I
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader;->mPackageContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/android/googlequicksearchbox/util/Util;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 147
    .end local v1           #resourceId:I
    :catch_0
    move-exception v0

    .line 148
    .local v0, nfe:Ljava/lang/NumberFormatException;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

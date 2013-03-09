.class public abstract Lcom/android/htccontacts/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ContactPhotoManager$1;,
        Lcom/android/htccontacts/ContactPhotoManager$BlankDefaultImageProvider;,
        Lcom/android/htccontacts/ContactPhotoManager$AvatarDefaultImageProvider;,
        Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;
    }
.end annotation


# static fields
.field public static final CONTACT_PHOTO_SERVICE:Ljava/lang/String; = "contactPhotos"

.field protected static final DEBUG:Z = false

.field public static final DEFAULT_AVATER:Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider; = null

.field public static final DEFAULT_BLANK:Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider; = null

.field static final TAG:Ljava/lang/String; = "ContactPhotoManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    new-instance v0, Lcom/android/htccontacts/ContactPhotoManager$AvatarDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ContactPhotoManager$AvatarDefaultImageProvider;-><init>(Lcom/android/htccontacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/htccontacts/ContactPhotoManager;->DEFAULT_AVATER:Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;

    .line 106
    new-instance v0, Lcom/android/htccontacts/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/android/htccontacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/htccontacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/android/htccontacts/ContactPhotoManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 126
    const-class v1, Lcom/android/htccontacts/ContactPhotoManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/htccontacts/ContactPhotoManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDefaultAvatarResId(ZZ)I
    .locals 1
    .parameter "hires"
    .parameter "darkTheme"

    .prologue
    .line 73
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const v0, 0x7f020024

    .line 76
    :goto_0
    return v0

    .line 74
    :cond_0
    if-eqz p0, :cond_1

    const v0, 0x7f020025

    goto :goto_0

    .line 75
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f020026

    goto :goto_0

    .line 76
    :cond_2
    const v0, 0x7f020027

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/htccontacts/ContactPhotoManager;
    .locals 5
    .parameter "context"

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, applicationContext:Landroid/content/Context;
    const-string v2, "contactPhotos"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/ContactPhotoManager;

    .line 116
    .local v1, service:Lcom/android/htccontacts/ContactPhotoManager;
    if-nez v1, :cond_0

    .line 117
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/htccontacts/ContactPhotoManager;

    move-result-object v1

    .line 118
    const-string v2, "ContactPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No contact photo service in context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final loadPhoto(Landroid/widget/ImageView;JZZ)V
    .locals 7
    .parameter "view"
    .parameter "photoId"
    .parameter "hires"
    .parameter "darkTheme"

    .prologue
    .line 142
    sget-object v6, Lcom/android/htccontacts/ContactPhotoManager;->DEFAULT_AVATER:Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/htccontacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZLcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;)V

    .line 143
    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;JZZLcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZ)V
    .locals 6
    .parameter "view"
    .parameter "photoUri"
    .parameter "hires"
    .parameter "darkTheme"

    .prologue
    .line 158
    sget-object v5, Lcom/android/htccontacts/ContactPhotoManager;->DEFAULT_AVATER:Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;)V

    .line 159
    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;)V
.end method

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract removePhoto(Landroid/widget/ImageView;)V
.end method

.method public abstract resume()V
.end method

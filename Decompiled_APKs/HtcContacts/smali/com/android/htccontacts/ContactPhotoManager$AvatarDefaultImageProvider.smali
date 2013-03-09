.class Lcom/android/htccontacts/ContactPhotoManager$AvatarDefaultImageProvider;
.super Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvatarDefaultImageProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ContactPhotoManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhotoManager$AvatarDefaultImageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;ZZ)V
    .locals 1
    .parameter "view"
    .parameter "hires"
    .parameter "darkTheme"

    .prologue
    .line 86
    invoke-static {p2, p3}, Lcom/android/htccontacts/ContactPhotoManager;->getDefaultAvatarResId(ZZ)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    return-void
.end method

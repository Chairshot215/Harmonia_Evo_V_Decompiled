.class Lcom/android/htccontacts/ContactPhotoManager$BlankDefaultImageProvider;
.super Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlankDefaultImageProvider"
.end annotation


# static fields
.field private static sDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ContactPhotoManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/htccontacts/ContactPhotoManager$BlankDefaultImageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;ZZ)V
    .locals 4
    .parameter "view"
    .parameter "hires"
    .parameter "darkTheme"

    .prologue
    .line 95
    sget-object v1, Lcom/android/htccontacts/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v1, Lcom/android/htccontacts/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    sget-object v1, Lcom/android/htccontacts/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method

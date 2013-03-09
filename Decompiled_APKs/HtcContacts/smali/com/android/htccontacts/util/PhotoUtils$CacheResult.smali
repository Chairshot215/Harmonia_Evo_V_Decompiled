.class public Lcom/android/htccontacts/util/PhotoUtils$CacheResult;
.super Ljava/lang/Object;
.source "PhotoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/PhotoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheResult"
.end annotation


# instance fields
.field public bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field public isCached:Z


# direct methods
.method public constructor <init>(ZLandroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .parameter "cached"
    .parameter "initialBitmap"

    .prologue
    .line 933
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 934
    iput-boolean p1, p0, Lcom/android/htccontacts/util/PhotoUtils$CacheResult;->isCached:Z

    .line 935
    iput-object p2, p0, Lcom/android/htccontacts/util/PhotoUtils$CacheResult;->bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 936
    return-void
.end method

.class public final Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;
.super Ljava/lang/Object;
.source "HtcSkinUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/skin/HtcSkinUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkinPackageInfo"
.end annotation


# instance fields
.field public skinPackageName:Ljava/lang/String;

.field public skinPreviewImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;->skinPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;->skinPreviewImage:Landroid/graphics/Bitmap;

    return-void
.end method

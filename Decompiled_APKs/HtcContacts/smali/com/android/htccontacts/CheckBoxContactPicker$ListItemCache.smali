.class public final Lcom/android/htccontacts/CheckBoxContactPicker$ListItemCache;
.super Ljava/lang/Object;
.source "CheckBoxContactPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/CheckBoxContactPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ListItemCache"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public checkbox:Landroid/widget/CheckBox;

.field public mNameView:Landroid/widget/TextView;

.field public mPhotoView:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1006
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

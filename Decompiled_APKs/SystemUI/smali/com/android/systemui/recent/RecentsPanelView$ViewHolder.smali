.class final Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewHolder"
.end annotation


# instance fields
.field descriptionView:Landroid/widget/TextView;

.field iconView:Landroid/widget/ImageView;

.field labelView:Landroid/widget/TextView;

.field popupMenu:Landroid/widget/PopupMenu;

.field taskDescription:Lcom/android/systemui/recent/TaskDescription;

.field thumbnailView:Landroid/view/View;

.field thumbnailViewImage:Landroid/widget/ImageView;

.field thumbnailViewImageBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

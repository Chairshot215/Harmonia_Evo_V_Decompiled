.class public final Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;
.super Ljava/lang/Object;
.source "GroupEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "GroupMemberItemCache"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mClickListener:Lcom/android/htccontacts/group/GroupEditActivity$OnRemoveClickListener;

.field public mPersonNameView:Landroid/widget/TextView;

.field public mPhotoView:Landroid/widget/ImageView;

.field public mRemoveButtonView:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1721
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

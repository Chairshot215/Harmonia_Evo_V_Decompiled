.class final Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;
.super Ljava/lang/Object;
.source "ContactSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GroupListItemViews"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public nGroupID:J

.field public photoView:Landroid/widget/ImageView;

.field public txtviewGroupMemberCount:Landroid/widget/TextView;

.field public txtviewGroupName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 882
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;-><init>()V

    return-void
.end method

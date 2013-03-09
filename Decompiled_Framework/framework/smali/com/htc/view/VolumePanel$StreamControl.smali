.class Lcom/htc/view/VolumePanel$StreamControl;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamControl"
.end annotation


# instance fields
.field desTextRes:I

.field divider:Landroid/widget/ImageView;

.field group:Landroid/view/ViewGroup;

.field icon:Landroid/widget/ImageView;

.field iconMuteRes:I

.field iconOutDoorRes:I

.field iconRes:I

.field iconVibrateRes:I

.field line_divider:Landroid/widget/ImageView;

.field message:Landroid/widget/TextView;

.field seekbarView:Landroid/widget/SeekBar;

.field streamType:I

.field final synthetic this$0:Lcom/htc/view/VolumePanel;


# direct methods
.method private constructor <init>(Lcom/htc/view/VolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/view/VolumePanel$StreamControl;->this$0:Lcom/htc/view/VolumePanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/view/VolumePanel;Lcom/htc/view/VolumePanel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel$StreamControl;-><init>(Lcom/htc/view/VolumePanel;)V

    return-void
.end method

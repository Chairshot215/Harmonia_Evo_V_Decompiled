.class public Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
.super Ljava/lang/Object;
.source "ContactWidgetMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactInfo"
.end annotation


# instance fields
.field public RichInfoAvtivityID:J

.field public RichInfoDate:Ljava/lang/String;

.field public RichInfoMessage:Ljava/lang/String;

.field public RichInfoMessageAddr:Ljava/lang/String;

.field public RichInfoResIconID:I

.field public RichInfoResPackage:Ljava/lang/String;

.field public RichInfoStatusData1:Ljava/lang/String;

.field public RichInfoStatusData4:Ljava/lang/String;

.field public RichInfoStatusID:J

.field public RichInfoStatusMimetype:Ljava/lang/String;

.field public RichInfoTime:J

.field public RichInfoType:I

.field public action:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public address:Ljava/lang/String;

.field public bHasContactPhotoId:Z

.field public count:I

.field public displayname:Ljava/lang/String;

.field private mBtnActionListListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

.field private mBtnBarListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

.field private mBtnEmptyListListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

.field private mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

.field public name:Ljava/lang/String;

.field public phonenumer:Ljava/lang/String;

.field public photo:Landroid/graphics/Bitmap;

.field public pid:J

.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

.field public type:I

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnEmptyListListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnEmptyListListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnBarListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnBarListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnActionListListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnActionListListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    return-object p1
.end method

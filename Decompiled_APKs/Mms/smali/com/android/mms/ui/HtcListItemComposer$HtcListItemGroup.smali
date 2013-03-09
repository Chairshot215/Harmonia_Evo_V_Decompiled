.class public Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
.super Ljava/lang/Object;
.source "HtcListItemComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/HtcListItemComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcListItemGroup"
.end annotation


# instance fields
.field public Badge:Lcom/htc/widget/HtcListItemQuickContactBadge;

.field public Checkbox:Lcom/htc/widget/HtcListItemCheckBox;

.field public ImgButton:Lcom/htc/widget/HtcListItemImageButton;

.field public ListItem:Landroid/view/View;

.field public Photo:Lcom/htc/widget/HtcListItemImageButton;

.field public Stamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

.field public Text:Lcom/htc/widget/HtcListItem2LineText;

.field public ThreadListItem:Lcom/htc/widget/HtcListItemMessageBody;

.field public TitleImage:Lcom/htc/widget/HtcListItemTileImage;

.field public Type:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

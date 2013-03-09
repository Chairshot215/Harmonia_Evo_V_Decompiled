.class Lcom/android/mms/ui/IconListAdapter$IconItemGroup;
.super Ljava/lang/Object;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/IconListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconItemGroup"
.end annotation


# instance fields
.field protected ListItem:Landroid/view/View;

.field protected Text:Lcom/htc/widget/HtcListItem2LineText;

.field protected img1:Lcom/htc/widget/HtcListItemImageButton;

.field protected img2:Lcom/htc/widget/HtcListItemImageButton;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/IconListAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/mms/ui/IconListAdapter$IconItemGroup;-><init>()V

    return-void
.end method

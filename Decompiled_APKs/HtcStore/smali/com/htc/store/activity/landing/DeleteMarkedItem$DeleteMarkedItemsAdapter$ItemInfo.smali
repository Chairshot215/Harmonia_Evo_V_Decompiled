.class Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;
.super Ljava/lang/Object;
.source "DeleteMarkedItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemInfo"
.end annotation


# instance fields
.field public checkBox:Lcom/htc/widget/HtcListItemCheckBox;

.field public icon:Lcom/htc/widget/HtcListItemColorIcon;

.field final synthetic this$1:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

.field public titleAndType:Lcom/htc/widget/HtcListItem2LineText;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;->this$1:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;Lcom/htc/store/activity/landing/DeleteMarkedItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter$ItemInfo;-><init>(Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;)V

    return-void
.end method

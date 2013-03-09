.class Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ListCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mIcon:Lcom/htc/widget/HtcListItemColorIcon;

.field public mText:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$1:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;->this$1:Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;Lcom/htc/store/activity/list/ListCategory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/htc/store/activity/list/ListCategory$CategoryAdapter$ViewHolder;-><init>(Lcom/htc/store/activity/list/ListCategory$CategoryAdapter;)V

    return-void
.end method

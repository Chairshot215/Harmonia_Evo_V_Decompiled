.class Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "LandingNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mIcon:Lcom/htc/widget/HtcListItemColorIcon;

.field public mText:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$1:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 2297
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;->this$1:Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;Lcom/htc/store/activity/landing/LandingNavigation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2297
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter$ViewHolder;-><init>(Lcom/htc/store/activity/landing/LandingNavigation$NaviAdapter;)V

    return-void
.end method

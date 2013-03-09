.class Lcom/htc/store/activity/landing/LandingNavigation$NaviScrollListener;
.super Ljava/lang/Object;
.source "LandingNavigation.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NaviScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingNavigation;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;)V
    .locals 0
    .parameter

    .prologue
    .line 2105
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$NaviScrollListener;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;Lcom/htc/store/activity/landing/LandingNavigation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2105
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation$NaviScrollListener;-><init>(Lcom/htc/store/activity/landing/LandingNavigation;)V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 2108
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "state"

    .prologue
    .line 2126
    return-void
.end method

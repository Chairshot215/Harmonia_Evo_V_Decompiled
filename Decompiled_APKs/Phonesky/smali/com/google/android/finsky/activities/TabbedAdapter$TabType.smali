.class Lcom/google/android/finsky/activities/TabbedAdapter$TabType;
.super Ljava/lang/Object;
.source "TabbedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/TabbedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabType"
.end annotation


# instance fields
.field public slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

.field private tabBundle:Landroid/os/Bundle;

.field public tabListData:Lcom/google/android/finsky/api/model/DfeList;

.field public final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->type:I

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;

    return-object p1
.end method

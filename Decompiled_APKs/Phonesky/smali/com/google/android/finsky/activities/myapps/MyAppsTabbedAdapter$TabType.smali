.class public Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;
.super Ljava/lang/Object;
.source "MyAppsTabbedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabType"
.end annotation


# instance fields
.field public slidingPanelTab:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

.field private tabBundle:Landroid/os/Bundle;

.field public final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->type:I

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;

    return-object p1
.end method

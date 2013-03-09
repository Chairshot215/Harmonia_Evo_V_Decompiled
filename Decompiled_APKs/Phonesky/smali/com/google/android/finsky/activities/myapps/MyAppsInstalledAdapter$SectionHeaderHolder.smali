.class final Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;
.super Ljava/lang/Object;
.source "MyAppsInstalledAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SectionHeaderHolder"
.end annotation


# instance fields
.field public final bulkActionButton:Landroid/widget/Button;

.field public final countView:Landroid/widget/TextView;

.field public final divider:Landroid/view/View;

.field public final loadingProgress:Landroid/view/View;

.field public final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "convertView"

    .prologue
    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    const v0, 0x7f080181

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->titleView:Landroid/widget/TextView;

    .line 638
    const v0, 0x7f080180

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    .line 639
    const v0, 0x7f0800df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->loadingProgress:Landroid/view/View;

    .line 640
    const v0, 0x7f080183

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->divider:Landroid/view/View;

    .line 641
    const v0, 0x7f080182

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->countView:Landroid/widget/TextView;

    .line 643
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 644
    return-void
.end method

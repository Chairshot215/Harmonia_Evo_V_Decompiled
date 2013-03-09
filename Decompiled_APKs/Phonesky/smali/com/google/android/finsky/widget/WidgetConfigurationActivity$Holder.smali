.class Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;
.super Ljava/lang/Object;
.source "WidgetConfigurationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/WidgetConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# instance fields
.field final container:Landroid/view/ViewGroup;

.field final icon:Landroid/widget/ImageView;

.field final name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const v0, 0x7f08022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;->container:Landroid/view/ViewGroup;

    .line 181
    const v0, 0x7f08022e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;->name:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f08022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;->icon:Landroid/widget/ImageView;

    .line 183
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

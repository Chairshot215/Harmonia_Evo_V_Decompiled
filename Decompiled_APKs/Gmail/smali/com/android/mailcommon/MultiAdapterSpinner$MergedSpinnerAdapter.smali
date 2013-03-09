.class Lcom/android/mailcommon/MultiAdapterSpinner$MergedSpinnerAdapter;
.super Lcom/android/mailcommon/MergedAdapter;
.source "MultiAdapterSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mailcommon/MultiAdapterSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergedSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mailcommon/MergedAdapter",
        "<",
        "Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mailcommon/MergedAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mailcommon/MultiAdapterSpinner$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mailcommon/MultiAdapterSpinner$MergedSpinnerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/android/mailcommon/MergedAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

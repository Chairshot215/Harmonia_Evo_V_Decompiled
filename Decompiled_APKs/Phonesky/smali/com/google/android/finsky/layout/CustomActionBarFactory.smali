.class public Lcom/google/android/finsky/layout/CustomActionBarFactory;
.super Ljava/lang/Object;
.source "CustomActionBarFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;
    .locals 1
    .parameter "activity"

    .prologue
    .line 14
    invoke-static {}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->shouldUseSystemActionBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/google/android/finsky/layout/FakeActionBar;

    invoke-direct {v0}, Lcom/google/android/finsky/layout/FakeActionBar;-><init>()V

    .line 22
    :goto_0
    return-object v0

    .line 19
    :cond_0
    new-instance v0, Lcom/google/android/finsky/layout/NativeActionBar;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/NativeActionBar;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 22
    :cond_1
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/LegacyActionBar;

    goto :goto_0
.end method

.method public static shouldUseSystemActionBar()Z
    .locals 2

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

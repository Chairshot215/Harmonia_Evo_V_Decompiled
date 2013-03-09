.class public Lcom/android/phone/util/Auxiliary$Views;
.super Ljava/lang/Object;
.source "Auxiliary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/util/Auxiliary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Views"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setVisibility(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "visibility"

    .prologue
    .line 38
    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_0
    return-void
.end method

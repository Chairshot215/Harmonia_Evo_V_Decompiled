.class public Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
.super Ljava/lang/Object;
.source "BaseCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/BaseCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabSpec"
.end annotation


# instance fields
.field public launchIntent:Landroid/content/Intent;

.field public onDrawableRes:I

.field public overlayDrawableRes:I

.field public removable:Z

.field public restDrawableRes:I

.field public tag:Ljava/lang/String;

.field public taskState:I

.field public titleStringRes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 88
    const/16 v0, 0x63

    iput v0, p0, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->taskState:I

    return-void
.end method

.class Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/clockwidget/lpsense/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInfo"
.end annotation


# instance fields
.field public appIcon:Landroid/graphics/drawable/Drawable;

.field public appName:Ljava/lang/CharSequence;

.field index:I

.field public pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "pName"
    .parameter "pIndex"
    .parameter "aName"

    .prologue
    .line 365
    invoke-static {}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$15()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 366
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "pName"
    .parameter "pIndex"
    .parameter "aName"
    .parameter "aIcon"

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput p2, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->index:I

    .line 370
    iput-object p1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->pkgName:Ljava/lang/String;

    .line 371
    iput-object p3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->appName:Ljava/lang/CharSequence;

    .line 372
    iput-object p4, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 373
    return-void
.end method


# virtual methods
.method public refreshIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 352
    :cond_0
    iput-object p1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public refreshLabel(Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 356
    if-nez p1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p1, Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;->appName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p1, Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;->appName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->appName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

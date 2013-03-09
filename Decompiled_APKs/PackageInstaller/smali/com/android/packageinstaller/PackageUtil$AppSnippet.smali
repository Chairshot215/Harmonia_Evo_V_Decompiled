.class public Lcom/android/packageinstaller/PackageUtil$AppSnippet;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppSnippet"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    .line 142
    iput-object p2, p0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    .line 143
    return-void
.end method

.class Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field public bestResolve:Landroid/content/pm/ResolveInfo;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1348
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ui/QuickContactWindow$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1348
    invoke-direct {p0}, Lcom/android/htccontacts/ui/QuickContactWindow$ResolveCache$Entry;-><init>()V

    return-void
.end method

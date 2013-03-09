.class public final Landroid/support/v4/view/o;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/r;

    invoke-direct {v0}, Landroid/support/v4/view/r;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/s;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/q;

    invoke-direct {v0}, Landroid/support/v4/view/q;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/s;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/view/p;

    invoke-direct {v0}, Landroid/support/v4/view/p;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/s;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/s;

    invoke-interface {v0, p0}, Landroid/support/v4/view/s;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/s;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/s;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.class public final Landroid/support/v4/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/support/v4/b/c;)Landroid/os/Parcelable$Creator;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/b/d;

    invoke-direct {v0, p0}, Landroid/support/v4/b/d;-><init>(Landroid/support/v4/b/c;)V

    :cond_0
    new-instance v0, Landroid/support/v4/b/b;

    invoke-direct {v0, p0}, Landroid/support/v4/b/b;-><init>(Landroid/support/v4/b/c;)V

    return-object v0
.end method

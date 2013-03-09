.class Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;
.super Ljava/lang/Object;
.source "ChooseTypeAndAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseTypeAndAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountInfo"
.end annotation


# instance fields
.field final account:Landroid/accounts/Account;

.field private final checked:Z

.field final drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;->account:Landroid/accounts/Account;

    iput-object p2, p0, Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;->drawable:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;->checked:Z

    return-void
.end method

.method static synthetic access$200(Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;->checked:Z

    return v0
.end method

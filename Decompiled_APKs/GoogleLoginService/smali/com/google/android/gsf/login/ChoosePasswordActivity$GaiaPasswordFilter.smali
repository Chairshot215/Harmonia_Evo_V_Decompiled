.class Lcom/google/android/gsf/login/ChoosePasswordActivity$GaiaPasswordFilter;
.super Landroid/text/LoginFilter$PasswordFilterGMail;
.source "ChoosePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/ChoosePasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GaiaPasswordFilter"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "append"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Landroid/text/LoginFilter$PasswordFilterGMail;-><init>(Z)V

    .line 194
    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 199
    const/16 v0, 0x20

    if-le p1, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

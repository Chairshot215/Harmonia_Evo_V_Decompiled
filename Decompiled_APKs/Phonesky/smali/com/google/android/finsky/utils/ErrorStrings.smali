.class public Lcom/google/android/finsky/utils/ErrorStrings;
.super Ljava/lang/Object;
.source "ErrorStrings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "error"

    .prologue
    const v3, 0x7f0700fb

    .line 20
    instance-of v0, p1, Lcom/google/android/volley/DisplayMessageError;

    if-eqz v0, :cond_0

    .line 21
    check-cast p1, Lcom/google/android/volley/DisplayMessageError;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/volley/DisplayMessageError;->getDisplayErrorHtml()Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 22
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_1

    .line 23
    const v0, 0x7f070103

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_1
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_2

    .line 25
    const v0, 0x7f070101

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_2
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_3

    .line 27
    const v0, 0x7f0700fc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_3
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_4
    const-string v0, "No specific error message for: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

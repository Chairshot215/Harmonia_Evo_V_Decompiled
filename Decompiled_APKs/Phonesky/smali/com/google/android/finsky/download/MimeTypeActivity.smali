.class public Lcom/google/android/finsky/download/MimeTypeActivity;
.super Landroid/app/Activity;
.source "MimeTypeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 19
    const-string v0, "MimeTypeActivity finishing"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/finsky/download/MimeTypeActivity;->finish()V

    .line 21
    return-void
.end method

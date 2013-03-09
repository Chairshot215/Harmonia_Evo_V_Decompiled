.class public Lfr/allo_mobile/lpsense/classicsense/Skin;
.super Landroid/app/Activity;
.source "Skin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lfr/allo_mobile/lpsense/classicsense/Skin;->setContentView(I)V

    .line 13
    return-void
.end method

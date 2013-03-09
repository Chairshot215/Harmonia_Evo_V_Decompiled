.class public Lcom/android/mms/util/ViewManager;
.super Lcom/android/mms/util/ResIdManager;
.source "ViewManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/mms/util/ResIdManager;-><init>()V

    return-void
.end method


# virtual methods
.method public ViewManager()V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0}, Lcom/android/mms/util/ResIdManager;->ResIdManager()V

    .line 12
    return-void
.end method

.method public findViewById(ILandroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "id"
    .parameter "view"

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

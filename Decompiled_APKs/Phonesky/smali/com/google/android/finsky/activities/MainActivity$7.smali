.class Lcom/google/android/finsky/activities/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->setupDcbDebugMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 891
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$7;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 894
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$7;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    const-class v2, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 895
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity$7;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 896
    const/4 v0, 0x1

    return v0
.end method

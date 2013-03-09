.class Lcom/google/android/finsky/activities/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->setupDebugMenu(Landroid/view/Menu;)V
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
    .line 879
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$6;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 882
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$6;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity$6;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    const-class v3, Lcom/google/android/finsky/activities/DebugActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 883
    const/4 v0, 0x1

    return v0
.end method

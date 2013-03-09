.class Lcom/google/android/finsky/activities/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity;->handleIntent()V
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
    .line 277
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$3;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$3;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$3;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    #getter for: Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$000(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 285
    return-void
.end method

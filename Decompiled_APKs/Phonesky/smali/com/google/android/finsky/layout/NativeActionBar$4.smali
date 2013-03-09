.class Lcom/google/android/finsky/layout/NativeActionBar$4;
.super Ljava/lang/Object;
.source "NativeActionBar.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/NativeActionBar;->addTab(Ljava/lang/String;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/NativeActionBar;

.field final synthetic val$tabListener:Lcom/google/android/finsky/layout/CustomActionBar$TabListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/NativeActionBar;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar$4;->this$0:Lcom/google/android/finsky/layout/NativeActionBar;

    iput-object p2, p0, Lcom/google/android/finsky/layout/NativeActionBar$4;->val$tabListener:Lcom/google/android/finsky/layout/CustomActionBar$TabListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "selectedTab"
    .parameter "ft"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar$4;->val$tabListener:Lcom/google/android/finsky/layout/CustomActionBar$TabListener;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/CustomActionBar$TabListener;->onTabReselected(I)V

    .line 363
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "selectedTab"
    .parameter "ft"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar$4;->val$tabListener:Lcom/google/android/finsky/layout/CustomActionBar$TabListener;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/CustomActionBar$TabListener;->onTabSelected(I)V

    .line 358
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "selectedTab"
    .parameter "ft"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar$4;->val$tabListener:Lcom/google/android/finsky/layout/CustomActionBar$TabListener;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/CustomActionBar$TabListener;->onTabUnselected(I)V

    .line 353
    return-void
.end method

.class Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;
.super Ljava/lang/Object;
.source "MyAppsTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsTab;->syncViewToState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTab;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsTab;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab.1;"
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 168
    .local p0, this:Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;,"Lcom/google/android/finsky/activities/myapps/MyAppsTab.1;"
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->retryFromError()V

    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTab;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTab;->syncViewToState()V

    .line 170
    return-void
.end method

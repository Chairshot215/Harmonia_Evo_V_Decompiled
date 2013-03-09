.class Lcom/google/android/finsky/activities/FirstRunActivity$1;
.super Ljava/lang/Object;
.source "FirstRunActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/FirstRunActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/FirstRunActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/FirstRunActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/finsky/activities/FirstRunActivity$1;->this$0:Lcom/google/android/finsky/activities/FirstRunActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, learnMoreIntent:Landroid/content/Intent;
    sget-object v1, Lcom/google/android/finsky/config/G;->playLearnMoreUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/google/android/finsky/activities/FirstRunActivity$1;->this$0:Lcom/google/android/finsky/activities/FirstRunActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/FirstRunActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

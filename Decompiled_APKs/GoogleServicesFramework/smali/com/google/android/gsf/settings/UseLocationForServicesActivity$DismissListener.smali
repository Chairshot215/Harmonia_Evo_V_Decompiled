.class Lcom/google/android/gsf/settings/UseLocationForServicesActivity$DismissListener;
.super Ljava/lang/Object;
.source "UseLocationForServicesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/settings/UseLocationForServicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/settings/UseLocationForServicesActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/settings/UseLocationForServicesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/gsf/settings/UseLocationForServicesActivity$DismissListener;->this$0:Lcom/google/android/gsf/settings/UseLocationForServicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/settings/UseLocationForServicesActivity;Lcom/google/android/gsf/settings/UseLocationForServicesActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity$DismissListener;-><init>(Lcom/google/android/gsf/settings/UseLocationForServicesActivity;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gsf/settings/UseLocationForServicesActivity$DismissListener;->this$0:Lcom/google/android/gsf/settings/UseLocationForServicesActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/settings/UseLocationForServicesActivity$DismissListener;->this$0:Lcom/google/android/gsf/settings/UseLocationForServicesActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->finish()V

    .line 93
    :cond_0
    return-void
.end method

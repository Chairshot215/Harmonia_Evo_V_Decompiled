.class Lcom/google/android/finsky/activities/AuthenticatedActivity$6;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$6;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 757
    sput-boolean v1, Lcom/google/android/finsky/activities/AuthenticatedActivity;->sSwitchToMyApps:Z

    .line 758
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$6;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->removeDialog(I)V

    .line 759
    return-void
.end method

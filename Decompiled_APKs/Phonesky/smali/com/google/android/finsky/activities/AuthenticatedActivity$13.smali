.class Lcom/google/android/finsky/activities/AuthenticatedActivity$13;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;
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
    .line 925
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$13;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$13;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    #calls: Lcom/google/android/finsky/activities/AuthenticatedActivity;->addAccount()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$400(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    .line 929
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 930
    return-void
.end method

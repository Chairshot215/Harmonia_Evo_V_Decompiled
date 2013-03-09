.class Lcom/google/android/gsf/settings/UseLocationForServicesActivity$NegativeButtonListener;
.super Ljava/lang/Object;
.source "UseLocationForServicesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/settings/UseLocationForServicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NegativeButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/settings/UseLocationForServicesActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/settings/UseLocationForServicesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/gsf/settings/UseLocationForServicesActivity$NegativeButtonListener;->this$0:Lcom/google/android/gsf/settings/UseLocationForServicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/settings/UseLocationForServicesActivity;Lcom/google/android/gsf/settings/UseLocationForServicesActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity$NegativeButtonListener;-><init>(Lcom/google/android/gsf/settings/UseLocationForServicesActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gsf/settings/UseLocationForServicesActivity$NegativeButtonListener;->this$0:Lcom/google/android/gsf/settings/UseLocationForServicesActivity;

    const/4 v1, 0x0

    #calls: Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->setUseLocationForServices(Z)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/settings/UseLocationForServicesActivity;->access$300(Lcom/google/android/gsf/settings/UseLocationForServicesActivity;Z)V

    .line 85
    return-void
.end method

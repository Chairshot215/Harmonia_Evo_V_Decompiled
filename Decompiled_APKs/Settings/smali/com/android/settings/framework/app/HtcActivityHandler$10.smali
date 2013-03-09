.class Lcom/android/settings/framework/app/HtcActivityHandler$10;
.super Ljava/lang/Object;
.source "HtcActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/HtcActivityHandler;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcActivityHandler;IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 848
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$10;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    iput p2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$10;->val$requestCode:I

    iput p3, p0, Lcom/android/settings/framework/app/HtcActivityHandler$10;->val$resultCode:I

    iput-object p4, p0, Lcom/android/settings/framework/app/HtcActivityHandler$10;->val$data:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler$10;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mCallbacks:Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$000(Lcom/android/settings/framework/app/HtcActivityHandler;)Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$10;->val$requestCode:I

    iget v2, p0, Lcom/android/settings/framework/app/HtcActivityHandler$10;->val$resultCode:I

    iget-object v3, p0, Lcom/android/settings/framework/app/HtcActivityHandler$10;->val$data:Landroid/content/Intent;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settings/framework/app/HtcActivityHandler$Callbacks;->onActivityResultInBackground(IILandroid/content/Intent;)V

    .line 852
    return-void
.end method

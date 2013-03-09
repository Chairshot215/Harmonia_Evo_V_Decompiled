.class Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1$1;
.super Ljava/lang/Thread;
.source "CustomizationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1$1;->this$1:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1$1;->this$1:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;

    iget-object v0, v0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->handleCustomizationFinish()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->access$300(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V

    .line 245
    return-void
.end method

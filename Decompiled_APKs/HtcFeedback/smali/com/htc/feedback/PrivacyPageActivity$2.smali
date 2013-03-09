.class Lcom/htc/feedback/PrivacyPageActivity$2;
.super Lcom/htc/app/HtcProgressDialog;
.source "PrivacyPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/feedback/PrivacyPageActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/feedback/PrivacyPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/feedback/PrivacyPageActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/htc/feedback/PrivacyPageActivity$2;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    invoke-direct {p0, p2}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity$2;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    invoke-virtual {v0}, Lcom/htc/feedback/PrivacyPageActivity;->finish()V

    .line 498
    return-void
.end method

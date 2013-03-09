.class Lcom/htc/appsharing/ShareViaImpActivity$SVIOnCancelListener;
.super Ljava/lang/Object;
.source "ShareViaImpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/appsharing/ShareViaImpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SVIOnCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/appsharing/ShareViaImpActivity;


# direct methods
.method constructor <init>(Lcom/htc/appsharing/ShareViaImpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIOnCancelListener;->this$0:Lcom/htc/appsharing/ShareViaImpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIOnCancelListener;->this$0:Lcom/htc/appsharing/ShareViaImpActivity;

    invoke-virtual {v0}, Lcom/htc/appsharing/ShareViaImpActivity;->finish()V

    .line 266
    return-void
.end method

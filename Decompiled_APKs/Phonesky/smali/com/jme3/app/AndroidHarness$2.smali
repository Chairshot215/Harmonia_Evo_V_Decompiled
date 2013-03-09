.class final Lcom/jme3/app/AndroidHarness$2;
.super Ljava/lang/Object;
.source "AndroidHarness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/app/AndroidHarness;->onTouch(Ljava/lang/String;Lcom/jme3/input/event/TouchEvent;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/app/AndroidHarness;


# direct methods
.method constructor <init>(Lcom/jme3/app/AndroidHarness;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/jme3/app/AndroidHarness$2;->this$0:Lcom/jme3/app/AndroidHarness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 340
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jme3/app/AndroidHarness$2;->this$0:Lcom/jme3/app/AndroidHarness;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/jme3/app/AndroidHarness$2;->this$0:Lcom/jme3/app/AndroidHarness;

    iget-object v2, v2, Lcom/jme3/app/AndroidHarness;->exitDialogTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Yes"

    iget-object v3, p0, Lcom/jme3/app/AndroidHarness$2;->this$0:Lcom/jme3/app/AndroidHarness;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "No"

    iget-object v3, p0, Lcom/jme3/app/AndroidHarness$2;->this$0:Lcom/jme3/app/AndroidHarness;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/app/AndroidHarness$2;->this$0:Lcom/jme3/app/AndroidHarness;

    iget-object v2, v2, Lcom/jme3/app/AndroidHarness;->exitDialogMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 342
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 343
    return-void
.end method

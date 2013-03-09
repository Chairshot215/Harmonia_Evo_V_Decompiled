.class final Lcom/jme3/app/AndroidHarness$1;
.super Ljava/lang/Object;
.source "AndroidHarness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/app/AndroidHarness;->handleError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/app/AndroidHarness;

.field final synthetic val$finalMsg:Ljava/lang/String;

.field final synthetic val$finalTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jme3/app/AndroidHarness;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/jme3/app/AndroidHarness$1;->this$0:Lcom/jme3/app/AndroidHarness;

    iput-object p2, p0, Lcom/jme3/app/AndroidHarness$1;->val$finalTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/jme3/app/AndroidHarness$1;->val$finalMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 305
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jme3/app/AndroidHarness$1;->this$0:Lcom/jme3/app/AndroidHarness;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/jme3/app/AndroidHarness$1;->val$finalTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Kill"

    iget-object v3, p0, Lcom/jme3/app/AndroidHarness$1;->this$0:Lcom/jme3/app/AndroidHarness;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/app/AndroidHarness$1;->val$finalMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 307
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 308
    return-void
.end method

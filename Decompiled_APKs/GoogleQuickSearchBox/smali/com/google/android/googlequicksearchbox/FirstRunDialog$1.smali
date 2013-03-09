.class Lcom/google/android/googlequicksearchbox/FirstRunDialog$1;
.super Ljava/lang/Object;
.source "FirstRunDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/FirstRunDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/FirstRunDialog;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/FirstRunDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog$1;->this$0:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, viewIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog$1;->this$0:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->getQsbContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/QsbContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/FirstRunDialog$1;->this$0:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->getQsbContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/QsbContext;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method
